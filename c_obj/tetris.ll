%State = type { %_State_vtable*, i8*, %Shape*, i32, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* }
%_State_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%State*)*, void (%State*)*, { i32, [ 0 x i1 ] }* (%State*, i32)*, void (%State*, i32)* }
%Shape = type { %_Shape_vtable*, i8*, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*, { i32, [ 0 x i32 ] }*, i32 }
%_Shape_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare i32 @con_halfdelay(i32)
declare i32 @con_sleep(i32)
declare i32 @con_height()
declare i32 @con_width()
declare i32 @con_bold(i32)
declare void @set_color(i32)
declare i32 @con_color(i32)
declare i32 @con_getch()
declare void @con_refresh()
declare void @con_clear()
declare void @con_clrtoeol()
declare i32 @con_attrget()
declare void @con_attrset(i32)
declare void @con_move(i32, i32)
declare i32 @get_rand_lt(i32)
declare void @con_print_int(i32)
declare void @con_printch(i32)
declare void @con_print(i8*)
declare void @con_cleanup()
declare void @con_init()
declare void @print_bool(i1)
declare void @print_int(i32)
declare void @print_string(i8*)
declare i32 @length_of_string(i8*)
declare i8* @string_cat(i8*, i8*)
declare i8* @string_of_int(i32)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
@_const_str12.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str12 = alias bitcast([ 6 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 39 x i8 ] c "Minimum size of the console is 80x25!
\00", align 4
@_const_str11 = alias bitcast([ 39 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str10 = alias bitcast([ 6 x i8 ]* @_const_str10.str. to i8*)@_const_str9.str. = private unnamed_addr constant [ 8 x i8 ] c "Score: \00", align 4
@_const_str9 = alias bitcast([ 8 x i8 ]* @_const_str9.str. to i8*)@_const_str8.str. = private unnamed_addr constant [ 3 x i8 ] c "[]\00", align 4
@_const_str8 = alias bitcast([ 3 x i8 ]* @_const_str8.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 159 x i8 ] c "
    TETRIS. 

      j - Move left 

      l - Move right 

      i - Rotate right 

      k - Rotate left 

      esc -Quit 

      [Press any key to begin]
\00", align 4
@_const_str7 = alias bitcast([ 159 x i8 ]* @_const_str7.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 6 x i8 ] c "State\00", align 4
@_const_str6 = alias bitcast([ 6 x i8 ]* @_const_str6.str. to i8*)@_const_str5.str. = private unnamed_addr constant [ 6 x i8 ] c "Shape\00", align 4
@_const_str5 = alias bitcast([ 6 x i8 ]* @_const_str5.str. to i8*)@_const_str4.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str4 = alias bitcast([ 7 x i8 ]* @_const_str4.str. to i8*)@_State_vtable3 = private constant %_State_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%State*)* @_State_make_new_shape, void (%State*)* @_State_init, { i32, [ 0 x i1 ] }* (%State*, i32)* @_State_update, void (%State*, i32)* @_State_display}, align 4
@_Shape_vtable2 = private constant %_Shape_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%Shape*)* @_Shape_move_down, void (%Shape*)* @_Shape_move_left, void (%Shape*)* @_Shape_move_right, void (%Shape*)* @_Shape_rotate_right, void (%Shape*)* @_Shape_rotate_left}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh311:
  ret void
}


define i32 @program (i32 %argc1975, { i32, [ 0 x i8* ] }* %argv1973){
__fresh304:
  %argc_slot1976 = alloca i32
  store i32 %argc1975, i32* %argc_slot1976
  %argv_slot1974 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1973, { i32, [ 0 x i8* ] }** %argv_slot1974
  %vdecl_slot1977 = alloca i32
  store i32 80, i32* %vdecl_slot1977
  %vdecl_slot1978 = alloca i32
  store i32 25, i32* %vdecl_slot1978
  %vdecl_slot1979 = alloca i32
  store i32 0, i32* %vdecl_slot1979
  %array_ptr1980 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1981 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1980 to { i32, [ 0 x i1 ] }* 
  %index_ptr1982 = getelementptr { i32, [ 0 x i1 ] }* %array1981, i32 0, i32 1, i32 0
  store i1 0, i1* %index_ptr1982
  %index_ptr1983 = getelementptr { i32, [ 0 x i1 ] }* %array1981, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr1983
  %vdecl_slot1984 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array1981, { i32, [ 0 x i1 ] }** %vdecl_slot1984
  call void @print_string( i8* @_const_str10 )
  call void @con_init(  )
  call void @instructions(  )
  %ret1985 = call i32 @con_width (  )
  %lhs_or_call1986 = load i32* %vdecl_slot1977
  %bop1987 = icmp sge i32 %ret1985, %lhs_or_call1986
  %ret1988 = call i32 @con_height (  )
  %lhs_or_call1989 = load i32* %vdecl_slot1978
  %bop1990 = icmp sge i32 %ret1988, %lhs_or_call1989
  %bop1991 = and i1 %bop1987, %bop1990
  br i1 %bop1991, label %__then303, label %__else302

__fresh305:
  br label %__then303

__then303:
  %mem_ptr1992 = call i32* @oat_malloc ( i32 20 )
  %obj1993 = bitcast i32* %mem_ptr1992 to %State* 
  %new_obj1994 = call %State* @_State_ctor ( %State* %obj1993 )
  %vdecl_slot1995 = alloca %State*
  store %State* %new_obj1994, %State** %vdecl_slot1995
  %vdecl_slot1996 = alloca i1
  store i1 0, i1* %vdecl_slot1996
  %vdecl_slot1997 = alloca i32
  store i32 0, i32* %vdecl_slot1997
  %vdecl_slot1998 = alloca i32
  store i32 0, i32* %vdecl_slot1998
  %lhs_or_call1999 = load %State** %vdecl_slot1995
  %vtmp2001 = getelementptr %State* %lhs_or_call1999, i32 0, i32 0
  %vtable2000 = load %_State_vtable** %vtmp2001
  %fptmp2002 = getelementptr %_State_vtable* %vtable2000, i32 0, i32 3
  %method2003 = load void (%State*)** %fptmp2002
  call void %method2003( %State* %lhs_or_call1999 )
  %ret2004 = call i32 @con_halfdelay ( i32 1 )
  store i32 %ret2004, i32* %vdecl_slot1998
  br label %__cond297

__cond297:
  %lhs_or_call2005 = load i32* %vdecl_slot1997
  %bop2006 = icmp ne i32 %lhs_or_call2005, 27
  %lhs_or_call2007 = load i1* %vdecl_slot1996
  %unop2008 = icmp eq i1 %lhs_or_call2007, 0
  %bop2009 = and i1 %bop2006, %unop2008
  br i1 %bop2009, label %__body296, label %__post295

__fresh306:
  br label %__body296

__body296:
  %lhs_or_call2011 = load %State** %vdecl_slot1995
  %vtmp2013 = getelementptr %State* %lhs_or_call2011, i32 0, i32 0
  %vtable2012 = load %_State_vtable** %vtmp2013
  %fptmp2014 = getelementptr %_State_vtable* %vtable2012, i32 0, i32 5
  %method2015 = load void (%State*, i32)** %fptmp2014
  %lhs_or_call2010 = load i32* %vdecl_slot1979
  call void %method2015( %State* %lhs_or_call2011, i32 %lhs_or_call2010 )
  %ret2016 = call i32 @con_getch (  )
  store i32 %ret2016, i32* %vdecl_slot1997
  %lhs_or_call2018 = load %State** %vdecl_slot1995
  %vtmp2020 = getelementptr %State* %lhs_or_call2018, i32 0, i32 0
  %vtable2019 = load %_State_vtable** %vtmp2020
  %fptmp2021 = getelementptr %_State_vtable* %vtable2019, i32 0, i32 4
  %method2022 = load { i32, [ 0 x i1 ] }* (%State*, i32)** %fptmp2021
  %lhs_or_call2017 = load i32* %vdecl_slot1997
  %ret2023 = call { i32, [ 0 x i1 ] }* %method2022 ( %State* %lhs_or_call2018, i32 %lhs_or_call2017 )
  store { i32, [ 0 x i1 ] }* %ret2023, { i32, [ 0 x i1 ] }** %vdecl_slot1984
  %lhs_or_call2024 = load { i32, [ 0 x i1 ] }** %vdecl_slot1984
  %bound_ptr2026 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call2024, i32 0, i32 0
  %bound2027 = load i32* %bound_ptr2026
  call void @oat_array_bounds_check( i32 %bound2027, i32 0 )
  %elt2025 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call2024, i32 0, i32 1, i32 0
  %lhs_or_call2028 = load i1* %elt2025
  store i1 %lhs_or_call2028, i1* %vdecl_slot1996
  %lhs_or_call2029 = load { i32, [ 0 x i1 ] }** %vdecl_slot1984
  %bound_ptr2031 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call2029, i32 0, i32 0
  %bound2032 = load i32* %bound_ptr2031
  call void @oat_array_bounds_check( i32 %bound2032, i32 1 )
  %elt2030 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call2029, i32 0, i32 1, i32 1
  %lhs_or_call2033 = load i1* %elt2030
  br i1 %lhs_or_call2033, label %__then300, label %__else299

__fresh307:
  br label %__then300

__then300:
  %lhs_or_call2034 = load i32* %vdecl_slot1979
  %bop2035 = add i32 %lhs_or_call2034, 1
  store i32 %bop2035, i32* %vdecl_slot1979
  br label %__merge298

__fresh308:
  br label %__else299

__else299:
  br label %__merge298

__merge298:
  br label %__cond297

__fresh309:
  br label %__post295

__post295:
  call void @con_cleanup(  )
  br label %__merge301

__fresh310:
  br label %__else302

__else302:
  call void @con_cleanup(  )
  call void @print_string( i8* @_const_str11 )
  br label %__merge301

__merge301:
  call void @print_string( i8* @_const_str12 )
  ret i32 0
}


define void @draw ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %grid1934, i32 %score1932){
__fresh288:
  %grid_slot1935 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %grid1934, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %grid_slot1935
  %score_slot1933 = alloca i32
  store i32 %score1932, i32* %score_slot1933
  %vdecl_slot1936 = alloca i32
  store i32 0, i32* %vdecl_slot1936
  br label %__cond281

__cond281:
  %lhs_or_call1937 = load i32* %vdecl_slot1936
  %bop1938 = icmp slt i32 %lhs_or_call1937, 10
  br i1 %bop1938, label %__body280, label %__post279

__fresh289:
  br label %__body280

__body280:
  %vdecl_slot1939 = alloca i32
  store i32 0, i32* %vdecl_slot1939
  br label %__cond284

__cond284:
  %lhs_or_call1940 = load i32* %vdecl_slot1939
  %bop1941 = icmp slt i32 %lhs_or_call1940, 50
  br i1 %bop1941, label %__body283, label %__post282

__fresh290:
  br label %__body283

__body283:
  %lhs_or_call1942 = load i32* %vdecl_slot1939
  %lhs_or_call1943 = load i32* %vdecl_slot1936
  %bop1944 = mul i32 2, %lhs_or_call1943
  call void @con_move( i32 %bop1944, i32 %lhs_or_call1942 )
  %lhs_or_call1945 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %grid_slot1935
  %lhs_or_call1946 = load i32* %vdecl_slot1936
  %bound_ptr1948 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1945, i32 0, i32 0
  %bound1949 = load i32* %bound_ptr1948
  call void @oat_array_bounds_check( i32 %bound1949, i32 %lhs_or_call1946 )
  %elt1947 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1945, i32 0, i32 1, i32 %lhs_or_call1946
  %lhs_or_call1950 = load { i32, [ 0 x i32 ] }** %elt1947
  %lhs_or_call1951 = load i32* %vdecl_slot1939
  %bound_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1950, i32 0, i32 0
  %bound1954 = load i32* %bound_ptr1953
  call void @oat_array_bounds_check( i32 %bound1954, i32 %lhs_or_call1951 )
  %elt1952 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1950, i32 0, i32 1, i32 %lhs_or_call1951
  %lhs_or_call1955 = load i32* %elt1952
  %bop1956 = icmp ne i32 %lhs_or_call1955, 0
  br i1 %bop1956, label %__then287, label %__else286

__fresh291:
  br label %__then287

__then287:
  %lhs_or_call1957 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %grid_slot1935
  %lhs_or_call1958 = load i32* %vdecl_slot1936
  %bound_ptr1960 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1957, i32 0, i32 0
  %bound1961 = load i32* %bound_ptr1960
  call void @oat_array_bounds_check( i32 %bound1961, i32 %lhs_or_call1958 )
  %elt1959 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1957, i32 0, i32 1, i32 %lhs_or_call1958
  %lhs_or_call1962 = load { i32, [ 0 x i32 ] }** %elt1959
  %lhs_or_call1963 = load i32* %vdecl_slot1939
  %bound_ptr1965 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1962, i32 0, i32 0
  %bound1966 = load i32* %bound_ptr1965
  call void @oat_array_bounds_check( i32 %bound1966, i32 %lhs_or_call1963 )
  %elt1964 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1962, i32 0, i32 1, i32 %lhs_or_call1963
  %lhs_or_call1967 = load i32* %elt1964
  call void @set_color( i32 %lhs_or_call1967 )
  call void @con_print( i8* @_const_str8 )
  br label %__merge285

__fresh292:
  br label %__else286

__else286:
  br label %__merge285

__merge285:
  %lhs_or_call1968 = load i32* %vdecl_slot1939
  %bop1969 = add i32 %lhs_or_call1968, 1
  store i32 %bop1969, i32* %vdecl_slot1939
  br label %__cond284

__fresh293:
  br label %__post282

__post282:
  %lhs_or_call1970 = load i32* %vdecl_slot1936
  %bop1971 = add i32 %lhs_or_call1970, 1
  store i32 %bop1971, i32* %vdecl_slot1936
  br label %__cond281

__fresh294:
  br label %__post279

__post279:
  call void @con_move( i32 0, i32 59 )
  call void @set_color( i32 3 )
  call void @con_print( i8* @_const_str9 )
  call void @con_move( i32 0, i32 60 )
  %lhs_or_call1972 = load i32* %score_slot1933
  call void @con_print_int( i32 %lhs_or_call1972 )
  ret void
}


define void @instructions (){
__fresh278:
  %vdecl_slot1930 = alloca i32
  store i32 0, i32* %vdecl_slot1930
  call void @con_move( i32 0, i32 0 )
  call void @con_print( i8* @_const_str7 )
  %ret1931 = call i32 @con_getch (  )
  store i32 %ret1931, i32* %vdecl_slot1930
  ret void
}


define void @_State_display (%State* %_this1, i32 %score1925){
__fresh277:
  %score_slot1926 = alloca i32
  store i32 %score1925, i32* %score_slot1926
  call void @con_clear(  )
  %lhs_or_call1927 = load i32* %score_slot1926
  %path1928 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1929 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1928
  call void @draw( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1929, i32 %lhs_or_call1927 )
  call void @con_refresh(  )
  ret void
}


define { i32, [ 0 x i1 ] }* @_State_update (%State* %_this1, i32 %k1516){
__fresh234:
  %k_slot1517 = alloca i32
  store i32 %k1516, i32* %k_slot1517
  %vdecl_slot1518 = alloca i1
  store i1 0, i1* %vdecl_slot1518
  %array_ptr1519 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1520 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1519 to { i32, [ 0 x i1 ] }* 
  %index_ptr1521 = getelementptr { i32, [ 0 x i1 ] }* %array1520, i32 0, i32 1, i32 0
  store i1 0, i1* %index_ptr1521
  %index_ptr1522 = getelementptr { i32, [ 0 x i1 ] }* %array1520, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr1522
  %index_ptr1523 = getelementptr { i32, [ 0 x i1 ] }* %array1520, i32 0, i32 1, i32 2
  store i1 0, i1* %index_ptr1523
  %index_ptr1524 = getelementptr { i32, [ 0 x i1 ] }* %array1520, i32 0, i32 1, i32 3
  store i1 0, i1* %index_ptr1524
  %index_ptr1525 = getelementptr { i32, [ 0 x i1 ] }* %array1520, i32 0, i32 1, i32 4
  store i1 0, i1* %index_ptr1525
  %vdecl_slot1526 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array1520, { i32, [ 0 x i1 ] }** %vdecl_slot1526
  %vdecl_slot1527 = alloca i32
  store i32 1, i32* %vdecl_slot1527
  %array_ptr1528 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1529 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1528 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1530 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1531 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1530 to { i32, [ 0 x i32 ] }* 
  %index_ptr1532 = getelementptr { i32, [ 0 x i32 ] }* %array1531, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1532
  %index_ptr1533 = getelementptr { i32, [ 0 x i32 ] }* %array1531, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1533
  %index_ptr1534 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1529, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1531, { i32, [ 0 x i32 ] }** %index_ptr1534
  %array_ptr1535 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1536 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1535 to { i32, [ 0 x i32 ] }* 
  %index_ptr1537 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1537
  %index_ptr1538 = getelementptr { i32, [ 0 x i32 ] }* %array1536, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1538
  %index_ptr1539 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1529, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1536, { i32, [ 0 x i32 ] }** %index_ptr1539
  %array_ptr1540 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1541 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1540 to { i32, [ 0 x i32 ] }* 
  %index_ptr1542 = getelementptr { i32, [ 0 x i32 ] }* %array1541, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1542
  %index_ptr1543 = getelementptr { i32, [ 0 x i32 ] }* %array1541, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1543
  %index_ptr1544 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1529, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1541, { i32, [ 0 x i32 ] }** %index_ptr1544
  %array_ptr1545 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1546 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1545 to { i32, [ 0 x i32 ] }* 
  %index_ptr1547 = getelementptr { i32, [ 0 x i32 ] }* %array1546, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1547
  %index_ptr1548 = getelementptr { i32, [ 0 x i32 ] }* %array1546, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1548
  %index_ptr1549 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1529, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1546, { i32, [ 0 x i32 ] }** %index_ptr1549
  %vdecl_slot1550 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1529, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %path1551 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1552 = load %Shape** %path1551
  %path1553 = getelementptr %Shape* %lhs_or_call1552, i32 0, i32 4
  %lhs_or_call1554 = load i32* %path1553
  %vdecl_slot1555 = alloca i32
  store i32 %lhs_or_call1554, i32* %vdecl_slot1555
  %vdecl_slot1556 = alloca i32
  store i32 0, i32* %vdecl_slot1556
  br label %__cond173

__cond173:
  %lhs_or_call1557 = load i32* %vdecl_slot1556
  %bop1558 = icmp slt i32 %lhs_or_call1557, 4
  br i1 %bop1558, label %__body172, label %__post171

__fresh235:
  br label %__body172

__body172:
  %lhs_or_call1559 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1560 = load i32* %vdecl_slot1556
  %bound_ptr1562 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1559, i32 0, i32 0
  %bound1563 = load i32* %bound_ptr1562
  call void @oat_array_bounds_check( i32 %bound1563, i32 %lhs_or_call1560 )
  %elt1561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1559, i32 0, i32 1, i32 %lhs_or_call1560
  %lhs_or_call1564 = load { i32, [ 0 x i32 ] }** %elt1561
  %bound_ptr1566 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1564, i32 0, i32 0
  %bound1567 = load i32* %bound_ptr1566
  call void @oat_array_bounds_check( i32 %bound1567, i32 0 )
  %elt1565 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1564, i32 0, i32 1, i32 0
  %path1568 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1569 = load %Shape** %path1568
  %path1570 = getelementptr %Shape* %lhs_or_call1569, i32 0, i32 2
  %lhs_or_call1571 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1570
  %lhs_or_call1572 = load i32* %vdecl_slot1556
  %bound_ptr1574 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1571, i32 0, i32 0
  %bound1575 = load i32* %bound_ptr1574
  call void @oat_array_bounds_check( i32 %bound1575, i32 %lhs_or_call1572 )
  %elt1573 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1571, i32 0, i32 1, i32 %lhs_or_call1572
  %lhs_or_call1576 = load { i32, [ 0 x i32 ] }** %elt1573
  %bound_ptr1578 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1576, i32 0, i32 0
  %bound1579 = load i32* %bound_ptr1578
  call void @oat_array_bounds_check( i32 %bound1579, i32 0 )
  %elt1577 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1576, i32 0, i32 1, i32 0
  %lhs_or_call1580 = load i32* %elt1577
  store i32 %lhs_or_call1580, i32* %elt1565
  %lhs_or_call1581 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1582 = load i32* %vdecl_slot1556
  %bound_ptr1584 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1581, i32 0, i32 0
  %bound1585 = load i32* %bound_ptr1584
  call void @oat_array_bounds_check( i32 %bound1585, i32 %lhs_or_call1582 )
  %elt1583 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1581, i32 0, i32 1, i32 %lhs_or_call1582
  %lhs_or_call1586 = load { i32, [ 0 x i32 ] }** %elt1583
  %bound_ptr1588 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1586, i32 0, i32 0
  %bound1589 = load i32* %bound_ptr1588
  call void @oat_array_bounds_check( i32 %bound1589, i32 1 )
  %elt1587 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1586, i32 0, i32 1, i32 1
  %path1590 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1591 = load %Shape** %path1590
  %path1592 = getelementptr %Shape* %lhs_or_call1591, i32 0, i32 2
  %lhs_or_call1593 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1592
  %lhs_or_call1594 = load i32* %vdecl_slot1556
  %bound_ptr1596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1593, i32 0, i32 0
  %bound1597 = load i32* %bound_ptr1596
  call void @oat_array_bounds_check( i32 %bound1597, i32 %lhs_or_call1594 )
  %elt1595 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1593, i32 0, i32 1, i32 %lhs_or_call1594
  %lhs_or_call1598 = load { i32, [ 0 x i32 ] }** %elt1595
  %bound_ptr1600 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1598, i32 0, i32 0
  %bound1601 = load i32* %bound_ptr1600
  call void @oat_array_bounds_check( i32 %bound1601, i32 1 )
  %elt1599 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1598, i32 0, i32 1, i32 1
  %lhs_or_call1602 = load i32* %elt1599
  store i32 %lhs_or_call1602, i32* %elt1587
  %lhs_or_call1603 = load i32* %vdecl_slot1556
  %bop1604 = add i32 %lhs_or_call1603, 1
  store i32 %bop1604, i32* %vdecl_slot1556
  br label %__cond173

__fresh236:
  br label %__post171

__post171:
  %vdecl_slot1605 = alloca i32
  store i32 0, i32* %vdecl_slot1605
  br label %__cond176

__cond176:
  %lhs_or_call1606 = load i32* %vdecl_slot1605
  %bop1607 = icmp slt i32 %lhs_or_call1606, 4
  br i1 %bop1607, label %__body175, label %__post174

__fresh237:
  br label %__body175

__body175:
  %lhs_or_call1608 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1609 = load i32* %vdecl_slot1605
  %bound_ptr1611 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1608, i32 0, i32 0
  %bound1612 = load i32* %bound_ptr1611
  call void @oat_array_bounds_check( i32 %bound1612, i32 %lhs_or_call1609 )
  %elt1610 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1608, i32 0, i32 1, i32 %lhs_or_call1609
  %lhs_or_call1613 = load { i32, [ 0 x i32 ] }** %elt1610
  %bound_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1613, i32 0, i32 0
  %bound1616 = load i32* %bound_ptr1615
  call void @oat_array_bounds_check( i32 %bound1616, i32 0 )
  %elt1614 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1613, i32 0, i32 1, i32 0
  %lhs_or_call1617 = load i32* %elt1614
  %vdecl_slot1618 = alloca i32
  store i32 %lhs_or_call1617, i32* %vdecl_slot1618
  %lhs_or_call1619 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1620 = load i32* %vdecl_slot1605
  %bound_ptr1622 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1619, i32 0, i32 0
  %bound1623 = load i32* %bound_ptr1622
  call void @oat_array_bounds_check( i32 %bound1623, i32 %lhs_or_call1620 )
  %elt1621 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1619, i32 0, i32 1, i32 %lhs_or_call1620
  %lhs_or_call1624 = load { i32, [ 0 x i32 ] }** %elt1621
  %bound_ptr1626 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1624, i32 0, i32 0
  %bound1627 = load i32* %bound_ptr1626
  call void @oat_array_bounds_check( i32 %bound1627, i32 1 )
  %elt1625 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1624, i32 0, i32 1, i32 1
  %lhs_or_call1628 = load i32* %elt1625
  %vdecl_slot1629 = alloca i32
  store i32 %lhs_or_call1628, i32* %vdecl_slot1629
  %path1630 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1631 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1630
  %lhs_or_call1632 = load i32* %vdecl_slot1618
  %bound_ptr1634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1631, i32 0, i32 0
  %bound1635 = load i32* %bound_ptr1634
  call void @oat_array_bounds_check( i32 %bound1635, i32 %lhs_or_call1632 )
  %elt1633 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1631, i32 0, i32 1, i32 %lhs_or_call1632
  %lhs_or_call1636 = load { i32, [ 0 x i32 ] }** %elt1633
  %lhs_or_call1637 = load i32* %vdecl_slot1629
  %bound_ptr1639 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1636, i32 0, i32 0
  %bound1640 = load i32* %bound_ptr1639
  call void @oat_array_bounds_check( i32 %bound1640, i32 %lhs_or_call1637 )
  %elt1638 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1636, i32 0, i32 1, i32 %lhs_or_call1637
  store i32 0, i32* %elt1638
  %lhs_or_call1641 = load i32* %vdecl_slot1605
  %bop1642 = add i32 %lhs_or_call1641, 1
  store i32 %bop1642, i32* %vdecl_slot1605
  br label %__cond176

__fresh238:
  br label %__post174

__post174:
  %lhs_or_call1643 = load i32* %k_slot1517
  %bop1644 = icmp eq i32 %lhs_or_call1643, 106
  br i1 %bop1644, label %__then179, label %__else178

__fresh239:
  br label %__then179

__then179:
  %path1645 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1646 = load %Shape** %path1645
  %vtmp1648 = getelementptr %Shape* %lhs_or_call1646, i32 0, i32 0
  %vtable1647 = load %_Shape_vtable** %vtmp1648
  %fptmp1649 = getelementptr %_Shape_vtable* %vtable1647, i32 0, i32 3
  %method1650 = load void (%Shape*)** %fptmp1649
  call void %method1650( %Shape* %lhs_or_call1646 )
  br label %__merge177

__fresh240:
  br label %__else178

__else178:
  br label %__merge177

__merge177:
  %lhs_or_call1651 = load i32* %k_slot1517
  %bop1652 = icmp eq i32 %lhs_or_call1651, 108
  br i1 %bop1652, label %__then182, label %__else181

__fresh241:
  br label %__then182

__then182:
  %path1653 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1654 = load %Shape** %path1653
  %vtmp1656 = getelementptr %Shape* %lhs_or_call1654, i32 0, i32 0
  %vtable1655 = load %_Shape_vtable** %vtmp1656
  %fptmp1657 = getelementptr %_Shape_vtable* %vtable1655, i32 0, i32 4
  %method1658 = load void (%Shape*)** %fptmp1657
  call void %method1658( %Shape* %lhs_or_call1654 )
  br label %__merge180

__fresh242:
  br label %__else181

__else181:
  br label %__merge180

__merge180:
  %lhs_or_call1659 = load i32* %k_slot1517
  %bop1660 = icmp eq i32 %lhs_or_call1659, 105
  br i1 %bop1660, label %__then185, label %__else184

__fresh243:
  br label %__then185

__then185:
  %path1661 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1662 = load %Shape** %path1661
  %vtmp1664 = getelementptr %Shape* %lhs_or_call1662, i32 0, i32 0
  %vtable1663 = load %_Shape_vtable** %vtmp1664
  %fptmp1665 = getelementptr %_Shape_vtable* %vtable1663, i32 0, i32 5
  %method1666 = load void (%Shape*)** %fptmp1665
  call void %method1666( %Shape* %lhs_or_call1662 )
  br label %__merge183

__fresh244:
  br label %__else184

__else184:
  br label %__merge183

__merge183:
  %lhs_or_call1667 = load i32* %k_slot1517
  %bop1668 = icmp eq i32 %lhs_or_call1667, 107
  br i1 %bop1668, label %__then188, label %__else187

__fresh245:
  br label %__then188

__then188:
  %path1669 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1670 = load %Shape** %path1669
  %vtmp1672 = getelementptr %Shape* %lhs_or_call1670, i32 0, i32 0
  %vtable1671 = load %_Shape_vtable** %vtmp1672
  %fptmp1673 = getelementptr %_Shape_vtable* %vtable1671, i32 0, i32 6
  %method1674 = load void (%Shape*)** %fptmp1673
  call void %method1674( %Shape* %lhs_or_call1670 )
  br label %__merge186

__fresh246:
  br label %__else187

__else187:
  br label %__merge186

__merge186:
  %path1675 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1676 = load %Shape** %path1675
  %vtmp1678 = getelementptr %Shape* %lhs_or_call1676, i32 0, i32 0
  %vtable1677 = load %_Shape_vtable** %vtmp1678
  %fptmp1679 = getelementptr %_Shape_vtable* %vtable1677, i32 0, i32 2
  %method1680 = load void (%Shape*)** %fptmp1679
  call void %method1680( %Shape* %lhs_or_call1676 )
  %vdecl_slot1681 = alloca i32
  store i32 0, i32* %vdecl_slot1681
  br label %__cond191

__cond191:
  %lhs_or_call1682 = load i32* %vdecl_slot1681
  %bop1683 = icmp slt i32 %lhs_or_call1682, 4
  br i1 %bop1683, label %__body190, label %__post189

__fresh247:
  br label %__body190

__body190:
  %path1684 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1685 = load %Shape** %path1684
  %path1686 = getelementptr %Shape* %lhs_or_call1685, i32 0, i32 2
  %lhs_or_call1687 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1686
  %lhs_or_call1688 = load i32* %vdecl_slot1681
  %bound_ptr1690 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1687, i32 0, i32 0
  %bound1691 = load i32* %bound_ptr1690
  call void @oat_array_bounds_check( i32 %bound1691, i32 %lhs_or_call1688 )
  %elt1689 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1687, i32 0, i32 1, i32 %lhs_or_call1688
  %lhs_or_call1692 = load { i32, [ 0 x i32 ] }** %elt1689
  %bound_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1692, i32 0, i32 0
  %bound1695 = load i32* %bound_ptr1694
  call void @oat_array_bounds_check( i32 %bound1695, i32 0 )
  %elt1693 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1692, i32 0, i32 1, i32 0
  %lhs_or_call1696 = load i32* %elt1693
  %vdecl_slot1697 = alloca i32
  store i32 %lhs_or_call1696, i32* %vdecl_slot1697
  %path1698 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1699 = load %Shape** %path1698
  %path1700 = getelementptr %Shape* %lhs_or_call1699, i32 0, i32 2
  %lhs_or_call1701 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1700
  %lhs_or_call1702 = load i32* %vdecl_slot1681
  %bound_ptr1704 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1701, i32 0, i32 0
  %bound1705 = load i32* %bound_ptr1704
  call void @oat_array_bounds_check( i32 %bound1705, i32 %lhs_or_call1702 )
  %elt1703 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1701, i32 0, i32 1, i32 %lhs_or_call1702
  %lhs_or_call1706 = load { i32, [ 0 x i32 ] }** %elt1703
  %bound_ptr1708 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1706, i32 0, i32 0
  %bound1709 = load i32* %bound_ptr1708
  call void @oat_array_bounds_check( i32 %bound1709, i32 1 )
  %elt1707 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1706, i32 0, i32 1, i32 1
  %lhs_or_call1710 = load i32* %elt1707
  %vdecl_slot1711 = alloca i32
  store i32 %lhs_or_call1710, i32* %vdecl_slot1711
  %path1712 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1713 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1712
  %lhs_or_call1714 = load i32* %vdecl_slot1697
  %bound_ptr1716 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1713, i32 0, i32 0
  %bound1717 = load i32* %bound_ptr1716
  call void @oat_array_bounds_check( i32 %bound1717, i32 %lhs_or_call1714 )
  %elt1715 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1713, i32 0, i32 1, i32 %lhs_or_call1714
  %lhs_or_call1718 = load { i32, [ 0 x i32 ] }** %elt1715
  %lhs_or_call1719 = load i32* %vdecl_slot1711
  %bound_ptr1721 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1718, i32 0, i32 0
  %bound1722 = load i32* %bound_ptr1721
  call void @oat_array_bounds_check( i32 %bound1722, i32 %lhs_or_call1719 )
  %elt1720 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1718, i32 0, i32 1, i32 %lhs_or_call1719
  %lhs_or_call1723 = load i32* %elt1720
  %bop1724 = icmp ne i32 %lhs_or_call1723, 0
  %lhs_or_call1725 = load i32* %vdecl_slot1711
  %bop1726 = icmp eq i32 %lhs_or_call1725, 49
  %bop1727 = or i1 %bop1724, %bop1726
  br i1 %bop1727, label %__then194, label %__else193

__fresh248:
  br label %__then194

__then194:
  store i1 1, i1* %vdecl_slot1518
  br label %__merge192

__fresh249:
  br label %__else193

__else193:
  br label %__merge192

__merge192:
  %lhs_or_call1728 = load i32* %vdecl_slot1681
  %bop1729 = add i32 %lhs_or_call1728, 1
  store i32 %bop1729, i32* %vdecl_slot1681
  br label %__cond191

__fresh250:
  br label %__post189

__post189:
  %lhs_or_call1730 = load i1* %vdecl_slot1518
  br i1 %lhs_or_call1730, label %__then233, label %__else232

__fresh251:
  br label %__then233

__then233:
  %vtmp1732 = getelementptr %State* %_this1, i32 0, i32 0
  %vtable1731 = load %_State_vtable** %vtmp1732
  %fptmp1733 = getelementptr %_State_vtable* %vtable1731, i32 0, i32 2
  %method1734 = load void (%State*)** %fptmp1733
  call void %method1734( %State* %_this1 )
  %vdecl_slot1735 = alloca i32
  store i32 0, i32* %vdecl_slot1735
  br label %__cond197

__cond197:
  %lhs_or_call1736 = load i32* %vdecl_slot1735
  %bop1737 = icmp slt i32 %lhs_or_call1736, 4
  br i1 %bop1737, label %__body196, label %__post195

__fresh252:
  br label %__body196

__body196:
  %lhs_or_call1738 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1739 = load i32* %vdecl_slot1735
  %bound_ptr1741 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1738, i32 0, i32 0
  %bound1742 = load i32* %bound_ptr1741
  call void @oat_array_bounds_check( i32 %bound1742, i32 %lhs_or_call1739 )
  %elt1740 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1738, i32 0, i32 1, i32 %lhs_or_call1739
  %lhs_or_call1743 = load { i32, [ 0 x i32 ] }** %elt1740
  %bound_ptr1745 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1743, i32 0, i32 0
  %bound1746 = load i32* %bound_ptr1745
  call void @oat_array_bounds_check( i32 %bound1746, i32 0 )
  %elt1744 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1743, i32 0, i32 1, i32 0
  %lhs_or_call1747 = load i32* %elt1744
  %vdecl_slot1748 = alloca i32
  store i32 %lhs_or_call1747, i32* %vdecl_slot1748
  %lhs_or_call1749 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1550
  %lhs_or_call1750 = load i32* %vdecl_slot1735
  %bound_ptr1752 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1749, i32 0, i32 0
  %bound1753 = load i32* %bound_ptr1752
  call void @oat_array_bounds_check( i32 %bound1753, i32 %lhs_or_call1750 )
  %elt1751 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1749, i32 0, i32 1, i32 %lhs_or_call1750
  %lhs_or_call1754 = load { i32, [ 0 x i32 ] }** %elt1751
  %bound_ptr1756 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1754, i32 0, i32 0
  %bound1757 = load i32* %bound_ptr1756
  call void @oat_array_bounds_check( i32 %bound1757, i32 1 )
  %elt1755 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1754, i32 0, i32 1, i32 1
  %lhs_or_call1758 = load i32* %elt1755
  %vdecl_slot1759 = alloca i32
  store i32 %lhs_or_call1758, i32* %vdecl_slot1759
  %path1760 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1761 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1760
  %lhs_or_call1762 = load i32* %vdecl_slot1748
  %bound_ptr1764 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1761, i32 0, i32 0
  %bound1765 = load i32* %bound_ptr1764
  call void @oat_array_bounds_check( i32 %bound1765, i32 %lhs_or_call1762 )
  %elt1763 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1761, i32 0, i32 1, i32 %lhs_or_call1762
  %lhs_or_call1766 = load { i32, [ 0 x i32 ] }** %elt1763
  %lhs_or_call1767 = load i32* %vdecl_slot1759
  %bound_ptr1769 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1766, i32 0, i32 0
  %bound1770 = load i32* %bound_ptr1769
  call void @oat_array_bounds_check( i32 %bound1770, i32 %lhs_or_call1767 )
  %elt1768 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1766, i32 0, i32 1, i32 %lhs_or_call1767
  %lhs_or_call1771 = load i32* %vdecl_slot1555
  store i32 %lhs_or_call1771, i32* %elt1768
  %lhs_or_call1772 = load i32* %vdecl_slot1735
  %bop1773 = add i32 %lhs_or_call1772, 1
  store i32 %bop1773, i32* %vdecl_slot1735
  br label %__cond197

__fresh253:
  br label %__post195

__post195:
  %vdecl_slot1774 = alloca i32
  store i32 0, i32* %vdecl_slot1774
  br label %__cond200

__cond200:
  %lhs_or_call1775 = load i32* %vdecl_slot1774
  %bop1776 = icmp slt i32 %lhs_or_call1775, 50
  br i1 %bop1776, label %__body199, label %__post198

__fresh254:
  br label %__body199

__body199:
  %vdecl_slot1777 = alloca i1
  store i1 1, i1* %vdecl_slot1777
  %vdecl_slot1778 = alloca i32
  store i32 0, i32* %vdecl_slot1778
  br label %__cond203

__cond203:
  %lhs_or_call1779 = load i32* %vdecl_slot1778
  %bop1780 = icmp slt i32 %lhs_or_call1779, 10
  br i1 %bop1780, label %__body202, label %__post201

__fresh255:
  br label %__body202

__body202:
  %path1781 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1782 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1781
  %lhs_or_call1783 = load i32* %vdecl_slot1778
  %bound_ptr1785 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1782, i32 0, i32 0
  %bound1786 = load i32* %bound_ptr1785
  call void @oat_array_bounds_check( i32 %bound1786, i32 %lhs_or_call1783 )
  %elt1784 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1782, i32 0, i32 1, i32 %lhs_or_call1783
  %lhs_or_call1787 = load { i32, [ 0 x i32 ] }** %elt1784
  %lhs_or_call1788 = load i32* %vdecl_slot1774
  %bound_ptr1790 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1787, i32 0, i32 0
  %bound1791 = load i32* %bound_ptr1790
  call void @oat_array_bounds_check( i32 %bound1791, i32 %lhs_or_call1788 )
  %elt1789 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1787, i32 0, i32 1, i32 %lhs_or_call1788
  %lhs_or_call1792 = load i32* %elt1789
  %bop1793 = icmp eq i32 %lhs_or_call1792, 0
  br i1 %bop1793, label %__then206, label %__else205

__fresh256:
  br label %__then206

__then206:
  store i1 0, i1* %vdecl_slot1777
  br label %__merge204

__fresh257:
  br label %__else205

__else205:
  br label %__merge204

__merge204:
  %lhs_or_call1794 = load i32* %vdecl_slot1778
  %bop1795 = add i32 %lhs_or_call1794, 1
  store i32 %bop1795, i32* %vdecl_slot1778
  br label %__cond203

__fresh258:
  br label %__post201

__post201:
  %lhs_or_call1796 = load i1* %vdecl_slot1777
  br i1 %lhs_or_call1796, label %__then221, label %__else220

__fresh259:
  br label %__then221

__then221:
  %lhs_or_call1797 = load i32* %vdecl_slot1527
  %bop1798 = icmp sle i32 %lhs_or_call1797, 4
  br i1 %bop1798, label %__then209, label %__else208

__fresh260:
  br label %__then209

__then209:
  %lhs_or_call1799 = load { i32, [ 0 x i1 ] }** %vdecl_slot1526
  %lhs_or_call1800 = load i32* %vdecl_slot1527
  %bound_ptr1802 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call1799, i32 0, i32 0
  %bound1803 = load i32* %bound_ptr1802
  call void @oat_array_bounds_check( i32 %bound1803, i32 %lhs_or_call1800 )
  %elt1801 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call1799, i32 0, i32 1, i32 %lhs_or_call1800
  store i1 1, i1* %elt1801
  %lhs_or_call1804 = load i32* %vdecl_slot1527
  %bop1805 = add i32 %lhs_or_call1804, 1
  store i32 %bop1805, i32* %vdecl_slot1527
  br label %__merge207

__fresh261:
  br label %__else208

__else208:
  br label %__merge207

__merge207:
  %lhs_or_call1806 = load i32* %vdecl_slot1774
  %vdecl_slot1807 = alloca i32
  store i32 %lhs_or_call1806, i32* %vdecl_slot1807
  br label %__cond212

__cond212:
  %lhs_or_call1808 = load i32* %vdecl_slot1807
  %bop1809 = icmp sgt i32 %lhs_or_call1808, 0
  br i1 %bop1809, label %__body211, label %__post210

__fresh262:
  br label %__body211

__body211:
  %vdecl_slot1810 = alloca i32
  store i32 0, i32* %vdecl_slot1810
  br label %__cond215

__cond215:
  %lhs_or_call1811 = load i32* %vdecl_slot1810
  %bop1812 = icmp slt i32 %lhs_or_call1811, 10
  br i1 %bop1812, label %__body214, label %__post213

__fresh263:
  br label %__body214

__body214:
  %path1813 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1814 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1813
  %lhs_or_call1815 = load i32* %vdecl_slot1810
  %bound_ptr1817 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1814, i32 0, i32 0
  %bound1818 = load i32* %bound_ptr1817
  call void @oat_array_bounds_check( i32 %bound1818, i32 %lhs_or_call1815 )
  %elt1816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1814, i32 0, i32 1, i32 %lhs_or_call1815
  %lhs_or_call1819 = load { i32, [ 0 x i32 ] }** %elt1816
  %lhs_or_call1820 = load i32* %vdecl_slot1807
  %bound_ptr1822 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1819, i32 0, i32 0
  %bound1823 = load i32* %bound_ptr1822
  call void @oat_array_bounds_check( i32 %bound1823, i32 %lhs_or_call1820 )
  %elt1821 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1819, i32 0, i32 1, i32 %lhs_or_call1820
  %path1824 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1825 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1824
  %lhs_or_call1826 = load i32* %vdecl_slot1810
  %bound_ptr1828 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1825, i32 0, i32 0
  %bound1829 = load i32* %bound_ptr1828
  call void @oat_array_bounds_check( i32 %bound1829, i32 %lhs_or_call1826 )
  %elt1827 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1825, i32 0, i32 1, i32 %lhs_or_call1826
  %lhs_or_call1830 = load { i32, [ 0 x i32 ] }** %elt1827
  %lhs_or_call1831 = load i32* %vdecl_slot1807
  %bop1832 = sub i32 %lhs_or_call1831, 1
  %bound_ptr1834 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1830, i32 0, i32 0
  %bound1835 = load i32* %bound_ptr1834
  call void @oat_array_bounds_check( i32 %bound1835, i32 %bop1832 )
  %elt1833 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1830, i32 0, i32 1, i32 %bop1832
  %lhs_or_call1836 = load i32* %elt1833
  store i32 %lhs_or_call1836, i32* %elt1821
  %lhs_or_call1837 = load i32* %vdecl_slot1810
  %bop1838 = add i32 %lhs_or_call1837, 1
  store i32 %bop1838, i32* %vdecl_slot1810
  br label %__cond215

__fresh264:
  br label %__post213

__post213:
  %lhs_or_call1839 = load i32* %vdecl_slot1807
  %bop1840 = sub i32 %lhs_or_call1839, 1
  store i32 %bop1840, i32* %vdecl_slot1807
  br label %__cond212

__fresh265:
  br label %__post210

__post210:
  %vdecl_slot1841 = alloca i32
  store i32 0, i32* %vdecl_slot1841
  br label %__cond218

__cond218:
  %lhs_or_call1842 = load i32* %vdecl_slot1841
  %bop1843 = icmp slt i32 %lhs_or_call1842, 10
  br i1 %bop1843, label %__body217, label %__post216

__fresh266:
  br label %__body217

__body217:
  %path1844 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1845 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1844
  %lhs_or_call1846 = load i32* %vdecl_slot1841
  %bound_ptr1848 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1845, i32 0, i32 0
  %bound1849 = load i32* %bound_ptr1848
  call void @oat_array_bounds_check( i32 %bound1849, i32 %lhs_or_call1846 )
  %elt1847 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1845, i32 0, i32 1, i32 %lhs_or_call1846
  %lhs_or_call1850 = load { i32, [ 0 x i32 ] }** %elt1847
  %bound_ptr1852 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1850, i32 0, i32 0
  %bound1853 = load i32* %bound_ptr1852
  call void @oat_array_bounds_check( i32 %bound1853, i32 0 )
  %elt1851 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1850, i32 0, i32 1, i32 0
  store i32 0, i32* %elt1851
  %lhs_or_call1854 = load i32* %vdecl_slot1841
  %bop1855 = add i32 %lhs_or_call1854, 1
  store i32 %bop1855, i32* %vdecl_slot1841
  br label %__cond218

__fresh267:
  br label %__post216

__post216:
  br label %__merge219

__fresh268:
  br label %__else220

__else220:
  br label %__merge219

__merge219:
  %lhs_or_call1856 = load i32* %vdecl_slot1774
  %bop1857 = add i32 %lhs_or_call1856, 1
  store i32 %bop1857, i32* %vdecl_slot1774
  br label %__cond200

__fresh269:
  br label %__post198

__post198:
  %vdecl_slot1858 = alloca i32
  store i32 0, i32* %vdecl_slot1858
  br label %__cond224

__cond224:
  %lhs_or_call1859 = load i32* %vdecl_slot1858
  %bop1860 = icmp slt i32 %lhs_or_call1859, 10
  br i1 %bop1860, label %__body223, label %__post222

__fresh270:
  br label %__body223

__body223:
  %path1861 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1862 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1861
  %lhs_or_call1863 = load i32* %vdecl_slot1858
  %bound_ptr1865 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1862, i32 0, i32 0
  %bound1866 = load i32* %bound_ptr1865
  call void @oat_array_bounds_check( i32 %bound1866, i32 %lhs_or_call1863 )
  %elt1864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1862, i32 0, i32 1, i32 %lhs_or_call1863
  %lhs_or_call1867 = load { i32, [ 0 x i32 ] }** %elt1864
  %bound_ptr1869 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1867, i32 0, i32 0
  %bound1870 = load i32* %bound_ptr1869
  call void @oat_array_bounds_check( i32 %bound1870, i32 0 )
  %elt1868 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1867, i32 0, i32 1, i32 0
  %lhs_or_call1871 = load i32* %elt1868
  %bop1872 = icmp ne i32 %lhs_or_call1871, 0
  br i1 %bop1872, label %__then227, label %__else226

__fresh271:
  br label %__then227

__then227:
  %lhs_or_call1873 = load { i32, [ 0 x i1 ] }** %vdecl_slot1526
  %bound_ptr1875 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call1873, i32 0, i32 0
  %bound1876 = load i32* %bound_ptr1875
  call void @oat_array_bounds_check( i32 %bound1876, i32 0 )
  %elt1874 = getelementptr { i32, [ 0 x i1 ] }* %lhs_or_call1873, i32 0, i32 1, i32 0
  store i1 1, i1* %elt1874
  br label %__merge225

__fresh272:
  br label %__else226

__else226:
  br label %__merge225

__merge225:
  %lhs_or_call1877 = load i32* %vdecl_slot1858
  %bop1878 = add i32 %lhs_or_call1877, 1
  store i32 %bop1878, i32* %vdecl_slot1858
  br label %__cond224

__fresh273:
  br label %__post222

__post222:
  br label %__merge231

__fresh274:
  br label %__else232

__else232:
  %vdecl_slot1879 = alloca i32
  store i32 0, i32* %vdecl_slot1879
  br label %__cond230

__cond230:
  %lhs_or_call1880 = load i32* %vdecl_slot1879
  %bop1881 = icmp slt i32 %lhs_or_call1880, 4
  br i1 %bop1881, label %__body229, label %__post228

__fresh275:
  br label %__body229

__body229:
  %path1882 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1883 = load %Shape** %path1882
  %path1884 = getelementptr %Shape* %lhs_or_call1883, i32 0, i32 2
  %lhs_or_call1885 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1884
  %lhs_or_call1886 = load i32* %vdecl_slot1879
  %bound_ptr1888 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1885, i32 0, i32 0
  %bound1889 = load i32* %bound_ptr1888
  call void @oat_array_bounds_check( i32 %bound1889, i32 %lhs_or_call1886 )
  %elt1887 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1885, i32 0, i32 1, i32 %lhs_or_call1886
  %lhs_or_call1890 = load { i32, [ 0 x i32 ] }** %elt1887
  %bound_ptr1892 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1890, i32 0, i32 0
  %bound1893 = load i32* %bound_ptr1892
  call void @oat_array_bounds_check( i32 %bound1893, i32 0 )
  %elt1891 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1890, i32 0, i32 1, i32 0
  %lhs_or_call1894 = load i32* %elt1891
  %vdecl_slot1895 = alloca i32
  store i32 %lhs_or_call1894, i32* %vdecl_slot1895
  %path1896 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1897 = load %Shape** %path1896
  %path1898 = getelementptr %Shape* %lhs_or_call1897, i32 0, i32 2
  %lhs_or_call1899 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1898
  %lhs_or_call1900 = load i32* %vdecl_slot1879
  %bound_ptr1902 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1899, i32 0, i32 0
  %bound1903 = load i32* %bound_ptr1902
  call void @oat_array_bounds_check( i32 %bound1903, i32 %lhs_or_call1900 )
  %elt1901 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1899, i32 0, i32 1, i32 %lhs_or_call1900
  %lhs_or_call1904 = load { i32, [ 0 x i32 ] }** %elt1901
  %bound_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1904, i32 0, i32 0
  %bound1907 = load i32* %bound_ptr1906
  call void @oat_array_bounds_check( i32 %bound1907, i32 1 )
  %elt1905 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1904, i32 0, i32 1, i32 1
  %lhs_or_call1908 = load i32* %elt1905
  %vdecl_slot1909 = alloca i32
  store i32 %lhs_or_call1908, i32* %vdecl_slot1909
  %path1910 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1911 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1910
  %lhs_or_call1912 = load i32* %vdecl_slot1895
  %bound_ptr1914 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1911, i32 0, i32 0
  %bound1915 = load i32* %bound_ptr1914
  call void @oat_array_bounds_check( i32 %bound1915, i32 %lhs_or_call1912 )
  %elt1913 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1911, i32 0, i32 1, i32 %lhs_or_call1912
  %lhs_or_call1916 = load { i32, [ 0 x i32 ] }** %elt1913
  %lhs_or_call1917 = load i32* %vdecl_slot1909
  %bound_ptr1919 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1916, i32 0, i32 0
  %bound1920 = load i32* %bound_ptr1919
  call void @oat_array_bounds_check( i32 %bound1920, i32 %lhs_or_call1917 )
  %elt1918 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1916, i32 0, i32 1, i32 %lhs_or_call1917
  %lhs_or_call1921 = load i32* %vdecl_slot1555
  store i32 %lhs_or_call1921, i32* %elt1918
  %lhs_or_call1922 = load i32* %vdecl_slot1879
  %bop1923 = add i32 %lhs_or_call1922, 1
  store i32 %bop1923, i32* %vdecl_slot1879
  br label %__cond230

__fresh276:
  br label %__post228

__post228:
  br label %__merge231

__merge231:
  %lhs_or_call1924 = load { i32, [ 0 x i1 ] }** %vdecl_slot1526
  ret { i32, [ 0 x i1 ] }* %lhs_or_call1924
}


define void @_State_init (%State* %_this1){
__fresh170:
  ret void
}


define void @_State_make_new_shape (%State* %_this1){
__fresh167:
  %path1504 = getelementptr %State* %_this1, i32 0, i32 3
  %ret1505 = call i32 @get_rand_lt ( i32 7 )
  store i32 %ret1505, i32* %path1504
  %path1506 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call1507 = load i32* %path1506
  %bop1508 = icmp eq i32 %lhs_or_call1507, 7
  br i1 %bop1508, label %__then166, label %__else165

__fresh168:
  br label %__then166

__then166:
  %path1509 = getelementptr %State* %_this1, i32 0, i32 3
  store i32 0, i32* %path1509
  br label %__merge164

__fresh169:
  br label %__else165

__else165:
  br label %__merge164

__merge164:
  %path1510 = getelementptr %State* %_this1, i32 0, i32 2
  %path1511 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call1512 = load i32* %path1511
  %mem_ptr1513 = call i32* @oat_malloc ( i32 20 )
  %obj1514 = bitcast i32* %mem_ptr1513 to %Shape* 
  %new_obj1515 = call %Shape* @_Shape_ctor ( %Shape* %obj1514, i32 %lhs_or_call1512 )
  store %Shape* %new_obj1515, %Shape** %path1510
  ret void
}


define %State* @_State_ctor (%State* %_this1){
__fresh159:
  %cast_op1465 = bitcast %State* %_this1 to %Object* 
  %dummy1466 = call %Object* @_Object_ctor ( %Object* %cast_op1465 )
  %path1467 = getelementptr %State* %_this1, i32 0, i32 1
  store i8* @_const_str6, i8** %path1467
  %path1468 = getelementptr %State* %_this1, i32 0, i32 2
  %mem_ptr1469 = call i32* @oat_malloc ( i32 20 )
  %obj1470 = bitcast i32* %mem_ptr1469 to %Shape* 
  %new_obj1471 = call %Shape* @_Shape_ctor ( %Shape* %obj1470, i32 0 )
  store %Shape* %new_obj1471, %Shape** %path1468
  %path1472 = getelementptr %State* %_this1, i32 0, i32 4
  %array_ptr1473 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1474 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1473 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %_tmp51475 = alloca i32
  store i32 10, i32* %_tmp51475
  %_tmp61476 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1474, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %_tmp61476
  %vdecl_slot1477 = alloca i32
  store i32 0, i32* %vdecl_slot1477
  br label %__cond155

__cond155:
  %lhs_or_call1478 = load i32* %vdecl_slot1477
  %lhs_or_call1479 = load i32* %_tmp51475
  %bop1480 = icmp slt i32 %lhs_or_call1478, %lhs_or_call1479
  br i1 %bop1480, label %__body154, label %__post153

__fresh160:
  br label %__body154

__body154:
  %lhs_or_call1481 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %_tmp61476
  %lhs_or_call1482 = load i32* %vdecl_slot1477
  %bound_ptr1484 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1481, i32 0, i32 0
  %bound1485 = load i32* %bound_ptr1484
  call void @oat_array_bounds_check( i32 %bound1485, i32 %lhs_or_call1482 )
  %elt1483 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1481, i32 0, i32 1, i32 %lhs_or_call1482
  %array_ptr1486 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array1487 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1486 to { i32, [ 0 x i32 ] }* 
  %_tmp71488 = alloca i32
  store i32 50, i32* %_tmp71488
  %_tmp81489 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1487, { i32, [ 0 x i32 ] }** %_tmp81489
  %vdecl_slot1490 = alloca i32
  store i32 0, i32* %vdecl_slot1490
  br label %__cond158

__cond158:
  %lhs_or_call1491 = load i32* %vdecl_slot1490
  %lhs_or_call1492 = load i32* %_tmp71488
  %bop1493 = icmp slt i32 %lhs_or_call1491, %lhs_or_call1492
  br i1 %bop1493, label %__body157, label %__post156

__fresh161:
  br label %__body157

__body157:
  %lhs_or_call1494 = load { i32, [ 0 x i32 ] }** %_tmp81489
  %lhs_or_call1495 = load i32* %vdecl_slot1490
  %bound_ptr1497 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1494, i32 0, i32 0
  %bound1498 = load i32* %bound_ptr1497
  call void @oat_array_bounds_check( i32 %bound1498, i32 %lhs_or_call1495 )
  %elt1496 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1494, i32 0, i32 1, i32 %lhs_or_call1495
  store i32 0, i32* %elt1496
  %lhs_or_call1499 = load i32* %vdecl_slot1490
  %bop1500 = add i32 %lhs_or_call1499, 1
  store i32 %bop1500, i32* %vdecl_slot1490
  br label %__cond158

__fresh162:
  br label %__post156

__post156:
  store { i32, [ 0 x i32 ] }* %array1487, { i32, [ 0 x i32 ] }** %elt1483
  %lhs_or_call1501 = load i32* %vdecl_slot1477
  %bop1502 = add i32 %lhs_or_call1501, 1
  store i32 %bop1502, i32* %vdecl_slot1477
  br label %__cond155

__fresh163:
  br label %__post153

__post153:
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1474, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1472
  %vt_slot1503 = getelementptr %State* %_this1, i32 0, i32 0
  store %_State_vtable* @_State_vtable3, %_State_vtable** %vt_slot1503
  ret %State* %_this1
}


define void @_Shape_rotate_left (%Shape* %_this1){
__fresh142:
  %array_ptr1135 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1136 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1135 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1137 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1138 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1137 to { i32, [ 0 x i32 ] }* 
  %index_ptr1139 = getelementptr { i32, [ 0 x i32 ] }* %array1138, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1139
  %index_ptr1140 = getelementptr { i32, [ 0 x i32 ] }* %array1138, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1140
  %index_ptr1141 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1136, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1138, { i32, [ 0 x i32 ] }** %index_ptr1141
  %array_ptr1142 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1143 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1142 to { i32, [ 0 x i32 ] }* 
  %index_ptr1144 = getelementptr { i32, [ 0 x i32 ] }* %array1143, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1144
  %index_ptr1145 = getelementptr { i32, [ 0 x i32 ] }* %array1143, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1145
  %index_ptr1146 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1136, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1143, { i32, [ 0 x i32 ] }** %index_ptr1146
  %array_ptr1147 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1148 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1147 to { i32, [ 0 x i32 ] }* 
  %index_ptr1149 = getelementptr { i32, [ 0 x i32 ] }* %array1148, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1149
  %index_ptr1150 = getelementptr { i32, [ 0 x i32 ] }* %array1148, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1150
  %index_ptr1151 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1136, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1148, { i32, [ 0 x i32 ] }** %index_ptr1151
  %array_ptr1152 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1153 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1152 to { i32, [ 0 x i32 ] }* 
  %index_ptr1154 = getelementptr { i32, [ 0 x i32 ] }* %array1153, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1154
  %index_ptr1155 = getelementptr { i32, [ 0 x i32 ] }* %array1153, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1155
  %index_ptr1156 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1136, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1153, { i32, [ 0 x i32 ] }** %index_ptr1156
  %vdecl_slot1157 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1136, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1157
  %vdecl_slot1158 = alloca i1
  store i1 1, i1* %vdecl_slot1158
  %vdecl_slot1159 = alloca i32
  store i32 0, i32* %vdecl_slot1159
  br label %__cond129

__cond129:
  %lhs_or_call1160 = load i32* %vdecl_slot1159
  %bop1161 = icmp slt i32 %lhs_or_call1160, 4
  br i1 %bop1161, label %__body128, label %__post127

__fresh143:
  br label %__body128

__body128:
  %lhs_or_call1162 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1157
  %lhs_or_call1163 = load i32* %vdecl_slot1159
  %bound_ptr1165 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1162, i32 0, i32 0
  %bound1166 = load i32* %bound_ptr1165
  call void @oat_array_bounds_check( i32 %bound1166, i32 %lhs_or_call1163 )
  %elt1164 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1162, i32 0, i32 1, i32 %lhs_or_call1163
  %lhs_or_call1167 = load { i32, [ 0 x i32 ] }** %elt1164
  %bound_ptr1169 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1167, i32 0, i32 0
  %bound1170 = load i32* %bound_ptr1169
  call void @oat_array_bounds_check( i32 %bound1170, i32 0 )
  %elt1168 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1167, i32 0, i32 1, i32 0
  %path1171 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1172 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1171
  %lhs_or_call1173 = load i32* %vdecl_slot1159
  %bound_ptr1175 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1172, i32 0, i32 0
  %bound1176 = load i32* %bound_ptr1175
  call void @oat_array_bounds_check( i32 %bound1176, i32 %lhs_or_call1173 )
  %elt1174 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1172, i32 0, i32 1, i32 %lhs_or_call1173
  %lhs_or_call1177 = load { i32, [ 0 x i32 ] }** %elt1174
  %bound_ptr1179 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1177, i32 0, i32 0
  %bound1180 = load i32* %bound_ptr1179
  call void @oat_array_bounds_check( i32 %bound1180, i32 0 )
  %elt1178 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1177, i32 0, i32 1, i32 0
  %lhs_or_call1181 = load i32* %elt1178
  store i32 %lhs_or_call1181, i32* %elt1168
  %lhs_or_call1182 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1157
  %lhs_or_call1183 = load i32* %vdecl_slot1159
  %bound_ptr1185 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1182, i32 0, i32 0
  %bound1186 = load i32* %bound_ptr1185
  call void @oat_array_bounds_check( i32 %bound1186, i32 %lhs_or_call1183 )
  %elt1184 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1182, i32 0, i32 1, i32 %lhs_or_call1183
  %lhs_or_call1187 = load { i32, [ 0 x i32 ] }** %elt1184
  %bound_ptr1189 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1187, i32 0, i32 0
  %bound1190 = load i32* %bound_ptr1189
  call void @oat_array_bounds_check( i32 %bound1190, i32 1 )
  %elt1188 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1187, i32 0, i32 1, i32 1
  %path1191 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1192 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1191
  %lhs_or_call1193 = load i32* %vdecl_slot1159
  %bound_ptr1195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1192, i32 0, i32 0
  %bound1196 = load i32* %bound_ptr1195
  call void @oat_array_bounds_check( i32 %bound1196, i32 %lhs_or_call1193 )
  %elt1194 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1192, i32 0, i32 1, i32 %lhs_or_call1193
  %lhs_or_call1197 = load { i32, [ 0 x i32 ] }** %elt1194
  %bound_ptr1199 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1197, i32 0, i32 0
  %bound1200 = load i32* %bound_ptr1199
  call void @oat_array_bounds_check( i32 %bound1200, i32 1 )
  %elt1198 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1197, i32 0, i32 1, i32 1
  %lhs_or_call1201 = load i32* %elt1198
  store i32 %lhs_or_call1201, i32* %elt1188
  %lhs_or_call1202 = load i32* %vdecl_slot1159
  %bop1203 = add i32 %lhs_or_call1202, 1
  store i32 %bop1203, i32* %vdecl_slot1159
  br label %__cond129

__fresh144:
  br label %__post127

__post127:
  %vdecl_slot1204 = alloca i32
  store i32 0, i32* %vdecl_slot1204
  br label %__cond132

__cond132:
  %lhs_or_call1205 = load i32* %vdecl_slot1204
  %bop1206 = icmp slt i32 %lhs_or_call1205, 4
  br i1 %bop1206, label %__body131, label %__post130

__fresh145:
  br label %__body131

__body131:
  %vdecl_slot1207 = alloca i32
  store i32 0, i32* %vdecl_slot1207
  %path1208 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1209 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1208
  %lhs_or_call1210 = load i32* %vdecl_slot1204
  %bound_ptr1212 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1209, i32 0, i32 0
  %bound1213 = load i32* %bound_ptr1212
  call void @oat_array_bounds_check( i32 %bound1213, i32 %lhs_or_call1210 )
  %elt1211 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1209, i32 0, i32 1, i32 %lhs_or_call1210
  %lhs_or_call1214 = load { i32, [ 0 x i32 ] }** %elt1211
  %bound_ptr1216 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1214, i32 0, i32 0
  %bound1217 = load i32* %bound_ptr1216
  call void @oat_array_bounds_check( i32 %bound1217, i32 0 )
  %elt1215 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1214, i32 0, i32 1, i32 0
  %path1218 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1219 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1218
  %lhs_or_call1220 = load i32* %vdecl_slot1204
  %bound_ptr1222 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1219, i32 0, i32 0
  %bound1223 = load i32* %bound_ptr1222
  call void @oat_array_bounds_check( i32 %bound1223, i32 %lhs_or_call1220 )
  %elt1221 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1219, i32 0, i32 1, i32 %lhs_or_call1220
  %lhs_or_call1224 = load { i32, [ 0 x i32 ] }** %elt1221
  %bound_ptr1226 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1224, i32 0, i32 0
  %bound1227 = load i32* %bound_ptr1226
  call void @oat_array_bounds_check( i32 %bound1227, i32 0 )
  %elt1225 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1224, i32 0, i32 1, i32 0
  %lhs_or_call1228 = load i32* %elt1225
  %path1229 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1230 = load { i32, [ 0 x i32 ] }** %path1229
  %bound_ptr1232 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1230, i32 0, i32 0
  %bound1233 = load i32* %bound_ptr1232
  call void @oat_array_bounds_check( i32 %bound1233, i32 0 )
  %elt1231 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1230, i32 0, i32 1, i32 0
  %lhs_or_call1234 = load i32* %elt1231
  %bop1235 = sub i32 %lhs_or_call1228, %lhs_or_call1234
  store i32 %bop1235, i32* %elt1215
  %path1236 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1236
  %lhs_or_call1238 = load i32* %vdecl_slot1204
  %bound_ptr1240 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1237, i32 0, i32 0
  %bound1241 = load i32* %bound_ptr1240
  call void @oat_array_bounds_check( i32 %bound1241, i32 %lhs_or_call1238 )
  %elt1239 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1237, i32 0, i32 1, i32 %lhs_or_call1238
  %lhs_or_call1242 = load { i32, [ 0 x i32 ] }** %elt1239
  %bound_ptr1244 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1242, i32 0, i32 0
  %bound1245 = load i32* %bound_ptr1244
  call void @oat_array_bounds_check( i32 %bound1245, i32 1 )
  %elt1243 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1242, i32 0, i32 1, i32 1
  %path1246 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1247 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1246
  %lhs_or_call1248 = load i32* %vdecl_slot1204
  %bound_ptr1250 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1247, i32 0, i32 0
  %bound1251 = load i32* %bound_ptr1250
  call void @oat_array_bounds_check( i32 %bound1251, i32 %lhs_or_call1248 )
  %elt1249 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1247, i32 0, i32 1, i32 %lhs_or_call1248
  %lhs_or_call1252 = load { i32, [ 0 x i32 ] }** %elt1249
  %bound_ptr1254 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1252, i32 0, i32 0
  %bound1255 = load i32* %bound_ptr1254
  call void @oat_array_bounds_check( i32 %bound1255, i32 1 )
  %elt1253 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1252, i32 0, i32 1, i32 1
  %lhs_or_call1256 = load i32* %elt1253
  %path1257 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1258 = load { i32, [ 0 x i32 ] }** %path1257
  %bound_ptr1260 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1258, i32 0, i32 0
  %bound1261 = load i32* %bound_ptr1260
  call void @oat_array_bounds_check( i32 %bound1261, i32 1 )
  %elt1259 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1258, i32 0, i32 1, i32 1
  %lhs_or_call1262 = load i32* %elt1259
  %bop1263 = sub i32 %lhs_or_call1256, %lhs_or_call1262
  store i32 %bop1263, i32* %elt1243
  %path1264 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1265 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1264
  %lhs_or_call1266 = load i32* %vdecl_slot1204
  %bound_ptr1268 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1265, i32 0, i32 0
  %bound1269 = load i32* %bound_ptr1268
  call void @oat_array_bounds_check( i32 %bound1269, i32 %lhs_or_call1266 )
  %elt1267 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1265, i32 0, i32 1, i32 %lhs_or_call1266
  %lhs_or_call1270 = load { i32, [ 0 x i32 ] }** %elt1267
  %bound_ptr1272 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1270, i32 0, i32 0
  %bound1273 = load i32* %bound_ptr1272
  call void @oat_array_bounds_check( i32 %bound1273, i32 1 )
  %elt1271 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1270, i32 0, i32 1, i32 1
  %lhs_or_call1274 = load i32* %elt1271
  store i32 %lhs_or_call1274, i32* %vdecl_slot1207
  %path1275 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1276 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1275
  %lhs_or_call1277 = load i32* %vdecl_slot1204
  %bound_ptr1279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1276, i32 0, i32 0
  %bound1280 = load i32* %bound_ptr1279
  call void @oat_array_bounds_check( i32 %bound1280, i32 %lhs_or_call1277 )
  %elt1278 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1276, i32 0, i32 1, i32 %lhs_or_call1277
  %lhs_or_call1281 = load { i32, [ 0 x i32 ] }** %elt1278
  %bound_ptr1283 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1281, i32 0, i32 0
  %bound1284 = load i32* %bound_ptr1283
  call void @oat_array_bounds_check( i32 %bound1284, i32 1 )
  %elt1282 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1281, i32 0, i32 1, i32 1
  %unop1285 = sub i32 0, 1
  %path1286 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1287 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1286
  %lhs_or_call1288 = load i32* %vdecl_slot1204
  %bound_ptr1290 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1287, i32 0, i32 0
  %bound1291 = load i32* %bound_ptr1290
  call void @oat_array_bounds_check( i32 %bound1291, i32 %lhs_or_call1288 )
  %elt1289 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1287, i32 0, i32 1, i32 %lhs_or_call1288
  %lhs_or_call1292 = load { i32, [ 0 x i32 ] }** %elt1289
  %bound_ptr1294 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1292, i32 0, i32 0
  %bound1295 = load i32* %bound_ptr1294
  call void @oat_array_bounds_check( i32 %bound1295, i32 0 )
  %elt1293 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1292, i32 0, i32 1, i32 0
  %lhs_or_call1296 = load i32* %elt1293
  %bop1297 = mul i32 %unop1285, %lhs_or_call1296
  store i32 %bop1297, i32* %elt1282
  %path1298 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1299 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1298
  %lhs_or_call1300 = load i32* %vdecl_slot1204
  %bound_ptr1302 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1299, i32 0, i32 0
  %bound1303 = load i32* %bound_ptr1302
  call void @oat_array_bounds_check( i32 %bound1303, i32 %lhs_or_call1300 )
  %elt1301 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1299, i32 0, i32 1, i32 %lhs_or_call1300
  %lhs_or_call1304 = load { i32, [ 0 x i32 ] }** %elt1301
  %bound_ptr1306 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1304, i32 0, i32 0
  %bound1307 = load i32* %bound_ptr1306
  call void @oat_array_bounds_check( i32 %bound1307, i32 0 )
  %elt1305 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1304, i32 0, i32 1, i32 0
  %lhs_or_call1308 = load i32* %vdecl_slot1207
  store i32 %lhs_or_call1308, i32* %elt1305
  %path1309 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1310 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1309
  %lhs_or_call1311 = load i32* %vdecl_slot1204
  %bound_ptr1313 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1310, i32 0, i32 0
  %bound1314 = load i32* %bound_ptr1313
  call void @oat_array_bounds_check( i32 %bound1314, i32 %lhs_or_call1311 )
  %elt1312 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1310, i32 0, i32 1, i32 %lhs_or_call1311
  %lhs_or_call1315 = load { i32, [ 0 x i32 ] }** %elt1312
  %bound_ptr1317 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1315, i32 0, i32 0
  %bound1318 = load i32* %bound_ptr1317
  call void @oat_array_bounds_check( i32 %bound1318, i32 0 )
  %elt1316 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1315, i32 0, i32 1, i32 0
  %path1319 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1320 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1319
  %lhs_or_call1321 = load i32* %vdecl_slot1204
  %bound_ptr1323 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1320, i32 0, i32 0
  %bound1324 = load i32* %bound_ptr1323
  call void @oat_array_bounds_check( i32 %bound1324, i32 %lhs_or_call1321 )
  %elt1322 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1320, i32 0, i32 1, i32 %lhs_or_call1321
  %lhs_or_call1325 = load { i32, [ 0 x i32 ] }** %elt1322
  %bound_ptr1327 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1325, i32 0, i32 0
  %bound1328 = load i32* %bound_ptr1327
  call void @oat_array_bounds_check( i32 %bound1328, i32 0 )
  %elt1326 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1325, i32 0, i32 1, i32 0
  %lhs_or_call1329 = load i32* %elt1326
  %path1330 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1331 = load { i32, [ 0 x i32 ] }** %path1330
  %bound_ptr1333 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1331, i32 0, i32 0
  %bound1334 = load i32* %bound_ptr1333
  call void @oat_array_bounds_check( i32 %bound1334, i32 0 )
  %elt1332 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1331, i32 0, i32 1, i32 0
  %lhs_or_call1335 = load i32* %elt1332
  %bop1336 = add i32 %lhs_or_call1329, %lhs_or_call1335
  store i32 %bop1336, i32* %elt1316
  %path1337 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1338 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1337
  %lhs_or_call1339 = load i32* %vdecl_slot1204
  %bound_ptr1341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1338, i32 0, i32 0
  %bound1342 = load i32* %bound_ptr1341
  call void @oat_array_bounds_check( i32 %bound1342, i32 %lhs_or_call1339 )
  %elt1340 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1338, i32 0, i32 1, i32 %lhs_or_call1339
  %lhs_or_call1343 = load { i32, [ 0 x i32 ] }** %elt1340
  %bound_ptr1345 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1343, i32 0, i32 0
  %bound1346 = load i32* %bound_ptr1345
  call void @oat_array_bounds_check( i32 %bound1346, i32 1 )
  %elt1344 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1343, i32 0, i32 1, i32 1
  %path1347 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1348 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1347
  %lhs_or_call1349 = load i32* %vdecl_slot1204
  %bound_ptr1351 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1348, i32 0, i32 0
  %bound1352 = load i32* %bound_ptr1351
  call void @oat_array_bounds_check( i32 %bound1352, i32 %lhs_or_call1349 )
  %elt1350 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1348, i32 0, i32 1, i32 %lhs_or_call1349
  %lhs_or_call1353 = load { i32, [ 0 x i32 ] }** %elt1350
  %bound_ptr1355 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1353, i32 0, i32 0
  %bound1356 = load i32* %bound_ptr1355
  call void @oat_array_bounds_check( i32 %bound1356, i32 1 )
  %elt1354 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1353, i32 0, i32 1, i32 1
  %lhs_or_call1357 = load i32* %elt1354
  %path1358 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1359 = load { i32, [ 0 x i32 ] }** %path1358
  %bound_ptr1361 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1359, i32 0, i32 0
  %bound1362 = load i32* %bound_ptr1361
  call void @oat_array_bounds_check( i32 %bound1362, i32 1 )
  %elt1360 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1359, i32 0, i32 1, i32 1
  %lhs_or_call1363 = load i32* %elt1360
  %bop1364 = add i32 %lhs_or_call1357, %lhs_or_call1363
  store i32 %bop1364, i32* %elt1344
  %path1365 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1366 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1365
  %lhs_or_call1367 = load i32* %vdecl_slot1204
  %bound_ptr1369 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1366, i32 0, i32 0
  %bound1370 = load i32* %bound_ptr1369
  call void @oat_array_bounds_check( i32 %bound1370, i32 %lhs_or_call1367 )
  %elt1368 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1366, i32 0, i32 1, i32 %lhs_or_call1367
  %lhs_or_call1371 = load { i32, [ 0 x i32 ] }** %elt1368
  %bound_ptr1373 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1371, i32 0, i32 0
  %bound1374 = load i32* %bound_ptr1373
  call void @oat_array_bounds_check( i32 %bound1374, i32 1 )
  %elt1372 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1371, i32 0, i32 1, i32 1
  %lhs_or_call1375 = load i32* %elt1372
  %bop1376 = icmp slt i32 %lhs_or_call1375, 0
  %path1377 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1378 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1377
  %lhs_or_call1379 = load i32* %vdecl_slot1204
  %bound_ptr1381 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1378, i32 0, i32 0
  %bound1382 = load i32* %bound_ptr1381
  call void @oat_array_bounds_check( i32 %bound1382, i32 %lhs_or_call1379 )
  %elt1380 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1378, i32 0, i32 1, i32 %lhs_or_call1379
  %lhs_or_call1383 = load { i32, [ 0 x i32 ] }** %elt1380
  %bound_ptr1385 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1383, i32 0, i32 0
  %bound1386 = load i32* %bound_ptr1385
  call void @oat_array_bounds_check( i32 %bound1386, i32 1 )
  %elt1384 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1383, i32 0, i32 1, i32 1
  %lhs_or_call1387 = load i32* %elt1384
  %bop1388 = icmp sgt i32 %lhs_or_call1387, 49
  %bop1389 = or i1 %bop1376, %bop1388
  %path1390 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1391 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1390
  %lhs_or_call1392 = load i32* %vdecl_slot1204
  %bound_ptr1394 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1391, i32 0, i32 0
  %bound1395 = load i32* %bound_ptr1394
  call void @oat_array_bounds_check( i32 %bound1395, i32 %lhs_or_call1392 )
  %elt1393 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1391, i32 0, i32 1, i32 %lhs_or_call1392
  %lhs_or_call1396 = load { i32, [ 0 x i32 ] }** %elt1393
  %bound_ptr1398 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1396, i32 0, i32 0
  %bound1399 = load i32* %bound_ptr1398
  call void @oat_array_bounds_check( i32 %bound1399, i32 0 )
  %elt1397 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1396, i32 0, i32 1, i32 0
  %lhs_or_call1400 = load i32* %elt1397
  %bop1401 = icmp slt i32 %lhs_or_call1400, 0
  %bop1402 = or i1 %bop1389, %bop1401
  %path1403 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1404 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1403
  %lhs_or_call1405 = load i32* %vdecl_slot1204
  %bound_ptr1407 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1404, i32 0, i32 0
  %bound1408 = load i32* %bound_ptr1407
  call void @oat_array_bounds_check( i32 %bound1408, i32 %lhs_or_call1405 )
  %elt1406 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1404, i32 0, i32 1, i32 %lhs_or_call1405
  %lhs_or_call1409 = load { i32, [ 0 x i32 ] }** %elt1406
  %bound_ptr1411 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1409, i32 0, i32 0
  %bound1412 = load i32* %bound_ptr1411
  call void @oat_array_bounds_check( i32 %bound1412, i32 0 )
  %elt1410 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1409, i32 0, i32 1, i32 0
  %lhs_or_call1413 = load i32* %elt1410
  %bop1414 = icmp sgt i32 %lhs_or_call1413, 9
  %bop1415 = or i1 %bop1402, %bop1414
  br i1 %bop1415, label %__then135, label %__else134

__fresh146:
  br label %__then135

__then135:
  store i1 0, i1* %vdecl_slot1158
  br label %__merge133

__fresh147:
  br label %__else134

__else134:
  br label %__merge133

__merge133:
  %lhs_or_call1416 = load i32* %vdecl_slot1204
  %bop1417 = add i32 %lhs_or_call1416, 1
  store i32 %bop1417, i32* %vdecl_slot1204
  br label %__cond132

__fresh148:
  br label %__post130

__post130:
  %lhs_or_call1418 = load i1* %vdecl_slot1158
  %bop1419 = icmp eq i1 %lhs_or_call1418, 0
  br i1 %bop1419, label %__then141, label %__else140

__fresh149:
  br label %__then141

__then141:
  %vdecl_slot1420 = alloca i32
  store i32 0, i32* %vdecl_slot1420
  br label %__cond138

__cond138:
  %lhs_or_call1421 = load i32* %vdecl_slot1420
  %bop1422 = icmp slt i32 %lhs_or_call1421, 4
  br i1 %bop1422, label %__body137, label %__post136

__fresh150:
  br label %__body137

__body137:
  %path1423 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1424 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1423
  %lhs_or_call1425 = load i32* %vdecl_slot1420
  %bound_ptr1427 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1424, i32 0, i32 0
  %bound1428 = load i32* %bound_ptr1427
  call void @oat_array_bounds_check( i32 %bound1428, i32 %lhs_or_call1425 )
  %elt1426 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1424, i32 0, i32 1, i32 %lhs_or_call1425
  %lhs_or_call1429 = load { i32, [ 0 x i32 ] }** %elt1426
  %bound_ptr1431 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1429, i32 0, i32 0
  %bound1432 = load i32* %bound_ptr1431
  call void @oat_array_bounds_check( i32 %bound1432, i32 0 )
  %elt1430 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1429, i32 0, i32 1, i32 0
  %lhs_or_call1433 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1157
  %lhs_or_call1434 = load i32* %vdecl_slot1420
  %bound_ptr1436 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1433, i32 0, i32 0
  %bound1437 = load i32* %bound_ptr1436
  call void @oat_array_bounds_check( i32 %bound1437, i32 %lhs_or_call1434 )
  %elt1435 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1433, i32 0, i32 1, i32 %lhs_or_call1434
  %lhs_or_call1438 = load { i32, [ 0 x i32 ] }** %elt1435
  %bound_ptr1440 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1438, i32 0, i32 0
  %bound1441 = load i32* %bound_ptr1440
  call void @oat_array_bounds_check( i32 %bound1441, i32 0 )
  %elt1439 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1438, i32 0, i32 1, i32 0
  %lhs_or_call1442 = load i32* %elt1439
  store i32 %lhs_or_call1442, i32* %elt1430
  %path1443 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1444 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1443
  %lhs_or_call1445 = load i32* %vdecl_slot1420
  %bound_ptr1447 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1444, i32 0, i32 0
  %bound1448 = load i32* %bound_ptr1447
  call void @oat_array_bounds_check( i32 %bound1448, i32 %lhs_or_call1445 )
  %elt1446 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1444, i32 0, i32 1, i32 %lhs_or_call1445
  %lhs_or_call1449 = load { i32, [ 0 x i32 ] }** %elt1446
  %bound_ptr1451 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1449, i32 0, i32 0
  %bound1452 = load i32* %bound_ptr1451
  call void @oat_array_bounds_check( i32 %bound1452, i32 1 )
  %elt1450 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1449, i32 0, i32 1, i32 1
  %lhs_or_call1453 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1157
  %lhs_or_call1454 = load i32* %vdecl_slot1420
  %bound_ptr1456 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1453, i32 0, i32 0
  %bound1457 = load i32* %bound_ptr1456
  call void @oat_array_bounds_check( i32 %bound1457, i32 %lhs_or_call1454 )
  %elt1455 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1453, i32 0, i32 1, i32 %lhs_or_call1454
  %lhs_or_call1458 = load { i32, [ 0 x i32 ] }** %elt1455
  %bound_ptr1460 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1458, i32 0, i32 0
  %bound1461 = load i32* %bound_ptr1460
  call void @oat_array_bounds_check( i32 %bound1461, i32 1 )
  %elt1459 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1458, i32 0, i32 1, i32 1
  %lhs_or_call1462 = load i32* %elt1459
  store i32 %lhs_or_call1462, i32* %elt1450
  %lhs_or_call1463 = load i32* %vdecl_slot1420
  %bop1464 = add i32 %lhs_or_call1463, 1
  store i32 %bop1464, i32* %vdecl_slot1420
  br label %__cond138

__fresh151:
  br label %__post136

__post136:
  br label %__merge139

__fresh152:
  br label %__else140

__else140:
  br label %__merge139

__merge139:
  ret void
}


define void @_Shape_rotate_right (%Shape* %_this1){
__fresh116:
  %array_ptr805 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array806 = bitcast { i32, [ 0 x i32 ] }* %array_ptr805 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr807 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array808 = bitcast { i32, [ 0 x i32 ] }* %array_ptr807 to { i32, [ 0 x i32 ] }* 
  %index_ptr809 = getelementptr { i32, [ 0 x i32 ] }* %array808, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr809
  %index_ptr810 = getelementptr { i32, [ 0 x i32 ] }* %array808, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr810
  %index_ptr811 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array808, { i32, [ 0 x i32 ] }** %index_ptr811
  %array_ptr812 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array813 = bitcast { i32, [ 0 x i32 ] }* %array_ptr812 to { i32, [ 0 x i32 ] }* 
  %index_ptr814 = getelementptr { i32, [ 0 x i32 ] }* %array813, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr814
  %index_ptr815 = getelementptr { i32, [ 0 x i32 ] }* %array813, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr815
  %index_ptr816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array813, { i32, [ 0 x i32 ] }** %index_ptr816
  %array_ptr817 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array818 = bitcast { i32, [ 0 x i32 ] }* %array_ptr817 to { i32, [ 0 x i32 ] }* 
  %index_ptr819 = getelementptr { i32, [ 0 x i32 ] }* %array818, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr819
  %index_ptr820 = getelementptr { i32, [ 0 x i32 ] }* %array818, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr820
  %index_ptr821 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array818, { i32, [ 0 x i32 ] }** %index_ptr821
  %array_ptr822 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array823 = bitcast { i32, [ 0 x i32 ] }* %array_ptr822 to { i32, [ 0 x i32 ] }* 
  %index_ptr824 = getelementptr { i32, [ 0 x i32 ] }* %array823, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr824
  %index_ptr825 = getelementptr { i32, [ 0 x i32 ] }* %array823, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr825
  %index_ptr826 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array823, { i32, [ 0 x i32 ] }** %index_ptr826
  %vdecl_slot827 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array806, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot827
  %vdecl_slot828 = alloca i1
  store i1 1, i1* %vdecl_slot828
  %vdecl_slot829 = alloca i32
  store i32 0, i32* %vdecl_slot829
  br label %__cond103

__cond103:
  %lhs_or_call830 = load i32* %vdecl_slot829
  %bop831 = icmp slt i32 %lhs_or_call830, 4
  br i1 %bop831, label %__body102, label %__post101

__fresh117:
  br label %__body102

__body102:
  %lhs_or_call832 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot827
  %lhs_or_call833 = load i32* %vdecl_slot829
  %bound_ptr835 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call832, i32 0, i32 0
  %bound836 = load i32* %bound_ptr835
  call void @oat_array_bounds_check( i32 %bound836, i32 %lhs_or_call833 )
  %elt834 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call832, i32 0, i32 1, i32 %lhs_or_call833
  %lhs_or_call837 = load { i32, [ 0 x i32 ] }** %elt834
  %bound_ptr839 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call837, i32 0, i32 0
  %bound840 = load i32* %bound_ptr839
  call void @oat_array_bounds_check( i32 %bound840, i32 0 )
  %elt838 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call837, i32 0, i32 1, i32 0
  %path841 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call842 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path841
  %lhs_or_call843 = load i32* %vdecl_slot829
  %bound_ptr845 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call842, i32 0, i32 0
  %bound846 = load i32* %bound_ptr845
  call void @oat_array_bounds_check( i32 %bound846, i32 %lhs_or_call843 )
  %elt844 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call842, i32 0, i32 1, i32 %lhs_or_call843
  %lhs_or_call847 = load { i32, [ 0 x i32 ] }** %elt844
  %bound_ptr849 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call847, i32 0, i32 0
  %bound850 = load i32* %bound_ptr849
  call void @oat_array_bounds_check( i32 %bound850, i32 0 )
  %elt848 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call847, i32 0, i32 1, i32 0
  %lhs_or_call851 = load i32* %elt848
  store i32 %lhs_or_call851, i32* %elt838
  %lhs_or_call852 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot827
  %lhs_or_call853 = load i32* %vdecl_slot829
  %bound_ptr855 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call852, i32 0, i32 0
  %bound856 = load i32* %bound_ptr855
  call void @oat_array_bounds_check( i32 %bound856, i32 %lhs_or_call853 )
  %elt854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call852, i32 0, i32 1, i32 %lhs_or_call853
  %lhs_or_call857 = load { i32, [ 0 x i32 ] }** %elt854
  %bound_ptr859 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call857, i32 0, i32 0
  %bound860 = load i32* %bound_ptr859
  call void @oat_array_bounds_check( i32 %bound860, i32 1 )
  %elt858 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call857, i32 0, i32 1, i32 1
  %path861 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call862 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path861
  %lhs_or_call863 = load i32* %vdecl_slot829
  %bound_ptr865 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call862, i32 0, i32 0
  %bound866 = load i32* %bound_ptr865
  call void @oat_array_bounds_check( i32 %bound866, i32 %lhs_or_call863 )
  %elt864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call862, i32 0, i32 1, i32 %lhs_or_call863
  %lhs_or_call867 = load { i32, [ 0 x i32 ] }** %elt864
  %bound_ptr869 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call867, i32 0, i32 0
  %bound870 = load i32* %bound_ptr869
  call void @oat_array_bounds_check( i32 %bound870, i32 1 )
  %elt868 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call867, i32 0, i32 1, i32 1
  %lhs_or_call871 = load i32* %elt868
  store i32 %lhs_or_call871, i32* %elt858
  %lhs_or_call872 = load i32* %vdecl_slot829
  %bop873 = add i32 %lhs_or_call872, 1
  store i32 %bop873, i32* %vdecl_slot829
  br label %__cond103

__fresh118:
  br label %__post101

__post101:
  %vdecl_slot874 = alloca i32
  store i32 0, i32* %vdecl_slot874
  br label %__cond106

__cond106:
  %lhs_or_call875 = load i32* %vdecl_slot874
  %bop876 = icmp slt i32 %lhs_or_call875, 4
  br i1 %bop876, label %__body105, label %__post104

__fresh119:
  br label %__body105

__body105:
  %vdecl_slot877 = alloca i32
  store i32 0, i32* %vdecl_slot877
  %path878 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call879 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path878
  %lhs_or_call880 = load i32* %vdecl_slot874
  %bound_ptr882 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call879, i32 0, i32 0
  %bound883 = load i32* %bound_ptr882
  call void @oat_array_bounds_check( i32 %bound883, i32 %lhs_or_call880 )
  %elt881 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call879, i32 0, i32 1, i32 %lhs_or_call880
  %lhs_or_call884 = load { i32, [ 0 x i32 ] }** %elt881
  %bound_ptr886 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call884, i32 0, i32 0
  %bound887 = load i32* %bound_ptr886
  call void @oat_array_bounds_check( i32 %bound887, i32 0 )
  %elt885 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call884, i32 0, i32 1, i32 0
  %path888 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call889 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path888
  %lhs_or_call890 = load i32* %vdecl_slot874
  %bound_ptr892 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call889, i32 0, i32 0
  %bound893 = load i32* %bound_ptr892
  call void @oat_array_bounds_check( i32 %bound893, i32 %lhs_or_call890 )
  %elt891 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call889, i32 0, i32 1, i32 %lhs_or_call890
  %lhs_or_call894 = load { i32, [ 0 x i32 ] }** %elt891
  %bound_ptr896 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call894, i32 0, i32 0
  %bound897 = load i32* %bound_ptr896
  call void @oat_array_bounds_check( i32 %bound897, i32 0 )
  %elt895 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call894, i32 0, i32 1, i32 0
  %lhs_or_call898 = load i32* %elt895
  %path899 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call900 = load { i32, [ 0 x i32 ] }** %path899
  %bound_ptr902 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call900, i32 0, i32 0
  %bound903 = load i32* %bound_ptr902
  call void @oat_array_bounds_check( i32 %bound903, i32 0 )
  %elt901 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call900, i32 0, i32 1, i32 0
  %lhs_or_call904 = load i32* %elt901
  %bop905 = sub i32 %lhs_or_call898, %lhs_or_call904
  store i32 %bop905, i32* %elt885
  %path906 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call907 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path906
  %lhs_or_call908 = load i32* %vdecl_slot874
  %bound_ptr910 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call907, i32 0, i32 0
  %bound911 = load i32* %bound_ptr910
  call void @oat_array_bounds_check( i32 %bound911, i32 %lhs_or_call908 )
  %elt909 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call907, i32 0, i32 1, i32 %lhs_or_call908
  %lhs_or_call912 = load { i32, [ 0 x i32 ] }** %elt909
  %bound_ptr914 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call912, i32 0, i32 0
  %bound915 = load i32* %bound_ptr914
  call void @oat_array_bounds_check( i32 %bound915, i32 1 )
  %elt913 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call912, i32 0, i32 1, i32 1
  %path916 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call917 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path916
  %lhs_or_call918 = load i32* %vdecl_slot874
  %bound_ptr920 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call917, i32 0, i32 0
  %bound921 = load i32* %bound_ptr920
  call void @oat_array_bounds_check( i32 %bound921, i32 %lhs_or_call918 )
  %elt919 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call917, i32 0, i32 1, i32 %lhs_or_call918
  %lhs_or_call922 = load { i32, [ 0 x i32 ] }** %elt919
  %bound_ptr924 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call922, i32 0, i32 0
  %bound925 = load i32* %bound_ptr924
  call void @oat_array_bounds_check( i32 %bound925, i32 1 )
  %elt923 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call922, i32 0, i32 1, i32 1
  %lhs_or_call926 = load i32* %elt923
  %path927 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call928 = load { i32, [ 0 x i32 ] }** %path927
  %bound_ptr930 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call928, i32 0, i32 0
  %bound931 = load i32* %bound_ptr930
  call void @oat_array_bounds_check( i32 %bound931, i32 1 )
  %elt929 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call928, i32 0, i32 1, i32 1
  %lhs_or_call932 = load i32* %elt929
  %bop933 = sub i32 %lhs_or_call926, %lhs_or_call932
  store i32 %bop933, i32* %elt913
  %unop934 = sub i32 0, 1
  %path935 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call936 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path935
  %lhs_or_call937 = load i32* %vdecl_slot874
  %bound_ptr939 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call936, i32 0, i32 0
  %bound940 = load i32* %bound_ptr939
  call void @oat_array_bounds_check( i32 %bound940, i32 %lhs_or_call937 )
  %elt938 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call936, i32 0, i32 1, i32 %lhs_or_call937
  %lhs_or_call941 = load { i32, [ 0 x i32 ] }** %elt938
  %bound_ptr943 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call941, i32 0, i32 0
  %bound944 = load i32* %bound_ptr943
  call void @oat_array_bounds_check( i32 %bound944, i32 1 )
  %elt942 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call941, i32 0, i32 1, i32 1
  %lhs_or_call945 = load i32* %elt942
  %bop946 = mul i32 %unop934, %lhs_or_call945
  store i32 %bop946, i32* %vdecl_slot877
  %path947 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call948 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path947
  %lhs_or_call949 = load i32* %vdecl_slot874
  %bound_ptr951 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call948, i32 0, i32 0
  %bound952 = load i32* %bound_ptr951
  call void @oat_array_bounds_check( i32 %bound952, i32 %lhs_or_call949 )
  %elt950 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call948, i32 0, i32 1, i32 %lhs_or_call949
  %lhs_or_call953 = load { i32, [ 0 x i32 ] }** %elt950
  %bound_ptr955 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call953, i32 0, i32 0
  %bound956 = load i32* %bound_ptr955
  call void @oat_array_bounds_check( i32 %bound956, i32 1 )
  %elt954 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call953, i32 0, i32 1, i32 1
  %path957 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call958 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path957
  %lhs_or_call959 = load i32* %vdecl_slot874
  %bound_ptr961 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call958, i32 0, i32 0
  %bound962 = load i32* %bound_ptr961
  call void @oat_array_bounds_check( i32 %bound962, i32 %lhs_or_call959 )
  %elt960 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call958, i32 0, i32 1, i32 %lhs_or_call959
  %lhs_or_call963 = load { i32, [ 0 x i32 ] }** %elt960
  %bound_ptr965 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call963, i32 0, i32 0
  %bound966 = load i32* %bound_ptr965
  call void @oat_array_bounds_check( i32 %bound966, i32 0 )
  %elt964 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call963, i32 0, i32 1, i32 0
  %lhs_or_call967 = load i32* %elt964
  store i32 %lhs_or_call967, i32* %elt954
  %path968 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call969 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path968
  %lhs_or_call970 = load i32* %vdecl_slot874
  %bound_ptr972 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call969, i32 0, i32 0
  %bound973 = load i32* %bound_ptr972
  call void @oat_array_bounds_check( i32 %bound973, i32 %lhs_or_call970 )
  %elt971 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call969, i32 0, i32 1, i32 %lhs_or_call970
  %lhs_or_call974 = load { i32, [ 0 x i32 ] }** %elt971
  %bound_ptr976 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call974, i32 0, i32 0
  %bound977 = load i32* %bound_ptr976
  call void @oat_array_bounds_check( i32 %bound977, i32 0 )
  %elt975 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call974, i32 0, i32 1, i32 0
  %lhs_or_call978 = load i32* %vdecl_slot877
  store i32 %lhs_or_call978, i32* %elt975
  %path979 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call980 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path979
  %lhs_or_call981 = load i32* %vdecl_slot874
  %bound_ptr983 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call980, i32 0, i32 0
  %bound984 = load i32* %bound_ptr983
  call void @oat_array_bounds_check( i32 %bound984, i32 %lhs_or_call981 )
  %elt982 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call980, i32 0, i32 1, i32 %lhs_or_call981
  %lhs_or_call985 = load { i32, [ 0 x i32 ] }** %elt982
  %bound_ptr987 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call985, i32 0, i32 0
  %bound988 = load i32* %bound_ptr987
  call void @oat_array_bounds_check( i32 %bound988, i32 0 )
  %elt986 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call985, i32 0, i32 1, i32 0
  %path989 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call990 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path989
  %lhs_or_call991 = load i32* %vdecl_slot874
  %bound_ptr993 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call990, i32 0, i32 0
  %bound994 = load i32* %bound_ptr993
  call void @oat_array_bounds_check( i32 %bound994, i32 %lhs_or_call991 )
  %elt992 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call990, i32 0, i32 1, i32 %lhs_or_call991
  %lhs_or_call995 = load { i32, [ 0 x i32 ] }** %elt992
  %bound_ptr997 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call995, i32 0, i32 0
  %bound998 = load i32* %bound_ptr997
  call void @oat_array_bounds_check( i32 %bound998, i32 0 )
  %elt996 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call995, i32 0, i32 1, i32 0
  %lhs_or_call999 = load i32* %elt996
  %path1000 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1001 = load { i32, [ 0 x i32 ] }** %path1000
  %bound_ptr1003 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1001, i32 0, i32 0
  %bound1004 = load i32* %bound_ptr1003
  call void @oat_array_bounds_check( i32 %bound1004, i32 0 )
  %elt1002 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1001, i32 0, i32 1, i32 0
  %lhs_or_call1005 = load i32* %elt1002
  %bop1006 = add i32 %lhs_or_call999, %lhs_or_call1005
  store i32 %bop1006, i32* %elt986
  %path1007 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1008 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1007
  %lhs_or_call1009 = load i32* %vdecl_slot874
  %bound_ptr1011 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1008, i32 0, i32 0
  %bound1012 = load i32* %bound_ptr1011
  call void @oat_array_bounds_check( i32 %bound1012, i32 %lhs_or_call1009 )
  %elt1010 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1008, i32 0, i32 1, i32 %lhs_or_call1009
  %lhs_or_call1013 = load { i32, [ 0 x i32 ] }** %elt1010
  %bound_ptr1015 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1013, i32 0, i32 0
  %bound1016 = load i32* %bound_ptr1015
  call void @oat_array_bounds_check( i32 %bound1016, i32 1 )
  %elt1014 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1013, i32 0, i32 1, i32 1
  %path1017 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1018 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1017
  %lhs_or_call1019 = load i32* %vdecl_slot874
  %bound_ptr1021 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1018, i32 0, i32 0
  %bound1022 = load i32* %bound_ptr1021
  call void @oat_array_bounds_check( i32 %bound1022, i32 %lhs_or_call1019 )
  %elt1020 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1018, i32 0, i32 1, i32 %lhs_or_call1019
  %lhs_or_call1023 = load { i32, [ 0 x i32 ] }** %elt1020
  %bound_ptr1025 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1023, i32 0, i32 0
  %bound1026 = load i32* %bound_ptr1025
  call void @oat_array_bounds_check( i32 %bound1026, i32 1 )
  %elt1024 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1023, i32 0, i32 1, i32 1
  %lhs_or_call1027 = load i32* %elt1024
  %path1028 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1029 = load { i32, [ 0 x i32 ] }** %path1028
  %bound_ptr1031 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1029, i32 0, i32 0
  %bound1032 = load i32* %bound_ptr1031
  call void @oat_array_bounds_check( i32 %bound1032, i32 1 )
  %elt1030 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1029, i32 0, i32 1, i32 1
  %lhs_or_call1033 = load i32* %elt1030
  %bop1034 = add i32 %lhs_or_call1027, %lhs_or_call1033
  store i32 %bop1034, i32* %elt1014
  %path1035 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1036 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1035
  %lhs_or_call1037 = load i32* %vdecl_slot874
  %bound_ptr1039 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1036, i32 0, i32 0
  %bound1040 = load i32* %bound_ptr1039
  call void @oat_array_bounds_check( i32 %bound1040, i32 %lhs_or_call1037 )
  %elt1038 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1036, i32 0, i32 1, i32 %lhs_or_call1037
  %lhs_or_call1041 = load { i32, [ 0 x i32 ] }** %elt1038
  %bound_ptr1043 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1041, i32 0, i32 0
  %bound1044 = load i32* %bound_ptr1043
  call void @oat_array_bounds_check( i32 %bound1044, i32 1 )
  %elt1042 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1041, i32 0, i32 1, i32 1
  %lhs_or_call1045 = load i32* %elt1042
  %bop1046 = icmp slt i32 %lhs_or_call1045, 0
  %path1047 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1048 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1047
  %lhs_or_call1049 = load i32* %vdecl_slot874
  %bound_ptr1051 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1048, i32 0, i32 0
  %bound1052 = load i32* %bound_ptr1051
  call void @oat_array_bounds_check( i32 %bound1052, i32 %lhs_or_call1049 )
  %elt1050 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1048, i32 0, i32 1, i32 %lhs_or_call1049
  %lhs_or_call1053 = load { i32, [ 0 x i32 ] }** %elt1050
  %bound_ptr1055 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1053, i32 0, i32 0
  %bound1056 = load i32* %bound_ptr1055
  call void @oat_array_bounds_check( i32 %bound1056, i32 1 )
  %elt1054 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1053, i32 0, i32 1, i32 1
  %lhs_or_call1057 = load i32* %elt1054
  %bop1058 = icmp sgt i32 %lhs_or_call1057, 49
  %bop1059 = or i1 %bop1046, %bop1058
  %path1060 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1061 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1060
  %lhs_or_call1062 = load i32* %vdecl_slot874
  %bound_ptr1064 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1061, i32 0, i32 0
  %bound1065 = load i32* %bound_ptr1064
  call void @oat_array_bounds_check( i32 %bound1065, i32 %lhs_or_call1062 )
  %elt1063 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1061, i32 0, i32 1, i32 %lhs_or_call1062
  %lhs_or_call1066 = load { i32, [ 0 x i32 ] }** %elt1063
  %bound_ptr1068 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1066, i32 0, i32 0
  %bound1069 = load i32* %bound_ptr1068
  call void @oat_array_bounds_check( i32 %bound1069, i32 0 )
  %elt1067 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1066, i32 0, i32 1, i32 0
  %lhs_or_call1070 = load i32* %elt1067
  %bop1071 = icmp slt i32 %lhs_or_call1070, 0
  %bop1072 = or i1 %bop1059, %bop1071
  %path1073 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1074 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1073
  %lhs_or_call1075 = load i32* %vdecl_slot874
  %bound_ptr1077 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1074, i32 0, i32 0
  %bound1078 = load i32* %bound_ptr1077
  call void @oat_array_bounds_check( i32 %bound1078, i32 %lhs_or_call1075 )
  %elt1076 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1074, i32 0, i32 1, i32 %lhs_or_call1075
  %lhs_or_call1079 = load { i32, [ 0 x i32 ] }** %elt1076
  %bound_ptr1081 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1079, i32 0, i32 0
  %bound1082 = load i32* %bound_ptr1081
  call void @oat_array_bounds_check( i32 %bound1082, i32 0 )
  %elt1080 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1079, i32 0, i32 1, i32 0
  %lhs_or_call1083 = load i32* %elt1080
  %bop1084 = icmp sgt i32 %lhs_or_call1083, 9
  %bop1085 = or i1 %bop1072, %bop1084
  br i1 %bop1085, label %__then109, label %__else108

__fresh120:
  br label %__then109

__then109:
  store i1 0, i1* %vdecl_slot828
  br label %__merge107

__fresh121:
  br label %__else108

__else108:
  br label %__merge107

__merge107:
  %lhs_or_call1086 = load i32* %vdecl_slot874
  %bop1087 = add i32 %lhs_or_call1086, 1
  store i32 %bop1087, i32* %vdecl_slot874
  br label %__cond106

__fresh122:
  br label %__post104

__post104:
  %lhs_or_call1088 = load i1* %vdecl_slot828
  %bop1089 = icmp eq i1 %lhs_or_call1088, 0
  br i1 %bop1089, label %__then115, label %__else114

__fresh123:
  br label %__then115

__then115:
  %vdecl_slot1090 = alloca i32
  store i32 0, i32* %vdecl_slot1090
  br label %__cond112

__cond112:
  %lhs_or_call1091 = load i32* %vdecl_slot1090
  %bop1092 = icmp slt i32 %lhs_or_call1091, 4
  br i1 %bop1092, label %__body111, label %__post110

__fresh124:
  br label %__body111

__body111:
  %path1093 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1094 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1093
  %lhs_or_call1095 = load i32* %vdecl_slot1090
  %bound_ptr1097 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1094, i32 0, i32 0
  %bound1098 = load i32* %bound_ptr1097
  call void @oat_array_bounds_check( i32 %bound1098, i32 %lhs_or_call1095 )
  %elt1096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1094, i32 0, i32 1, i32 %lhs_or_call1095
  %lhs_or_call1099 = load { i32, [ 0 x i32 ] }** %elt1096
  %bound_ptr1101 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1099, i32 0, i32 0
  %bound1102 = load i32* %bound_ptr1101
  call void @oat_array_bounds_check( i32 %bound1102, i32 0 )
  %elt1100 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1099, i32 0, i32 1, i32 0
  %lhs_or_call1103 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot827
  %lhs_or_call1104 = load i32* %vdecl_slot1090
  %bound_ptr1106 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1103, i32 0, i32 0
  %bound1107 = load i32* %bound_ptr1106
  call void @oat_array_bounds_check( i32 %bound1107, i32 %lhs_or_call1104 )
  %elt1105 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1103, i32 0, i32 1, i32 %lhs_or_call1104
  %lhs_or_call1108 = load { i32, [ 0 x i32 ] }** %elt1105
  %bound_ptr1110 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1108, i32 0, i32 0
  %bound1111 = load i32* %bound_ptr1110
  call void @oat_array_bounds_check( i32 %bound1111, i32 0 )
  %elt1109 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1108, i32 0, i32 1, i32 0
  %lhs_or_call1112 = load i32* %elt1109
  store i32 %lhs_or_call1112, i32* %elt1100
  %path1113 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1114 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1113
  %lhs_or_call1115 = load i32* %vdecl_slot1090
  %bound_ptr1117 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1114, i32 0, i32 0
  %bound1118 = load i32* %bound_ptr1117
  call void @oat_array_bounds_check( i32 %bound1118, i32 %lhs_or_call1115 )
  %elt1116 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1114, i32 0, i32 1, i32 %lhs_or_call1115
  %lhs_or_call1119 = load { i32, [ 0 x i32 ] }** %elt1116
  %bound_ptr1121 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1119, i32 0, i32 0
  %bound1122 = load i32* %bound_ptr1121
  call void @oat_array_bounds_check( i32 %bound1122, i32 1 )
  %elt1120 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1119, i32 0, i32 1, i32 1
  %lhs_or_call1123 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot827
  %lhs_or_call1124 = load i32* %vdecl_slot1090
  %bound_ptr1126 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1123, i32 0, i32 0
  %bound1127 = load i32* %bound_ptr1126
  call void @oat_array_bounds_check( i32 %bound1127, i32 %lhs_or_call1124 )
  %elt1125 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1123, i32 0, i32 1, i32 %lhs_or_call1124
  %lhs_or_call1128 = load { i32, [ 0 x i32 ] }** %elt1125
  %bound_ptr1130 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1128, i32 0, i32 0
  %bound1131 = load i32* %bound_ptr1130
  call void @oat_array_bounds_check( i32 %bound1131, i32 1 )
  %elt1129 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1128, i32 0, i32 1, i32 1
  %lhs_or_call1132 = load i32* %elt1129
  store i32 %lhs_or_call1132, i32* %elt1120
  %lhs_or_call1133 = load i32* %vdecl_slot1090
  %bop1134 = add i32 %lhs_or_call1133, 1
  store i32 %bop1134, i32* %vdecl_slot1090
  br label %__cond112

__fresh125:
  br label %__post110

__post110:
  br label %__merge113

__fresh126:
  br label %__else114

__else114:
  br label %__merge113

__merge113:
  ret void
}


define void @_Shape_move_right (%Shape* %_this1){
__fresh92:
  %vdecl_slot747 = alloca i1
  store i1 1, i1* %vdecl_slot747
  %vdecl_slot748 = alloca i32
  store i32 0, i32* %vdecl_slot748
  br label %__cond82

__cond82:
  %lhs_or_call749 = load i32* %vdecl_slot748
  %bop750 = icmp slt i32 %lhs_or_call749, 4
  br i1 %bop750, label %__body81, label %__post80

__fresh93:
  br label %__body81

__body81:
  %path751 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call752 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path751
  %lhs_or_call753 = load i32* %vdecl_slot748
  %bound_ptr755 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call752, i32 0, i32 0
  %bound756 = load i32* %bound_ptr755
  call void @oat_array_bounds_check( i32 %bound756, i32 %lhs_or_call753 )
  %elt754 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call752, i32 0, i32 1, i32 %lhs_or_call753
  %lhs_or_call757 = load { i32, [ 0 x i32 ] }** %elt754
  %bound_ptr759 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call757, i32 0, i32 0
  %bound760 = load i32* %bound_ptr759
  call void @oat_array_bounds_check( i32 %bound760, i32 0 )
  %elt758 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call757, i32 0, i32 1, i32 0
  %lhs_or_call761 = load i32* %elt758
  %bop762 = icmp sgt i32 %lhs_or_call761, 8
  br i1 %bop762, label %__then85, label %__else84

__fresh94:
  br label %__then85

__then85:
  store i1 0, i1* %vdecl_slot747
  br label %__merge83

__fresh95:
  br label %__else84

__else84:
  br label %__merge83

__merge83:
  %lhs_or_call763 = load i32* %vdecl_slot748
  %bop764 = add i32 %lhs_or_call763, 1
  store i32 %bop764, i32* %vdecl_slot748
  br label %__cond82

__fresh96:
  br label %__post80

__post80:
  %lhs_or_call765 = load i1* %vdecl_slot747
  br i1 %lhs_or_call765, label %__then91, label %__else90

__fresh97:
  br label %__then91

__then91:
  %path766 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call767 = load { i32, [ 0 x i32 ] }** %path766
  %bound_ptr769 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call767, i32 0, i32 0
  %bound770 = load i32* %bound_ptr769
  call void @oat_array_bounds_check( i32 %bound770, i32 0 )
  %elt768 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call767, i32 0, i32 1, i32 0
  %path771 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call772 = load { i32, [ 0 x i32 ] }** %path771
  %bound_ptr774 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call772, i32 0, i32 0
  %bound775 = load i32* %bound_ptr774
  call void @oat_array_bounds_check( i32 %bound775, i32 0 )
  %elt773 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call772, i32 0, i32 1, i32 0
  %lhs_or_call776 = load i32* %elt773
  %bop777 = add i32 %lhs_or_call776, 1
  store i32 %bop777, i32* %elt768
  %vdecl_slot778 = alloca i32
  store i32 0, i32* %vdecl_slot778
  br label %__cond88

__cond88:
  %lhs_or_call779 = load i32* %vdecl_slot778
  %bop780 = icmp slt i32 %lhs_or_call779, 4
  br i1 %bop780, label %__body87, label %__post86

__fresh98:
  br label %__body87

__body87:
  %path781 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call782 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path781
  %lhs_or_call783 = load i32* %vdecl_slot778
  %bound_ptr785 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call782, i32 0, i32 0
  %bound786 = load i32* %bound_ptr785
  call void @oat_array_bounds_check( i32 %bound786, i32 %lhs_or_call783 )
  %elt784 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call782, i32 0, i32 1, i32 %lhs_or_call783
  %lhs_or_call787 = load { i32, [ 0 x i32 ] }** %elt784
  %bound_ptr789 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call787, i32 0, i32 0
  %bound790 = load i32* %bound_ptr789
  call void @oat_array_bounds_check( i32 %bound790, i32 0 )
  %elt788 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call787, i32 0, i32 1, i32 0
  %path791 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call792 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path791
  %lhs_or_call793 = load i32* %vdecl_slot778
  %bound_ptr795 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call792, i32 0, i32 0
  %bound796 = load i32* %bound_ptr795
  call void @oat_array_bounds_check( i32 %bound796, i32 %lhs_or_call793 )
  %elt794 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call792, i32 0, i32 1, i32 %lhs_or_call793
  %lhs_or_call797 = load { i32, [ 0 x i32 ] }** %elt794
  %bound_ptr799 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call797, i32 0, i32 0
  %bound800 = load i32* %bound_ptr799
  call void @oat_array_bounds_check( i32 %bound800, i32 0 )
  %elt798 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call797, i32 0, i32 1, i32 0
  %lhs_or_call801 = load i32* %elt798
  %bop802 = add i32 %lhs_or_call801, 1
  store i32 %bop802, i32* %elt788
  %lhs_or_call803 = load i32* %vdecl_slot778
  %bop804 = add i32 %lhs_or_call803, 1
  store i32 %bop804, i32* %vdecl_slot778
  br label %__cond88

__fresh99:
  br label %__post86

__post86:
  br label %__merge89

__fresh100:
  br label %__else90

__else90:
  br label %__merge89

__merge89:
  ret void
}


define void @_Shape_move_left (%Shape* %_this1){
__fresh71:
  %vdecl_slot689 = alloca i1
  store i1 1, i1* %vdecl_slot689
  %vdecl_slot690 = alloca i32
  store i32 0, i32* %vdecl_slot690
  br label %__cond61

__cond61:
  %lhs_or_call691 = load i32* %vdecl_slot690
  %bop692 = icmp slt i32 %lhs_or_call691, 4
  br i1 %bop692, label %__body60, label %__post59

__fresh72:
  br label %__body60

__body60:
  %path693 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call694 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path693
  %lhs_or_call695 = load i32* %vdecl_slot690
  %bound_ptr697 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call694, i32 0, i32 0
  %bound698 = load i32* %bound_ptr697
  call void @oat_array_bounds_check( i32 %bound698, i32 %lhs_or_call695 )
  %elt696 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call694, i32 0, i32 1, i32 %lhs_or_call695
  %lhs_or_call699 = load { i32, [ 0 x i32 ] }** %elt696
  %bound_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call699, i32 0, i32 0
  %bound702 = load i32* %bound_ptr701
  call void @oat_array_bounds_check( i32 %bound702, i32 0 )
  %elt700 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call699, i32 0, i32 1, i32 0
  %lhs_or_call703 = load i32* %elt700
  %bop704 = icmp slt i32 %lhs_or_call703, 1
  br i1 %bop704, label %__then64, label %__else63

__fresh73:
  br label %__then64

__then64:
  store i1 0, i1* %vdecl_slot689
  br label %__merge62

__fresh74:
  br label %__else63

__else63:
  br label %__merge62

__merge62:
  %lhs_or_call705 = load i32* %vdecl_slot690
  %bop706 = add i32 %lhs_or_call705, 1
  store i32 %bop706, i32* %vdecl_slot690
  br label %__cond61

__fresh75:
  br label %__post59

__post59:
  %lhs_or_call707 = load i1* %vdecl_slot689
  br i1 %lhs_or_call707, label %__then70, label %__else69

__fresh76:
  br label %__then70

__then70:
  %path708 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call709 = load { i32, [ 0 x i32 ] }** %path708
  %bound_ptr711 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call709, i32 0, i32 0
  %bound712 = load i32* %bound_ptr711
  call void @oat_array_bounds_check( i32 %bound712, i32 0 )
  %elt710 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call709, i32 0, i32 1, i32 0
  %path713 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call714 = load { i32, [ 0 x i32 ] }** %path713
  %bound_ptr716 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call714, i32 0, i32 0
  %bound717 = load i32* %bound_ptr716
  call void @oat_array_bounds_check( i32 %bound717, i32 0 )
  %elt715 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call714, i32 0, i32 1, i32 0
  %lhs_or_call718 = load i32* %elt715
  %bop719 = sub i32 %lhs_or_call718, 1
  store i32 %bop719, i32* %elt710
  %vdecl_slot720 = alloca i32
  store i32 0, i32* %vdecl_slot720
  br label %__cond67

__cond67:
  %lhs_or_call721 = load i32* %vdecl_slot720
  %bop722 = icmp slt i32 %lhs_or_call721, 4
  br i1 %bop722, label %__body66, label %__post65

__fresh77:
  br label %__body66

__body66:
  %path723 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call724 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path723
  %lhs_or_call725 = load i32* %vdecl_slot720
  %bound_ptr727 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call724, i32 0, i32 0
  %bound728 = load i32* %bound_ptr727
  call void @oat_array_bounds_check( i32 %bound728, i32 %lhs_or_call725 )
  %elt726 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call724, i32 0, i32 1, i32 %lhs_or_call725
  %lhs_or_call729 = load { i32, [ 0 x i32 ] }** %elt726
  %bound_ptr731 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call729, i32 0, i32 0
  %bound732 = load i32* %bound_ptr731
  call void @oat_array_bounds_check( i32 %bound732, i32 0 )
  %elt730 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call729, i32 0, i32 1, i32 0
  %path733 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call734 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path733
  %lhs_or_call735 = load i32* %vdecl_slot720
  %bound_ptr737 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call734, i32 0, i32 0
  %bound738 = load i32* %bound_ptr737
  call void @oat_array_bounds_check( i32 %bound738, i32 %lhs_or_call735 )
  %elt736 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call734, i32 0, i32 1, i32 %lhs_or_call735
  %lhs_or_call739 = load { i32, [ 0 x i32 ] }** %elt736
  %bound_ptr741 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call739, i32 0, i32 0
  %bound742 = load i32* %bound_ptr741
  call void @oat_array_bounds_check( i32 %bound742, i32 0 )
  %elt740 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call739, i32 0, i32 1, i32 0
  %lhs_or_call743 = load i32* %elt740
  %bop744 = sub i32 %lhs_or_call743, 1
  store i32 %bop744, i32* %elt730
  %lhs_or_call745 = load i32* %vdecl_slot720
  %bop746 = add i32 %lhs_or_call745, 1
  store i32 %bop746, i32* %vdecl_slot720
  br label %__cond67

__fresh78:
  br label %__post65

__post65:
  br label %__merge68

__fresh79:
  br label %__else69

__else69:
  br label %__merge68

__merge68:
  ret void
}


define void @_Shape_move_down (%Shape* %_this1){
__fresh50:
  %vdecl_slot631 = alloca i1
  store i1 1, i1* %vdecl_slot631
  %vdecl_slot632 = alloca i32
  store i32 0, i32* %vdecl_slot632
  br label %__cond40

__cond40:
  %lhs_or_call633 = load i32* %vdecl_slot632
  %bop634 = icmp slt i32 %lhs_or_call633, 4
  br i1 %bop634, label %__body39, label %__post38

__fresh51:
  br label %__body39

__body39:
  %path635 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call636 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path635
  %lhs_or_call637 = load i32* %vdecl_slot632
  %bound_ptr639 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call636, i32 0, i32 0
  %bound640 = load i32* %bound_ptr639
  call void @oat_array_bounds_check( i32 %bound640, i32 %lhs_or_call637 )
  %elt638 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call636, i32 0, i32 1, i32 %lhs_or_call637
  %lhs_or_call641 = load { i32, [ 0 x i32 ] }** %elt638
  %bound_ptr643 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call641, i32 0, i32 0
  %bound644 = load i32* %bound_ptr643
  call void @oat_array_bounds_check( i32 %bound644, i32 1 )
  %elt642 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call641, i32 0, i32 1, i32 1
  %lhs_or_call645 = load i32* %elt642
  %bop646 = icmp sgt i32 %lhs_or_call645, 48
  br i1 %bop646, label %__then43, label %__else42

__fresh52:
  br label %__then43

__then43:
  store i1 0, i1* %vdecl_slot631
  br label %__merge41

__fresh53:
  br label %__else42

__else42:
  br label %__merge41

__merge41:
  %lhs_or_call647 = load i32* %vdecl_slot632
  %bop648 = add i32 %lhs_or_call647, 1
  store i32 %bop648, i32* %vdecl_slot632
  br label %__cond40

__fresh54:
  br label %__post38

__post38:
  %lhs_or_call649 = load i1* %vdecl_slot631
  br i1 %lhs_or_call649, label %__then49, label %__else48

__fresh55:
  br label %__then49

__then49:
  %path650 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call651 = load { i32, [ 0 x i32 ] }** %path650
  %bound_ptr653 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call651, i32 0, i32 0
  %bound654 = load i32* %bound_ptr653
  call void @oat_array_bounds_check( i32 %bound654, i32 1 )
  %elt652 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call651, i32 0, i32 1, i32 1
  %path655 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call656 = load { i32, [ 0 x i32 ] }** %path655
  %bound_ptr658 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call656, i32 0, i32 0
  %bound659 = load i32* %bound_ptr658
  call void @oat_array_bounds_check( i32 %bound659, i32 1 )
  %elt657 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call656, i32 0, i32 1, i32 1
  %lhs_or_call660 = load i32* %elt657
  %bop661 = add i32 %lhs_or_call660, 1
  store i32 %bop661, i32* %elt652
  %vdecl_slot662 = alloca i32
  store i32 0, i32* %vdecl_slot662
  br label %__cond46

__cond46:
  %lhs_or_call663 = load i32* %vdecl_slot662
  %bop664 = icmp slt i32 %lhs_or_call663, 4
  br i1 %bop664, label %__body45, label %__post44

__fresh56:
  br label %__body45

__body45:
  %path665 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call666 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path665
  %lhs_or_call667 = load i32* %vdecl_slot662
  %bound_ptr669 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call666, i32 0, i32 0
  %bound670 = load i32* %bound_ptr669
  call void @oat_array_bounds_check( i32 %bound670, i32 %lhs_or_call667 )
  %elt668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call666, i32 0, i32 1, i32 %lhs_or_call667
  %lhs_or_call671 = load { i32, [ 0 x i32 ] }** %elt668
  %bound_ptr673 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call671, i32 0, i32 0
  %bound674 = load i32* %bound_ptr673
  call void @oat_array_bounds_check( i32 %bound674, i32 1 )
  %elt672 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call671, i32 0, i32 1, i32 1
  %path675 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call676 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path675
  %lhs_or_call677 = load i32* %vdecl_slot662
  %bound_ptr679 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call676, i32 0, i32 0
  %bound680 = load i32* %bound_ptr679
  call void @oat_array_bounds_check( i32 %bound680, i32 %lhs_or_call677 )
  %elt678 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call676, i32 0, i32 1, i32 %lhs_or_call677
  %lhs_or_call681 = load { i32, [ 0 x i32 ] }** %elt678
  %bound_ptr683 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call681, i32 0, i32 0
  %bound684 = load i32* %bound_ptr683
  call void @oat_array_bounds_check( i32 %bound684, i32 1 )
  %elt682 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call681, i32 0, i32 1, i32 1
  %lhs_or_call685 = load i32* %elt682
  %bop686 = add i32 %lhs_or_call685, 1
  store i32 %bop686, i32* %elt672
  %lhs_or_call687 = load i32* %vdecl_slot662
  %bop688 = add i32 %lhs_or_call687, 1
  store i32 %bop688, i32* %vdecl_slot662
  br label %__cond46

__fresh57:
  br label %__post44

__post44:
  br label %__merge47

__fresh58:
  br label %__else48

__else48:
  br label %__merge47

__merge47:
  ret void
}


define %Shape* @_Shape_ctor (%Shape* %_this1, i32 %type6){
__fresh23:
  %type_slot7 = alloca i32
  store i32 %type6, i32* %type_slot7
  %cast_op8 = bitcast %Shape* %_this1 to %Object* 
  %dummy9 = call %Object* @_Object_ctor ( %Object* %cast_op8 )
  %path10 = getelementptr %Shape* %_this1, i32 0, i32 1
  store i8* @_const_str5, i8** %path10
  %path11 = getelementptr %Shape* %_this1, i32 0, i32 2
  %array_ptr12 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array13 = bitcast { i32, [ 0 x i32 ] }* %array_ptr12 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr14 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array15 = bitcast { i32, [ 0 x i32 ] }* %array_ptr14 to { i32, [ 0 x i32 ] }* 
  %index_ptr16 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr16
  %index_ptr17 = getelementptr { i32, [ 0 x i32 ] }* %array15, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr17
  %index_ptr18 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array13, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array15, { i32, [ 0 x i32 ] }** %index_ptr18
  %array_ptr19 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array20 = bitcast { i32, [ 0 x i32 ] }* %array_ptr19 to { i32, [ 0 x i32 ] }* 
  %index_ptr21 = getelementptr { i32, [ 0 x i32 ] }* %array20, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr21
  %index_ptr22 = getelementptr { i32, [ 0 x i32 ] }* %array20, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr22
  %index_ptr23 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array13, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array20, { i32, [ 0 x i32 ] }** %index_ptr23
  %array_ptr24 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array25 = bitcast { i32, [ 0 x i32 ] }* %array_ptr24 to { i32, [ 0 x i32 ] }* 
  %index_ptr26 = getelementptr { i32, [ 0 x i32 ] }* %array25, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr26
  %index_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array25, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr27
  %index_ptr28 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array13, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array25, { i32, [ 0 x i32 ] }** %index_ptr28
  %array_ptr29 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array30 = bitcast { i32, [ 0 x i32 ] }* %array_ptr29 to { i32, [ 0 x i32 ] }* 
  %index_ptr31 = getelementptr { i32, [ 0 x i32 ] }* %array30, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr31
  %index_ptr32 = getelementptr { i32, [ 0 x i32 ] }* %array30, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr32
  %index_ptr33 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array13, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array30, { i32, [ 0 x i32 ] }** %index_ptr33
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array13, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path11
  %path34 = getelementptr %Shape* %_this1, i32 0, i32 3
  %array_ptr35 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array36 = bitcast { i32, [ 0 x i32 ] }* %array_ptr35 to { i32, [ 0 x i32 ] }* 
  %index_ptr37 = getelementptr { i32, [ 0 x i32 ] }* %array36, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr37
  %index_ptr38 = getelementptr { i32, [ 0 x i32 ] }* %array36, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr38
  store { i32, [ 0 x i32 ] }* %array36, { i32, [ 0 x i32 ] }** %path34
  %path39 = getelementptr %Shape* %_this1, i32 0, i32 4
  %ret40 = call i32 @get_rand_lt ( i32 6 )
  %bop41 = add i32 %ret40, 1
  store i32 %bop41, i32* %path39
  %vt_slot42 = getelementptr %Shape* %_this1, i32 0, i32 0
  store %_Shape_vtable* @_Shape_vtable2, %_Shape_vtable** %vt_slot42
  %lhs_or_call43 = load i32* %type_slot7
  %bop44 = icmp eq i32 %lhs_or_call43, 0
  br i1 %bop44, label %__then22, label %__else21

__fresh24:
  br label %__then22

__then22:
  %path45 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call46 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path45
  %bound_ptr48 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call46, i32 0, i32 0
  %bound49 = load i32* %bound_ptr48
  call void @oat_array_bounds_check( i32 %bound49, i32 0 )
  %elt47 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call46, i32 0, i32 1, i32 0
  %lhs_or_call50 = load { i32, [ 0 x i32 ] }** %elt47
  %bound_ptr52 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call50, i32 0, i32 0
  %bound53 = load i32* %bound_ptr52
  call void @oat_array_bounds_check( i32 %bound53, i32 0 )
  %elt51 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call50, i32 0, i32 1, i32 0
  store i32 0, i32* %elt51
  %path54 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call55 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path54
  %bound_ptr57 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call55, i32 0, i32 0
  %bound58 = load i32* %bound_ptr57
  call void @oat_array_bounds_check( i32 %bound58, i32 0 )
  %elt56 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call55, i32 0, i32 1, i32 0
  %lhs_or_call59 = load { i32, [ 0 x i32 ] }** %elt56
  %bound_ptr61 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call59, i32 0, i32 0
  %bound62 = load i32* %bound_ptr61
  call void @oat_array_bounds_check( i32 %bound62, i32 1 )
  %elt60 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call59, i32 0, i32 1, i32 1
  store i32 0, i32* %elt60
  %path63 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call64 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path63
  %bound_ptr66 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call64, i32 0, i32 0
  %bound67 = load i32* %bound_ptr66
  call void @oat_array_bounds_check( i32 %bound67, i32 1 )
  %elt65 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call64, i32 0, i32 1, i32 1
  %lhs_or_call68 = load { i32, [ 0 x i32 ] }** %elt65
  %bound_ptr70 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call68, i32 0, i32 0
  %bound71 = load i32* %bound_ptr70
  call void @oat_array_bounds_check( i32 %bound71, i32 0 )
  %elt69 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call68, i32 0, i32 1, i32 0
  store i32 0, i32* %elt69
  %path72 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call73 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path72
  %bound_ptr75 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call73, i32 0, i32 0
  %bound76 = load i32* %bound_ptr75
  call void @oat_array_bounds_check( i32 %bound76, i32 1 )
  %elt74 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call73, i32 0, i32 1, i32 1
  %lhs_or_call77 = load { i32, [ 0 x i32 ] }** %elt74
  %bound_ptr79 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call77, i32 0, i32 0
  %bound80 = load i32* %bound_ptr79
  call void @oat_array_bounds_check( i32 %bound80, i32 1 )
  %elt78 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call77, i32 0, i32 1, i32 1
  store i32 1, i32* %elt78
  %path81 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call82 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path81
  %bound_ptr84 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call82, i32 0, i32 0
  %bound85 = load i32* %bound_ptr84
  call void @oat_array_bounds_check( i32 %bound85, i32 2 )
  %elt83 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call82, i32 0, i32 1, i32 2
  %lhs_or_call86 = load { i32, [ 0 x i32 ] }** %elt83
  %bound_ptr88 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call86, i32 0, i32 0
  %bound89 = load i32* %bound_ptr88
  call void @oat_array_bounds_check( i32 %bound89, i32 0 )
  %elt87 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call86, i32 0, i32 1, i32 0
  store i32 0, i32* %elt87
  %path90 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call91 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path90
  %bound_ptr93 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call91, i32 0, i32 0
  %bound94 = load i32* %bound_ptr93
  call void @oat_array_bounds_check( i32 %bound94, i32 2 )
  %elt92 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call91, i32 0, i32 1, i32 2
  %lhs_or_call95 = load { i32, [ 0 x i32 ] }** %elt92
  %bound_ptr97 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call95, i32 0, i32 0
  %bound98 = load i32* %bound_ptr97
  call void @oat_array_bounds_check( i32 %bound98, i32 1 )
  %elt96 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call95, i32 0, i32 1, i32 1
  store i32 2, i32* %elt96
  %path99 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call100 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path99
  %bound_ptr102 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call100, i32 0, i32 0
  %bound103 = load i32* %bound_ptr102
  call void @oat_array_bounds_check( i32 %bound103, i32 3 )
  %elt101 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call100, i32 0, i32 1, i32 3
  %lhs_or_call104 = load { i32, [ 0 x i32 ] }** %elt101
  %bound_ptr106 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call104, i32 0, i32 0
  %bound107 = load i32* %bound_ptr106
  call void @oat_array_bounds_check( i32 %bound107, i32 0 )
  %elt105 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call104, i32 0, i32 1, i32 0
  store i32 0, i32* %elt105
  %path108 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call109 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path108
  %bound_ptr111 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call109, i32 0, i32 0
  %bound112 = load i32* %bound_ptr111
  call void @oat_array_bounds_check( i32 %bound112, i32 3 )
  %elt110 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call109, i32 0, i32 1, i32 3
  %lhs_or_call113 = load { i32, [ 0 x i32 ] }** %elt110
  %bound_ptr115 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call113, i32 0, i32 0
  %bound116 = load i32* %bound_ptr115
  call void @oat_array_bounds_check( i32 %bound116, i32 1 )
  %elt114 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call113, i32 0, i32 1, i32 1
  store i32 3, i32* %elt114
  %path117 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call118 = load { i32, [ 0 x i32 ] }** %path117
  %bound_ptr120 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call118, i32 0, i32 0
  %bound121 = load i32* %bound_ptr120
  call void @oat_array_bounds_check( i32 %bound121, i32 0 )
  %elt119 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call118, i32 0, i32 1, i32 0
  store i32 0, i32* %elt119
  %path122 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call123 = load { i32, [ 0 x i32 ] }** %path122
  %bound_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call123, i32 0, i32 0
  %bound126 = load i32* %bound_ptr125
  call void @oat_array_bounds_check( i32 %bound126, i32 1 )
  %elt124 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call123, i32 0, i32 1, i32 1
  store i32 3, i32* %elt124
  br label %__merge20

__fresh25:
  br label %__else21

__else21:
  %lhs_or_call127 = load i32* %type_slot7
  %bop128 = icmp eq i32 %lhs_or_call127, 1
  br i1 %bop128, label %__then19, label %__else18

__fresh26:
  br label %__then19

__then19:
  %path129 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call130 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path129
  %bound_ptr132 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call130, i32 0, i32 0
  %bound133 = load i32* %bound_ptr132
  call void @oat_array_bounds_check( i32 %bound133, i32 0 )
  %elt131 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call130, i32 0, i32 1, i32 0
  %lhs_or_call134 = load { i32, [ 0 x i32 ] }** %elt131
  %bound_ptr136 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call134, i32 0, i32 0
  %bound137 = load i32* %bound_ptr136
  call void @oat_array_bounds_check( i32 %bound137, i32 0 )
  %elt135 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call134, i32 0, i32 1, i32 0
  store i32 0, i32* %elt135
  %path138 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call139 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path138
  %bound_ptr141 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call139, i32 0, i32 0
  %bound142 = load i32* %bound_ptr141
  call void @oat_array_bounds_check( i32 %bound142, i32 0 )
  %elt140 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call139, i32 0, i32 1, i32 0
  %lhs_or_call143 = load { i32, [ 0 x i32 ] }** %elt140
  %bound_ptr145 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call143, i32 0, i32 0
  %bound146 = load i32* %bound_ptr145
  call void @oat_array_bounds_check( i32 %bound146, i32 1 )
  %elt144 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call143, i32 0, i32 1, i32 1
  store i32 0, i32* %elt144
  %path147 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call148 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path147
  %bound_ptr150 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call148, i32 0, i32 0
  %bound151 = load i32* %bound_ptr150
  call void @oat_array_bounds_check( i32 %bound151, i32 1 )
  %elt149 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call148, i32 0, i32 1, i32 1
  %lhs_or_call152 = load { i32, [ 0 x i32 ] }** %elt149
  %bound_ptr154 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call152, i32 0, i32 0
  %bound155 = load i32* %bound_ptr154
  call void @oat_array_bounds_check( i32 %bound155, i32 0 )
  %elt153 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call152, i32 0, i32 1, i32 0
  store i32 1, i32* %elt153
  %path156 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call157 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path156
  %bound_ptr159 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call157, i32 0, i32 0
  %bound160 = load i32* %bound_ptr159
  call void @oat_array_bounds_check( i32 %bound160, i32 1 )
  %elt158 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call157, i32 0, i32 1, i32 1
  %lhs_or_call161 = load { i32, [ 0 x i32 ] }** %elt158
  %bound_ptr163 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call161, i32 0, i32 0
  %bound164 = load i32* %bound_ptr163
  call void @oat_array_bounds_check( i32 %bound164, i32 1 )
  %elt162 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call161, i32 0, i32 1, i32 1
  store i32 0, i32* %elt162
  %path165 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call166 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path165
  %bound_ptr168 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call166, i32 0, i32 0
  %bound169 = load i32* %bound_ptr168
  call void @oat_array_bounds_check( i32 %bound169, i32 2 )
  %elt167 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call166, i32 0, i32 1, i32 2
  %lhs_or_call170 = load { i32, [ 0 x i32 ] }** %elt167
  %bound_ptr172 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call170, i32 0, i32 0
  %bound173 = load i32* %bound_ptr172
  call void @oat_array_bounds_check( i32 %bound173, i32 0 )
  %elt171 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call170, i32 0, i32 1, i32 0
  store i32 0, i32* %elt171
  %path174 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call175 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path174
  %bound_ptr177 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call175, i32 0, i32 0
  %bound178 = load i32* %bound_ptr177
  call void @oat_array_bounds_check( i32 %bound178, i32 2 )
  %elt176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call175, i32 0, i32 1, i32 2
  %lhs_or_call179 = load { i32, [ 0 x i32 ] }** %elt176
  %bound_ptr181 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call179, i32 0, i32 0
  %bound182 = load i32* %bound_ptr181
  call void @oat_array_bounds_check( i32 %bound182, i32 1 )
  %elt180 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call179, i32 0, i32 1, i32 1
  store i32 1, i32* %elt180
  %path183 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call184 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path183
  %bound_ptr186 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call184, i32 0, i32 0
  %bound187 = load i32* %bound_ptr186
  call void @oat_array_bounds_check( i32 %bound187, i32 3 )
  %elt185 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call184, i32 0, i32 1, i32 3
  %lhs_or_call188 = load { i32, [ 0 x i32 ] }** %elt185
  %bound_ptr190 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call188, i32 0, i32 0
  %bound191 = load i32* %bound_ptr190
  call void @oat_array_bounds_check( i32 %bound191, i32 0 )
  %elt189 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call188, i32 0, i32 1, i32 0
  store i32 1, i32* %elt189
  %path192 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call193 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path192
  %bound_ptr195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call193, i32 0, i32 0
  %bound196 = load i32* %bound_ptr195
  call void @oat_array_bounds_check( i32 %bound196, i32 3 )
  %elt194 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call193, i32 0, i32 1, i32 3
  %lhs_or_call197 = load { i32, [ 0 x i32 ] }** %elt194
  %bound_ptr199 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call197, i32 0, i32 0
  %bound200 = load i32* %bound_ptr199
  call void @oat_array_bounds_check( i32 %bound200, i32 1 )
  %elt198 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call197, i32 0, i32 1, i32 1
  store i32 1, i32* %elt198
  %path201 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call202 = load { i32, [ 0 x i32 ] }** %path201
  %bound_ptr204 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call202, i32 0, i32 0
  %bound205 = load i32* %bound_ptr204
  call void @oat_array_bounds_check( i32 %bound205, i32 0 )
  %elt203 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call202, i32 0, i32 1, i32 0
  store i32 0, i32* %elt203
  %path206 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call207 = load { i32, [ 0 x i32 ] }** %path206
  %bound_ptr209 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call207, i32 0, i32 0
  %bound210 = load i32* %bound_ptr209
  call void @oat_array_bounds_check( i32 %bound210, i32 1 )
  %elt208 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call207, i32 0, i32 1, i32 1
  store i32 1, i32* %elt208
  br label %__merge17

__fresh27:
  br label %__else18

__else18:
  %lhs_or_call211 = load i32* %type_slot7
  %bop212 = icmp eq i32 %lhs_or_call211, 2
  br i1 %bop212, label %__then16, label %__else15

__fresh28:
  br label %__then16

__then16:
  %path213 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call214 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path213
  %bound_ptr216 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call214, i32 0, i32 0
  %bound217 = load i32* %bound_ptr216
  call void @oat_array_bounds_check( i32 %bound217, i32 0 )
  %elt215 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call214, i32 0, i32 1, i32 0
  %lhs_or_call218 = load { i32, [ 0 x i32 ] }** %elt215
  %bound_ptr220 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call218, i32 0, i32 0
  %bound221 = load i32* %bound_ptr220
  call void @oat_array_bounds_check( i32 %bound221, i32 0 )
  %elt219 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call218, i32 0, i32 1, i32 0
  store i32 1, i32* %elt219
  %path222 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call223 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path222
  %bound_ptr225 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call223, i32 0, i32 0
  %bound226 = load i32* %bound_ptr225
  call void @oat_array_bounds_check( i32 %bound226, i32 0 )
  %elt224 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call223, i32 0, i32 1, i32 0
  %lhs_or_call227 = load { i32, [ 0 x i32 ] }** %elt224
  %bound_ptr229 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call227, i32 0, i32 0
  %bound230 = load i32* %bound_ptr229
  call void @oat_array_bounds_check( i32 %bound230, i32 1 )
  %elt228 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call227, i32 0, i32 1, i32 1
  store i32 0, i32* %elt228
  %path231 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call232 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path231
  %bound_ptr234 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call232, i32 0, i32 0
  %bound235 = load i32* %bound_ptr234
  call void @oat_array_bounds_check( i32 %bound235, i32 1 )
  %elt233 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call232, i32 0, i32 1, i32 1
  %lhs_or_call236 = load { i32, [ 0 x i32 ] }** %elt233
  %bound_ptr238 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call236, i32 0, i32 0
  %bound239 = load i32* %bound_ptr238
  call void @oat_array_bounds_check( i32 %bound239, i32 0 )
  %elt237 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call236, i32 0, i32 1, i32 0
  store i32 0, i32* %elt237
  %path240 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call241 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path240
  %bound_ptr243 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call241, i32 0, i32 0
  %bound244 = load i32* %bound_ptr243
  call void @oat_array_bounds_check( i32 %bound244, i32 1 )
  %elt242 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call241, i32 0, i32 1, i32 1
  %lhs_or_call245 = load { i32, [ 0 x i32 ] }** %elt242
  %bound_ptr247 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call245, i32 0, i32 0
  %bound248 = load i32* %bound_ptr247
  call void @oat_array_bounds_check( i32 %bound248, i32 1 )
  %elt246 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call245, i32 0, i32 1, i32 1
  store i32 1, i32* %elt246
  %path249 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call250 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path249
  %bound_ptr252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call250, i32 0, i32 0
  %bound253 = load i32* %bound_ptr252
  call void @oat_array_bounds_check( i32 %bound253, i32 2 )
  %elt251 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call250, i32 0, i32 1, i32 2
  %lhs_or_call254 = load { i32, [ 0 x i32 ] }** %elt251
  %bound_ptr256 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call254, i32 0, i32 0
  %bound257 = load i32* %bound_ptr256
  call void @oat_array_bounds_check( i32 %bound257, i32 0 )
  %elt255 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call254, i32 0, i32 1, i32 0
  store i32 1, i32* %elt255
  %path258 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call259 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path258
  %bound_ptr261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call259, i32 0, i32 0
  %bound262 = load i32* %bound_ptr261
  call void @oat_array_bounds_check( i32 %bound262, i32 2 )
  %elt260 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call259, i32 0, i32 1, i32 2
  %lhs_or_call263 = load { i32, [ 0 x i32 ] }** %elt260
  %bound_ptr265 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call263, i32 0, i32 0
  %bound266 = load i32* %bound_ptr265
  call void @oat_array_bounds_check( i32 %bound266, i32 1 )
  %elt264 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call263, i32 0, i32 1, i32 1
  store i32 1, i32* %elt264
  %path267 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call268 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path267
  %bound_ptr270 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call268, i32 0, i32 0
  %bound271 = load i32* %bound_ptr270
  call void @oat_array_bounds_check( i32 %bound271, i32 3 )
  %elt269 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call268, i32 0, i32 1, i32 3
  %lhs_or_call272 = load { i32, [ 0 x i32 ] }** %elt269
  %bound_ptr274 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call272, i32 0, i32 0
  %bound275 = load i32* %bound_ptr274
  call void @oat_array_bounds_check( i32 %bound275, i32 0 )
  %elt273 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call272, i32 0, i32 1, i32 0
  store i32 2, i32* %elt273
  %path276 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call277 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path276
  %bound_ptr279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call277, i32 0, i32 0
  %bound280 = load i32* %bound_ptr279
  call void @oat_array_bounds_check( i32 %bound280, i32 3 )
  %elt278 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call277, i32 0, i32 1, i32 3
  %lhs_or_call281 = load { i32, [ 0 x i32 ] }** %elt278
  %bound_ptr283 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call281, i32 0, i32 0
  %bound284 = load i32* %bound_ptr283
  call void @oat_array_bounds_check( i32 %bound284, i32 1 )
  %elt282 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call281, i32 0, i32 1, i32 1
  store i32 1, i32* %elt282
  %path285 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call286 = load { i32, [ 0 x i32 ] }** %path285
  %bound_ptr288 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call286, i32 0, i32 0
  %bound289 = load i32* %bound_ptr288
  call void @oat_array_bounds_check( i32 %bound289, i32 0 )
  %elt287 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call286, i32 0, i32 1, i32 0
  store i32 0, i32* %elt287
  %path290 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call291 = load { i32, [ 0 x i32 ] }** %path290
  %bound_ptr293 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call291, i32 0, i32 0
  %bound294 = load i32* %bound_ptr293
  call void @oat_array_bounds_check( i32 %bound294, i32 1 )
  %elt292 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call291, i32 0, i32 1, i32 1
  store i32 1, i32* %elt292
  br label %__merge14

__fresh29:
  br label %__else15

__else15:
  %lhs_or_call295 = load i32* %type_slot7
  %bop296 = icmp eq i32 %lhs_or_call295, 3
  br i1 %bop296, label %__then13, label %__else12

__fresh30:
  br label %__then13

__then13:
  %path297 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call298 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path297
  %bound_ptr300 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call298, i32 0, i32 0
  %bound301 = load i32* %bound_ptr300
  call void @oat_array_bounds_check( i32 %bound301, i32 0 )
  %elt299 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call298, i32 0, i32 1, i32 0
  %lhs_or_call302 = load { i32, [ 0 x i32 ] }** %elt299
  %bound_ptr304 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call302, i32 0, i32 0
  %bound305 = load i32* %bound_ptr304
  call void @oat_array_bounds_check( i32 %bound305, i32 0 )
  %elt303 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call302, i32 0, i32 1, i32 0
  store i32 0, i32* %elt303
  %path306 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call307 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path306
  %bound_ptr309 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call307, i32 0, i32 0
  %bound310 = load i32* %bound_ptr309
  call void @oat_array_bounds_check( i32 %bound310, i32 0 )
  %elt308 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call307, i32 0, i32 1, i32 0
  %lhs_or_call311 = load { i32, [ 0 x i32 ] }** %elt308
  %bound_ptr313 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call311, i32 0, i32 0
  %bound314 = load i32* %bound_ptr313
  call void @oat_array_bounds_check( i32 %bound314, i32 1 )
  %elt312 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call311, i32 0, i32 1, i32 1
  store i32 0, i32* %elt312
  %path315 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call316 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path315
  %bound_ptr318 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call316, i32 0, i32 0
  %bound319 = load i32* %bound_ptr318
  call void @oat_array_bounds_check( i32 %bound319, i32 1 )
  %elt317 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call316, i32 0, i32 1, i32 1
  %lhs_or_call320 = load { i32, [ 0 x i32 ] }** %elt317
  %bound_ptr322 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call320, i32 0, i32 0
  %bound323 = load i32* %bound_ptr322
  call void @oat_array_bounds_check( i32 %bound323, i32 0 )
  %elt321 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call320, i32 0, i32 1, i32 0
  store i32 1, i32* %elt321
  %path324 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call325 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path324
  %bound_ptr327 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call325, i32 0, i32 0
  %bound328 = load i32* %bound_ptr327
  call void @oat_array_bounds_check( i32 %bound328, i32 1 )
  %elt326 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call325, i32 0, i32 1, i32 1
  %lhs_or_call329 = load { i32, [ 0 x i32 ] }** %elt326
  %bound_ptr331 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call329, i32 0, i32 0
  %bound332 = load i32* %bound_ptr331
  call void @oat_array_bounds_check( i32 %bound332, i32 1 )
  %elt330 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call329, i32 0, i32 1, i32 1
  store i32 0, i32* %elt330
  %path333 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call334 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path333
  %bound_ptr336 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call334, i32 0, i32 0
  %bound337 = load i32* %bound_ptr336
  call void @oat_array_bounds_check( i32 %bound337, i32 2 )
  %elt335 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call334, i32 0, i32 1, i32 2
  %lhs_or_call338 = load { i32, [ 0 x i32 ] }** %elt335
  %bound_ptr340 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call338, i32 0, i32 0
  %bound341 = load i32* %bound_ptr340
  call void @oat_array_bounds_check( i32 %bound341, i32 0 )
  %elt339 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call338, i32 0, i32 1, i32 0
  store i32 1, i32* %elt339
  %path342 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call343 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path342
  %bound_ptr345 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call343, i32 0, i32 0
  %bound346 = load i32* %bound_ptr345
  call void @oat_array_bounds_check( i32 %bound346, i32 2 )
  %elt344 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call343, i32 0, i32 1, i32 2
  %lhs_or_call347 = load { i32, [ 0 x i32 ] }** %elt344
  %bound_ptr349 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call347, i32 0, i32 0
  %bound350 = load i32* %bound_ptr349
  call void @oat_array_bounds_check( i32 %bound350, i32 1 )
  %elt348 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call347, i32 0, i32 1, i32 1
  store i32 1, i32* %elt348
  %path351 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call352 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path351
  %bound_ptr354 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call352, i32 0, i32 0
  %bound355 = load i32* %bound_ptr354
  call void @oat_array_bounds_check( i32 %bound355, i32 3 )
  %elt353 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call352, i32 0, i32 1, i32 3
  %lhs_or_call356 = load { i32, [ 0 x i32 ] }** %elt353
  %bound_ptr358 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call356, i32 0, i32 0
  %bound359 = load i32* %bound_ptr358
  call void @oat_array_bounds_check( i32 %bound359, i32 0 )
  %elt357 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call356, i32 0, i32 1, i32 0
  store i32 2, i32* %elt357
  %path360 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call361 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path360
  %bound_ptr363 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call361, i32 0, i32 0
  %bound364 = load i32* %bound_ptr363
  call void @oat_array_bounds_check( i32 %bound364, i32 3 )
  %elt362 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call361, i32 0, i32 1, i32 3
  %lhs_or_call365 = load { i32, [ 0 x i32 ] }** %elt362
  %bound_ptr367 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call365, i32 0, i32 0
  %bound368 = load i32* %bound_ptr367
  call void @oat_array_bounds_check( i32 %bound368, i32 1 )
  %elt366 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call365, i32 0, i32 1, i32 1
  store i32 1, i32* %elt366
  %path369 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call370 = load { i32, [ 0 x i32 ] }** %path369
  %bound_ptr372 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call370, i32 0, i32 0
  %bound373 = load i32* %bound_ptr372
  call void @oat_array_bounds_check( i32 %bound373, i32 0 )
  %elt371 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call370, i32 0, i32 1, i32 0
  store i32 1, i32* %elt371
  %path374 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call375 = load { i32, [ 0 x i32 ] }** %path374
  %bound_ptr377 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call375, i32 0, i32 0
  %bound378 = load i32* %bound_ptr377
  call void @oat_array_bounds_check( i32 %bound378, i32 1 )
  %elt376 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call375, i32 0, i32 1, i32 1
  store i32 1, i32* %elt376
  br label %__merge11

__fresh31:
  br label %__else12

__else12:
  %lhs_or_call379 = load i32* %type_slot7
  %bop380 = icmp eq i32 %lhs_or_call379, 4
  br i1 %bop380, label %__then10, label %__else9

__fresh32:
  br label %__then10

__then10:
  %path381 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call382 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path381
  %bound_ptr384 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call382, i32 0, i32 0
  %bound385 = load i32* %bound_ptr384
  call void @oat_array_bounds_check( i32 %bound385, i32 0 )
  %elt383 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call382, i32 0, i32 1, i32 0
  %lhs_or_call386 = load { i32, [ 0 x i32 ] }** %elt383
  %bound_ptr388 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call386, i32 0, i32 0
  %bound389 = load i32* %bound_ptr388
  call void @oat_array_bounds_check( i32 %bound389, i32 0 )
  %elt387 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call386, i32 0, i32 1, i32 0
  store i32 1, i32* %elt387
  %path390 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call391 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path390
  %bound_ptr393 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call391, i32 0, i32 0
  %bound394 = load i32* %bound_ptr393
  call void @oat_array_bounds_check( i32 %bound394, i32 0 )
  %elt392 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call391, i32 0, i32 1, i32 0
  %lhs_or_call395 = load { i32, [ 0 x i32 ] }** %elt392
  %bound_ptr397 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call395, i32 0, i32 0
  %bound398 = load i32* %bound_ptr397
  call void @oat_array_bounds_check( i32 %bound398, i32 1 )
  %elt396 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call395, i32 0, i32 1, i32 1
  store i32 0, i32* %elt396
  %path399 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call400 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path399
  %bound_ptr402 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call400, i32 0, i32 0
  %bound403 = load i32* %bound_ptr402
  call void @oat_array_bounds_check( i32 %bound403, i32 1 )
  %elt401 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call400, i32 0, i32 1, i32 1
  %lhs_or_call404 = load { i32, [ 0 x i32 ] }** %elt401
  %bound_ptr406 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call404, i32 0, i32 0
  %bound407 = load i32* %bound_ptr406
  call void @oat_array_bounds_check( i32 %bound407, i32 0 )
  %elt405 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call404, i32 0, i32 1, i32 0
  store i32 2, i32* %elt405
  %path408 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call409 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path408
  %bound_ptr411 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call409, i32 0, i32 0
  %bound412 = load i32* %bound_ptr411
  call void @oat_array_bounds_check( i32 %bound412, i32 1 )
  %elt410 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call409, i32 0, i32 1, i32 1
  %lhs_or_call413 = load { i32, [ 0 x i32 ] }** %elt410
  %bound_ptr415 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call413, i32 0, i32 0
  %bound416 = load i32* %bound_ptr415
  call void @oat_array_bounds_check( i32 %bound416, i32 1 )
  %elt414 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call413, i32 0, i32 1, i32 1
  store i32 0, i32* %elt414
  %path417 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call418 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path417
  %bound_ptr420 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call418, i32 0, i32 0
  %bound421 = load i32* %bound_ptr420
  call void @oat_array_bounds_check( i32 %bound421, i32 2 )
  %elt419 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call418, i32 0, i32 1, i32 2
  %lhs_or_call422 = load { i32, [ 0 x i32 ] }** %elt419
  %bound_ptr424 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call422, i32 0, i32 0
  %bound425 = load i32* %bound_ptr424
  call void @oat_array_bounds_check( i32 %bound425, i32 0 )
  %elt423 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call422, i32 0, i32 1, i32 0
  store i32 0, i32* %elt423
  %path426 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call427 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path426
  %bound_ptr429 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call427, i32 0, i32 0
  %bound430 = load i32* %bound_ptr429
  call void @oat_array_bounds_check( i32 %bound430, i32 2 )
  %elt428 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call427, i32 0, i32 1, i32 2
  %lhs_or_call431 = load { i32, [ 0 x i32 ] }** %elt428
  %bound_ptr433 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call431, i32 0, i32 0
  %bound434 = load i32* %bound_ptr433
  call void @oat_array_bounds_check( i32 %bound434, i32 1 )
  %elt432 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call431, i32 0, i32 1, i32 1
  store i32 1, i32* %elt432
  %path435 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call436 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path435
  %bound_ptr438 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call436, i32 0, i32 0
  %bound439 = load i32* %bound_ptr438
  call void @oat_array_bounds_check( i32 %bound439, i32 3 )
  %elt437 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call436, i32 0, i32 1, i32 3
  %lhs_or_call440 = load { i32, [ 0 x i32 ] }** %elt437
  %bound_ptr442 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call440, i32 0, i32 0
  %bound443 = load i32* %bound_ptr442
  call void @oat_array_bounds_check( i32 %bound443, i32 0 )
  %elt441 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call440, i32 0, i32 1, i32 0
  store i32 1, i32* %elt441
  %path444 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call445 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path444
  %bound_ptr447 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call445, i32 0, i32 0
  %bound448 = load i32* %bound_ptr447
  call void @oat_array_bounds_check( i32 %bound448, i32 3 )
  %elt446 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call445, i32 0, i32 1, i32 3
  %lhs_or_call449 = load { i32, [ 0 x i32 ] }** %elt446
  %bound_ptr451 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call449, i32 0, i32 0
  %bound452 = load i32* %bound_ptr451
  call void @oat_array_bounds_check( i32 %bound452, i32 1 )
  %elt450 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call449, i32 0, i32 1, i32 1
  store i32 1, i32* %elt450
  %path453 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call454 = load { i32, [ 0 x i32 ] }** %path453
  %bound_ptr456 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call454, i32 0, i32 0
  %bound457 = load i32* %bound_ptr456
  call void @oat_array_bounds_check( i32 %bound457, i32 0 )
  %elt455 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call454, i32 0, i32 1, i32 0
  store i32 1, i32* %elt455
  %path458 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call459 = load { i32, [ 0 x i32 ] }** %path458
  %bound_ptr461 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call459, i32 0, i32 0
  %bound462 = load i32* %bound_ptr461
  call void @oat_array_bounds_check( i32 %bound462, i32 1 )
  %elt460 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call459, i32 0, i32 1, i32 1
  store i32 1, i32* %elt460
  br label %__merge8

__fresh33:
  br label %__else9

__else9:
  %lhs_or_call463 = load i32* %type_slot7
  %bop464 = icmp eq i32 %lhs_or_call463, 5
  br i1 %bop464, label %__then7, label %__else6

__fresh34:
  br label %__then7

__then7:
  %path465 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call466 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path465
  %bound_ptr468 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call466, i32 0, i32 0
  %bound469 = load i32* %bound_ptr468
  call void @oat_array_bounds_check( i32 %bound469, i32 0 )
  %elt467 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call466, i32 0, i32 1, i32 0
  %lhs_or_call470 = load { i32, [ 0 x i32 ] }** %elt467
  %bound_ptr472 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call470, i32 0, i32 0
  %bound473 = load i32* %bound_ptr472
  call void @oat_array_bounds_check( i32 %bound473, i32 0 )
  %elt471 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call470, i32 0, i32 1, i32 0
  store i32 0, i32* %elt471
  %path474 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call475 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path474
  %bound_ptr477 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call475, i32 0, i32 0
  %bound478 = load i32* %bound_ptr477
  call void @oat_array_bounds_check( i32 %bound478, i32 0 )
  %elt476 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call475, i32 0, i32 1, i32 0
  %lhs_or_call479 = load { i32, [ 0 x i32 ] }** %elt476
  %bound_ptr481 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call479, i32 0, i32 0
  %bound482 = load i32* %bound_ptr481
  call void @oat_array_bounds_check( i32 %bound482, i32 1 )
  %elt480 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call479, i32 0, i32 1, i32 1
  store i32 0, i32* %elt480
  %path483 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call484 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path483
  %bound_ptr486 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call484, i32 0, i32 0
  %bound487 = load i32* %bound_ptr486
  call void @oat_array_bounds_check( i32 %bound487, i32 1 )
  %elt485 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call484, i32 0, i32 1, i32 1
  %lhs_or_call488 = load { i32, [ 0 x i32 ] }** %elt485
  %bound_ptr490 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call488, i32 0, i32 0
  %bound491 = load i32* %bound_ptr490
  call void @oat_array_bounds_check( i32 %bound491, i32 0 )
  %elt489 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call488, i32 0, i32 1, i32 0
  store i32 1, i32* %elt489
  %path492 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call493 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path492
  %bound_ptr495 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call493, i32 0, i32 0
  %bound496 = load i32* %bound_ptr495
  call void @oat_array_bounds_check( i32 %bound496, i32 1 )
  %elt494 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call493, i32 0, i32 1, i32 1
  %lhs_or_call497 = load { i32, [ 0 x i32 ] }** %elt494
  %bound_ptr499 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call497, i32 0, i32 0
  %bound500 = load i32* %bound_ptr499
  call void @oat_array_bounds_check( i32 %bound500, i32 1 )
  %elt498 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call497, i32 0, i32 1, i32 1
  store i32 0, i32* %elt498
  %path501 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call502 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path501
  %bound_ptr504 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call502, i32 0, i32 0
  %bound505 = load i32* %bound_ptr504
  call void @oat_array_bounds_check( i32 %bound505, i32 2 )
  %elt503 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call502, i32 0, i32 1, i32 2
  %lhs_or_call506 = load { i32, [ 0 x i32 ] }** %elt503
  %bound_ptr508 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call506, i32 0, i32 0
  %bound509 = load i32* %bound_ptr508
  call void @oat_array_bounds_check( i32 %bound509, i32 0 )
  %elt507 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call506, i32 0, i32 1, i32 0
  store i32 1, i32* %elt507
  %path510 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call511 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path510
  %bound_ptr513 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call511, i32 0, i32 0
  %bound514 = load i32* %bound_ptr513
  call void @oat_array_bounds_check( i32 %bound514, i32 2 )
  %elt512 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call511, i32 0, i32 1, i32 2
  %lhs_or_call515 = load { i32, [ 0 x i32 ] }** %elt512
  %bound_ptr517 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call515, i32 0, i32 0
  %bound518 = load i32* %bound_ptr517
  call void @oat_array_bounds_check( i32 %bound518, i32 1 )
  %elt516 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call515, i32 0, i32 1, i32 1
  store i32 1, i32* %elt516
  %path519 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call520 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path519
  %bound_ptr522 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call520, i32 0, i32 0
  %bound523 = load i32* %bound_ptr522
  call void @oat_array_bounds_check( i32 %bound523, i32 3 )
  %elt521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call520, i32 0, i32 1, i32 3
  %lhs_or_call524 = load { i32, [ 0 x i32 ] }** %elt521
  %bound_ptr526 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call524, i32 0, i32 0
  %bound527 = load i32* %bound_ptr526
  call void @oat_array_bounds_check( i32 %bound527, i32 0 )
  %elt525 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call524, i32 0, i32 1, i32 0
  store i32 1, i32* %elt525
  %path528 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call529 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path528
  %bound_ptr531 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call529, i32 0, i32 0
  %bound532 = load i32* %bound_ptr531
  call void @oat_array_bounds_check( i32 %bound532, i32 3 )
  %elt530 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call529, i32 0, i32 1, i32 3
  %lhs_or_call533 = load { i32, [ 0 x i32 ] }** %elt530
  %bound_ptr535 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call533, i32 0, i32 0
  %bound536 = load i32* %bound_ptr535
  call void @oat_array_bounds_check( i32 %bound536, i32 1 )
  %elt534 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call533, i32 0, i32 1, i32 1
  store i32 2, i32* %elt534
  %path537 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call538 = load { i32, [ 0 x i32 ] }** %path537
  %bound_ptr540 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call538, i32 0, i32 0
  %bound541 = load i32* %bound_ptr540
  call void @oat_array_bounds_check( i32 %bound541, i32 0 )
  %elt539 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call538, i32 0, i32 1, i32 0
  store i32 1, i32* %elt539
  %path542 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call543 = load { i32, [ 0 x i32 ] }** %path542
  %bound_ptr545 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call543, i32 0, i32 0
  %bound546 = load i32* %bound_ptr545
  call void @oat_array_bounds_check( i32 %bound546, i32 1 )
  %elt544 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call543, i32 0, i32 1, i32 1
  store i32 2, i32* %elt544
  br label %__merge5

__fresh35:
  br label %__else6

__else6:
  %lhs_or_call547 = load i32* %type_slot7
  %bop548 = icmp eq i32 %lhs_or_call547, 6
  br i1 %bop548, label %__then4, label %__else3

__fresh36:
  br label %__then4

__then4:
  %path549 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call550 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path549
  %bound_ptr552 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call550, i32 0, i32 0
  %bound553 = load i32* %bound_ptr552
  call void @oat_array_bounds_check( i32 %bound553, i32 0 )
  %elt551 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call550, i32 0, i32 1, i32 0
  %lhs_or_call554 = load { i32, [ 0 x i32 ] }** %elt551
  %bound_ptr556 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call554, i32 0, i32 0
  %bound557 = load i32* %bound_ptr556
  call void @oat_array_bounds_check( i32 %bound557, i32 0 )
  %elt555 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call554, i32 0, i32 1, i32 0
  store i32 0, i32* %elt555
  %path558 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call559 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path558
  %bound_ptr561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call559, i32 0, i32 0
  %bound562 = load i32* %bound_ptr561
  call void @oat_array_bounds_check( i32 %bound562, i32 0 )
  %elt560 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call559, i32 0, i32 1, i32 0
  %lhs_or_call563 = load { i32, [ 0 x i32 ] }** %elt560
  %bound_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call563, i32 0, i32 0
  %bound566 = load i32* %bound_ptr565
  call void @oat_array_bounds_check( i32 %bound566, i32 1 )
  %elt564 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call563, i32 0, i32 1, i32 1
  store i32 0, i32* %elt564
  %path567 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call568 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path567
  %bound_ptr570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call568, i32 0, i32 0
  %bound571 = load i32* %bound_ptr570
  call void @oat_array_bounds_check( i32 %bound571, i32 1 )
  %elt569 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call568, i32 0, i32 1, i32 1
  %lhs_or_call572 = load { i32, [ 0 x i32 ] }** %elt569
  %bound_ptr574 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call572, i32 0, i32 0
  %bound575 = load i32* %bound_ptr574
  call void @oat_array_bounds_check( i32 %bound575, i32 0 )
  %elt573 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call572, i32 0, i32 1, i32 0
  store i32 1, i32* %elt573
  %path576 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call577 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path576
  %bound_ptr579 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call577, i32 0, i32 0
  %bound580 = load i32* %bound_ptr579
  call void @oat_array_bounds_check( i32 %bound580, i32 1 )
  %elt578 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call577, i32 0, i32 1, i32 1
  %lhs_or_call581 = load { i32, [ 0 x i32 ] }** %elt578
  %bound_ptr583 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call581, i32 0, i32 0
  %bound584 = load i32* %bound_ptr583
  call void @oat_array_bounds_check( i32 %bound584, i32 1 )
  %elt582 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call581, i32 0, i32 1, i32 1
  store i32 0, i32* %elt582
  %path585 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call586 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path585
  %bound_ptr588 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call586, i32 0, i32 0
  %bound589 = load i32* %bound_ptr588
  call void @oat_array_bounds_check( i32 %bound589, i32 2 )
  %elt587 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call586, i32 0, i32 1, i32 2
  %lhs_or_call590 = load { i32, [ 0 x i32 ] }** %elt587
  %bound_ptr592 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call590, i32 0, i32 0
  %bound593 = load i32* %bound_ptr592
  call void @oat_array_bounds_check( i32 %bound593, i32 0 )
  %elt591 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call590, i32 0, i32 1, i32 0
  store i32 0, i32* %elt591
  %path594 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call595 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path594
  %bound_ptr597 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call595, i32 0, i32 0
  %bound598 = load i32* %bound_ptr597
  call void @oat_array_bounds_check( i32 %bound598, i32 2 )
  %elt596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call595, i32 0, i32 1, i32 2
  %lhs_or_call599 = load { i32, [ 0 x i32 ] }** %elt596
  %bound_ptr601 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call599, i32 0, i32 0
  %bound602 = load i32* %bound_ptr601
  call void @oat_array_bounds_check( i32 %bound602, i32 1 )
  %elt600 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call599, i32 0, i32 1, i32 1
  store i32 1, i32* %elt600
  %path603 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call604 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path603
  %bound_ptr606 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call604, i32 0, i32 0
  %bound607 = load i32* %bound_ptr606
  call void @oat_array_bounds_check( i32 %bound607, i32 3 )
  %elt605 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call604, i32 0, i32 1, i32 3
  %lhs_or_call608 = load { i32, [ 0 x i32 ] }** %elt605
  %bound_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call608, i32 0, i32 0
  %bound611 = load i32* %bound_ptr610
  call void @oat_array_bounds_check( i32 %bound611, i32 0 )
  %elt609 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call608, i32 0, i32 1, i32 0
  store i32 0, i32* %elt609
  %path612 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call613 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path612
  %bound_ptr615 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call613, i32 0, i32 0
  %bound616 = load i32* %bound_ptr615
  call void @oat_array_bounds_check( i32 %bound616, i32 3 )
  %elt614 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call613, i32 0, i32 1, i32 3
  %lhs_or_call617 = load { i32, [ 0 x i32 ] }** %elt614
  %bound_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call617, i32 0, i32 0
  %bound620 = load i32* %bound_ptr619
  call void @oat_array_bounds_check( i32 %bound620, i32 1 )
  %elt618 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call617, i32 0, i32 1, i32 1
  store i32 2, i32* %elt618
  %path621 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call622 = load { i32, [ 0 x i32 ] }** %path621
  %bound_ptr624 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call622, i32 0, i32 0
  %bound625 = load i32* %bound_ptr624
  call void @oat_array_bounds_check( i32 %bound625, i32 0 )
  %elt623 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call622, i32 0, i32 1, i32 0
  store i32 0, i32* %elt623
  %path626 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call627 = load { i32, [ 0 x i32 ] }** %path626
  %bound_ptr629 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call627, i32 0, i32 0
  %bound630 = load i32* %bound_ptr629
  call void @oat_array_bounds_check( i32 %bound630, i32 1 )
  %elt628 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call627, i32 0, i32 1, i32 1
  store i32 2, i32* %elt628
  br label %__merge2

__fresh37:
  br label %__else3

__else3:
  br label %__merge2

__merge2:
  br label %__merge5

__merge5:
  br label %__merge8

__merge8:
  br label %__merge11

__merge11:
  br label %__merge14

__merge14:
  br label %__merge17

__merge17:
  br label %__merge20

__merge20:
  ret %Shape* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh1:
  %path4 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call5 = load i8** %path4
  ret i8* %lhs_or_call5
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh0:
  %path2 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str4, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}


