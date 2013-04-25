open LibUtil
let llvm_backend = ref false
let opt_asm = ref false

module type BACKEND =  sig
  type cunit
  val codegen : Ll.prog -> cunit
  val write   : out_channel -> cunit -> unit
end

module DefaultBackend : BACKEND = struct
  type cunit = Cunit.cunit
  let codegen prog_il = 
    let cu = Phase2.compile_prog prog_il in
      if !opt_asm then 
	(Printf.printf "Oasm."; Opt.opt_asm cu) else cu 

  let write oc cu  = Cunit.output_cunit cu oc
end

module LLVMBackend : BACKEND =
  struct
    type cunit = Buffer.t
    let codegen prog = 
      let cmd = "llc -disable-cfi -march x86 -O2 - -o -" in
      let sprintf = Printf.sprintf in
      let i, o = Unix.open_process cmd in
      let prog_str = Lllib.string_of_prog prog in

      let () = Lllib.pp_prog (output_string o) prog in
      let () = close_out o in
      let buf = Buffer.of_channel i in
      (match Unix.close_process (i, o) with
      | Unix.WEXITED i when i <> 0 -> begin
          prerr_endline prog_str ;
          raise (Platform.AsmLinkError (cmd, sprintf "Stopped with %d." i))
      end
      | Unix.WSIGNALED i -> 
          raise (Platform.AsmLinkError (cmd, sprintf "Signaled with %d." i))
      | Unix.WSTOPPED i -> 
          raise (Platform.AsmLinkError (cmd, sprintf "Stopped with %d." i))
      | _ -> ());
      buf

    let write = Buffer.output_buffer
  end      

module Make (Backend : BACKEND) : sig
  val compile      : Lexing.lexbuf -> Backend.cunit
  val compile_file : string -> string -> unit
  val write        : out_channel -> Backend.cunit -> unit
end = struct
  let compile (buf : Lexing.lexbuf) : Backend.cunit =
    try 
      Backend.codegen (Phase1.cmp_toplevel (Parser.toplevel Lexer.token buf))
    with Parsing.Parse_error ->
      failwith (Printf.sprintf "Parse error at %s."
                  (Range.string_of_range (Lexer.lex_range buf)))
        
  let write = Backend.write

  let compile_file ifile ofile =
    let ich = open_in ifile in
    let och = open_out ofile in
    let buf = Lexing.from_channel ich in
    Lexer.reset_lexbuf ifile 1 buf;
    Backend.write och (compile buf);
    close_in ich;
    close_out och

end
    
