open Ll

(* Generate a fresh temporary name *)
let mk_tmp : unit -> string =
  let ctr = ref 0 in
  fun () -> let c = !ctr in ctr := !ctr + 1; "_tmp" ^ (string_of_int c)

(* Genenrate a [local] operand *)
let gen_local (str:string) : uid = mk_uid str

let gen_global (str:string) : gid = mk_gid str

let id_op (t:ty) (id:uid) = (t, Id id)


let gen_local_op (t:ty) (str:string) : uid * operand =
  let id = gen_local str in
    (id, id_op t id)

let gen_global_op (t:ty) (str:string) : gid * operand =
  let id = gen_global str in (id, (t, Gid id))


let mk_lbl_hint : string -> lbl = X86.mk_lbl_hint
let lbl_of_gid id = X86.mk_lbl_named (Platform.decorate_cdecl (string_of_gid id))


(* Pretty printing of LL programs *)
let rec pp_ty (t:ty) : string =
  begin match t with
    | I1  -> "i1"
    | I8  -> "i8"
    | I32 -> "i32"
    | Ptr u -> Printf.sprintf "%s*" (pp_ty u)
    | Struct ts -> Printf.sprintf "{ %s }" (pp_ty_list ts)
    | Array(len, u) -> Printf.sprintf "[ %s x %s ]" (Int32.to_string len) (pp_ty u)
    | Fptr (ts, oty) -> begin match oty with
        | Some u -> Printf.sprintf "%s (%s)*" (pp_ty u) (pp_ty_list ts)
        | None   -> Printf.sprintf "void (%s)*" (pp_ty_list ts)
    end
    | Namedt s -> Printf.sprintf "%%%s" s
  end

and pp_ty_list (ts:ty list) : string = String.concat ", " (List.map pp_ty ts)

let pp_uid (id:uid) : string = Printf.sprintf "%%%s" (string_of_uid id)
let pp_gid (id:gid) : string = Printf.sprintf "@%s" (string_of_gid id)

let pp_opn : opn -> string = function
    | Null    -> "null"
    | Const i -> Int32.to_string i
    | Gid g   -> pp_gid g
    | Id i    -> pp_uid i


let pp_operand (t,o) : string =
  Printf.sprintf "%s %s" (pp_ty t) (pp_opn o)

let pp_bop : bop -> string = function
    | Add -> "add"  | Sub  -> "sub"  | Mul  -> "mul" 
    | Shl -> "shl"  | Lshr -> "lshr" | Ashr -> "ashr"
    | And -> "and"  | Or   -> "or"   | Xor  -> "xor"

let pp_cmpop : cmpop -> string = function
    | Eq  -> "eq"  | Ne  -> "ne"  | Slt -> "slt" 
    | Sle -> "sle" | Sgt -> "sgt" | Sge -> "sge"


let pp_ops ops = String.concat ", " (List.map pp_operand ops)

let pp pat = Printf.sprintf ("  " ^^ pat ^^ "\n")

let pp_insn (pf:string->unit) : insn -> unit = 
  fun b -> match b with
  | Binop (id, bop, op1, (_,id2)) -> 
      pf (pp "%s = %s %s, %s"  (pp_uid id)  (pp_bop bop) (pp_operand op1) (pp_opn id2))

  | Alloca (id, ty) -> 
      pf (pp "%s = alloca %s" (pp_uid id) (pp_ty ty))

  | Load (id, ((Ptr ty, _) as op))  -> 
      pf (pp "%s = load %s" (pp_uid id) (pp_operand op))

  | Store (op1, op2) ->  (* -> *)
      pf (pp "store %s, %s" (pp_operand op1) (pp_operand op2))

  | Icmp (id1, co, op1, (_,id2)) ->
      pf (pp "%s = icmp %s %s, %s" (pp_uid id1) (pp_cmpop co) (pp_operand op1) (pp_opn id2))

  | Call (Some id, (Fptr (_, Some ty), id2), ops) ->
      pf (pp "%s = call %s %s ( %s )"  (pp_uid id) (pp_ty ty) (pp_opn id2) (pp_ops ops))

  | Call (None, (Fptr (_, None), op), ops) ->
      pf (pp "call void %s( %s )" (pp_opn op) (pp_ops ops))

  | Bitcast(id, op, ty) -> 
      pf (pp "%s = bitcast %s to %s " (pp_uid id) (pp_operand op) (pp_ty ty))
        
  | Gep (id, op, ops) ->
      pf (pp "%s = getelementptr %s, %s" (pp_uid id) (pp_operand op) (pp_ops ops))

  | _ -> failwith "Illegal LLVM IR Format"


let pp_lbl = X86.string_of_lbl

let pp_terminator (pf : string -> unit) : terminator -> unit = function
  | Ret (Some op) -> pf (pp "ret %s" (pp_operand op))
  | Ret None ->  pf (pp "ret void")
  | Br l -> pf (pp "br label %%%s" (pp_lbl l))
  | Cbr (op, l1, l2) ->
      pf (pp "br %s, label %%%s, label %%%s" (pp_operand op) (pp_lbl l1) (pp_lbl l2))

let pp_bblock (pf : string -> unit) ({label=l;insns=is;terminator=t}: bblock) =
  pf (Printf.sprintf "\n%s:\n" (pp_lbl l));
  List.iter (pp_insn pf) is;
  pp_terminator pf t
        
let pp_fdecl (pf : string-> unit) {ll_name; ll_type; ll_args; ll_cfg} =
  pf (Printf.sprintf "define %s %s (%s){"
        (match ll_type with Some x -> (pp_ty x) | None -> "void")
        (pp_gid ll_name)
	(pp_ops ll_args));
  List.iter (pp_bblock pf) ll_cfg;
  pf "}\n\n\n"


let pp_prototype pf {ty_args; rty; name} =
  pf (Printf.sprintf "declare %s %s(%s)\n"
	(match rty with None -> "void" | Some ty -> pp_ty ty)
	(pp_gid name)
	(pp_ty_list ty_args))

let pp_global pf = function 
  | ((Ptr ty, Gid g), (GConst x)) ->
      pf (Printf.sprintf "%s = global %s %s, align 4\n" 
            (pp_gid g) (pp_ty ty) (Int32.to_string x))

  | ((Ptr ty, Gid gv), GInit {name=gf}) ->
      pf (Printf.sprintf "%s = global %s zeroinitializer, align 4\t\t; initialized by %s\n" 
            (pp_gid gv) (pp_ty ty) (pp_gid gf))

  | ((ty, Gid g), GString s) ->
    let strid = (pp_gid g)^".str." in
    let strlen = Int32.of_int (1 + (String.length s)) in
    let strty  = Array(strlen, I8) in
	pf (Printf.sprintf "%s = private unnamed_addr constant %s c \"%s\\00\", align 4\n"
          strid (pp_ty strty) s);
    pf (Printf.sprintf "%s = alias bitcast(%s %s to i8*)"
          (pp_gid g) (pp_ty (Ptr strty)) strid);


  | ((Ptr ty, Gid g), GStruct fs) -> 
    let is = List.map pp_operand fs in
    pf (Printf.sprintf "%s = private constant %s {%s}, align 4\n" 
          (pp_gid g) (pp_ty ty) (String.concat ", " is))

  | _ -> failwith "pp_global found non-global identifier"


let pp_globals pf gs =
  List.iter (pp_global pf) gs

let pp_namedt pf (id,t) =
  pf (Printf.sprintf "%%%s = type %s\n" id (pp_ty t))

let pp_prog pf {namedts; prototypes; globals; functions} = begin
  List.iter (pp_namedt pf) namedts;
  List.iter (pp_prototype pf) prototypes;
  pp_globals pf globals;
  List.iter (pp_fdecl pf) functions;
end

(* To stdout *)
let to_stdout f x = f (output_string stdout) x

let output_ty ty = output_string stdout (pp_ty ty)
let output_operand op = output_string stdout (pp_operand op)
let output_insn  = to_stdout pp_insn
let output_terminator  = to_stdout pp_terminator
let output_block = to_stdout pp_bblock
let output_fdecl = to_stdout pp_fdecl
let output_prog  = to_stdout pp_prog 

let write_prog_to_file fn prog =
  let out = open_out fn in begin
    pp_prog (output_string out) prog;
    close_out out
  end
  

let string_of_uid = pp_uid
let string_of_ty = pp_ty
let string_of_operand = pp_operand

let string_of_prog (p : prog) : string =
  let b = Buffer.create 256 in
  (pp_prog (Buffer.add_string b) p);
  Buffer.contents b

