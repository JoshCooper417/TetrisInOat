%State = type { %_State_vtable*, i8*, %Shape*, i32, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* }
%_State_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%State*)*, void (%State*)*, void (%State*, i32)*, void (%State*)* }
%Shape = type { %_Shape_vtable*, i8*, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*, { i32, [ 0 x i32 ] }* }
%_Shape_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)*, void (%Shape*)* }
%List = type { %_List_vtable*, i8*, %ListItem* }
%_List_vtable = type { %_Object_vtable*, i8* (%Object*)*, i1 (%List*)*, void (%List*, %Object*)*, void (%List*, %ListItem*)* }
%ListItem = type { %_ListItem_vtable*, i8*, %Object*, %ListItem*, %ListItem* }
%_ListItem_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare i32 @oat_mod(i32, i32)
declare i32 @oat_div(i32, i32)
declare i32 @con_halfdelay(i32)
declare i32 @con_sleep(i32)
declare i32 @con_height()
declare i32 @con_width()
declare i32 @con_bold(i32)
declare i32 @con_color(i32)
declare i32 @con_getch()
declare void @con_refresh()
declare void @con_clear()
declare void @con_clrtoeol()
declare i32 @con_attrget()
declare void @con_attrset(i32)
declare void @con_move(i32, i32)
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
@_const_str16.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str16 = alias bitcast([ 6 x i8 ]* @_const_str16.str. to i8*)@_const_str15.str. = private unnamed_addr constant [ 39 x i8 ] c "Minimum size of the console is 80x25!
\00", align 4
@_const_str15 = alias bitcast([ 39 x i8 ]* @_const_str15.str. to i8*)@_const_str14.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str14 = alias bitcast([ 6 x i8 ]* @_const_str14.str. to i8*)@_const_str13.str. = private unnamed_addr constant [ 3 x i8 ] c "[]\00", align 4
@_const_str13 = alias bitcast([ 3 x i8 ]* @_const_str13.str. to i8*)@_const_str12.str. = private unnamed_addr constant [ 141 x i8 ] c "
    TETRIS. 

      j - Move left 

      l - Move right 

      i - Rotate right 

      h - Rotate left 

      [Press any key to begin]
\00", align 4
@_const_str12 = alias bitcast([ 141 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 6 x i8 ] c "State\00", align 4
@_const_str11 = alias bitcast([ 6 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 6 x i8 ] c "Shape\00", align 4
@_const_str10 = alias bitcast([ 6 x i8 ]* @_const_str10.str. to i8*)@_const_str9.str. = private unnamed_addr constant [ 13 x i8 ] c "invalid list\00", align 4
@_const_str9 = alias bitcast([ 13 x i8 ]* @_const_str9.str. to i8*)@_const_str8.str. = private unnamed_addr constant [ 5 x i8 ] c "List\00", align 4
@_const_str8 = alias bitcast([ 5 x i8 ]* @_const_str8.str. to i8*)@_const_str7.str. = private unnamed_addr constant [ 9 x i8 ] c "ListItem\00", align 4
@_const_str7 = alias bitcast([ 9 x i8 ]* @_const_str7.str. to i8*)@_const_str6.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str6 = alias bitcast([ 7 x i8 ]* @_const_str6.str. to i8*)@_State_vtable5 = private constant %_State_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%State*)* @_State_make_new_shape, void (%State*)* @_State_init, void (%State*, i32)* @_State_update, void (%State*)* @_State_display}, align 4
@_Shape_vtable4 = private constant %_Shape_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%Shape*)* @_Shape_move_down, void (%Shape*)* @_Shape_move_left, void (%Shape*)* @_Shape_move_right, void (%Shape*)* @_Shape_rotate_right, void (%Shape*)* @_Shape_rotate_left}, align 4
@_List_vtable3 = private constant %_List_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, i1 (%List*)* @_List_is_empty, void (%List*, %Object*)* @_List_insert, void (%List*, %ListItem*)* @_List_remove}, align 4
@_ListItem_vtable2 = private constant %_ListItem_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh322:
  ret void
}


define i32 @program (i32 %argc2000, { i32, [ 0 x i8* ] }* %argv1998){
__fresh317:
  %argc_slot2001 = alloca i32
  store i32 %argc2000, i32* %argc_slot2001
  %argv_slot1999 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1998, { i32, [ 0 x i8* ] }** %argv_slot1999
  %vdecl_slot2002 = alloca i32
  store i32 80, i32* %vdecl_slot2002
  %vdecl_slot2003 = alloca i32
  store i32 25, i32* %vdecl_slot2003
  call void @print_string( i8* @_const_str14 )
  call void @con_init(  )
  call void @instructions(  )
  %ret2004 = call i32 @con_width (  )
  %lhs_or_call2005 = load i32* %vdecl_slot2002
  %bop2006 = icmp sge i32 %ret2004, %lhs_or_call2005
  %ret2007 = call i32 @con_height (  )
  %lhs_or_call2008 = load i32* %vdecl_slot2003
  %bop2009 = icmp sge i32 %ret2007, %lhs_or_call2008
  %bop2010 = and i1 %bop2006, %bop2009
  br i1 %bop2010, label %__then316, label %__else315

__fresh318:
  br label %__then316

__then316:
  %mem_ptr2011 = call i32* @oat_malloc ( i32 20 )
  %obj2012 = bitcast i32* %mem_ptr2011 to %State* 
  %new_obj2013 = call %State* @_State_ctor ( %State* %obj2012 )
  %vdecl_slot2014 = alloca %State*
  store %State* %new_obj2013, %State** %vdecl_slot2014
  %vdecl_slot2015 = alloca i1
  store i1 0, i1* %vdecl_slot2015
  %vdecl_slot2016 = alloca i32
  store i32 0, i32* %vdecl_slot2016
  %vdecl_slot2017 = alloca i32
  store i32 0, i32* %vdecl_slot2017
  %lhs_or_call2018 = load %State** %vdecl_slot2014
  %vtmp2020 = getelementptr %State* %lhs_or_call2018, i32 0, i32 0
  %vtable2019 = load %_State_vtable** %vtmp2020
  %fptmp2021 = getelementptr %_State_vtable* %vtable2019, i32 0, i32 3
  %method2022 = load void (%State*)** %fptmp2021
  call void %method2022( %State* %lhs_or_call2018 )
  %ret2023 = call i32 @con_halfdelay ( i32 1 )
  store i32 %ret2023, i32* %vdecl_slot2017
  br label %__cond313

__cond313:
  %lhs_or_call2024 = load i32* %vdecl_slot2016
  %bop2025 = icmp ne i32 %lhs_or_call2024, 27
  %lhs_or_call2026 = load i1* %vdecl_slot2015
  %unop2027 = icmp eq i1 %lhs_or_call2026, 0
  %bop2028 = and i1 %bop2025, %unop2027
  br i1 %bop2028, label %__body312, label %__post311

__fresh319:
  br label %__body312

__body312:
  %lhs_or_call2029 = load %State** %vdecl_slot2014
  %vtmp2031 = getelementptr %State* %lhs_or_call2029, i32 0, i32 0
  %vtable2030 = load %_State_vtable** %vtmp2031
  %fptmp2032 = getelementptr %_State_vtable* %vtable2030, i32 0, i32 5
  %method2033 = load void (%State*)** %fptmp2032
  call void %method2033( %State* %lhs_or_call2029 )
  %ret2034 = call i32 @con_getch (  )
  store i32 %ret2034, i32* %vdecl_slot2016
  %lhs_or_call2036 = load %State** %vdecl_slot2014
  %vtmp2038 = getelementptr %State* %lhs_or_call2036, i32 0, i32 0
  %vtable2037 = load %_State_vtable** %vtmp2038
  %fptmp2039 = getelementptr %_State_vtable* %vtable2037, i32 0, i32 4
  %method2040 = load void (%State*, i32)** %fptmp2039
  %lhs_or_call2035 = load i32* %vdecl_slot2016
  call void %method2040( %State* %lhs_or_call2036, i32 %lhs_or_call2035 )
  br label %__cond313

__fresh320:
  br label %__post311

__post311:
  call void @con_cleanup(  )
  br label %__merge314

__fresh321:
  br label %__else315

__else315:
  call void @con_cleanup(  )
  call void @print_string( i8* @_const_str15 )
  br label %__merge314

__merge314:
  call void @print_string( i8* @_const_str16 )
  ret i32 0
}


define void @draw ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %grid1971){
__fresh304:
  %grid_slot1972 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %grid1971, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %grid_slot1972
  %vdecl_slot1973 = alloca i32
  store i32 0, i32* %vdecl_slot1973
  br label %__cond297

__cond297:
  %lhs_or_call1974 = load i32* %vdecl_slot1973
  %bop1975 = icmp slt i32 %lhs_or_call1974, 10
  br i1 %bop1975, label %__body296, label %__post295

__fresh305:
  br label %__body296

__body296:
  %vdecl_slot1976 = alloca i32
  store i32 0, i32* %vdecl_slot1976
  br label %__cond300

__cond300:
  %lhs_or_call1977 = load i32* %vdecl_slot1976
  %bop1978 = icmp slt i32 %lhs_or_call1977, 50
  br i1 %bop1978, label %__body299, label %__post298

__fresh306:
  br label %__body299

__body299:
  %lhs_or_call1979 = load i32* %vdecl_slot1976
  %lhs_or_call1980 = load i32* %vdecl_slot1973
  %bop1981 = mul i32 2, %lhs_or_call1980
  call void @con_move( i32 %bop1981, i32 %lhs_or_call1979 )
  %lhs_or_call1982 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %grid_slot1972
  %lhs_or_call1983 = load i32* %vdecl_slot1973
  %bound_ptr1985 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1982, i32 0, i32 0
  %bound1986 = load i32* %bound_ptr1985
  call void @oat_array_bounds_check( i32 %bound1986, i32 %lhs_or_call1983 )
  %elt1984 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1982, i32 0, i32 1, i32 %lhs_or_call1983
  %lhs_or_call1987 = load { i32, [ 0 x i32 ] }** %elt1984
  %lhs_or_call1988 = load i32* %vdecl_slot1976
  %bound_ptr1990 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1987, i32 0, i32 0
  %bound1991 = load i32* %bound_ptr1990
  call void @oat_array_bounds_check( i32 %bound1991, i32 %lhs_or_call1988 )
  %elt1989 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1987, i32 0, i32 1, i32 %lhs_or_call1988
  %lhs_or_call1992 = load i32* %elt1989
  %bop1993 = icmp eq i32 %lhs_or_call1992, 1
  br i1 %bop1993, label %__then303, label %__else302

__fresh307:
  br label %__then303

__then303:
  call void @con_print( i8* @_const_str13 )
  br label %__merge301

__fresh308:
  br label %__else302

__else302:
  br label %__merge301

__merge301:
  %lhs_or_call1994 = load i32* %vdecl_slot1976
  %bop1995 = add i32 %lhs_or_call1994, 1
  store i32 %bop1995, i32* %vdecl_slot1976
  br label %__cond300

__fresh309:
  br label %__post298

__post298:
  %lhs_or_call1996 = load i32* %vdecl_slot1973
  %bop1997 = add i32 %lhs_or_call1996, 1
  store i32 %bop1997, i32* %vdecl_slot1973
  br label %__cond297

__fresh310:
  br label %__post295

__post295:
  ret void
}


define void @instructions (){
__fresh294:
  %vdecl_slot1969 = alloca i32
  store i32 0, i32* %vdecl_slot1969
  call void @con_move( i32 0, i32 0 )
  call void @con_print( i8* @_const_str12 )
  %ret1970 = call i32 @con_getch (  )
  store i32 %ret1970, i32* %vdecl_slot1969
  ret void
}


define void @_State_display (%State* %_this1){
__fresh293:
  %vdecl_slot1965 = alloca i32
  store i32 0, i32* %vdecl_slot1965
  call void @con_clear(  )
  %ret1966 = call i32 @con_color ( i32 143 )
  store i32 %ret1966, i32* %vdecl_slot1965
  %path1967 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1968 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1967
  call void @draw( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1968 )
  call void @con_refresh(  )
  ret void
}


define void @_State_update (%State* %_this1, i32 %k1603){
__fresh256:
  %k_slot1604 = alloca i32
  store i32 %k1603, i32* %k_slot1604
  %vdecl_slot1605 = alloca i1
  store i1 0, i1* %vdecl_slot1605
  %array_ptr1606 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1607 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1606 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1608 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1609 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1608 to { i32, [ 0 x i32 ] }* 
  %index_ptr1610 = getelementptr { i32, [ 0 x i32 ] }* %array1609, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1610
  %index_ptr1611 = getelementptr { i32, [ 0 x i32 ] }* %array1609, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1611
  %index_ptr1612 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1607, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1609, { i32, [ 0 x i32 ] }** %index_ptr1612
  %array_ptr1613 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1614 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1613 to { i32, [ 0 x i32 ] }* 
  %index_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1615
  %index_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1616
  %index_ptr1617 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1607, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1614, { i32, [ 0 x i32 ] }** %index_ptr1617
  %array_ptr1618 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1619 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1618 to { i32, [ 0 x i32 ] }* 
  %index_ptr1620 = getelementptr { i32, [ 0 x i32 ] }* %array1619, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1620
  %index_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %array1619, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1621
  %index_ptr1622 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1607, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1619, { i32, [ 0 x i32 ] }** %index_ptr1622
  %array_ptr1623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1623 to { i32, [ 0 x i32 ] }* 
  %index_ptr1625 = getelementptr { i32, [ 0 x i32 ] }* %array1624, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1625
  %index_ptr1626 = getelementptr { i32, [ 0 x i32 ] }* %array1624, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1626
  %index_ptr1627 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1607, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1624, { i32, [ 0 x i32 ] }** %index_ptr1627
  %vdecl_slot1628 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1607, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %vdecl_slot1629 = alloca i32
  store i32 0, i32* %vdecl_slot1629
  br label %__cond204

__cond204:
  %lhs_or_call1630 = load i32* %vdecl_slot1629
  %bop1631 = icmp slt i32 %lhs_or_call1630, 4
  br i1 %bop1631, label %__body203, label %__post202

__fresh257:
  br label %__body203

__body203:
  %lhs_or_call1632 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1633 = load i32* %vdecl_slot1629
  %bound_ptr1635 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1632, i32 0, i32 0
  %bound1636 = load i32* %bound_ptr1635
  call void @oat_array_bounds_check( i32 %bound1636, i32 %lhs_or_call1633 )
  %elt1634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1632, i32 0, i32 1, i32 %lhs_or_call1633
  %lhs_or_call1637 = load { i32, [ 0 x i32 ] }** %elt1634
  %bound_ptr1639 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1637, i32 0, i32 0
  %bound1640 = load i32* %bound_ptr1639
  call void @oat_array_bounds_check( i32 %bound1640, i32 0 )
  %elt1638 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1637, i32 0, i32 1, i32 0
  %path1641 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1642 = load %Shape** %path1641
  %path1643 = getelementptr %Shape* %lhs_or_call1642, i32 0, i32 2
  %lhs_or_call1644 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1643
  %lhs_or_call1645 = load i32* %vdecl_slot1629
  %bound_ptr1647 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1644, i32 0, i32 0
  %bound1648 = load i32* %bound_ptr1647
  call void @oat_array_bounds_check( i32 %bound1648, i32 %lhs_or_call1645 )
  %elt1646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1644, i32 0, i32 1, i32 %lhs_or_call1645
  %lhs_or_call1649 = load { i32, [ 0 x i32 ] }** %elt1646
  %bound_ptr1651 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1649, i32 0, i32 0
  %bound1652 = load i32* %bound_ptr1651
  call void @oat_array_bounds_check( i32 %bound1652, i32 0 )
  %elt1650 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1649, i32 0, i32 1, i32 0
  %lhs_or_call1653 = load i32* %elt1650
  store i32 %lhs_or_call1653, i32* %elt1638
  %lhs_or_call1654 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1655 = load i32* %vdecl_slot1629
  %bound_ptr1657 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1654, i32 0, i32 0
  %bound1658 = load i32* %bound_ptr1657
  call void @oat_array_bounds_check( i32 %bound1658, i32 %lhs_or_call1655 )
  %elt1656 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1654, i32 0, i32 1, i32 %lhs_or_call1655
  %lhs_or_call1659 = load { i32, [ 0 x i32 ] }** %elt1656
  %bound_ptr1661 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1659, i32 0, i32 0
  %bound1662 = load i32* %bound_ptr1661
  call void @oat_array_bounds_check( i32 %bound1662, i32 1 )
  %elt1660 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1659, i32 0, i32 1, i32 1
  %path1663 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1664 = load %Shape** %path1663
  %path1665 = getelementptr %Shape* %lhs_or_call1664, i32 0, i32 2
  %lhs_or_call1666 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1665
  %lhs_or_call1667 = load i32* %vdecl_slot1629
  %bound_ptr1669 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1666, i32 0, i32 0
  %bound1670 = load i32* %bound_ptr1669
  call void @oat_array_bounds_check( i32 %bound1670, i32 %lhs_or_call1667 )
  %elt1668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1666, i32 0, i32 1, i32 %lhs_or_call1667
  %lhs_or_call1671 = load { i32, [ 0 x i32 ] }** %elt1668
  %bound_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1671, i32 0, i32 0
  %bound1674 = load i32* %bound_ptr1673
  call void @oat_array_bounds_check( i32 %bound1674, i32 1 )
  %elt1672 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1671, i32 0, i32 1, i32 1
  %lhs_or_call1675 = load i32* %elt1672
  store i32 %lhs_or_call1675, i32* %elt1660
  %lhs_or_call1676 = load i32* %vdecl_slot1629
  %bop1677 = add i32 %lhs_or_call1676, 1
  store i32 %bop1677, i32* %vdecl_slot1629
  br label %__cond204

__fresh258:
  br label %__post202

__post202:
  %vdecl_slot1678 = alloca i32
  store i32 0, i32* %vdecl_slot1678
  br label %__cond207

__cond207:
  %lhs_or_call1679 = load i32* %vdecl_slot1678
  %bop1680 = icmp slt i32 %lhs_or_call1679, 4
  br i1 %bop1680, label %__body206, label %__post205

__fresh259:
  br label %__body206

__body206:
  %lhs_or_call1681 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1682 = load i32* %vdecl_slot1678
  %bound_ptr1684 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1681, i32 0, i32 0
  %bound1685 = load i32* %bound_ptr1684
  call void @oat_array_bounds_check( i32 %bound1685, i32 %lhs_or_call1682 )
  %elt1683 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1681, i32 0, i32 1, i32 %lhs_or_call1682
  %lhs_or_call1686 = load { i32, [ 0 x i32 ] }** %elt1683
  %bound_ptr1688 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1686, i32 0, i32 0
  %bound1689 = load i32* %bound_ptr1688
  call void @oat_array_bounds_check( i32 %bound1689, i32 0 )
  %elt1687 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1686, i32 0, i32 1, i32 0
  %lhs_or_call1690 = load i32* %elt1687
  %vdecl_slot1691 = alloca i32
  store i32 %lhs_or_call1690, i32* %vdecl_slot1691
  %lhs_or_call1692 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1693 = load i32* %vdecl_slot1678
  %bound_ptr1695 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1692, i32 0, i32 0
  %bound1696 = load i32* %bound_ptr1695
  call void @oat_array_bounds_check( i32 %bound1696, i32 %lhs_or_call1693 )
  %elt1694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1692, i32 0, i32 1, i32 %lhs_or_call1693
  %lhs_or_call1697 = load { i32, [ 0 x i32 ] }** %elt1694
  %bound_ptr1699 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1697, i32 0, i32 0
  %bound1700 = load i32* %bound_ptr1699
  call void @oat_array_bounds_check( i32 %bound1700, i32 1 )
  %elt1698 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1697, i32 0, i32 1, i32 1
  %lhs_or_call1701 = load i32* %elt1698
  %vdecl_slot1702 = alloca i32
  store i32 %lhs_or_call1701, i32* %vdecl_slot1702
  %path1703 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1704 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1703
  %lhs_or_call1705 = load i32* %vdecl_slot1691
  %bound_ptr1707 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1704, i32 0, i32 0
  %bound1708 = load i32* %bound_ptr1707
  call void @oat_array_bounds_check( i32 %bound1708, i32 %lhs_or_call1705 )
  %elt1706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1704, i32 0, i32 1, i32 %lhs_or_call1705
  %lhs_or_call1709 = load { i32, [ 0 x i32 ] }** %elt1706
  %lhs_or_call1710 = load i32* %vdecl_slot1702
  %bound_ptr1712 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1709, i32 0, i32 0
  %bound1713 = load i32* %bound_ptr1712
  call void @oat_array_bounds_check( i32 %bound1713, i32 %lhs_or_call1710 )
  %elt1711 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1709, i32 0, i32 1, i32 %lhs_or_call1710
  store i32 0, i32* %elt1711
  %lhs_or_call1714 = load i32* %vdecl_slot1678
  %bop1715 = add i32 %lhs_or_call1714, 1
  store i32 %bop1715, i32* %vdecl_slot1678
  br label %__cond207

__fresh260:
  br label %__post205

__post205:
  %lhs_or_call1716 = load i32* %k_slot1604
  %bop1717 = icmp eq i32 %lhs_or_call1716, 106
  br i1 %bop1717, label %__then210, label %__else209

__fresh261:
  br label %__then210

__then210:
  %path1718 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1719 = load %Shape** %path1718
  %vtmp1721 = getelementptr %Shape* %lhs_or_call1719, i32 0, i32 0
  %vtable1720 = load %_Shape_vtable** %vtmp1721
  %fptmp1722 = getelementptr %_Shape_vtable* %vtable1720, i32 0, i32 3
  %method1723 = load void (%Shape*)** %fptmp1722
  call void %method1723( %Shape* %lhs_or_call1719 )
  br label %__merge208

__fresh262:
  br label %__else209

__else209:
  br label %__merge208

__merge208:
  %lhs_or_call1724 = load i32* %k_slot1604
  %bop1725 = icmp eq i32 %lhs_or_call1724, 108
  br i1 %bop1725, label %__then213, label %__else212

__fresh263:
  br label %__then213

__then213:
  %path1726 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1727 = load %Shape** %path1726
  %vtmp1729 = getelementptr %Shape* %lhs_or_call1727, i32 0, i32 0
  %vtable1728 = load %_Shape_vtable** %vtmp1729
  %fptmp1730 = getelementptr %_Shape_vtable* %vtable1728, i32 0, i32 4
  %method1731 = load void (%Shape*)** %fptmp1730
  call void %method1731( %Shape* %lhs_or_call1727 )
  br label %__merge211

__fresh264:
  br label %__else212

__else212:
  br label %__merge211

__merge211:
  %lhs_or_call1732 = load i32* %k_slot1604
  %bop1733 = icmp eq i32 %lhs_or_call1732, 105
  br i1 %bop1733, label %__then216, label %__else215

__fresh265:
  br label %__then216

__then216:
  %path1734 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1735 = load %Shape** %path1734
  %vtmp1737 = getelementptr %Shape* %lhs_or_call1735, i32 0, i32 0
  %vtable1736 = load %_Shape_vtable** %vtmp1737
  %fptmp1738 = getelementptr %_Shape_vtable* %vtable1736, i32 0, i32 5
  %method1739 = load void (%Shape*)** %fptmp1738
  call void %method1739( %Shape* %lhs_or_call1735 )
  br label %__merge214

__fresh266:
  br label %__else215

__else215:
  br label %__merge214

__merge214:
  %lhs_or_call1740 = load i32* %k_slot1604
  %bop1741 = icmp eq i32 %lhs_or_call1740, 104
  br i1 %bop1741, label %__then219, label %__else218

__fresh267:
  br label %__then219

__then219:
  %path1742 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1743 = load %Shape** %path1742
  %vtmp1745 = getelementptr %Shape* %lhs_or_call1743, i32 0, i32 0
  %vtable1744 = load %_Shape_vtable** %vtmp1745
  %fptmp1746 = getelementptr %_Shape_vtable* %vtable1744, i32 0, i32 6
  %method1747 = load void (%Shape*)** %fptmp1746
  call void %method1747( %Shape* %lhs_or_call1743 )
  br label %__merge217

__fresh268:
  br label %__else218

__else218:
  br label %__merge217

__merge217:
  %path1748 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1749 = load %Shape** %path1748
  %vtmp1751 = getelementptr %Shape* %lhs_or_call1749, i32 0, i32 0
  %vtable1750 = load %_Shape_vtable** %vtmp1751
  %fptmp1752 = getelementptr %_Shape_vtable* %vtable1750, i32 0, i32 2
  %method1753 = load void (%Shape*)** %fptmp1752
  call void %method1753( %Shape* %lhs_or_call1749 )
  %vdecl_slot1754 = alloca i32
  store i32 0, i32* %vdecl_slot1754
  br label %__cond222

__cond222:
  %lhs_or_call1755 = load i32* %vdecl_slot1754
  %bop1756 = icmp slt i32 %lhs_or_call1755, 4
  br i1 %bop1756, label %__body221, label %__post220

__fresh269:
  br label %__body221

__body221:
  %path1757 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1758 = load %Shape** %path1757
  %path1759 = getelementptr %Shape* %lhs_or_call1758, i32 0, i32 2
  %lhs_or_call1760 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1759
  %lhs_or_call1761 = load i32* %vdecl_slot1754
  %bound_ptr1763 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1760, i32 0, i32 0
  %bound1764 = load i32* %bound_ptr1763
  call void @oat_array_bounds_check( i32 %bound1764, i32 %lhs_or_call1761 )
  %elt1762 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1760, i32 0, i32 1, i32 %lhs_or_call1761
  %lhs_or_call1765 = load { i32, [ 0 x i32 ] }** %elt1762
  %bound_ptr1767 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1765, i32 0, i32 0
  %bound1768 = load i32* %bound_ptr1767
  call void @oat_array_bounds_check( i32 %bound1768, i32 0 )
  %elt1766 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1765, i32 0, i32 1, i32 0
  %lhs_or_call1769 = load i32* %elt1766
  %vdecl_slot1770 = alloca i32
  store i32 %lhs_or_call1769, i32* %vdecl_slot1770
  %path1771 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1772 = load %Shape** %path1771
  %path1773 = getelementptr %Shape* %lhs_or_call1772, i32 0, i32 2
  %lhs_or_call1774 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1773
  %lhs_or_call1775 = load i32* %vdecl_slot1754
  %bound_ptr1777 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1774, i32 0, i32 0
  %bound1778 = load i32* %bound_ptr1777
  call void @oat_array_bounds_check( i32 %bound1778, i32 %lhs_or_call1775 )
  %elt1776 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1774, i32 0, i32 1, i32 %lhs_or_call1775
  %lhs_or_call1779 = load { i32, [ 0 x i32 ] }** %elt1776
  %bound_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1779, i32 0, i32 0
  %bound1782 = load i32* %bound_ptr1781
  call void @oat_array_bounds_check( i32 %bound1782, i32 1 )
  %elt1780 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1779, i32 0, i32 1, i32 1
  %lhs_or_call1783 = load i32* %elt1780
  %vdecl_slot1784 = alloca i32
  store i32 %lhs_or_call1783, i32* %vdecl_slot1784
  %path1785 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1786 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1785
  %lhs_or_call1787 = load i32* %vdecl_slot1770
  %bound_ptr1789 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1786, i32 0, i32 0
  %bound1790 = load i32* %bound_ptr1789
  call void @oat_array_bounds_check( i32 %bound1790, i32 %lhs_or_call1787 )
  %elt1788 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1786, i32 0, i32 1, i32 %lhs_or_call1787
  %lhs_or_call1791 = load { i32, [ 0 x i32 ] }** %elt1788
  %lhs_or_call1792 = load i32* %vdecl_slot1784
  %bound_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1791, i32 0, i32 0
  %bound1795 = load i32* %bound_ptr1794
  call void @oat_array_bounds_check( i32 %bound1795, i32 %lhs_or_call1792 )
  %elt1793 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1791, i32 0, i32 1, i32 %lhs_or_call1792
  %lhs_or_call1796 = load i32* %elt1793
  %bop1797 = icmp eq i32 %lhs_or_call1796, 1
  %lhs_or_call1798 = load i32* %vdecl_slot1784
  %bop1799 = icmp eq i32 %lhs_or_call1798, 49
  %bop1800 = or i1 %bop1797, %bop1799
  br i1 %bop1800, label %__then225, label %__else224

__fresh270:
  br label %__then225

__then225:
  store i1 1, i1* %vdecl_slot1605
  br label %__merge223

__fresh271:
  br label %__else224

__else224:
  br label %__merge223

__merge223:
  %lhs_or_call1801 = load i32* %vdecl_slot1754
  %bop1802 = add i32 %lhs_or_call1801, 1
  store i32 %bop1802, i32* %vdecl_slot1754
  br label %__cond222

__fresh272:
  br label %__post220

__post220:
  %lhs_or_call1803 = load i1* %vdecl_slot1605
  br i1 %lhs_or_call1803, label %__then234, label %__else233

__fresh273:
  br label %__then234

__then234:
  %vtmp1805 = getelementptr %State* %_this1, i32 0, i32 0
  %vtable1804 = load %_State_vtable** %vtmp1805
  %fptmp1806 = getelementptr %_State_vtable* %vtable1804, i32 0, i32 2
  %method1807 = load void (%State*)** %fptmp1806
  call void %method1807( %State* %_this1 )
  %vdecl_slot1808 = alloca i32
  store i32 0, i32* %vdecl_slot1808
  br label %__cond228

__cond228:
  %lhs_or_call1809 = load i32* %vdecl_slot1808
  %bop1810 = icmp slt i32 %lhs_or_call1809, 4
  br i1 %bop1810, label %__body227, label %__post226

__fresh274:
  br label %__body227

__body227:
  %lhs_or_call1811 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1812 = load i32* %vdecl_slot1808
  %bound_ptr1814 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1811, i32 0, i32 0
  %bound1815 = load i32* %bound_ptr1814
  call void @oat_array_bounds_check( i32 %bound1815, i32 %lhs_or_call1812 )
  %elt1813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1811, i32 0, i32 1, i32 %lhs_or_call1812
  %lhs_or_call1816 = load { i32, [ 0 x i32 ] }** %elt1813
  %bound_ptr1818 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1816, i32 0, i32 0
  %bound1819 = load i32* %bound_ptr1818
  call void @oat_array_bounds_check( i32 %bound1819, i32 0 )
  %elt1817 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1816, i32 0, i32 1, i32 0
  %lhs_or_call1820 = load i32* %elt1817
  %vdecl_slot1821 = alloca i32
  store i32 %lhs_or_call1820, i32* %vdecl_slot1821
  %lhs_or_call1822 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1628
  %lhs_or_call1823 = load i32* %vdecl_slot1808
  %bound_ptr1825 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1822, i32 0, i32 0
  %bound1826 = load i32* %bound_ptr1825
  call void @oat_array_bounds_check( i32 %bound1826, i32 %lhs_or_call1823 )
  %elt1824 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1822, i32 0, i32 1, i32 %lhs_or_call1823
  %lhs_or_call1827 = load { i32, [ 0 x i32 ] }** %elt1824
  %bound_ptr1829 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1827, i32 0, i32 0
  %bound1830 = load i32* %bound_ptr1829
  call void @oat_array_bounds_check( i32 %bound1830, i32 1 )
  %elt1828 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1827, i32 0, i32 1, i32 1
  %lhs_or_call1831 = load i32* %elt1828
  %vdecl_slot1832 = alloca i32
  store i32 %lhs_or_call1831, i32* %vdecl_slot1832
  %path1833 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1834 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1833
  %lhs_or_call1835 = load i32* %vdecl_slot1821
  %bound_ptr1837 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1834, i32 0, i32 0
  %bound1838 = load i32* %bound_ptr1837
  call void @oat_array_bounds_check( i32 %bound1838, i32 %lhs_or_call1835 )
  %elt1836 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1834, i32 0, i32 1, i32 %lhs_or_call1835
  %lhs_or_call1839 = load { i32, [ 0 x i32 ] }** %elt1836
  %lhs_or_call1840 = load i32* %vdecl_slot1832
  %bound_ptr1842 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1839, i32 0, i32 0
  %bound1843 = load i32* %bound_ptr1842
  call void @oat_array_bounds_check( i32 %bound1843, i32 %lhs_or_call1840 )
  %elt1841 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1839, i32 0, i32 1, i32 %lhs_or_call1840
  store i32 1, i32* %elt1841
  %lhs_or_call1844 = load i32* %vdecl_slot1808
  %bop1845 = add i32 %lhs_or_call1844, 1
  store i32 %bop1845, i32* %vdecl_slot1808
  br label %__cond228

__fresh275:
  br label %__post226

__post226:
  br label %__merge232

__fresh276:
  br label %__else233

__else233:
  %vdecl_slot1846 = alloca i32
  store i32 0, i32* %vdecl_slot1846
  br label %__cond231

__cond231:
  %lhs_or_call1847 = load i32* %vdecl_slot1846
  %bop1848 = icmp slt i32 %lhs_or_call1847, 4
  br i1 %bop1848, label %__body230, label %__post229

__fresh277:
  br label %__body230

__body230:
  %path1849 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1850 = load %Shape** %path1849
  %path1851 = getelementptr %Shape* %lhs_or_call1850, i32 0, i32 2
  %lhs_or_call1852 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1851
  %lhs_or_call1853 = load i32* %vdecl_slot1846
  %bound_ptr1855 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1852, i32 0, i32 0
  %bound1856 = load i32* %bound_ptr1855
  call void @oat_array_bounds_check( i32 %bound1856, i32 %lhs_or_call1853 )
  %elt1854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1852, i32 0, i32 1, i32 %lhs_or_call1853
  %lhs_or_call1857 = load { i32, [ 0 x i32 ] }** %elt1854
  %bound_ptr1859 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1857, i32 0, i32 0
  %bound1860 = load i32* %bound_ptr1859
  call void @oat_array_bounds_check( i32 %bound1860, i32 0 )
  %elt1858 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1857, i32 0, i32 1, i32 0
  %lhs_or_call1861 = load i32* %elt1858
  %vdecl_slot1862 = alloca i32
  store i32 %lhs_or_call1861, i32* %vdecl_slot1862
  %path1863 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call1864 = load %Shape** %path1863
  %path1865 = getelementptr %Shape* %lhs_or_call1864, i32 0, i32 2
  %lhs_or_call1866 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1865
  %lhs_or_call1867 = load i32* %vdecl_slot1846
  %bound_ptr1869 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1866, i32 0, i32 0
  %bound1870 = load i32* %bound_ptr1869
  call void @oat_array_bounds_check( i32 %bound1870, i32 %lhs_or_call1867 )
  %elt1868 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1866, i32 0, i32 1, i32 %lhs_or_call1867
  %lhs_or_call1871 = load { i32, [ 0 x i32 ] }** %elt1868
  %bound_ptr1873 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1871, i32 0, i32 0
  %bound1874 = load i32* %bound_ptr1873
  call void @oat_array_bounds_check( i32 %bound1874, i32 1 )
  %elt1872 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1871, i32 0, i32 1, i32 1
  %lhs_or_call1875 = load i32* %elt1872
  %vdecl_slot1876 = alloca i32
  store i32 %lhs_or_call1875, i32* %vdecl_slot1876
  %path1877 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1878 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1877
  %lhs_or_call1879 = load i32* %vdecl_slot1862
  %bound_ptr1881 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1878, i32 0, i32 0
  %bound1882 = load i32* %bound_ptr1881
  call void @oat_array_bounds_check( i32 %bound1882, i32 %lhs_or_call1879 )
  %elt1880 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1878, i32 0, i32 1, i32 %lhs_or_call1879
  %lhs_or_call1883 = load { i32, [ 0 x i32 ] }** %elt1880
  %lhs_or_call1884 = load i32* %vdecl_slot1876
  %bound_ptr1886 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1883, i32 0, i32 0
  %bound1887 = load i32* %bound_ptr1886
  call void @oat_array_bounds_check( i32 %bound1887, i32 %lhs_or_call1884 )
  %elt1885 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1883, i32 0, i32 1, i32 %lhs_or_call1884
  store i32 1, i32* %elt1885
  %lhs_or_call1888 = load i32* %vdecl_slot1846
  %bop1889 = add i32 %lhs_or_call1888, 1
  store i32 %bop1889, i32* %vdecl_slot1846
  br label %__cond231

__fresh278:
  br label %__post229

__post229:
  br label %__merge232

__merge232:
  %vdecl_slot1890 = alloca i32
  store i32 0, i32* %vdecl_slot1890
  br label %__cond237

__cond237:
  %lhs_or_call1891 = load i32* %vdecl_slot1890
  %bop1892 = icmp slt i32 %lhs_or_call1891, 50
  br i1 %bop1892, label %__body236, label %__post235

__fresh279:
  br label %__body236

__body236:
  %vdecl_slot1893 = alloca i1
  store i1 1, i1* %vdecl_slot1893
  %vdecl_slot1894 = alloca i32
  store i32 0, i32* %vdecl_slot1894
  br label %__cond240

__cond240:
  %lhs_or_call1895 = load i32* %vdecl_slot1894
  %bop1896 = icmp slt i32 %lhs_or_call1895, 10
  br i1 %bop1896, label %__body239, label %__post238

__fresh280:
  br label %__body239

__body239:
  %path1897 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1898 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1897
  %lhs_or_call1899 = load i32* %vdecl_slot1894
  %bound_ptr1901 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1898, i32 0, i32 0
  %bound1902 = load i32* %bound_ptr1901
  call void @oat_array_bounds_check( i32 %bound1902, i32 %lhs_or_call1899 )
  %elt1900 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1898, i32 0, i32 1, i32 %lhs_or_call1899
  %lhs_or_call1903 = load { i32, [ 0 x i32 ] }** %elt1900
  %lhs_or_call1904 = load i32* %vdecl_slot1890
  %bound_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1903, i32 0, i32 0
  %bound1907 = load i32* %bound_ptr1906
  call void @oat_array_bounds_check( i32 %bound1907, i32 %lhs_or_call1904 )
  %elt1905 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1903, i32 0, i32 1, i32 %lhs_or_call1904
  %lhs_or_call1908 = load i32* %elt1905
  %bop1909 = icmp eq i32 %lhs_or_call1908, 0
  br i1 %bop1909, label %__then243, label %__else242

__fresh281:
  br label %__then243

__then243:
  store i1 0, i1* %vdecl_slot1893
  br label %__merge241

__fresh282:
  br label %__else242

__else242:
  br label %__merge241

__merge241:
  %lhs_or_call1910 = load i32* %vdecl_slot1894
  %bop1911 = add i32 %lhs_or_call1910, 1
  store i32 %bop1911, i32* %vdecl_slot1894
  br label %__cond240

__fresh283:
  br label %__post238

__post238:
  %lhs_or_call1912 = load i1* %vdecl_slot1893
  br i1 %lhs_or_call1912, label %__then255, label %__else254

__fresh284:
  br label %__then255

__then255:
  %lhs_or_call1913 = load i32* %vdecl_slot1890
  %vdecl_slot1914 = alloca i32
  store i32 %lhs_or_call1913, i32* %vdecl_slot1914
  br label %__cond246

__cond246:
  %lhs_or_call1915 = load i32* %vdecl_slot1914
  %bop1916 = icmp sgt i32 %lhs_or_call1915, 0
  br i1 %bop1916, label %__body245, label %__post244

__fresh285:
  br label %__body245

__body245:
  %vdecl_slot1917 = alloca i32
  store i32 0, i32* %vdecl_slot1917
  br label %__cond249

__cond249:
  %lhs_or_call1918 = load i32* %vdecl_slot1917
  %bop1919 = icmp slt i32 %lhs_or_call1918, 10
  br i1 %bop1919, label %__body248, label %__post247

__fresh286:
  br label %__body248

__body248:
  %path1920 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1921 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1920
  %lhs_or_call1922 = load i32* %vdecl_slot1917
  %bound_ptr1924 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1921, i32 0, i32 0
  %bound1925 = load i32* %bound_ptr1924
  call void @oat_array_bounds_check( i32 %bound1925, i32 %lhs_or_call1922 )
  %elt1923 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1921, i32 0, i32 1, i32 %lhs_or_call1922
  %lhs_or_call1926 = load { i32, [ 0 x i32 ] }** %elt1923
  %lhs_or_call1927 = load i32* %vdecl_slot1914
  %bound_ptr1929 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1926, i32 0, i32 0
  %bound1930 = load i32* %bound_ptr1929
  call void @oat_array_bounds_check( i32 %bound1930, i32 %lhs_or_call1927 )
  %elt1928 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1926, i32 0, i32 1, i32 %lhs_or_call1927
  %path1931 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1932 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1931
  %lhs_or_call1933 = load i32* %vdecl_slot1917
  %bound_ptr1935 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1932, i32 0, i32 0
  %bound1936 = load i32* %bound_ptr1935
  call void @oat_array_bounds_check( i32 %bound1936, i32 %lhs_or_call1933 )
  %elt1934 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1932, i32 0, i32 1, i32 %lhs_or_call1933
  %lhs_or_call1937 = load { i32, [ 0 x i32 ] }** %elt1934
  %lhs_or_call1938 = load i32* %vdecl_slot1914
  %bop1939 = sub i32 %lhs_or_call1938, 1
  %bound_ptr1941 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1937, i32 0, i32 0
  %bound1942 = load i32* %bound_ptr1941
  call void @oat_array_bounds_check( i32 %bound1942, i32 %bop1939 )
  %elt1940 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1937, i32 0, i32 1, i32 %bop1939
  %lhs_or_call1943 = load i32* %elt1940
  store i32 %lhs_or_call1943, i32* %elt1928
  %lhs_or_call1944 = load i32* %vdecl_slot1917
  %bop1945 = add i32 %lhs_or_call1944, 1
  store i32 %bop1945, i32* %vdecl_slot1917
  br label %__cond249

__fresh287:
  br label %__post247

__post247:
  %lhs_or_call1946 = load i32* %vdecl_slot1914
  %bop1947 = sub i32 %lhs_or_call1946, 1
  store i32 %bop1947, i32* %vdecl_slot1914
  br label %__cond246

__fresh288:
  br label %__post244

__post244:
  %vdecl_slot1948 = alloca i32
  store i32 0, i32* %vdecl_slot1948
  br label %__cond252

__cond252:
  %lhs_or_call1949 = load i32* %vdecl_slot1948
  %bop1950 = icmp slt i32 %lhs_or_call1949, 10
  br i1 %bop1950, label %__body251, label %__post250

__fresh289:
  br label %__body251

__body251:
  %path1951 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call1952 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1951
  %lhs_or_call1953 = load i32* %vdecl_slot1948
  %bound_ptr1955 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1952, i32 0, i32 0
  %bound1956 = load i32* %bound_ptr1955
  call void @oat_array_bounds_check( i32 %bound1956, i32 %lhs_or_call1953 )
  %elt1954 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1952, i32 0, i32 1, i32 %lhs_or_call1953
  %lhs_or_call1957 = load { i32, [ 0 x i32 ] }** %elt1954
  %bound_ptr1959 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1957, i32 0, i32 0
  %bound1960 = load i32* %bound_ptr1959
  call void @oat_array_bounds_check( i32 %bound1960, i32 0 )
  %elt1958 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1957, i32 0, i32 1, i32 0
  store i32 0, i32* %elt1958
  %lhs_or_call1961 = load i32* %vdecl_slot1948
  %bop1962 = add i32 %lhs_or_call1961, 1
  store i32 %bop1962, i32* %vdecl_slot1948
  br label %__cond252

__fresh290:
  br label %__post250

__post250:
  br label %__merge253

__fresh291:
  br label %__else254

__else254:
  br label %__merge253

__merge253:
  %lhs_or_call1963 = load i32* %vdecl_slot1890
  %bop1964 = add i32 %lhs_or_call1963, 1
  store i32 %bop1964, i32* %vdecl_slot1890
  br label %__cond237

__fresh292:
  br label %__post235

__post235:
  ret void
}


define void @_State_init (%State* %_this1){
__fresh201:
  ret void
}


define void @_State_make_new_shape (%State* %_this1){
__fresh198:
  %path1589 = getelementptr %State* %_this1, i32 0, i32 3
  %path1590 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call1591 = load i32* %path1590
  %bop1592 = add i32 %lhs_or_call1591, 1
  store i32 %bop1592, i32* %path1589
  %path1593 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call1594 = load i32* %path1593
  %bop1595 = icmp eq i32 %lhs_or_call1594, 7
  br i1 %bop1595, label %__then197, label %__else196

__fresh199:
  br label %__then197

__then197:
  %path1596 = getelementptr %State* %_this1, i32 0, i32 3
  store i32 0, i32* %path1596
  br label %__merge195

__fresh200:
  br label %__else196

__else196:
  br label %__merge195

__merge195:
  %path1597 = getelementptr %State* %_this1, i32 0, i32 2
  %path1598 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call1599 = load i32* %path1598
  %mem_ptr1600 = call i32* @oat_malloc ( i32 16 )
  %obj1601 = bitcast i32* %mem_ptr1600 to %Shape* 
  %new_obj1602 = call %Shape* @_Shape_ctor ( %Shape* %obj1601, i32 %lhs_or_call1599 )
  store %Shape* %new_obj1602, %Shape** %path1597
  ret void
}


define %State* @_State_ctor (%State* %_this1){
__fresh190:
  %cast_op1550 = bitcast %State* %_this1 to %Object* 
  %dummy1551 = call %Object* @_Object_ctor ( %Object* %cast_op1550 )
  %path1552 = getelementptr %State* %_this1, i32 0, i32 1
  store i8* @_const_str11, i8** %path1552
  %path1553 = getelementptr %State* %_this1, i32 0, i32 2
  %mem_ptr1554 = call i32* @oat_malloc ( i32 16 )
  %obj1555 = bitcast i32* %mem_ptr1554 to %Shape* 
  %new_obj1556 = call %Shape* @_Shape_ctor ( %Shape* %obj1555, i32 0 )
  store %Shape* %new_obj1556, %Shape** %path1553
  %path1557 = getelementptr %State* %_this1, i32 0, i32 4
  %array_ptr1558 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1559 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1558 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %_tmp101560 = alloca i32
  store i32 10, i32* %_tmp101560
  %_tmp111561 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1559, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %_tmp111561
  %vdecl_slot1562 = alloca i32
  store i32 0, i32* %vdecl_slot1562
  br label %__cond186

__cond186:
  %lhs_or_call1563 = load i32* %vdecl_slot1562
  %lhs_or_call1564 = load i32* %_tmp101560
  %bop1565 = icmp slt i32 %lhs_or_call1563, %lhs_or_call1564
  br i1 %bop1565, label %__body185, label %__post184

__fresh191:
  br label %__body185

__body185:
  %lhs_or_call1566 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %_tmp111561
  %lhs_or_call1567 = load i32* %vdecl_slot1562
  %bound_ptr1569 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1566, i32 0, i32 0
  %bound1570 = load i32* %bound_ptr1569
  call void @oat_array_bounds_check( i32 %bound1570, i32 %lhs_or_call1567 )
  %elt1568 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1566, i32 0, i32 1, i32 %lhs_or_call1567
  %array_ptr1571 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array1572 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1571 to { i32, [ 0 x i32 ] }* 
  %_tmp121573 = alloca i32
  store i32 50, i32* %_tmp121573
  %_tmp131574 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1572, { i32, [ 0 x i32 ] }** %_tmp131574
  %vdecl_slot1575 = alloca i32
  store i32 0, i32* %vdecl_slot1575
  br label %__cond189

__cond189:
  %lhs_or_call1576 = load i32* %vdecl_slot1575
  %lhs_or_call1577 = load i32* %_tmp121573
  %bop1578 = icmp slt i32 %lhs_or_call1576, %lhs_or_call1577
  br i1 %bop1578, label %__body188, label %__post187

__fresh192:
  br label %__body188

__body188:
  %lhs_or_call1579 = load { i32, [ 0 x i32 ] }** %_tmp131574
  %lhs_or_call1580 = load i32* %vdecl_slot1575
  %bound_ptr1582 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1579, i32 0, i32 0
  %bound1583 = load i32* %bound_ptr1582
  call void @oat_array_bounds_check( i32 %bound1583, i32 %lhs_or_call1580 )
  %elt1581 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1579, i32 0, i32 1, i32 %lhs_or_call1580
  store i32 0, i32* %elt1581
  %lhs_or_call1584 = load i32* %vdecl_slot1575
  %bop1585 = add i32 %lhs_or_call1584, 1
  store i32 %bop1585, i32* %vdecl_slot1575
  br label %__cond189

__fresh193:
  br label %__post187

__post187:
  store { i32, [ 0 x i32 ] }* %array1572, { i32, [ 0 x i32 ] }** %elt1568
  %lhs_or_call1586 = load i32* %vdecl_slot1562
  %bop1587 = add i32 %lhs_or_call1586, 1
  store i32 %bop1587, i32* %vdecl_slot1562
  br label %__cond186

__fresh194:
  br label %__post184

__post184:
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1559, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1557
  %vt_slot1588 = getelementptr %State* %_this1, i32 0, i32 0
  store %_State_vtable* @_State_vtable5, %_State_vtable** %vt_slot1588
  ret %State* %_this1
}


define void @_Shape_rotate_left (%Shape* %_this1){
__fresh173:
  %array_ptr1220 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1221 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1220 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1222 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1223 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1222 to { i32, [ 0 x i32 ] }* 
  %index_ptr1224 = getelementptr { i32, [ 0 x i32 ] }* %array1223, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1224
  %index_ptr1225 = getelementptr { i32, [ 0 x i32 ] }* %array1223, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1225
  %index_ptr1226 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1221, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1223, { i32, [ 0 x i32 ] }** %index_ptr1226
  %array_ptr1227 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1228 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1227 to { i32, [ 0 x i32 ] }* 
  %index_ptr1229 = getelementptr { i32, [ 0 x i32 ] }* %array1228, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1229
  %index_ptr1230 = getelementptr { i32, [ 0 x i32 ] }* %array1228, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1230
  %index_ptr1231 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1221, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1228, { i32, [ 0 x i32 ] }** %index_ptr1231
  %array_ptr1232 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1233 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1232 to { i32, [ 0 x i32 ] }* 
  %index_ptr1234 = getelementptr { i32, [ 0 x i32 ] }* %array1233, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1234
  %index_ptr1235 = getelementptr { i32, [ 0 x i32 ] }* %array1233, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1235
  %index_ptr1236 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1221, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1233, { i32, [ 0 x i32 ] }** %index_ptr1236
  %array_ptr1237 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1238 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1237 to { i32, [ 0 x i32 ] }* 
  %index_ptr1239 = getelementptr { i32, [ 0 x i32 ] }* %array1238, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1239
  %index_ptr1240 = getelementptr { i32, [ 0 x i32 ] }* %array1238, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1240
  %index_ptr1241 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1221, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1238, { i32, [ 0 x i32 ] }** %index_ptr1241
  %vdecl_slot1242 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1221, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1242
  %vdecl_slot1243 = alloca i1
  store i1 1, i1* %vdecl_slot1243
  %vdecl_slot1244 = alloca i32
  store i32 0, i32* %vdecl_slot1244
  br label %__cond160

__cond160:
  %lhs_or_call1245 = load i32* %vdecl_slot1244
  %bop1246 = icmp slt i32 %lhs_or_call1245, 4
  br i1 %bop1246, label %__body159, label %__post158

__fresh174:
  br label %__body159

__body159:
  %lhs_or_call1247 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1242
  %lhs_or_call1248 = load i32* %vdecl_slot1244
  %bound_ptr1250 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1247, i32 0, i32 0
  %bound1251 = load i32* %bound_ptr1250
  call void @oat_array_bounds_check( i32 %bound1251, i32 %lhs_or_call1248 )
  %elt1249 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1247, i32 0, i32 1, i32 %lhs_or_call1248
  %lhs_or_call1252 = load { i32, [ 0 x i32 ] }** %elt1249
  %bound_ptr1254 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1252, i32 0, i32 0
  %bound1255 = load i32* %bound_ptr1254
  call void @oat_array_bounds_check( i32 %bound1255, i32 0 )
  %elt1253 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1252, i32 0, i32 1, i32 0
  %path1256 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1257 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1256
  %lhs_or_call1258 = load i32* %vdecl_slot1244
  %bound_ptr1260 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1257, i32 0, i32 0
  %bound1261 = load i32* %bound_ptr1260
  call void @oat_array_bounds_check( i32 %bound1261, i32 %lhs_or_call1258 )
  %elt1259 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1257, i32 0, i32 1, i32 %lhs_or_call1258
  %lhs_or_call1262 = load { i32, [ 0 x i32 ] }** %elt1259
  %bound_ptr1264 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1262, i32 0, i32 0
  %bound1265 = load i32* %bound_ptr1264
  call void @oat_array_bounds_check( i32 %bound1265, i32 0 )
  %elt1263 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1262, i32 0, i32 1, i32 0
  %lhs_or_call1266 = load i32* %elt1263
  store i32 %lhs_or_call1266, i32* %elt1253
  %lhs_or_call1267 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1242
  %lhs_or_call1268 = load i32* %vdecl_slot1244
  %bound_ptr1270 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1267, i32 0, i32 0
  %bound1271 = load i32* %bound_ptr1270
  call void @oat_array_bounds_check( i32 %bound1271, i32 %lhs_or_call1268 )
  %elt1269 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1267, i32 0, i32 1, i32 %lhs_or_call1268
  %lhs_or_call1272 = load { i32, [ 0 x i32 ] }** %elt1269
  %bound_ptr1274 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1272, i32 0, i32 0
  %bound1275 = load i32* %bound_ptr1274
  call void @oat_array_bounds_check( i32 %bound1275, i32 1 )
  %elt1273 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1272, i32 0, i32 1, i32 1
  %path1276 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1277 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1276
  %lhs_or_call1278 = load i32* %vdecl_slot1244
  %bound_ptr1280 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1277, i32 0, i32 0
  %bound1281 = load i32* %bound_ptr1280
  call void @oat_array_bounds_check( i32 %bound1281, i32 %lhs_or_call1278 )
  %elt1279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1277, i32 0, i32 1, i32 %lhs_or_call1278
  %lhs_or_call1282 = load { i32, [ 0 x i32 ] }** %elt1279
  %bound_ptr1284 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1282, i32 0, i32 0
  %bound1285 = load i32* %bound_ptr1284
  call void @oat_array_bounds_check( i32 %bound1285, i32 1 )
  %elt1283 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1282, i32 0, i32 1, i32 1
  %lhs_or_call1286 = load i32* %elt1283
  store i32 %lhs_or_call1286, i32* %elt1273
  %lhs_or_call1287 = load i32* %vdecl_slot1244
  %bop1288 = add i32 %lhs_or_call1287, 1
  store i32 %bop1288, i32* %vdecl_slot1244
  br label %__cond160

__fresh175:
  br label %__post158

__post158:
  %vdecl_slot1289 = alloca i32
  store i32 0, i32* %vdecl_slot1289
  br label %__cond163

__cond163:
  %lhs_or_call1290 = load i32* %vdecl_slot1289
  %bop1291 = icmp slt i32 %lhs_or_call1290, 4
  br i1 %bop1291, label %__body162, label %__post161

__fresh176:
  br label %__body162

__body162:
  %vdecl_slot1292 = alloca i32
  store i32 0, i32* %vdecl_slot1292
  %path1293 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1294 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1293
  %lhs_or_call1295 = load i32* %vdecl_slot1289
  %bound_ptr1297 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1294, i32 0, i32 0
  %bound1298 = load i32* %bound_ptr1297
  call void @oat_array_bounds_check( i32 %bound1298, i32 %lhs_or_call1295 )
  %elt1296 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1294, i32 0, i32 1, i32 %lhs_or_call1295
  %lhs_or_call1299 = load { i32, [ 0 x i32 ] }** %elt1296
  %bound_ptr1301 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1299, i32 0, i32 0
  %bound1302 = load i32* %bound_ptr1301
  call void @oat_array_bounds_check( i32 %bound1302, i32 0 )
  %elt1300 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1299, i32 0, i32 1, i32 0
  %path1303 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1304 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1303
  %lhs_or_call1305 = load i32* %vdecl_slot1289
  %bound_ptr1307 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1304, i32 0, i32 0
  %bound1308 = load i32* %bound_ptr1307
  call void @oat_array_bounds_check( i32 %bound1308, i32 %lhs_or_call1305 )
  %elt1306 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1304, i32 0, i32 1, i32 %lhs_or_call1305
  %lhs_or_call1309 = load { i32, [ 0 x i32 ] }** %elt1306
  %bound_ptr1311 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1309, i32 0, i32 0
  %bound1312 = load i32* %bound_ptr1311
  call void @oat_array_bounds_check( i32 %bound1312, i32 0 )
  %elt1310 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1309, i32 0, i32 1, i32 0
  %lhs_or_call1313 = load i32* %elt1310
  %path1314 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1315 = load { i32, [ 0 x i32 ] }** %path1314
  %bound_ptr1317 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1315, i32 0, i32 0
  %bound1318 = load i32* %bound_ptr1317
  call void @oat_array_bounds_check( i32 %bound1318, i32 0 )
  %elt1316 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1315, i32 0, i32 1, i32 0
  %lhs_or_call1319 = load i32* %elt1316
  %bop1320 = sub i32 %lhs_or_call1313, %lhs_or_call1319
  store i32 %bop1320, i32* %elt1300
  %path1321 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1322 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1321
  %lhs_or_call1323 = load i32* %vdecl_slot1289
  %bound_ptr1325 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1322, i32 0, i32 0
  %bound1326 = load i32* %bound_ptr1325
  call void @oat_array_bounds_check( i32 %bound1326, i32 %lhs_or_call1323 )
  %elt1324 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1322, i32 0, i32 1, i32 %lhs_or_call1323
  %lhs_or_call1327 = load { i32, [ 0 x i32 ] }** %elt1324
  %bound_ptr1329 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1327, i32 0, i32 0
  %bound1330 = load i32* %bound_ptr1329
  call void @oat_array_bounds_check( i32 %bound1330, i32 1 )
  %elt1328 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1327, i32 0, i32 1, i32 1
  %path1331 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1332 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1331
  %lhs_or_call1333 = load i32* %vdecl_slot1289
  %bound_ptr1335 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1332, i32 0, i32 0
  %bound1336 = load i32* %bound_ptr1335
  call void @oat_array_bounds_check( i32 %bound1336, i32 %lhs_or_call1333 )
  %elt1334 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1332, i32 0, i32 1, i32 %lhs_or_call1333
  %lhs_or_call1337 = load { i32, [ 0 x i32 ] }** %elt1334
  %bound_ptr1339 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1337, i32 0, i32 0
  %bound1340 = load i32* %bound_ptr1339
  call void @oat_array_bounds_check( i32 %bound1340, i32 1 )
  %elt1338 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1337, i32 0, i32 1, i32 1
  %lhs_or_call1341 = load i32* %elt1338
  %path1342 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1343 = load { i32, [ 0 x i32 ] }** %path1342
  %bound_ptr1345 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1343, i32 0, i32 0
  %bound1346 = load i32* %bound_ptr1345
  call void @oat_array_bounds_check( i32 %bound1346, i32 1 )
  %elt1344 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1343, i32 0, i32 1, i32 1
  %lhs_or_call1347 = load i32* %elt1344
  %bop1348 = sub i32 %lhs_or_call1341, %lhs_or_call1347
  store i32 %bop1348, i32* %elt1328
  %path1349 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1350 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1349
  %lhs_or_call1351 = load i32* %vdecl_slot1289
  %bound_ptr1353 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1350, i32 0, i32 0
  %bound1354 = load i32* %bound_ptr1353
  call void @oat_array_bounds_check( i32 %bound1354, i32 %lhs_or_call1351 )
  %elt1352 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1350, i32 0, i32 1, i32 %lhs_or_call1351
  %lhs_or_call1355 = load { i32, [ 0 x i32 ] }** %elt1352
  %bound_ptr1357 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1355, i32 0, i32 0
  %bound1358 = load i32* %bound_ptr1357
  call void @oat_array_bounds_check( i32 %bound1358, i32 1 )
  %elt1356 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1355, i32 0, i32 1, i32 1
  %lhs_or_call1359 = load i32* %elt1356
  store i32 %lhs_or_call1359, i32* %vdecl_slot1292
  %path1360 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1361 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1360
  %lhs_or_call1362 = load i32* %vdecl_slot1289
  %bound_ptr1364 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1361, i32 0, i32 0
  %bound1365 = load i32* %bound_ptr1364
  call void @oat_array_bounds_check( i32 %bound1365, i32 %lhs_or_call1362 )
  %elt1363 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1361, i32 0, i32 1, i32 %lhs_or_call1362
  %lhs_or_call1366 = load { i32, [ 0 x i32 ] }** %elt1363
  %bound_ptr1368 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1366, i32 0, i32 0
  %bound1369 = load i32* %bound_ptr1368
  call void @oat_array_bounds_check( i32 %bound1369, i32 1 )
  %elt1367 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1366, i32 0, i32 1, i32 1
  %unop1370 = sub i32 0, 1
  %path1371 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1372 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1371
  %lhs_or_call1373 = load i32* %vdecl_slot1289
  %bound_ptr1375 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1372, i32 0, i32 0
  %bound1376 = load i32* %bound_ptr1375
  call void @oat_array_bounds_check( i32 %bound1376, i32 %lhs_or_call1373 )
  %elt1374 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1372, i32 0, i32 1, i32 %lhs_or_call1373
  %lhs_or_call1377 = load { i32, [ 0 x i32 ] }** %elt1374
  %bound_ptr1379 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1377, i32 0, i32 0
  %bound1380 = load i32* %bound_ptr1379
  call void @oat_array_bounds_check( i32 %bound1380, i32 0 )
  %elt1378 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1377, i32 0, i32 1, i32 0
  %lhs_or_call1381 = load i32* %elt1378
  %bop1382 = mul i32 %unop1370, %lhs_or_call1381
  store i32 %bop1382, i32* %elt1367
  %path1383 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1384 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1383
  %lhs_or_call1385 = load i32* %vdecl_slot1289
  %bound_ptr1387 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1384, i32 0, i32 0
  %bound1388 = load i32* %bound_ptr1387
  call void @oat_array_bounds_check( i32 %bound1388, i32 %lhs_or_call1385 )
  %elt1386 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1384, i32 0, i32 1, i32 %lhs_or_call1385
  %lhs_or_call1389 = load { i32, [ 0 x i32 ] }** %elt1386
  %bound_ptr1391 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1389, i32 0, i32 0
  %bound1392 = load i32* %bound_ptr1391
  call void @oat_array_bounds_check( i32 %bound1392, i32 0 )
  %elt1390 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1389, i32 0, i32 1, i32 0
  %lhs_or_call1393 = load i32* %vdecl_slot1292
  store i32 %lhs_or_call1393, i32* %elt1390
  %path1394 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1395 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1394
  %lhs_or_call1396 = load i32* %vdecl_slot1289
  %bound_ptr1398 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1395, i32 0, i32 0
  %bound1399 = load i32* %bound_ptr1398
  call void @oat_array_bounds_check( i32 %bound1399, i32 %lhs_or_call1396 )
  %elt1397 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1395, i32 0, i32 1, i32 %lhs_or_call1396
  %lhs_or_call1400 = load { i32, [ 0 x i32 ] }** %elt1397
  %bound_ptr1402 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1400, i32 0, i32 0
  %bound1403 = load i32* %bound_ptr1402
  call void @oat_array_bounds_check( i32 %bound1403, i32 0 )
  %elt1401 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1400, i32 0, i32 1, i32 0
  %path1404 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1405 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1404
  %lhs_or_call1406 = load i32* %vdecl_slot1289
  %bound_ptr1408 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1405, i32 0, i32 0
  %bound1409 = load i32* %bound_ptr1408
  call void @oat_array_bounds_check( i32 %bound1409, i32 %lhs_or_call1406 )
  %elt1407 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1405, i32 0, i32 1, i32 %lhs_or_call1406
  %lhs_or_call1410 = load { i32, [ 0 x i32 ] }** %elt1407
  %bound_ptr1412 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1410, i32 0, i32 0
  %bound1413 = load i32* %bound_ptr1412
  call void @oat_array_bounds_check( i32 %bound1413, i32 0 )
  %elt1411 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1410, i32 0, i32 1, i32 0
  %lhs_or_call1414 = load i32* %elt1411
  %path1415 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1416 = load { i32, [ 0 x i32 ] }** %path1415
  %bound_ptr1418 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1416, i32 0, i32 0
  %bound1419 = load i32* %bound_ptr1418
  call void @oat_array_bounds_check( i32 %bound1419, i32 0 )
  %elt1417 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1416, i32 0, i32 1, i32 0
  %lhs_or_call1420 = load i32* %elt1417
  %bop1421 = add i32 %lhs_or_call1414, %lhs_or_call1420
  store i32 %bop1421, i32* %elt1401
  %path1422 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1423 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1422
  %lhs_or_call1424 = load i32* %vdecl_slot1289
  %bound_ptr1426 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1423, i32 0, i32 0
  %bound1427 = load i32* %bound_ptr1426
  call void @oat_array_bounds_check( i32 %bound1427, i32 %lhs_or_call1424 )
  %elt1425 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1423, i32 0, i32 1, i32 %lhs_or_call1424
  %lhs_or_call1428 = load { i32, [ 0 x i32 ] }** %elt1425
  %bound_ptr1430 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1428, i32 0, i32 0
  %bound1431 = load i32* %bound_ptr1430
  call void @oat_array_bounds_check( i32 %bound1431, i32 1 )
  %elt1429 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1428, i32 0, i32 1, i32 1
  %path1432 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1433 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1432
  %lhs_or_call1434 = load i32* %vdecl_slot1289
  %bound_ptr1436 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1433, i32 0, i32 0
  %bound1437 = load i32* %bound_ptr1436
  call void @oat_array_bounds_check( i32 %bound1437, i32 %lhs_or_call1434 )
  %elt1435 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1433, i32 0, i32 1, i32 %lhs_or_call1434
  %lhs_or_call1438 = load { i32, [ 0 x i32 ] }** %elt1435
  %bound_ptr1440 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1438, i32 0, i32 0
  %bound1441 = load i32* %bound_ptr1440
  call void @oat_array_bounds_check( i32 %bound1441, i32 1 )
  %elt1439 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1438, i32 0, i32 1, i32 1
  %lhs_or_call1442 = load i32* %elt1439
  %path1443 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1444 = load { i32, [ 0 x i32 ] }** %path1443
  %bound_ptr1446 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1444, i32 0, i32 0
  %bound1447 = load i32* %bound_ptr1446
  call void @oat_array_bounds_check( i32 %bound1447, i32 1 )
  %elt1445 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1444, i32 0, i32 1, i32 1
  %lhs_or_call1448 = load i32* %elt1445
  %bop1449 = add i32 %lhs_or_call1442, %lhs_or_call1448
  store i32 %bop1449, i32* %elt1429
  %path1450 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1451 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1450
  %lhs_or_call1452 = load i32* %vdecl_slot1289
  %bound_ptr1454 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1451, i32 0, i32 0
  %bound1455 = load i32* %bound_ptr1454
  call void @oat_array_bounds_check( i32 %bound1455, i32 %lhs_or_call1452 )
  %elt1453 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1451, i32 0, i32 1, i32 %lhs_or_call1452
  %lhs_or_call1456 = load { i32, [ 0 x i32 ] }** %elt1453
  %bound_ptr1458 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1456, i32 0, i32 0
  %bound1459 = load i32* %bound_ptr1458
  call void @oat_array_bounds_check( i32 %bound1459, i32 1 )
  %elt1457 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1456, i32 0, i32 1, i32 1
  %lhs_or_call1460 = load i32* %elt1457
  %bop1461 = icmp slt i32 %lhs_or_call1460, 0
  %path1462 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1463 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1462
  %lhs_or_call1464 = load i32* %vdecl_slot1289
  %bound_ptr1466 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1463, i32 0, i32 0
  %bound1467 = load i32* %bound_ptr1466
  call void @oat_array_bounds_check( i32 %bound1467, i32 %lhs_or_call1464 )
  %elt1465 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1463, i32 0, i32 1, i32 %lhs_or_call1464
  %lhs_or_call1468 = load { i32, [ 0 x i32 ] }** %elt1465
  %bound_ptr1470 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1468, i32 0, i32 0
  %bound1471 = load i32* %bound_ptr1470
  call void @oat_array_bounds_check( i32 %bound1471, i32 1 )
  %elt1469 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1468, i32 0, i32 1, i32 1
  %lhs_or_call1472 = load i32* %elt1469
  %bop1473 = icmp sgt i32 %lhs_or_call1472, 49
  %bop1474 = or i1 %bop1461, %bop1473
  %path1475 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1476 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1475
  %lhs_or_call1477 = load i32* %vdecl_slot1289
  %bound_ptr1479 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1476, i32 0, i32 0
  %bound1480 = load i32* %bound_ptr1479
  call void @oat_array_bounds_check( i32 %bound1480, i32 %lhs_or_call1477 )
  %elt1478 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1476, i32 0, i32 1, i32 %lhs_or_call1477
  %lhs_or_call1481 = load { i32, [ 0 x i32 ] }** %elt1478
  %bound_ptr1483 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1481, i32 0, i32 0
  %bound1484 = load i32* %bound_ptr1483
  call void @oat_array_bounds_check( i32 %bound1484, i32 0 )
  %elt1482 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1481, i32 0, i32 1, i32 0
  %lhs_or_call1485 = load i32* %elt1482
  %bop1486 = icmp slt i32 %lhs_or_call1485, 0
  %bop1487 = or i1 %bop1474, %bop1486
  %path1488 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1489 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1488
  %lhs_or_call1490 = load i32* %vdecl_slot1289
  %bound_ptr1492 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1489, i32 0, i32 0
  %bound1493 = load i32* %bound_ptr1492
  call void @oat_array_bounds_check( i32 %bound1493, i32 %lhs_or_call1490 )
  %elt1491 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1489, i32 0, i32 1, i32 %lhs_or_call1490
  %lhs_or_call1494 = load { i32, [ 0 x i32 ] }** %elt1491
  %bound_ptr1496 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1494, i32 0, i32 0
  %bound1497 = load i32* %bound_ptr1496
  call void @oat_array_bounds_check( i32 %bound1497, i32 0 )
  %elt1495 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1494, i32 0, i32 1, i32 0
  %lhs_or_call1498 = load i32* %elt1495
  %bop1499 = icmp sgt i32 %lhs_or_call1498, 9
  %bop1500 = or i1 %bop1487, %bop1499
  br i1 %bop1500, label %__then166, label %__else165

__fresh177:
  br label %__then166

__then166:
  store i1 0, i1* %vdecl_slot1243
  br label %__merge164

__fresh178:
  br label %__else165

__else165:
  br label %__merge164

__merge164:
  %lhs_or_call1501 = load i32* %vdecl_slot1289
  %bop1502 = add i32 %lhs_or_call1501, 1
  store i32 %bop1502, i32* %vdecl_slot1289
  br label %__cond163

__fresh179:
  br label %__post161

__post161:
  %lhs_or_call1503 = load i1* %vdecl_slot1243
  %bop1504 = icmp eq i1 %lhs_or_call1503, 0
  br i1 %bop1504, label %__then172, label %__else171

__fresh180:
  br label %__then172

__then172:
  %vdecl_slot1505 = alloca i32
  store i32 0, i32* %vdecl_slot1505
  br label %__cond169

__cond169:
  %lhs_or_call1506 = load i32* %vdecl_slot1505
  %bop1507 = icmp slt i32 %lhs_or_call1506, 4
  br i1 %bop1507, label %__body168, label %__post167

__fresh181:
  br label %__body168

__body168:
  %path1508 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1509 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1508
  %lhs_or_call1510 = load i32* %vdecl_slot1505
  %bound_ptr1512 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1509, i32 0, i32 0
  %bound1513 = load i32* %bound_ptr1512
  call void @oat_array_bounds_check( i32 %bound1513, i32 %lhs_or_call1510 )
  %elt1511 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1509, i32 0, i32 1, i32 %lhs_or_call1510
  %lhs_or_call1514 = load { i32, [ 0 x i32 ] }** %elt1511
  %bound_ptr1516 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1514, i32 0, i32 0
  %bound1517 = load i32* %bound_ptr1516
  call void @oat_array_bounds_check( i32 %bound1517, i32 0 )
  %elt1515 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1514, i32 0, i32 1, i32 0
  %lhs_or_call1518 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1242
  %lhs_or_call1519 = load i32* %vdecl_slot1505
  %bound_ptr1521 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1518, i32 0, i32 0
  %bound1522 = load i32* %bound_ptr1521
  call void @oat_array_bounds_check( i32 %bound1522, i32 %lhs_or_call1519 )
  %elt1520 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1518, i32 0, i32 1, i32 %lhs_or_call1519
  %lhs_or_call1523 = load { i32, [ 0 x i32 ] }** %elt1520
  %bound_ptr1525 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1523, i32 0, i32 0
  %bound1526 = load i32* %bound_ptr1525
  call void @oat_array_bounds_check( i32 %bound1526, i32 0 )
  %elt1524 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1523, i32 0, i32 1, i32 0
  %lhs_or_call1527 = load i32* %elt1524
  store i32 %lhs_or_call1527, i32* %elt1515
  %path1528 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1529 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1528
  %lhs_or_call1530 = load i32* %vdecl_slot1505
  %bound_ptr1532 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1529, i32 0, i32 0
  %bound1533 = load i32* %bound_ptr1532
  call void @oat_array_bounds_check( i32 %bound1533, i32 %lhs_or_call1530 )
  %elt1531 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1529, i32 0, i32 1, i32 %lhs_or_call1530
  %lhs_or_call1534 = load { i32, [ 0 x i32 ] }** %elt1531
  %bound_ptr1536 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1534, i32 0, i32 0
  %bound1537 = load i32* %bound_ptr1536
  call void @oat_array_bounds_check( i32 %bound1537, i32 1 )
  %elt1535 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1534, i32 0, i32 1, i32 1
  %lhs_or_call1538 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot1242
  %lhs_or_call1539 = load i32* %vdecl_slot1505
  %bound_ptr1541 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1538, i32 0, i32 0
  %bound1542 = load i32* %bound_ptr1541
  call void @oat_array_bounds_check( i32 %bound1542, i32 %lhs_or_call1539 )
  %elt1540 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1538, i32 0, i32 1, i32 %lhs_or_call1539
  %lhs_or_call1543 = load { i32, [ 0 x i32 ] }** %elt1540
  %bound_ptr1545 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1543, i32 0, i32 0
  %bound1546 = load i32* %bound_ptr1545
  call void @oat_array_bounds_check( i32 %bound1546, i32 1 )
  %elt1544 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1543, i32 0, i32 1, i32 1
  %lhs_or_call1547 = load i32* %elt1544
  store i32 %lhs_or_call1547, i32* %elt1535
  %lhs_or_call1548 = load i32* %vdecl_slot1505
  %bop1549 = add i32 %lhs_or_call1548, 1
  store i32 %bop1549, i32* %vdecl_slot1505
  br label %__cond169

__fresh182:
  br label %__post167

__post167:
  br label %__merge170

__fresh183:
  br label %__else171

__else171:
  br label %__merge170

__merge170:
  ret void
}


define void @_Shape_rotate_right (%Shape* %_this1){
__fresh147:
  %array_ptr890 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array891 = bitcast { i32, [ 0 x i32 ] }* %array_ptr890 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr892 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array893 = bitcast { i32, [ 0 x i32 ] }* %array_ptr892 to { i32, [ 0 x i32 ] }* 
  %index_ptr894 = getelementptr { i32, [ 0 x i32 ] }* %array893, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr894
  %index_ptr895 = getelementptr { i32, [ 0 x i32 ] }* %array893, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr895
  %index_ptr896 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array891, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array893, { i32, [ 0 x i32 ] }** %index_ptr896
  %array_ptr897 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array898 = bitcast { i32, [ 0 x i32 ] }* %array_ptr897 to { i32, [ 0 x i32 ] }* 
  %index_ptr899 = getelementptr { i32, [ 0 x i32 ] }* %array898, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr899
  %index_ptr900 = getelementptr { i32, [ 0 x i32 ] }* %array898, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr900
  %index_ptr901 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array891, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array898, { i32, [ 0 x i32 ] }** %index_ptr901
  %array_ptr902 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array903 = bitcast { i32, [ 0 x i32 ] }* %array_ptr902 to { i32, [ 0 x i32 ] }* 
  %index_ptr904 = getelementptr { i32, [ 0 x i32 ] }* %array903, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr904
  %index_ptr905 = getelementptr { i32, [ 0 x i32 ] }* %array903, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr905
  %index_ptr906 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array891, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array903, { i32, [ 0 x i32 ] }** %index_ptr906
  %array_ptr907 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array908 = bitcast { i32, [ 0 x i32 ] }* %array_ptr907 to { i32, [ 0 x i32 ] }* 
  %index_ptr909 = getelementptr { i32, [ 0 x i32 ] }* %array908, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr909
  %index_ptr910 = getelementptr { i32, [ 0 x i32 ] }* %array908, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr910
  %index_ptr911 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array891, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array908, { i32, [ 0 x i32 ] }** %index_ptr911
  %vdecl_slot912 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array891, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot912
  %vdecl_slot913 = alloca i1
  store i1 1, i1* %vdecl_slot913
  %vdecl_slot914 = alloca i32
  store i32 0, i32* %vdecl_slot914
  br label %__cond134

__cond134:
  %lhs_or_call915 = load i32* %vdecl_slot914
  %bop916 = icmp slt i32 %lhs_or_call915, 4
  br i1 %bop916, label %__body133, label %__post132

__fresh148:
  br label %__body133

__body133:
  %lhs_or_call917 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot912
  %lhs_or_call918 = load i32* %vdecl_slot914
  %bound_ptr920 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call917, i32 0, i32 0
  %bound921 = load i32* %bound_ptr920
  call void @oat_array_bounds_check( i32 %bound921, i32 %lhs_or_call918 )
  %elt919 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call917, i32 0, i32 1, i32 %lhs_or_call918
  %lhs_or_call922 = load { i32, [ 0 x i32 ] }** %elt919
  %bound_ptr924 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call922, i32 0, i32 0
  %bound925 = load i32* %bound_ptr924
  call void @oat_array_bounds_check( i32 %bound925, i32 0 )
  %elt923 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call922, i32 0, i32 1, i32 0
  %path926 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call927 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path926
  %lhs_or_call928 = load i32* %vdecl_slot914
  %bound_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call927, i32 0, i32 0
  %bound931 = load i32* %bound_ptr930
  call void @oat_array_bounds_check( i32 %bound931, i32 %lhs_or_call928 )
  %elt929 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call927, i32 0, i32 1, i32 %lhs_or_call928
  %lhs_or_call932 = load { i32, [ 0 x i32 ] }** %elt929
  %bound_ptr934 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call932, i32 0, i32 0
  %bound935 = load i32* %bound_ptr934
  call void @oat_array_bounds_check( i32 %bound935, i32 0 )
  %elt933 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call932, i32 0, i32 1, i32 0
  %lhs_or_call936 = load i32* %elt933
  store i32 %lhs_or_call936, i32* %elt923
  %lhs_or_call937 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot912
  %lhs_or_call938 = load i32* %vdecl_slot914
  %bound_ptr940 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call937, i32 0, i32 0
  %bound941 = load i32* %bound_ptr940
  call void @oat_array_bounds_check( i32 %bound941, i32 %lhs_or_call938 )
  %elt939 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call937, i32 0, i32 1, i32 %lhs_or_call938
  %lhs_or_call942 = load { i32, [ 0 x i32 ] }** %elt939
  %bound_ptr944 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call942, i32 0, i32 0
  %bound945 = load i32* %bound_ptr944
  call void @oat_array_bounds_check( i32 %bound945, i32 1 )
  %elt943 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call942, i32 0, i32 1, i32 1
  %path946 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call947 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path946
  %lhs_or_call948 = load i32* %vdecl_slot914
  %bound_ptr950 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call947, i32 0, i32 0
  %bound951 = load i32* %bound_ptr950
  call void @oat_array_bounds_check( i32 %bound951, i32 %lhs_or_call948 )
  %elt949 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call947, i32 0, i32 1, i32 %lhs_or_call948
  %lhs_or_call952 = load { i32, [ 0 x i32 ] }** %elt949
  %bound_ptr954 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call952, i32 0, i32 0
  %bound955 = load i32* %bound_ptr954
  call void @oat_array_bounds_check( i32 %bound955, i32 1 )
  %elt953 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call952, i32 0, i32 1, i32 1
  %lhs_or_call956 = load i32* %elt953
  store i32 %lhs_or_call956, i32* %elt943
  %lhs_or_call957 = load i32* %vdecl_slot914
  %bop958 = add i32 %lhs_or_call957, 1
  store i32 %bop958, i32* %vdecl_slot914
  br label %__cond134

__fresh149:
  br label %__post132

__post132:
  %vdecl_slot959 = alloca i32
  store i32 0, i32* %vdecl_slot959
  br label %__cond137

__cond137:
  %lhs_or_call960 = load i32* %vdecl_slot959
  %bop961 = icmp slt i32 %lhs_or_call960, 4
  br i1 %bop961, label %__body136, label %__post135

__fresh150:
  br label %__body136

__body136:
  %vdecl_slot962 = alloca i32
  store i32 0, i32* %vdecl_slot962
  %path963 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call964 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path963
  %lhs_or_call965 = load i32* %vdecl_slot959
  %bound_ptr967 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call964, i32 0, i32 0
  %bound968 = load i32* %bound_ptr967
  call void @oat_array_bounds_check( i32 %bound968, i32 %lhs_or_call965 )
  %elt966 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call964, i32 0, i32 1, i32 %lhs_or_call965
  %lhs_or_call969 = load { i32, [ 0 x i32 ] }** %elt966
  %bound_ptr971 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call969, i32 0, i32 0
  %bound972 = load i32* %bound_ptr971
  call void @oat_array_bounds_check( i32 %bound972, i32 0 )
  %elt970 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call969, i32 0, i32 1, i32 0
  %path973 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call974 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path973
  %lhs_or_call975 = load i32* %vdecl_slot959
  %bound_ptr977 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call974, i32 0, i32 0
  %bound978 = load i32* %bound_ptr977
  call void @oat_array_bounds_check( i32 %bound978, i32 %lhs_or_call975 )
  %elt976 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call974, i32 0, i32 1, i32 %lhs_or_call975
  %lhs_or_call979 = load { i32, [ 0 x i32 ] }** %elt976
  %bound_ptr981 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call979, i32 0, i32 0
  %bound982 = load i32* %bound_ptr981
  call void @oat_array_bounds_check( i32 %bound982, i32 0 )
  %elt980 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call979, i32 0, i32 1, i32 0
  %lhs_or_call983 = load i32* %elt980
  %path984 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call985 = load { i32, [ 0 x i32 ] }** %path984
  %bound_ptr987 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call985, i32 0, i32 0
  %bound988 = load i32* %bound_ptr987
  call void @oat_array_bounds_check( i32 %bound988, i32 0 )
  %elt986 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call985, i32 0, i32 1, i32 0
  %lhs_or_call989 = load i32* %elt986
  %bop990 = sub i32 %lhs_or_call983, %lhs_or_call989
  store i32 %bop990, i32* %elt970
  %path991 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call992 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path991
  %lhs_or_call993 = load i32* %vdecl_slot959
  %bound_ptr995 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call992, i32 0, i32 0
  %bound996 = load i32* %bound_ptr995
  call void @oat_array_bounds_check( i32 %bound996, i32 %lhs_or_call993 )
  %elt994 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call992, i32 0, i32 1, i32 %lhs_or_call993
  %lhs_or_call997 = load { i32, [ 0 x i32 ] }** %elt994
  %bound_ptr999 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call997, i32 0, i32 0
  %bound1000 = load i32* %bound_ptr999
  call void @oat_array_bounds_check( i32 %bound1000, i32 1 )
  %elt998 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call997, i32 0, i32 1, i32 1
  %path1001 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1002 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1001
  %lhs_or_call1003 = load i32* %vdecl_slot959
  %bound_ptr1005 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1002, i32 0, i32 0
  %bound1006 = load i32* %bound_ptr1005
  call void @oat_array_bounds_check( i32 %bound1006, i32 %lhs_or_call1003 )
  %elt1004 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1002, i32 0, i32 1, i32 %lhs_or_call1003
  %lhs_or_call1007 = load { i32, [ 0 x i32 ] }** %elt1004
  %bound_ptr1009 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1007, i32 0, i32 0
  %bound1010 = load i32* %bound_ptr1009
  call void @oat_array_bounds_check( i32 %bound1010, i32 1 )
  %elt1008 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1007, i32 0, i32 1, i32 1
  %lhs_or_call1011 = load i32* %elt1008
  %path1012 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1013 = load { i32, [ 0 x i32 ] }** %path1012
  %bound_ptr1015 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1013, i32 0, i32 0
  %bound1016 = load i32* %bound_ptr1015
  call void @oat_array_bounds_check( i32 %bound1016, i32 1 )
  %elt1014 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1013, i32 0, i32 1, i32 1
  %lhs_or_call1017 = load i32* %elt1014
  %bop1018 = sub i32 %lhs_or_call1011, %lhs_or_call1017
  store i32 %bop1018, i32* %elt998
  %unop1019 = sub i32 0, 1
  %path1020 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1021 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1020
  %lhs_or_call1022 = load i32* %vdecl_slot959
  %bound_ptr1024 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1021, i32 0, i32 0
  %bound1025 = load i32* %bound_ptr1024
  call void @oat_array_bounds_check( i32 %bound1025, i32 %lhs_or_call1022 )
  %elt1023 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1021, i32 0, i32 1, i32 %lhs_or_call1022
  %lhs_or_call1026 = load { i32, [ 0 x i32 ] }** %elt1023
  %bound_ptr1028 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1026, i32 0, i32 0
  %bound1029 = load i32* %bound_ptr1028
  call void @oat_array_bounds_check( i32 %bound1029, i32 1 )
  %elt1027 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1026, i32 0, i32 1, i32 1
  %lhs_or_call1030 = load i32* %elt1027
  %bop1031 = mul i32 %unop1019, %lhs_or_call1030
  store i32 %bop1031, i32* %vdecl_slot962
  %path1032 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1033 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1032
  %lhs_or_call1034 = load i32* %vdecl_slot959
  %bound_ptr1036 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1033, i32 0, i32 0
  %bound1037 = load i32* %bound_ptr1036
  call void @oat_array_bounds_check( i32 %bound1037, i32 %lhs_or_call1034 )
  %elt1035 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1033, i32 0, i32 1, i32 %lhs_or_call1034
  %lhs_or_call1038 = load { i32, [ 0 x i32 ] }** %elt1035
  %bound_ptr1040 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1038, i32 0, i32 0
  %bound1041 = load i32* %bound_ptr1040
  call void @oat_array_bounds_check( i32 %bound1041, i32 1 )
  %elt1039 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1038, i32 0, i32 1, i32 1
  %path1042 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1043 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1042
  %lhs_or_call1044 = load i32* %vdecl_slot959
  %bound_ptr1046 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1043, i32 0, i32 0
  %bound1047 = load i32* %bound_ptr1046
  call void @oat_array_bounds_check( i32 %bound1047, i32 %lhs_or_call1044 )
  %elt1045 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1043, i32 0, i32 1, i32 %lhs_or_call1044
  %lhs_or_call1048 = load { i32, [ 0 x i32 ] }** %elt1045
  %bound_ptr1050 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1048, i32 0, i32 0
  %bound1051 = load i32* %bound_ptr1050
  call void @oat_array_bounds_check( i32 %bound1051, i32 0 )
  %elt1049 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1048, i32 0, i32 1, i32 0
  %lhs_or_call1052 = load i32* %elt1049
  store i32 %lhs_or_call1052, i32* %elt1039
  %path1053 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1054 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1053
  %lhs_or_call1055 = load i32* %vdecl_slot959
  %bound_ptr1057 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1054, i32 0, i32 0
  %bound1058 = load i32* %bound_ptr1057
  call void @oat_array_bounds_check( i32 %bound1058, i32 %lhs_or_call1055 )
  %elt1056 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1054, i32 0, i32 1, i32 %lhs_or_call1055
  %lhs_or_call1059 = load { i32, [ 0 x i32 ] }** %elt1056
  %bound_ptr1061 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1059, i32 0, i32 0
  %bound1062 = load i32* %bound_ptr1061
  call void @oat_array_bounds_check( i32 %bound1062, i32 0 )
  %elt1060 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1059, i32 0, i32 1, i32 0
  %lhs_or_call1063 = load i32* %vdecl_slot962
  store i32 %lhs_or_call1063, i32* %elt1060
  %path1064 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1065 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1064
  %lhs_or_call1066 = load i32* %vdecl_slot959
  %bound_ptr1068 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1065, i32 0, i32 0
  %bound1069 = load i32* %bound_ptr1068
  call void @oat_array_bounds_check( i32 %bound1069, i32 %lhs_or_call1066 )
  %elt1067 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1065, i32 0, i32 1, i32 %lhs_or_call1066
  %lhs_or_call1070 = load { i32, [ 0 x i32 ] }** %elt1067
  %bound_ptr1072 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1070, i32 0, i32 0
  %bound1073 = load i32* %bound_ptr1072
  call void @oat_array_bounds_check( i32 %bound1073, i32 0 )
  %elt1071 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1070, i32 0, i32 1, i32 0
  %path1074 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1075 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1074
  %lhs_or_call1076 = load i32* %vdecl_slot959
  %bound_ptr1078 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1075, i32 0, i32 0
  %bound1079 = load i32* %bound_ptr1078
  call void @oat_array_bounds_check( i32 %bound1079, i32 %lhs_or_call1076 )
  %elt1077 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1075, i32 0, i32 1, i32 %lhs_or_call1076
  %lhs_or_call1080 = load { i32, [ 0 x i32 ] }** %elt1077
  %bound_ptr1082 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1080, i32 0, i32 0
  %bound1083 = load i32* %bound_ptr1082
  call void @oat_array_bounds_check( i32 %bound1083, i32 0 )
  %elt1081 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1080, i32 0, i32 1, i32 0
  %lhs_or_call1084 = load i32* %elt1081
  %path1085 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1086 = load { i32, [ 0 x i32 ] }** %path1085
  %bound_ptr1088 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1086, i32 0, i32 0
  %bound1089 = load i32* %bound_ptr1088
  call void @oat_array_bounds_check( i32 %bound1089, i32 0 )
  %elt1087 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1086, i32 0, i32 1, i32 0
  %lhs_or_call1090 = load i32* %elt1087
  %bop1091 = add i32 %lhs_or_call1084, %lhs_or_call1090
  store i32 %bop1091, i32* %elt1071
  %path1092 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1093 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1092
  %lhs_or_call1094 = load i32* %vdecl_slot959
  %bound_ptr1096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1093, i32 0, i32 0
  %bound1097 = load i32* %bound_ptr1096
  call void @oat_array_bounds_check( i32 %bound1097, i32 %lhs_or_call1094 )
  %elt1095 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1093, i32 0, i32 1, i32 %lhs_or_call1094
  %lhs_or_call1098 = load { i32, [ 0 x i32 ] }** %elt1095
  %bound_ptr1100 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1098, i32 0, i32 0
  %bound1101 = load i32* %bound_ptr1100
  call void @oat_array_bounds_check( i32 %bound1101, i32 1 )
  %elt1099 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1098, i32 0, i32 1, i32 1
  %path1102 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1103 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1102
  %lhs_or_call1104 = load i32* %vdecl_slot959
  %bound_ptr1106 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1103, i32 0, i32 0
  %bound1107 = load i32* %bound_ptr1106
  call void @oat_array_bounds_check( i32 %bound1107, i32 %lhs_or_call1104 )
  %elt1105 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1103, i32 0, i32 1, i32 %lhs_or_call1104
  %lhs_or_call1108 = load { i32, [ 0 x i32 ] }** %elt1105
  %bound_ptr1110 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1108, i32 0, i32 0
  %bound1111 = load i32* %bound_ptr1110
  call void @oat_array_bounds_check( i32 %bound1111, i32 1 )
  %elt1109 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1108, i32 0, i32 1, i32 1
  %lhs_or_call1112 = load i32* %elt1109
  %path1113 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call1114 = load { i32, [ 0 x i32 ] }** %path1113
  %bound_ptr1116 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1114, i32 0, i32 0
  %bound1117 = load i32* %bound_ptr1116
  call void @oat_array_bounds_check( i32 %bound1117, i32 1 )
  %elt1115 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1114, i32 0, i32 1, i32 1
  %lhs_or_call1118 = load i32* %elt1115
  %bop1119 = add i32 %lhs_or_call1112, %lhs_or_call1118
  store i32 %bop1119, i32* %elt1099
  %path1120 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1121 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1120
  %lhs_or_call1122 = load i32* %vdecl_slot959
  %bound_ptr1124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1121, i32 0, i32 0
  %bound1125 = load i32* %bound_ptr1124
  call void @oat_array_bounds_check( i32 %bound1125, i32 %lhs_or_call1122 )
  %elt1123 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1121, i32 0, i32 1, i32 %lhs_or_call1122
  %lhs_or_call1126 = load { i32, [ 0 x i32 ] }** %elt1123
  %bound_ptr1128 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1126, i32 0, i32 0
  %bound1129 = load i32* %bound_ptr1128
  call void @oat_array_bounds_check( i32 %bound1129, i32 1 )
  %elt1127 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1126, i32 0, i32 1, i32 1
  %lhs_or_call1130 = load i32* %elt1127
  %bop1131 = icmp slt i32 %lhs_or_call1130, 0
  %path1132 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1133 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1132
  %lhs_or_call1134 = load i32* %vdecl_slot959
  %bound_ptr1136 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1133, i32 0, i32 0
  %bound1137 = load i32* %bound_ptr1136
  call void @oat_array_bounds_check( i32 %bound1137, i32 %lhs_or_call1134 )
  %elt1135 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1133, i32 0, i32 1, i32 %lhs_or_call1134
  %lhs_or_call1138 = load { i32, [ 0 x i32 ] }** %elt1135
  %bound_ptr1140 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1138, i32 0, i32 0
  %bound1141 = load i32* %bound_ptr1140
  call void @oat_array_bounds_check( i32 %bound1141, i32 1 )
  %elt1139 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1138, i32 0, i32 1, i32 1
  %lhs_or_call1142 = load i32* %elt1139
  %bop1143 = icmp sgt i32 %lhs_or_call1142, 49
  %bop1144 = or i1 %bop1131, %bop1143
  %path1145 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1146 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1145
  %lhs_or_call1147 = load i32* %vdecl_slot959
  %bound_ptr1149 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1146, i32 0, i32 0
  %bound1150 = load i32* %bound_ptr1149
  call void @oat_array_bounds_check( i32 %bound1150, i32 %lhs_or_call1147 )
  %elt1148 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1146, i32 0, i32 1, i32 %lhs_or_call1147
  %lhs_or_call1151 = load { i32, [ 0 x i32 ] }** %elt1148
  %bound_ptr1153 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1151, i32 0, i32 0
  %bound1154 = load i32* %bound_ptr1153
  call void @oat_array_bounds_check( i32 %bound1154, i32 0 )
  %elt1152 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1151, i32 0, i32 1, i32 0
  %lhs_or_call1155 = load i32* %elt1152
  %bop1156 = icmp slt i32 %lhs_or_call1155, 0
  %bop1157 = or i1 %bop1144, %bop1156
  %path1158 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1159 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1158
  %lhs_or_call1160 = load i32* %vdecl_slot959
  %bound_ptr1162 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1159, i32 0, i32 0
  %bound1163 = load i32* %bound_ptr1162
  call void @oat_array_bounds_check( i32 %bound1163, i32 %lhs_or_call1160 )
  %elt1161 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1159, i32 0, i32 1, i32 %lhs_or_call1160
  %lhs_or_call1164 = load { i32, [ 0 x i32 ] }** %elt1161
  %bound_ptr1166 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1164, i32 0, i32 0
  %bound1167 = load i32* %bound_ptr1166
  call void @oat_array_bounds_check( i32 %bound1167, i32 0 )
  %elt1165 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1164, i32 0, i32 1, i32 0
  %lhs_or_call1168 = load i32* %elt1165
  %bop1169 = icmp sgt i32 %lhs_or_call1168, 9
  %bop1170 = or i1 %bop1157, %bop1169
  br i1 %bop1170, label %__then140, label %__else139

__fresh151:
  br label %__then140

__then140:
  store i1 0, i1* %vdecl_slot913
  br label %__merge138

__fresh152:
  br label %__else139

__else139:
  br label %__merge138

__merge138:
  %lhs_or_call1171 = load i32* %vdecl_slot959
  %bop1172 = add i32 %lhs_or_call1171, 1
  store i32 %bop1172, i32* %vdecl_slot959
  br label %__cond137

__fresh153:
  br label %__post135

__post135:
  %lhs_or_call1173 = load i1* %vdecl_slot913
  %bop1174 = icmp eq i1 %lhs_or_call1173, 0
  br i1 %bop1174, label %__then146, label %__else145

__fresh154:
  br label %__then146

__then146:
  %vdecl_slot1175 = alloca i32
  store i32 0, i32* %vdecl_slot1175
  br label %__cond143

__cond143:
  %lhs_or_call1176 = load i32* %vdecl_slot1175
  %bop1177 = icmp slt i32 %lhs_or_call1176, 4
  br i1 %bop1177, label %__body142, label %__post141

__fresh155:
  br label %__body142

__body142:
  %path1178 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1179 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1178
  %lhs_or_call1180 = load i32* %vdecl_slot1175
  %bound_ptr1182 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1179, i32 0, i32 0
  %bound1183 = load i32* %bound_ptr1182
  call void @oat_array_bounds_check( i32 %bound1183, i32 %lhs_or_call1180 )
  %elt1181 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1179, i32 0, i32 1, i32 %lhs_or_call1180
  %lhs_or_call1184 = load { i32, [ 0 x i32 ] }** %elt1181
  %bound_ptr1186 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1184, i32 0, i32 0
  %bound1187 = load i32* %bound_ptr1186
  call void @oat_array_bounds_check( i32 %bound1187, i32 0 )
  %elt1185 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1184, i32 0, i32 1, i32 0
  %lhs_or_call1188 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot912
  %lhs_or_call1189 = load i32* %vdecl_slot1175
  %bound_ptr1191 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1188, i32 0, i32 0
  %bound1192 = load i32* %bound_ptr1191
  call void @oat_array_bounds_check( i32 %bound1192, i32 %lhs_or_call1189 )
  %elt1190 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1188, i32 0, i32 1, i32 %lhs_or_call1189
  %lhs_or_call1193 = load { i32, [ 0 x i32 ] }** %elt1190
  %bound_ptr1195 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1193, i32 0, i32 0
  %bound1196 = load i32* %bound_ptr1195
  call void @oat_array_bounds_check( i32 %bound1196, i32 0 )
  %elt1194 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1193, i32 0, i32 1, i32 0
  %lhs_or_call1197 = load i32* %elt1194
  store i32 %lhs_or_call1197, i32* %elt1185
  %path1198 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call1199 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path1198
  %lhs_or_call1200 = load i32* %vdecl_slot1175
  %bound_ptr1202 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1199, i32 0, i32 0
  %bound1203 = load i32* %bound_ptr1202
  call void @oat_array_bounds_check( i32 %bound1203, i32 %lhs_or_call1200 )
  %elt1201 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1199, i32 0, i32 1, i32 %lhs_or_call1200
  %lhs_or_call1204 = load { i32, [ 0 x i32 ] }** %elt1201
  %bound_ptr1206 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1204, i32 0, i32 0
  %bound1207 = load i32* %bound_ptr1206
  call void @oat_array_bounds_check( i32 %bound1207, i32 1 )
  %elt1205 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1204, i32 0, i32 1, i32 1
  %lhs_or_call1208 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %vdecl_slot912
  %lhs_or_call1209 = load i32* %vdecl_slot1175
  %bound_ptr1211 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1208, i32 0, i32 0
  %bound1212 = load i32* %bound_ptr1211
  call void @oat_array_bounds_check( i32 %bound1212, i32 %lhs_or_call1209 )
  %elt1210 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call1208, i32 0, i32 1, i32 %lhs_or_call1209
  %lhs_or_call1213 = load { i32, [ 0 x i32 ] }** %elt1210
  %bound_ptr1215 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1213, i32 0, i32 0
  %bound1216 = load i32* %bound_ptr1215
  call void @oat_array_bounds_check( i32 %bound1216, i32 1 )
  %elt1214 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call1213, i32 0, i32 1, i32 1
  %lhs_or_call1217 = load i32* %elt1214
  store i32 %lhs_or_call1217, i32* %elt1205
  %lhs_or_call1218 = load i32* %vdecl_slot1175
  %bop1219 = add i32 %lhs_or_call1218, 1
  store i32 %bop1219, i32* %vdecl_slot1175
  br label %__cond143

__fresh156:
  br label %__post141

__post141:
  br label %__merge144

__fresh157:
  br label %__else145

__else145:
  br label %__merge144

__merge144:
  ret void
}


define void @_Shape_move_right (%Shape* %_this1){
__fresh123:
  %vdecl_slot832 = alloca i1
  store i1 1, i1* %vdecl_slot832
  %vdecl_slot833 = alloca i32
  store i32 0, i32* %vdecl_slot833
  br label %__cond113

__cond113:
  %lhs_or_call834 = load i32* %vdecl_slot833
  %bop835 = icmp slt i32 %lhs_or_call834, 4
  br i1 %bop835, label %__body112, label %__post111

__fresh124:
  br label %__body112

__body112:
  %path836 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call837 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path836
  %lhs_or_call838 = load i32* %vdecl_slot833
  %bound_ptr840 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call837, i32 0, i32 0
  %bound841 = load i32* %bound_ptr840
  call void @oat_array_bounds_check( i32 %bound841, i32 %lhs_or_call838 )
  %elt839 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call837, i32 0, i32 1, i32 %lhs_or_call838
  %lhs_or_call842 = load { i32, [ 0 x i32 ] }** %elt839
  %bound_ptr844 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call842, i32 0, i32 0
  %bound845 = load i32* %bound_ptr844
  call void @oat_array_bounds_check( i32 %bound845, i32 0 )
  %elt843 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call842, i32 0, i32 1, i32 0
  %lhs_or_call846 = load i32* %elt843
  %bop847 = icmp sgt i32 %lhs_or_call846, 8
  br i1 %bop847, label %__then116, label %__else115

__fresh125:
  br label %__then116

__then116:
  store i1 0, i1* %vdecl_slot832
  br label %__merge114

__fresh126:
  br label %__else115

__else115:
  br label %__merge114

__merge114:
  %lhs_or_call848 = load i32* %vdecl_slot833
  %bop849 = add i32 %lhs_or_call848, 1
  store i32 %bop849, i32* %vdecl_slot833
  br label %__cond113

__fresh127:
  br label %__post111

__post111:
  %lhs_or_call850 = load i1* %vdecl_slot832
  br i1 %lhs_or_call850, label %__then122, label %__else121

__fresh128:
  br label %__then122

__then122:
  %path851 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call852 = load { i32, [ 0 x i32 ] }** %path851
  %bound_ptr854 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call852, i32 0, i32 0
  %bound855 = load i32* %bound_ptr854
  call void @oat_array_bounds_check( i32 %bound855, i32 0 )
  %elt853 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call852, i32 0, i32 1, i32 0
  %path856 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call857 = load { i32, [ 0 x i32 ] }** %path856
  %bound_ptr859 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call857, i32 0, i32 0
  %bound860 = load i32* %bound_ptr859
  call void @oat_array_bounds_check( i32 %bound860, i32 0 )
  %elt858 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call857, i32 0, i32 1, i32 0
  %lhs_or_call861 = load i32* %elt858
  %bop862 = add i32 %lhs_or_call861, 1
  store i32 %bop862, i32* %elt853
  %vdecl_slot863 = alloca i32
  store i32 0, i32* %vdecl_slot863
  br label %__cond119

__cond119:
  %lhs_or_call864 = load i32* %vdecl_slot863
  %bop865 = icmp slt i32 %lhs_or_call864, 4
  br i1 %bop865, label %__body118, label %__post117

__fresh129:
  br label %__body118

__body118:
  %path866 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call867 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path866
  %lhs_or_call868 = load i32* %vdecl_slot863
  %bound_ptr870 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call867, i32 0, i32 0
  %bound871 = load i32* %bound_ptr870
  call void @oat_array_bounds_check( i32 %bound871, i32 %lhs_or_call868 )
  %elt869 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call867, i32 0, i32 1, i32 %lhs_or_call868
  %lhs_or_call872 = load { i32, [ 0 x i32 ] }** %elt869
  %bound_ptr874 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call872, i32 0, i32 0
  %bound875 = load i32* %bound_ptr874
  call void @oat_array_bounds_check( i32 %bound875, i32 0 )
  %elt873 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call872, i32 0, i32 1, i32 0
  %path876 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call877 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path876
  %lhs_or_call878 = load i32* %vdecl_slot863
  %bound_ptr880 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call877, i32 0, i32 0
  %bound881 = load i32* %bound_ptr880
  call void @oat_array_bounds_check( i32 %bound881, i32 %lhs_or_call878 )
  %elt879 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call877, i32 0, i32 1, i32 %lhs_or_call878
  %lhs_or_call882 = load { i32, [ 0 x i32 ] }** %elt879
  %bound_ptr884 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call882, i32 0, i32 0
  %bound885 = load i32* %bound_ptr884
  call void @oat_array_bounds_check( i32 %bound885, i32 0 )
  %elt883 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call882, i32 0, i32 1, i32 0
  %lhs_or_call886 = load i32* %elt883
  %bop887 = add i32 %lhs_or_call886, 1
  store i32 %bop887, i32* %elt873
  %lhs_or_call888 = load i32* %vdecl_slot863
  %bop889 = add i32 %lhs_or_call888, 1
  store i32 %bop889, i32* %vdecl_slot863
  br label %__cond119

__fresh130:
  br label %__post117

__post117:
  br label %__merge120

__fresh131:
  br label %__else121

__else121:
  br label %__merge120

__merge120:
  ret void
}


define void @_Shape_move_left (%Shape* %_this1){
__fresh102:
  %vdecl_slot774 = alloca i1
  store i1 1, i1* %vdecl_slot774
  %vdecl_slot775 = alloca i32
  store i32 0, i32* %vdecl_slot775
  br label %__cond92

__cond92:
  %lhs_or_call776 = load i32* %vdecl_slot775
  %bop777 = icmp slt i32 %lhs_or_call776, 4
  br i1 %bop777, label %__body91, label %__post90

__fresh103:
  br label %__body91

__body91:
  %path778 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call779 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path778
  %lhs_or_call780 = load i32* %vdecl_slot775
  %bound_ptr782 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call779, i32 0, i32 0
  %bound783 = load i32* %bound_ptr782
  call void @oat_array_bounds_check( i32 %bound783, i32 %lhs_or_call780 )
  %elt781 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call779, i32 0, i32 1, i32 %lhs_or_call780
  %lhs_or_call784 = load { i32, [ 0 x i32 ] }** %elt781
  %bound_ptr786 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call784, i32 0, i32 0
  %bound787 = load i32* %bound_ptr786
  call void @oat_array_bounds_check( i32 %bound787, i32 0 )
  %elt785 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call784, i32 0, i32 1, i32 0
  %lhs_or_call788 = load i32* %elt785
  %bop789 = icmp slt i32 %lhs_or_call788, 1
  br i1 %bop789, label %__then95, label %__else94

__fresh104:
  br label %__then95

__then95:
  store i1 0, i1* %vdecl_slot774
  br label %__merge93

__fresh105:
  br label %__else94

__else94:
  br label %__merge93

__merge93:
  %lhs_or_call790 = load i32* %vdecl_slot775
  %bop791 = add i32 %lhs_or_call790, 1
  store i32 %bop791, i32* %vdecl_slot775
  br label %__cond92

__fresh106:
  br label %__post90

__post90:
  %lhs_or_call792 = load i1* %vdecl_slot774
  br i1 %lhs_or_call792, label %__then101, label %__else100

__fresh107:
  br label %__then101

__then101:
  %path793 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call794 = load { i32, [ 0 x i32 ] }** %path793
  %bound_ptr796 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call794, i32 0, i32 0
  %bound797 = load i32* %bound_ptr796
  call void @oat_array_bounds_check( i32 %bound797, i32 0 )
  %elt795 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call794, i32 0, i32 1, i32 0
  %path798 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call799 = load { i32, [ 0 x i32 ] }** %path798
  %bound_ptr801 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call799, i32 0, i32 0
  %bound802 = load i32* %bound_ptr801
  call void @oat_array_bounds_check( i32 %bound802, i32 0 )
  %elt800 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call799, i32 0, i32 1, i32 0
  %lhs_or_call803 = load i32* %elt800
  %bop804 = sub i32 %lhs_or_call803, 1
  store i32 %bop804, i32* %elt795
  %vdecl_slot805 = alloca i32
  store i32 0, i32* %vdecl_slot805
  br label %__cond98

__cond98:
  %lhs_or_call806 = load i32* %vdecl_slot805
  %bop807 = icmp slt i32 %lhs_or_call806, 4
  br i1 %bop807, label %__body97, label %__post96

__fresh108:
  br label %__body97

__body97:
  %path808 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call809 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path808
  %lhs_or_call810 = load i32* %vdecl_slot805
  %bound_ptr812 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call809, i32 0, i32 0
  %bound813 = load i32* %bound_ptr812
  call void @oat_array_bounds_check( i32 %bound813, i32 %lhs_or_call810 )
  %elt811 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call809, i32 0, i32 1, i32 %lhs_or_call810
  %lhs_or_call814 = load { i32, [ 0 x i32 ] }** %elt811
  %bound_ptr816 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call814, i32 0, i32 0
  %bound817 = load i32* %bound_ptr816
  call void @oat_array_bounds_check( i32 %bound817, i32 0 )
  %elt815 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call814, i32 0, i32 1, i32 0
  %path818 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call819 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path818
  %lhs_or_call820 = load i32* %vdecl_slot805
  %bound_ptr822 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call819, i32 0, i32 0
  %bound823 = load i32* %bound_ptr822
  call void @oat_array_bounds_check( i32 %bound823, i32 %lhs_or_call820 )
  %elt821 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call819, i32 0, i32 1, i32 %lhs_or_call820
  %lhs_or_call824 = load { i32, [ 0 x i32 ] }** %elt821
  %bound_ptr826 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call824, i32 0, i32 0
  %bound827 = load i32* %bound_ptr826
  call void @oat_array_bounds_check( i32 %bound827, i32 0 )
  %elt825 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call824, i32 0, i32 1, i32 0
  %lhs_or_call828 = load i32* %elt825
  %bop829 = sub i32 %lhs_or_call828, 1
  store i32 %bop829, i32* %elt815
  %lhs_or_call830 = load i32* %vdecl_slot805
  %bop831 = add i32 %lhs_or_call830, 1
  store i32 %bop831, i32* %vdecl_slot805
  br label %__cond98

__fresh109:
  br label %__post96

__post96:
  br label %__merge99

__fresh110:
  br label %__else100

__else100:
  br label %__merge99

__merge99:
  ret void
}


define void @_Shape_move_down (%Shape* %_this1){
__fresh81:
  %vdecl_slot716 = alloca i1
  store i1 1, i1* %vdecl_slot716
  %vdecl_slot717 = alloca i32
  store i32 0, i32* %vdecl_slot717
  br label %__cond71

__cond71:
  %lhs_or_call718 = load i32* %vdecl_slot717
  %bop719 = icmp slt i32 %lhs_or_call718, 4
  br i1 %bop719, label %__body70, label %__post69

__fresh82:
  br label %__body70

__body70:
  %path720 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call721 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path720
  %lhs_or_call722 = load i32* %vdecl_slot717
  %bound_ptr724 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call721, i32 0, i32 0
  %bound725 = load i32* %bound_ptr724
  call void @oat_array_bounds_check( i32 %bound725, i32 %lhs_or_call722 )
  %elt723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call721, i32 0, i32 1, i32 %lhs_or_call722
  %lhs_or_call726 = load { i32, [ 0 x i32 ] }** %elt723
  %bound_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call726, i32 0, i32 0
  %bound729 = load i32* %bound_ptr728
  call void @oat_array_bounds_check( i32 %bound729, i32 1 )
  %elt727 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call726, i32 0, i32 1, i32 1
  %lhs_or_call730 = load i32* %elt727
  %bop731 = icmp sgt i32 %lhs_or_call730, 48
  br i1 %bop731, label %__then74, label %__else73

__fresh83:
  br label %__then74

__then74:
  store i1 0, i1* %vdecl_slot716
  br label %__merge72

__fresh84:
  br label %__else73

__else73:
  br label %__merge72

__merge72:
  %lhs_or_call732 = load i32* %vdecl_slot717
  %bop733 = add i32 %lhs_or_call732, 1
  store i32 %bop733, i32* %vdecl_slot717
  br label %__cond71

__fresh85:
  br label %__post69

__post69:
  %lhs_or_call734 = load i1* %vdecl_slot716
  br i1 %lhs_or_call734, label %__then80, label %__else79

__fresh86:
  br label %__then80

__then80:
  %path735 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call736 = load { i32, [ 0 x i32 ] }** %path735
  %bound_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call736, i32 0, i32 0
  %bound739 = load i32* %bound_ptr738
  call void @oat_array_bounds_check( i32 %bound739, i32 1 )
  %elt737 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call736, i32 0, i32 1, i32 1
  %path740 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call741 = load { i32, [ 0 x i32 ] }** %path740
  %bound_ptr743 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call741, i32 0, i32 0
  %bound744 = load i32* %bound_ptr743
  call void @oat_array_bounds_check( i32 %bound744, i32 1 )
  %elt742 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call741, i32 0, i32 1, i32 1
  %lhs_or_call745 = load i32* %elt742
  %bop746 = add i32 %lhs_or_call745, 1
  store i32 %bop746, i32* %elt737
  %vdecl_slot747 = alloca i32
  store i32 0, i32* %vdecl_slot747
  br label %__cond77

__cond77:
  %lhs_or_call748 = load i32* %vdecl_slot747
  %bop749 = icmp slt i32 %lhs_or_call748, 4
  br i1 %bop749, label %__body76, label %__post75

__fresh87:
  br label %__body76

__body76:
  %path750 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call751 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path750
  %lhs_or_call752 = load i32* %vdecl_slot747
  %bound_ptr754 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call751, i32 0, i32 0
  %bound755 = load i32* %bound_ptr754
  call void @oat_array_bounds_check( i32 %bound755, i32 %lhs_or_call752 )
  %elt753 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call751, i32 0, i32 1, i32 %lhs_or_call752
  %lhs_or_call756 = load { i32, [ 0 x i32 ] }** %elt753
  %bound_ptr758 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call756, i32 0, i32 0
  %bound759 = load i32* %bound_ptr758
  call void @oat_array_bounds_check( i32 %bound759, i32 1 )
  %elt757 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call756, i32 0, i32 1, i32 1
  %path760 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call761 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path760
  %lhs_or_call762 = load i32* %vdecl_slot747
  %bound_ptr764 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call761, i32 0, i32 0
  %bound765 = load i32* %bound_ptr764
  call void @oat_array_bounds_check( i32 %bound765, i32 %lhs_or_call762 )
  %elt763 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call761, i32 0, i32 1, i32 %lhs_or_call762
  %lhs_or_call766 = load { i32, [ 0 x i32 ] }** %elt763
  %bound_ptr768 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call766, i32 0, i32 0
  %bound769 = load i32* %bound_ptr768
  call void @oat_array_bounds_check( i32 %bound769, i32 1 )
  %elt767 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call766, i32 0, i32 1, i32 1
  %lhs_or_call770 = load i32* %elt767
  %bop771 = add i32 %lhs_or_call770, 1
  store i32 %bop771, i32* %elt757
  %lhs_or_call772 = load i32* %vdecl_slot747
  %bop773 = add i32 %lhs_or_call772, 1
  store i32 %bop773, i32* %vdecl_slot747
  br label %__cond77

__fresh88:
  br label %__post75

__post75:
  br label %__merge78

__fresh89:
  br label %__else79

__else79:
  br label %__merge78

__merge78:
  ret void
}


define %Shape* @_Shape_ctor (%Shape* %_this1, i32 %type94){
__fresh54:
  %type_slot95 = alloca i32
  store i32 %type94, i32* %type_slot95
  %cast_op96 = bitcast %Shape* %_this1 to %Object* 
  %dummy97 = call %Object* @_Object_ctor ( %Object* %cast_op96 )
  %path98 = getelementptr %Shape* %_this1, i32 0, i32 1
  store i8* @_const_str10, i8** %path98
  %path99 = getelementptr %Shape* %_this1, i32 0, i32 2
  %array_ptr100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr100 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr102 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array103 = bitcast { i32, [ 0 x i32 ] }* %array_ptr102 to { i32, [ 0 x i32 ] }* 
  %index_ptr104 = getelementptr { i32, [ 0 x i32 ] }* %array103, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr104
  %index_ptr105 = getelementptr { i32, [ 0 x i32 ] }* %array103, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr105
  %index_ptr106 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array101, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array103, { i32, [ 0 x i32 ] }** %index_ptr106
  %array_ptr107 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array108 = bitcast { i32, [ 0 x i32 ] }* %array_ptr107 to { i32, [ 0 x i32 ] }* 
  %index_ptr109 = getelementptr { i32, [ 0 x i32 ] }* %array108, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr109
  %index_ptr110 = getelementptr { i32, [ 0 x i32 ] }* %array108, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr110
  %index_ptr111 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array101, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array108, { i32, [ 0 x i32 ] }** %index_ptr111
  %array_ptr112 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array113 = bitcast { i32, [ 0 x i32 ] }* %array_ptr112 to { i32, [ 0 x i32 ] }* 
  %index_ptr114 = getelementptr { i32, [ 0 x i32 ] }* %array113, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr114
  %index_ptr115 = getelementptr { i32, [ 0 x i32 ] }* %array113, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr115
  %index_ptr116 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array101, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array113, { i32, [ 0 x i32 ] }** %index_ptr116
  %array_ptr117 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array118 = bitcast { i32, [ 0 x i32 ] }* %array_ptr117 to { i32, [ 0 x i32 ] }* 
  %index_ptr119 = getelementptr { i32, [ 0 x i32 ] }* %array118, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr119
  %index_ptr120 = getelementptr { i32, [ 0 x i32 ] }* %array118, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr120
  %index_ptr121 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array101, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array118, { i32, [ 0 x i32 ] }** %index_ptr121
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array101, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path99
  %path122 = getelementptr %Shape* %_this1, i32 0, i32 3
  %array_ptr123 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array124 = bitcast { i32, [ 0 x i32 ] }* %array_ptr123 to { i32, [ 0 x i32 ] }* 
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %array124, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr125
  %index_ptr126 = getelementptr { i32, [ 0 x i32 ] }* %array124, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr126
  store { i32, [ 0 x i32 ] }* %array124, { i32, [ 0 x i32 ] }** %path122
  %vt_slot127 = getelementptr %Shape* %_this1, i32 0, i32 0
  store %_Shape_vtable* @_Shape_vtable4, %_Shape_vtable** %vt_slot127
  %lhs_or_call128 = load i32* %type_slot95
  %bop129 = icmp eq i32 %lhs_or_call128, 0
  br i1 %bop129, label %__then53, label %__else52

__fresh55:
  br label %__then53

__then53:
  %path130 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call131 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path130
  %bound_ptr133 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call131, i32 0, i32 0
  %bound134 = load i32* %bound_ptr133
  call void @oat_array_bounds_check( i32 %bound134, i32 0 )
  %elt132 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call131, i32 0, i32 1, i32 0
  %lhs_or_call135 = load { i32, [ 0 x i32 ] }** %elt132
  %bound_ptr137 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call135, i32 0, i32 0
  %bound138 = load i32* %bound_ptr137
  call void @oat_array_bounds_check( i32 %bound138, i32 0 )
  %elt136 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call135, i32 0, i32 1, i32 0
  store i32 0, i32* %elt136
  %path139 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call140 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path139
  %bound_ptr142 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call140, i32 0, i32 0
  %bound143 = load i32* %bound_ptr142
  call void @oat_array_bounds_check( i32 %bound143, i32 0 )
  %elt141 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call140, i32 0, i32 1, i32 0
  %lhs_or_call144 = load { i32, [ 0 x i32 ] }** %elt141
  %bound_ptr146 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call144, i32 0, i32 0
  %bound147 = load i32* %bound_ptr146
  call void @oat_array_bounds_check( i32 %bound147, i32 1 )
  %elt145 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call144, i32 0, i32 1, i32 1
  store i32 0, i32* %elt145
  %path148 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call149 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path148
  %bound_ptr151 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call149, i32 0, i32 0
  %bound152 = load i32* %bound_ptr151
  call void @oat_array_bounds_check( i32 %bound152, i32 1 )
  %elt150 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call149, i32 0, i32 1, i32 1
  %lhs_or_call153 = load { i32, [ 0 x i32 ] }** %elt150
  %bound_ptr155 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call153, i32 0, i32 0
  %bound156 = load i32* %bound_ptr155
  call void @oat_array_bounds_check( i32 %bound156, i32 0 )
  %elt154 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call153, i32 0, i32 1, i32 0
  store i32 0, i32* %elt154
  %path157 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call158 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path157
  %bound_ptr160 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call158, i32 0, i32 0
  %bound161 = load i32* %bound_ptr160
  call void @oat_array_bounds_check( i32 %bound161, i32 1 )
  %elt159 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call158, i32 0, i32 1, i32 1
  %lhs_or_call162 = load { i32, [ 0 x i32 ] }** %elt159
  %bound_ptr164 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call162, i32 0, i32 0
  %bound165 = load i32* %bound_ptr164
  call void @oat_array_bounds_check( i32 %bound165, i32 1 )
  %elt163 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call162, i32 0, i32 1, i32 1
  store i32 1, i32* %elt163
  %path166 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call167 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path166
  %bound_ptr169 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call167, i32 0, i32 0
  %bound170 = load i32* %bound_ptr169
  call void @oat_array_bounds_check( i32 %bound170, i32 2 )
  %elt168 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call167, i32 0, i32 1, i32 2
  %lhs_or_call171 = load { i32, [ 0 x i32 ] }** %elt168
  %bound_ptr173 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call171, i32 0, i32 0
  %bound174 = load i32* %bound_ptr173
  call void @oat_array_bounds_check( i32 %bound174, i32 0 )
  %elt172 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call171, i32 0, i32 1, i32 0
  store i32 0, i32* %elt172
  %path175 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call176 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path175
  %bound_ptr178 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call176, i32 0, i32 0
  %bound179 = load i32* %bound_ptr178
  call void @oat_array_bounds_check( i32 %bound179, i32 2 )
  %elt177 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call176, i32 0, i32 1, i32 2
  %lhs_or_call180 = load { i32, [ 0 x i32 ] }** %elt177
  %bound_ptr182 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call180, i32 0, i32 0
  %bound183 = load i32* %bound_ptr182
  call void @oat_array_bounds_check( i32 %bound183, i32 1 )
  %elt181 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call180, i32 0, i32 1, i32 1
  store i32 2, i32* %elt181
  %path184 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call185 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path184
  %bound_ptr187 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call185, i32 0, i32 0
  %bound188 = load i32* %bound_ptr187
  call void @oat_array_bounds_check( i32 %bound188, i32 3 )
  %elt186 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call185, i32 0, i32 1, i32 3
  %lhs_or_call189 = load { i32, [ 0 x i32 ] }** %elt186
  %bound_ptr191 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call189, i32 0, i32 0
  %bound192 = load i32* %bound_ptr191
  call void @oat_array_bounds_check( i32 %bound192, i32 0 )
  %elt190 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call189, i32 0, i32 1, i32 0
  store i32 0, i32* %elt190
  %path193 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call194 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path193
  %bound_ptr196 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call194, i32 0, i32 0
  %bound197 = load i32* %bound_ptr196
  call void @oat_array_bounds_check( i32 %bound197, i32 3 )
  %elt195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call194, i32 0, i32 1, i32 3
  %lhs_or_call198 = load { i32, [ 0 x i32 ] }** %elt195
  %bound_ptr200 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call198, i32 0, i32 0
  %bound201 = load i32* %bound_ptr200
  call void @oat_array_bounds_check( i32 %bound201, i32 1 )
  %elt199 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call198, i32 0, i32 1, i32 1
  store i32 3, i32* %elt199
  %path202 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call203 = load { i32, [ 0 x i32 ] }** %path202
  %bound_ptr205 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call203, i32 0, i32 0
  %bound206 = load i32* %bound_ptr205
  call void @oat_array_bounds_check( i32 %bound206, i32 0 )
  %elt204 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call203, i32 0, i32 1, i32 0
  store i32 0, i32* %elt204
  %path207 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call208 = load { i32, [ 0 x i32 ] }** %path207
  %bound_ptr210 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call208, i32 0, i32 0
  %bound211 = load i32* %bound_ptr210
  call void @oat_array_bounds_check( i32 %bound211, i32 1 )
  %elt209 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call208, i32 0, i32 1, i32 1
  store i32 3, i32* %elt209
  br label %__merge51

__fresh56:
  br label %__else52

__else52:
  %lhs_or_call212 = load i32* %type_slot95
  %bop213 = icmp eq i32 %lhs_or_call212, 1
  br i1 %bop213, label %__then50, label %__else49

__fresh57:
  br label %__then50

__then50:
  %path214 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call215 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path214
  %bound_ptr217 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call215, i32 0, i32 0
  %bound218 = load i32* %bound_ptr217
  call void @oat_array_bounds_check( i32 %bound218, i32 0 )
  %elt216 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call215, i32 0, i32 1, i32 0
  %lhs_or_call219 = load { i32, [ 0 x i32 ] }** %elt216
  %bound_ptr221 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call219, i32 0, i32 0
  %bound222 = load i32* %bound_ptr221
  call void @oat_array_bounds_check( i32 %bound222, i32 0 )
  %elt220 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call219, i32 0, i32 1, i32 0
  store i32 0, i32* %elt220
  %path223 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call224 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path223
  %bound_ptr226 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call224, i32 0, i32 0
  %bound227 = load i32* %bound_ptr226
  call void @oat_array_bounds_check( i32 %bound227, i32 0 )
  %elt225 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call224, i32 0, i32 1, i32 0
  %lhs_or_call228 = load { i32, [ 0 x i32 ] }** %elt225
  %bound_ptr230 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call228, i32 0, i32 0
  %bound231 = load i32* %bound_ptr230
  call void @oat_array_bounds_check( i32 %bound231, i32 1 )
  %elt229 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call228, i32 0, i32 1, i32 1
  store i32 0, i32* %elt229
  %path232 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call233 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path232
  %bound_ptr235 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call233, i32 0, i32 0
  %bound236 = load i32* %bound_ptr235
  call void @oat_array_bounds_check( i32 %bound236, i32 1 )
  %elt234 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call233, i32 0, i32 1, i32 1
  %lhs_or_call237 = load { i32, [ 0 x i32 ] }** %elt234
  %bound_ptr239 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call237, i32 0, i32 0
  %bound240 = load i32* %bound_ptr239
  call void @oat_array_bounds_check( i32 %bound240, i32 0 )
  %elt238 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call237, i32 0, i32 1, i32 0
  store i32 1, i32* %elt238
  %path241 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call242 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path241
  %bound_ptr244 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call242, i32 0, i32 0
  %bound245 = load i32* %bound_ptr244
  call void @oat_array_bounds_check( i32 %bound245, i32 1 )
  %elt243 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call242, i32 0, i32 1, i32 1
  %lhs_or_call246 = load { i32, [ 0 x i32 ] }** %elt243
  %bound_ptr248 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call246, i32 0, i32 0
  %bound249 = load i32* %bound_ptr248
  call void @oat_array_bounds_check( i32 %bound249, i32 1 )
  %elt247 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call246, i32 0, i32 1, i32 1
  store i32 0, i32* %elt247
  %path250 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call251 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path250
  %bound_ptr253 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call251, i32 0, i32 0
  %bound254 = load i32* %bound_ptr253
  call void @oat_array_bounds_check( i32 %bound254, i32 2 )
  %elt252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call251, i32 0, i32 1, i32 2
  %lhs_or_call255 = load { i32, [ 0 x i32 ] }** %elt252
  %bound_ptr257 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call255, i32 0, i32 0
  %bound258 = load i32* %bound_ptr257
  call void @oat_array_bounds_check( i32 %bound258, i32 0 )
  %elt256 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call255, i32 0, i32 1, i32 0
  store i32 0, i32* %elt256
  %path259 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call260 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path259
  %bound_ptr262 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call260, i32 0, i32 0
  %bound263 = load i32* %bound_ptr262
  call void @oat_array_bounds_check( i32 %bound263, i32 2 )
  %elt261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call260, i32 0, i32 1, i32 2
  %lhs_or_call264 = load { i32, [ 0 x i32 ] }** %elt261
  %bound_ptr266 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call264, i32 0, i32 0
  %bound267 = load i32* %bound_ptr266
  call void @oat_array_bounds_check( i32 %bound267, i32 1 )
  %elt265 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call264, i32 0, i32 1, i32 1
  store i32 1, i32* %elt265
  %path268 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call269 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path268
  %bound_ptr271 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call269, i32 0, i32 0
  %bound272 = load i32* %bound_ptr271
  call void @oat_array_bounds_check( i32 %bound272, i32 3 )
  %elt270 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call269, i32 0, i32 1, i32 3
  %lhs_or_call273 = load { i32, [ 0 x i32 ] }** %elt270
  %bound_ptr275 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call273, i32 0, i32 0
  %bound276 = load i32* %bound_ptr275
  call void @oat_array_bounds_check( i32 %bound276, i32 0 )
  %elt274 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call273, i32 0, i32 1, i32 0
  store i32 1, i32* %elt274
  %path277 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call278 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path277
  %bound_ptr280 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call278, i32 0, i32 0
  %bound281 = load i32* %bound_ptr280
  call void @oat_array_bounds_check( i32 %bound281, i32 3 )
  %elt279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call278, i32 0, i32 1, i32 3
  %lhs_or_call282 = load { i32, [ 0 x i32 ] }** %elt279
  %bound_ptr284 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call282, i32 0, i32 0
  %bound285 = load i32* %bound_ptr284
  call void @oat_array_bounds_check( i32 %bound285, i32 1 )
  %elt283 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call282, i32 0, i32 1, i32 1
  store i32 1, i32* %elt283
  %path286 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call287 = load { i32, [ 0 x i32 ] }** %path286
  %bound_ptr289 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call287, i32 0, i32 0
  %bound290 = load i32* %bound_ptr289
  call void @oat_array_bounds_check( i32 %bound290, i32 0 )
  %elt288 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call287, i32 0, i32 1, i32 0
  store i32 0, i32* %elt288
  %path291 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call292 = load { i32, [ 0 x i32 ] }** %path291
  %bound_ptr294 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call292, i32 0, i32 0
  %bound295 = load i32* %bound_ptr294
  call void @oat_array_bounds_check( i32 %bound295, i32 1 )
  %elt293 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call292, i32 0, i32 1, i32 1
  store i32 1, i32* %elt293
  br label %__merge48

__fresh58:
  br label %__else49

__else49:
  %lhs_or_call296 = load i32* %type_slot95
  %bop297 = icmp eq i32 %lhs_or_call296, 2
  br i1 %bop297, label %__then47, label %__else46

__fresh59:
  br label %__then47

__then47:
  %path298 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call299 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path298
  %bound_ptr301 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call299, i32 0, i32 0
  %bound302 = load i32* %bound_ptr301
  call void @oat_array_bounds_check( i32 %bound302, i32 0 )
  %elt300 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call299, i32 0, i32 1, i32 0
  %lhs_or_call303 = load { i32, [ 0 x i32 ] }** %elt300
  %bound_ptr305 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call303, i32 0, i32 0
  %bound306 = load i32* %bound_ptr305
  call void @oat_array_bounds_check( i32 %bound306, i32 0 )
  %elt304 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call303, i32 0, i32 1, i32 0
  store i32 1, i32* %elt304
  %path307 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call308 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path307
  %bound_ptr310 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call308, i32 0, i32 0
  %bound311 = load i32* %bound_ptr310
  call void @oat_array_bounds_check( i32 %bound311, i32 0 )
  %elt309 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call308, i32 0, i32 1, i32 0
  %lhs_or_call312 = load { i32, [ 0 x i32 ] }** %elt309
  %bound_ptr314 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call312, i32 0, i32 0
  %bound315 = load i32* %bound_ptr314
  call void @oat_array_bounds_check( i32 %bound315, i32 1 )
  %elt313 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call312, i32 0, i32 1, i32 1
  store i32 0, i32* %elt313
  %path316 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call317 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path316
  %bound_ptr319 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call317, i32 0, i32 0
  %bound320 = load i32* %bound_ptr319
  call void @oat_array_bounds_check( i32 %bound320, i32 1 )
  %elt318 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call317, i32 0, i32 1, i32 1
  %lhs_or_call321 = load { i32, [ 0 x i32 ] }** %elt318
  %bound_ptr323 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call321, i32 0, i32 0
  %bound324 = load i32* %bound_ptr323
  call void @oat_array_bounds_check( i32 %bound324, i32 0 )
  %elt322 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call321, i32 0, i32 1, i32 0
  store i32 0, i32* %elt322
  %path325 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call326 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path325
  %bound_ptr328 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call326, i32 0, i32 0
  %bound329 = load i32* %bound_ptr328
  call void @oat_array_bounds_check( i32 %bound329, i32 1 )
  %elt327 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call326, i32 0, i32 1, i32 1
  %lhs_or_call330 = load { i32, [ 0 x i32 ] }** %elt327
  %bound_ptr332 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call330, i32 0, i32 0
  %bound333 = load i32* %bound_ptr332
  call void @oat_array_bounds_check( i32 %bound333, i32 1 )
  %elt331 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call330, i32 0, i32 1, i32 1
  store i32 1, i32* %elt331
  %path334 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call335 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path334
  %bound_ptr337 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call335, i32 0, i32 0
  %bound338 = load i32* %bound_ptr337
  call void @oat_array_bounds_check( i32 %bound338, i32 2 )
  %elt336 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call335, i32 0, i32 1, i32 2
  %lhs_or_call339 = load { i32, [ 0 x i32 ] }** %elt336
  %bound_ptr341 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call339, i32 0, i32 0
  %bound342 = load i32* %bound_ptr341
  call void @oat_array_bounds_check( i32 %bound342, i32 0 )
  %elt340 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call339, i32 0, i32 1, i32 0
  store i32 1, i32* %elt340
  %path343 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call344 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path343
  %bound_ptr346 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call344, i32 0, i32 0
  %bound347 = load i32* %bound_ptr346
  call void @oat_array_bounds_check( i32 %bound347, i32 2 )
  %elt345 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call344, i32 0, i32 1, i32 2
  %lhs_or_call348 = load { i32, [ 0 x i32 ] }** %elt345
  %bound_ptr350 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call348, i32 0, i32 0
  %bound351 = load i32* %bound_ptr350
  call void @oat_array_bounds_check( i32 %bound351, i32 1 )
  %elt349 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call348, i32 0, i32 1, i32 1
  store i32 1, i32* %elt349
  %path352 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call353 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path352
  %bound_ptr355 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call353, i32 0, i32 0
  %bound356 = load i32* %bound_ptr355
  call void @oat_array_bounds_check( i32 %bound356, i32 3 )
  %elt354 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call353, i32 0, i32 1, i32 3
  %lhs_or_call357 = load { i32, [ 0 x i32 ] }** %elt354
  %bound_ptr359 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call357, i32 0, i32 0
  %bound360 = load i32* %bound_ptr359
  call void @oat_array_bounds_check( i32 %bound360, i32 0 )
  %elt358 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call357, i32 0, i32 1, i32 0
  store i32 2, i32* %elt358
  %path361 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call362 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path361
  %bound_ptr364 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call362, i32 0, i32 0
  %bound365 = load i32* %bound_ptr364
  call void @oat_array_bounds_check( i32 %bound365, i32 3 )
  %elt363 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call362, i32 0, i32 1, i32 3
  %lhs_or_call366 = load { i32, [ 0 x i32 ] }** %elt363
  %bound_ptr368 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call366, i32 0, i32 0
  %bound369 = load i32* %bound_ptr368
  call void @oat_array_bounds_check( i32 %bound369, i32 1 )
  %elt367 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call366, i32 0, i32 1, i32 1
  store i32 1, i32* %elt367
  %path370 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call371 = load { i32, [ 0 x i32 ] }** %path370
  %bound_ptr373 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call371, i32 0, i32 0
  %bound374 = load i32* %bound_ptr373
  call void @oat_array_bounds_check( i32 %bound374, i32 0 )
  %elt372 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call371, i32 0, i32 1, i32 0
  store i32 0, i32* %elt372
  %path375 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call376 = load { i32, [ 0 x i32 ] }** %path375
  %bound_ptr378 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call376, i32 0, i32 0
  %bound379 = load i32* %bound_ptr378
  call void @oat_array_bounds_check( i32 %bound379, i32 1 )
  %elt377 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call376, i32 0, i32 1, i32 1
  store i32 1, i32* %elt377
  br label %__merge45

__fresh60:
  br label %__else46

__else46:
  %lhs_or_call380 = load i32* %type_slot95
  %bop381 = icmp eq i32 %lhs_or_call380, 3
  br i1 %bop381, label %__then44, label %__else43

__fresh61:
  br label %__then44

__then44:
  %path382 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call383 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path382
  %bound_ptr385 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call383, i32 0, i32 0
  %bound386 = load i32* %bound_ptr385
  call void @oat_array_bounds_check( i32 %bound386, i32 0 )
  %elt384 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call383, i32 0, i32 1, i32 0
  %lhs_or_call387 = load { i32, [ 0 x i32 ] }** %elt384
  %bound_ptr389 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call387, i32 0, i32 0
  %bound390 = load i32* %bound_ptr389
  call void @oat_array_bounds_check( i32 %bound390, i32 0 )
  %elt388 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call387, i32 0, i32 1, i32 0
  store i32 0, i32* %elt388
  %path391 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call392 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path391
  %bound_ptr394 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call392, i32 0, i32 0
  %bound395 = load i32* %bound_ptr394
  call void @oat_array_bounds_check( i32 %bound395, i32 0 )
  %elt393 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call392, i32 0, i32 1, i32 0
  %lhs_or_call396 = load { i32, [ 0 x i32 ] }** %elt393
  %bound_ptr398 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call396, i32 0, i32 0
  %bound399 = load i32* %bound_ptr398
  call void @oat_array_bounds_check( i32 %bound399, i32 1 )
  %elt397 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call396, i32 0, i32 1, i32 1
  store i32 0, i32* %elt397
  %path400 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call401 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path400
  %bound_ptr403 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call401, i32 0, i32 0
  %bound404 = load i32* %bound_ptr403
  call void @oat_array_bounds_check( i32 %bound404, i32 1 )
  %elt402 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call401, i32 0, i32 1, i32 1
  %lhs_or_call405 = load { i32, [ 0 x i32 ] }** %elt402
  %bound_ptr407 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call405, i32 0, i32 0
  %bound408 = load i32* %bound_ptr407
  call void @oat_array_bounds_check( i32 %bound408, i32 0 )
  %elt406 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call405, i32 0, i32 1, i32 0
  store i32 1, i32* %elt406
  %path409 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call410 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path409
  %bound_ptr412 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call410, i32 0, i32 0
  %bound413 = load i32* %bound_ptr412
  call void @oat_array_bounds_check( i32 %bound413, i32 1 )
  %elt411 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call410, i32 0, i32 1, i32 1
  %lhs_or_call414 = load { i32, [ 0 x i32 ] }** %elt411
  %bound_ptr416 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call414, i32 0, i32 0
  %bound417 = load i32* %bound_ptr416
  call void @oat_array_bounds_check( i32 %bound417, i32 1 )
  %elt415 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call414, i32 0, i32 1, i32 1
  store i32 0, i32* %elt415
  %path418 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call419 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path418
  %bound_ptr421 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call419, i32 0, i32 0
  %bound422 = load i32* %bound_ptr421
  call void @oat_array_bounds_check( i32 %bound422, i32 2 )
  %elt420 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call419, i32 0, i32 1, i32 2
  %lhs_or_call423 = load { i32, [ 0 x i32 ] }** %elt420
  %bound_ptr425 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call423, i32 0, i32 0
  %bound426 = load i32* %bound_ptr425
  call void @oat_array_bounds_check( i32 %bound426, i32 0 )
  %elt424 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call423, i32 0, i32 1, i32 0
  store i32 1, i32* %elt424
  %path427 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call428 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path427
  %bound_ptr430 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call428, i32 0, i32 0
  %bound431 = load i32* %bound_ptr430
  call void @oat_array_bounds_check( i32 %bound431, i32 2 )
  %elt429 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call428, i32 0, i32 1, i32 2
  %lhs_or_call432 = load { i32, [ 0 x i32 ] }** %elt429
  %bound_ptr434 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call432, i32 0, i32 0
  %bound435 = load i32* %bound_ptr434
  call void @oat_array_bounds_check( i32 %bound435, i32 1 )
  %elt433 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call432, i32 0, i32 1, i32 1
  store i32 1, i32* %elt433
  %path436 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call437 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path436
  %bound_ptr439 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call437, i32 0, i32 0
  %bound440 = load i32* %bound_ptr439
  call void @oat_array_bounds_check( i32 %bound440, i32 3 )
  %elt438 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call437, i32 0, i32 1, i32 3
  %lhs_or_call441 = load { i32, [ 0 x i32 ] }** %elt438
  %bound_ptr443 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call441, i32 0, i32 0
  %bound444 = load i32* %bound_ptr443
  call void @oat_array_bounds_check( i32 %bound444, i32 0 )
  %elt442 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call441, i32 0, i32 1, i32 0
  store i32 2, i32* %elt442
  %path445 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call446 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path445
  %bound_ptr448 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call446, i32 0, i32 0
  %bound449 = load i32* %bound_ptr448
  call void @oat_array_bounds_check( i32 %bound449, i32 3 )
  %elt447 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call446, i32 0, i32 1, i32 3
  %lhs_or_call450 = load { i32, [ 0 x i32 ] }** %elt447
  %bound_ptr452 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call450, i32 0, i32 0
  %bound453 = load i32* %bound_ptr452
  call void @oat_array_bounds_check( i32 %bound453, i32 1 )
  %elt451 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call450, i32 0, i32 1, i32 1
  store i32 1, i32* %elt451
  %path454 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call455 = load { i32, [ 0 x i32 ] }** %path454
  %bound_ptr457 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call455, i32 0, i32 0
  %bound458 = load i32* %bound_ptr457
  call void @oat_array_bounds_check( i32 %bound458, i32 0 )
  %elt456 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call455, i32 0, i32 1, i32 0
  store i32 1, i32* %elt456
  %path459 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call460 = load { i32, [ 0 x i32 ] }** %path459
  %bound_ptr462 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call460, i32 0, i32 0
  %bound463 = load i32* %bound_ptr462
  call void @oat_array_bounds_check( i32 %bound463, i32 1 )
  %elt461 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call460, i32 0, i32 1, i32 1
  store i32 1, i32* %elt461
  br label %__merge42

__fresh62:
  br label %__else43

__else43:
  %lhs_or_call464 = load i32* %type_slot95
  %bop465 = icmp eq i32 %lhs_or_call464, 4
  br i1 %bop465, label %__then41, label %__else40

__fresh63:
  br label %__then41

__then41:
  %path466 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call467 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path466
  %bound_ptr469 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call467, i32 0, i32 0
  %bound470 = load i32* %bound_ptr469
  call void @oat_array_bounds_check( i32 %bound470, i32 0 )
  %elt468 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call467, i32 0, i32 1, i32 0
  %lhs_or_call471 = load { i32, [ 0 x i32 ] }** %elt468
  %bound_ptr473 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call471, i32 0, i32 0
  %bound474 = load i32* %bound_ptr473
  call void @oat_array_bounds_check( i32 %bound474, i32 0 )
  %elt472 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call471, i32 0, i32 1, i32 0
  store i32 1, i32* %elt472
  %path475 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call476 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path475
  %bound_ptr478 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call476, i32 0, i32 0
  %bound479 = load i32* %bound_ptr478
  call void @oat_array_bounds_check( i32 %bound479, i32 0 )
  %elt477 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call476, i32 0, i32 1, i32 0
  %lhs_or_call480 = load { i32, [ 0 x i32 ] }** %elt477
  %bound_ptr482 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call480, i32 0, i32 0
  %bound483 = load i32* %bound_ptr482
  call void @oat_array_bounds_check( i32 %bound483, i32 1 )
  %elt481 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call480, i32 0, i32 1, i32 1
  store i32 0, i32* %elt481
  %path484 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call485 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path484
  %bound_ptr487 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call485, i32 0, i32 0
  %bound488 = load i32* %bound_ptr487
  call void @oat_array_bounds_check( i32 %bound488, i32 1 )
  %elt486 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call485, i32 0, i32 1, i32 1
  %lhs_or_call489 = load { i32, [ 0 x i32 ] }** %elt486
  %bound_ptr491 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call489, i32 0, i32 0
  %bound492 = load i32* %bound_ptr491
  call void @oat_array_bounds_check( i32 %bound492, i32 0 )
  %elt490 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call489, i32 0, i32 1, i32 0
  store i32 2, i32* %elt490
  %path493 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call494 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path493
  %bound_ptr496 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call494, i32 0, i32 0
  %bound497 = load i32* %bound_ptr496
  call void @oat_array_bounds_check( i32 %bound497, i32 1 )
  %elt495 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call494, i32 0, i32 1, i32 1
  %lhs_or_call498 = load { i32, [ 0 x i32 ] }** %elt495
  %bound_ptr500 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call498, i32 0, i32 0
  %bound501 = load i32* %bound_ptr500
  call void @oat_array_bounds_check( i32 %bound501, i32 1 )
  %elt499 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call498, i32 0, i32 1, i32 1
  store i32 0, i32* %elt499
  %path502 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call503 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path502
  %bound_ptr505 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call503, i32 0, i32 0
  %bound506 = load i32* %bound_ptr505
  call void @oat_array_bounds_check( i32 %bound506, i32 2 )
  %elt504 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call503, i32 0, i32 1, i32 2
  %lhs_or_call507 = load { i32, [ 0 x i32 ] }** %elt504
  %bound_ptr509 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call507, i32 0, i32 0
  %bound510 = load i32* %bound_ptr509
  call void @oat_array_bounds_check( i32 %bound510, i32 0 )
  %elt508 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call507, i32 0, i32 1, i32 0
  store i32 0, i32* %elt508
  %path511 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call512 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path511
  %bound_ptr514 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call512, i32 0, i32 0
  %bound515 = load i32* %bound_ptr514
  call void @oat_array_bounds_check( i32 %bound515, i32 2 )
  %elt513 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call512, i32 0, i32 1, i32 2
  %lhs_or_call516 = load { i32, [ 0 x i32 ] }** %elt513
  %bound_ptr518 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call516, i32 0, i32 0
  %bound519 = load i32* %bound_ptr518
  call void @oat_array_bounds_check( i32 %bound519, i32 1 )
  %elt517 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call516, i32 0, i32 1, i32 1
  store i32 1, i32* %elt517
  %path520 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call521 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path520
  %bound_ptr523 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call521, i32 0, i32 0
  %bound524 = load i32* %bound_ptr523
  call void @oat_array_bounds_check( i32 %bound524, i32 3 )
  %elt522 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call521, i32 0, i32 1, i32 3
  %lhs_or_call525 = load { i32, [ 0 x i32 ] }** %elt522
  %bound_ptr527 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call525, i32 0, i32 0
  %bound528 = load i32* %bound_ptr527
  call void @oat_array_bounds_check( i32 %bound528, i32 0 )
  %elt526 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call525, i32 0, i32 1, i32 0
  store i32 1, i32* %elt526
  %path529 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call530 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path529
  %bound_ptr532 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call530, i32 0, i32 0
  %bound533 = load i32* %bound_ptr532
  call void @oat_array_bounds_check( i32 %bound533, i32 3 )
  %elt531 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call530, i32 0, i32 1, i32 3
  %lhs_or_call534 = load { i32, [ 0 x i32 ] }** %elt531
  %bound_ptr536 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call534, i32 0, i32 0
  %bound537 = load i32* %bound_ptr536
  call void @oat_array_bounds_check( i32 %bound537, i32 1 )
  %elt535 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call534, i32 0, i32 1, i32 1
  store i32 1, i32* %elt535
  %path538 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call539 = load { i32, [ 0 x i32 ] }** %path538
  %bound_ptr541 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call539, i32 0, i32 0
  %bound542 = load i32* %bound_ptr541
  call void @oat_array_bounds_check( i32 %bound542, i32 0 )
  %elt540 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call539, i32 0, i32 1, i32 0
  store i32 1, i32* %elt540
  %path543 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call544 = load { i32, [ 0 x i32 ] }** %path543
  %bound_ptr546 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call544, i32 0, i32 0
  %bound547 = load i32* %bound_ptr546
  call void @oat_array_bounds_check( i32 %bound547, i32 1 )
  %elt545 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call544, i32 0, i32 1, i32 1
  store i32 1, i32* %elt545
  br label %__merge39

__fresh64:
  br label %__else40

__else40:
  %lhs_or_call548 = load i32* %type_slot95
  %bop549 = icmp eq i32 %lhs_or_call548, 5
  br i1 %bop549, label %__then38, label %__else37

__fresh65:
  br label %__then38

__then38:
  %path550 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call551 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path550
  %bound_ptr553 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call551, i32 0, i32 0
  %bound554 = load i32* %bound_ptr553
  call void @oat_array_bounds_check( i32 %bound554, i32 0 )
  %elt552 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call551, i32 0, i32 1, i32 0
  %lhs_or_call555 = load { i32, [ 0 x i32 ] }** %elt552
  %bound_ptr557 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call555, i32 0, i32 0
  %bound558 = load i32* %bound_ptr557
  call void @oat_array_bounds_check( i32 %bound558, i32 0 )
  %elt556 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call555, i32 0, i32 1, i32 0
  store i32 0, i32* %elt556
  %path559 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call560 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path559
  %bound_ptr562 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call560, i32 0, i32 0
  %bound563 = load i32* %bound_ptr562
  call void @oat_array_bounds_check( i32 %bound563, i32 0 )
  %elt561 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call560, i32 0, i32 1, i32 0
  %lhs_or_call564 = load { i32, [ 0 x i32 ] }** %elt561
  %bound_ptr566 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call564, i32 0, i32 0
  %bound567 = load i32* %bound_ptr566
  call void @oat_array_bounds_check( i32 %bound567, i32 1 )
  %elt565 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call564, i32 0, i32 1, i32 1
  store i32 0, i32* %elt565
  %path568 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call569 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path568
  %bound_ptr571 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call569, i32 0, i32 0
  %bound572 = load i32* %bound_ptr571
  call void @oat_array_bounds_check( i32 %bound572, i32 1 )
  %elt570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call569, i32 0, i32 1, i32 1
  %lhs_or_call573 = load { i32, [ 0 x i32 ] }** %elt570
  %bound_ptr575 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call573, i32 0, i32 0
  %bound576 = load i32* %bound_ptr575
  call void @oat_array_bounds_check( i32 %bound576, i32 0 )
  %elt574 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call573, i32 0, i32 1, i32 0
  store i32 1, i32* %elt574
  %path577 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call578 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path577
  %bound_ptr580 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call578, i32 0, i32 0
  %bound581 = load i32* %bound_ptr580
  call void @oat_array_bounds_check( i32 %bound581, i32 1 )
  %elt579 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call578, i32 0, i32 1, i32 1
  %lhs_or_call582 = load { i32, [ 0 x i32 ] }** %elt579
  %bound_ptr584 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call582, i32 0, i32 0
  %bound585 = load i32* %bound_ptr584
  call void @oat_array_bounds_check( i32 %bound585, i32 1 )
  %elt583 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call582, i32 0, i32 1, i32 1
  store i32 0, i32* %elt583
  %path586 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call587 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path586
  %bound_ptr589 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call587, i32 0, i32 0
  %bound590 = load i32* %bound_ptr589
  call void @oat_array_bounds_check( i32 %bound590, i32 2 )
  %elt588 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call587, i32 0, i32 1, i32 2
  %lhs_or_call591 = load { i32, [ 0 x i32 ] }** %elt588
  %bound_ptr593 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call591, i32 0, i32 0
  %bound594 = load i32* %bound_ptr593
  call void @oat_array_bounds_check( i32 %bound594, i32 0 )
  %elt592 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call591, i32 0, i32 1, i32 0
  store i32 1, i32* %elt592
  %path595 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call596 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path595
  %bound_ptr598 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call596, i32 0, i32 0
  %bound599 = load i32* %bound_ptr598
  call void @oat_array_bounds_check( i32 %bound599, i32 2 )
  %elt597 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call596, i32 0, i32 1, i32 2
  %lhs_or_call600 = load { i32, [ 0 x i32 ] }** %elt597
  %bound_ptr602 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call600, i32 0, i32 0
  %bound603 = load i32* %bound_ptr602
  call void @oat_array_bounds_check( i32 %bound603, i32 1 )
  %elt601 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call600, i32 0, i32 1, i32 1
  store i32 1, i32* %elt601
  %path604 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call605 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path604
  %bound_ptr607 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call605, i32 0, i32 0
  %bound608 = load i32* %bound_ptr607
  call void @oat_array_bounds_check( i32 %bound608, i32 3 )
  %elt606 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call605, i32 0, i32 1, i32 3
  %lhs_or_call609 = load { i32, [ 0 x i32 ] }** %elt606
  %bound_ptr611 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call609, i32 0, i32 0
  %bound612 = load i32* %bound_ptr611
  call void @oat_array_bounds_check( i32 %bound612, i32 0 )
  %elt610 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call609, i32 0, i32 1, i32 0
  store i32 1, i32* %elt610
  %path613 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call614 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path613
  %bound_ptr616 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call614, i32 0, i32 0
  %bound617 = load i32* %bound_ptr616
  call void @oat_array_bounds_check( i32 %bound617, i32 3 )
  %elt615 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call614, i32 0, i32 1, i32 3
  %lhs_or_call618 = load { i32, [ 0 x i32 ] }** %elt615
  %bound_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call618, i32 0, i32 0
  %bound621 = load i32* %bound_ptr620
  call void @oat_array_bounds_check( i32 %bound621, i32 1 )
  %elt619 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call618, i32 0, i32 1, i32 1
  store i32 2, i32* %elt619
  %path622 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call623 = load { i32, [ 0 x i32 ] }** %path622
  %bound_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call623, i32 0, i32 0
  %bound626 = load i32* %bound_ptr625
  call void @oat_array_bounds_check( i32 %bound626, i32 0 )
  %elt624 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call623, i32 0, i32 1, i32 0
  store i32 1, i32* %elt624
  %path627 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call628 = load { i32, [ 0 x i32 ] }** %path627
  %bound_ptr630 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call628, i32 0, i32 0
  %bound631 = load i32* %bound_ptr630
  call void @oat_array_bounds_check( i32 %bound631, i32 1 )
  %elt629 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call628, i32 0, i32 1, i32 1
  store i32 2, i32* %elt629
  br label %__merge36

__fresh66:
  br label %__else37

__else37:
  %lhs_or_call632 = load i32* %type_slot95
  %bop633 = icmp eq i32 %lhs_or_call632, 6
  br i1 %bop633, label %__then35, label %__else34

__fresh67:
  br label %__then35

__then35:
  %path634 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call635 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path634
  %bound_ptr637 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call635, i32 0, i32 0
  %bound638 = load i32* %bound_ptr637
  call void @oat_array_bounds_check( i32 %bound638, i32 0 )
  %elt636 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call635, i32 0, i32 1, i32 0
  %lhs_or_call639 = load { i32, [ 0 x i32 ] }** %elt636
  %bound_ptr641 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call639, i32 0, i32 0
  %bound642 = load i32* %bound_ptr641
  call void @oat_array_bounds_check( i32 %bound642, i32 0 )
  %elt640 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call639, i32 0, i32 1, i32 0
  store i32 0, i32* %elt640
  %path643 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call644 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path643
  %bound_ptr646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call644, i32 0, i32 0
  %bound647 = load i32* %bound_ptr646
  call void @oat_array_bounds_check( i32 %bound647, i32 0 )
  %elt645 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call644, i32 0, i32 1, i32 0
  %lhs_or_call648 = load { i32, [ 0 x i32 ] }** %elt645
  %bound_ptr650 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call648, i32 0, i32 0
  %bound651 = load i32* %bound_ptr650
  call void @oat_array_bounds_check( i32 %bound651, i32 1 )
  %elt649 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call648, i32 0, i32 1, i32 1
  store i32 0, i32* %elt649
  %path652 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call653 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path652
  %bound_ptr655 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call653, i32 0, i32 0
  %bound656 = load i32* %bound_ptr655
  call void @oat_array_bounds_check( i32 %bound656, i32 1 )
  %elt654 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call653, i32 0, i32 1, i32 1
  %lhs_or_call657 = load { i32, [ 0 x i32 ] }** %elt654
  %bound_ptr659 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call657, i32 0, i32 0
  %bound660 = load i32* %bound_ptr659
  call void @oat_array_bounds_check( i32 %bound660, i32 0 )
  %elt658 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call657, i32 0, i32 1, i32 0
  store i32 1, i32* %elt658
  %path661 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call662 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path661
  %bound_ptr664 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call662, i32 0, i32 0
  %bound665 = load i32* %bound_ptr664
  call void @oat_array_bounds_check( i32 %bound665, i32 1 )
  %elt663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call662, i32 0, i32 1, i32 1
  %lhs_or_call666 = load { i32, [ 0 x i32 ] }** %elt663
  %bound_ptr668 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call666, i32 0, i32 0
  %bound669 = load i32* %bound_ptr668
  call void @oat_array_bounds_check( i32 %bound669, i32 1 )
  %elt667 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call666, i32 0, i32 1, i32 1
  store i32 0, i32* %elt667
  %path670 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call671 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path670
  %bound_ptr673 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call671, i32 0, i32 0
  %bound674 = load i32* %bound_ptr673
  call void @oat_array_bounds_check( i32 %bound674, i32 2 )
  %elt672 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call671, i32 0, i32 1, i32 2
  %lhs_or_call675 = load { i32, [ 0 x i32 ] }** %elt672
  %bound_ptr677 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call675, i32 0, i32 0
  %bound678 = load i32* %bound_ptr677
  call void @oat_array_bounds_check( i32 %bound678, i32 0 )
  %elt676 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call675, i32 0, i32 1, i32 0
  store i32 0, i32* %elt676
  %path679 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call680 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path679
  %bound_ptr682 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call680, i32 0, i32 0
  %bound683 = load i32* %bound_ptr682
  call void @oat_array_bounds_check( i32 %bound683, i32 2 )
  %elt681 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call680, i32 0, i32 1, i32 2
  %lhs_or_call684 = load { i32, [ 0 x i32 ] }** %elt681
  %bound_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call684, i32 0, i32 0
  %bound687 = load i32* %bound_ptr686
  call void @oat_array_bounds_check( i32 %bound687, i32 1 )
  %elt685 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call684, i32 0, i32 1, i32 1
  store i32 1, i32* %elt685
  %path688 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call689 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path688
  %bound_ptr691 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call689, i32 0, i32 0
  %bound692 = load i32* %bound_ptr691
  call void @oat_array_bounds_check( i32 %bound692, i32 3 )
  %elt690 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call689, i32 0, i32 1, i32 3
  %lhs_or_call693 = load { i32, [ 0 x i32 ] }** %elt690
  %bound_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call693, i32 0, i32 0
  %bound696 = load i32* %bound_ptr695
  call void @oat_array_bounds_check( i32 %bound696, i32 0 )
  %elt694 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call693, i32 0, i32 1, i32 0
  store i32 0, i32* %elt694
  %path697 = getelementptr %Shape* %_this1, i32 0, i32 2
  %lhs_or_call698 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %path697
  %bound_ptr700 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call698, i32 0, i32 0
  %bound701 = load i32* %bound_ptr700
  call void @oat_array_bounds_check( i32 %bound701, i32 3 )
  %elt699 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %lhs_or_call698, i32 0, i32 1, i32 3
  %lhs_or_call702 = load { i32, [ 0 x i32 ] }** %elt699
  %bound_ptr704 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call702, i32 0, i32 0
  %bound705 = load i32* %bound_ptr704
  call void @oat_array_bounds_check( i32 %bound705, i32 1 )
  %elt703 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call702, i32 0, i32 1, i32 1
  store i32 2, i32* %elt703
  %path706 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call707 = load { i32, [ 0 x i32 ] }** %path706
  %bound_ptr709 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call707, i32 0, i32 0
  %bound710 = load i32* %bound_ptr709
  call void @oat_array_bounds_check( i32 %bound710, i32 0 )
  %elt708 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call707, i32 0, i32 1, i32 0
  store i32 0, i32* %elt708
  %path711 = getelementptr %Shape* %_this1, i32 0, i32 3
  %lhs_or_call712 = load { i32, [ 0 x i32 ] }** %path711
  %bound_ptr714 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call712, i32 0, i32 0
  %bound715 = load i32* %bound_ptr714
  call void @oat_array_bounds_check( i32 %bound715, i32 1 )
  %elt713 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call712, i32 0, i32 1, i32 1
  store i32 2, i32* %elt713
  br label %__merge33

__fresh68:
  br label %__else34

__else34:
  br label %__merge33

__merge33:
  br label %__merge36

__merge36:
  br label %__merge39

__merge39:
  br label %__merge42

__merge42:
  br label %__merge45

__merge45:
  br label %__merge48

__merge48:
  br label %__merge51

__merge51:
  ret %Shape* %_this1
}


define void @_List_remove (%List* %_this1, %ListItem* %item56){
__fresh24:
  %item_slot57 = alloca %ListItem*
  store %ListItem* %item56, %ListItem** %item_slot57
  %path58 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call59 = load %ListItem** %path58
  %lhs_or_call60 = load %ListItem** %item_slot57
  %cast_op61 = bitcast %ListItem* %lhs_or_call59 to %Object* 
  %cast_op62 = bitcast %ListItem* %lhs_or_call60 to %Object* 
  %ret63 = call i1 @equals ( %Object* %cast_op62, %Object* %cast_op61 )
  br i1 %ret63, label %__then23, label %__else22

__fresh25:
  br label %__then23

__then23:
  %path64 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call65 = load %ListItem** %item_slot57
  %path66 = getelementptr %ListItem* %lhs_or_call65, i32 0, i32 4
  %lhs_or_call67 = load %ListItem** %path66
  store %ListItem* %lhs_or_call67, %ListItem** %path64
  %lhs_or_call68 = load %ListItem** %item_slot57
  %path69 = getelementptr %ListItem* %lhs_or_call68, i32 0, i32 4
  %lhs_or_call70 = load %ListItem** %path69
  %ifnull_slot71 = alloca %ListItem*
  store %ListItem* %lhs_or_call70, %ListItem** %ifnull_slot71
  %ifnull_guard72 = icmp ne %ListItem* %lhs_or_call70, null
  br i1 %ifnull_guard72, label %__then14, label %__else13

__fresh26:
  br label %__then14

__then14:
  %lhs_or_call73 = load %ListItem** %ifnull_slot71
  %path74 = getelementptr %ListItem* %lhs_or_call73, i32 0, i32 3
  %cast_op75 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op75, %ListItem** %path74
  br label %__merge12

__fresh27:
  br label %__else13

__else13:
  br label %__merge12

__merge12:
  br label %__merge21

__fresh28:
  br label %__else22

__else22:
  %lhs_or_call76 = load %ListItem** %item_slot57
  %path77 = getelementptr %ListItem* %lhs_or_call76, i32 0, i32 3
  %lhs_or_call78 = load %ListItem** %path77
  %ifnull_slot79 = alloca %ListItem*
  store %ListItem* %lhs_or_call78, %ListItem** %ifnull_slot79
  %ifnull_guard80 = icmp ne %ListItem* %lhs_or_call78, null
  br i1 %ifnull_guard80, label %__then20, label %__else19

__fresh29:
  br label %__then20

__then20:
  %lhs_or_call81 = load %ListItem** %ifnull_slot79
  %path82 = getelementptr %ListItem* %lhs_or_call81, i32 0, i32 4
  %lhs_or_call83 = load %ListItem** %item_slot57
  %path84 = getelementptr %ListItem* %lhs_or_call83, i32 0, i32 4
  %lhs_or_call85 = load %ListItem** %path84
  store %ListItem* %lhs_or_call85, %ListItem** %path82
  %lhs_or_call86 = load %ListItem** %item_slot57
  %path87 = getelementptr %ListItem* %lhs_or_call86, i32 0, i32 4
  %lhs_or_call88 = load %ListItem** %path87
  %ifnull_slot89 = alloca %ListItem*
  store %ListItem* %lhs_or_call88, %ListItem** %ifnull_slot89
  %ifnull_guard90 = icmp ne %ListItem* %lhs_or_call88, null
  br i1 %ifnull_guard90, label %__then17, label %__else16

__fresh30:
  br label %__then17

__then17:
  %lhs_or_call91 = load %ListItem** %ifnull_slot89
  %path92 = getelementptr %ListItem* %lhs_or_call91, i32 0, i32 3
  %lhs_or_call93 = load %ListItem** %ifnull_slot79
  store %ListItem* %lhs_or_call93, %ListItem** %path92
  br label %__merge15

__fresh31:
  br label %__else16

__else16:
  br label %__merge15

__merge15:
  br label %__merge18

__fresh32:
  br label %__else19

__else19:
  call void @print_string( i8* @_const_str9 )
  call void @oat_abort( i32 -1 )
  br label %__merge18

__merge18:
  br label %__merge21

__merge21:
  ret void
}


define void @_List_insert (%List* %_this1, %Object* %o36){
__fresh9:
  %o_slot37 = alloca %Object*
  store %Object* %o36, %Object** %o_slot37
  %lhs_or_call38 = load %Object** %o_slot37
  %mem_ptr39 = call i32* @oat_malloc ( i32 20 )
  %obj40 = bitcast i32* %mem_ptr39 to %ListItem* 
  %new_obj41 = call %ListItem* @_ListItem_ctor ( %ListItem* %obj40, %Object* %lhs_or_call38 )
  %vdecl_slot42 = alloca %ListItem*
  store %ListItem* %new_obj41, %ListItem** %vdecl_slot42
  %lhs_or_call43 = load %ListItem** %vdecl_slot42
  %path44 = getelementptr %ListItem* %lhs_or_call43, i32 0, i32 4
  %path45 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call46 = load %ListItem** %path45
  store %ListItem* %lhs_or_call46, %ListItem** %path44
  %path47 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call48 = load %ListItem** %path47
  %ifnull_slot49 = alloca %ListItem*
  store %ListItem* %lhs_or_call48, %ListItem** %ifnull_slot49
  %ifnull_guard50 = icmp ne %ListItem* %lhs_or_call48, null
  br i1 %ifnull_guard50, label %__then8, label %__else7

__fresh10:
  br label %__then8

__then8:
  %lhs_or_call51 = load %ListItem** %ifnull_slot49
  %path52 = getelementptr %ListItem* %lhs_or_call51, i32 0, i32 3
  %lhs_or_call53 = load %ListItem** %vdecl_slot42
  store %ListItem* %lhs_or_call53, %ListItem** %path52
  br label %__merge6

__fresh11:
  br label %__else7

__else7:
  br label %__merge6

__merge6:
  %path54 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call55 = load %ListItem** %vdecl_slot42
  store %ListItem* %lhs_or_call55, %ListItem** %path54
  ret void
}


define i1 @_List_is_empty (%List* %_this1){
__fresh5:
  %path31 = getelementptr %List* %_this1, i32 0, i32 2
  %lhs_or_call32 = load %ListItem** %path31
  %cast_op33 = bitcast i8* null to %Object* 
  %cast_op34 = bitcast %ListItem* %lhs_or_call32 to %Object* 
  %ret35 = call i1 @equals ( %Object* %cast_op34, %Object* %cast_op33 )
  ret i1 %ret35
}


define %List* @_List_ctor (%List* %_this1){
__fresh4:
  %cast_op25 = bitcast %List* %_this1 to %Object* 
  %dummy26 = call %Object* @_Object_ctor ( %Object* %cast_op25 )
  %path27 = getelementptr %List* %_this1, i32 0, i32 1
  store i8* @_const_str8, i8** %path27
  %vt_slot28 = getelementptr %List* %_this1, i32 0, i32 0
  store %_List_vtable* @_List_vtable3, %_List_vtable** %vt_slot28
  %path29 = getelementptr %List* %_this1, i32 0, i32 2
  %cast_op30 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op30, %ListItem** %path29
  ret %List* %_this1
}


define %ListItem* @_ListItem_ctor (%ListItem* %_this1, %Object* %o13){
__fresh3:
  %o_slot14 = alloca %Object*
  store %Object* %o13, %Object** %o_slot14
  %cast_op15 = bitcast %ListItem* %_this1 to %Object* 
  %dummy16 = call %Object* @_Object_ctor ( %Object* %cast_op15 )
  %path17 = getelementptr %ListItem* %_this1, i32 0, i32 1
  store i8* @_const_str7, i8** %path17
  %vt_slot18 = getelementptr %ListItem* %_this1, i32 0, i32 0
  store %_ListItem_vtable* @_ListItem_vtable2, %_ListItem_vtable** %vt_slot18
  %path19 = getelementptr %ListItem* %_this1, i32 0, i32 2
  %lhs_or_call20 = load %Object** %o_slot14
  store %Object* %lhs_or_call20, %Object** %path19
  %path21 = getelementptr %ListItem* %_this1, i32 0, i32 3
  %cast_op22 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op22, %ListItem** %path21
  %path23 = getelementptr %ListItem* %_this1, i32 0, i32 4
  %cast_op24 = bitcast i8* null to %ListItem* 
  store %ListItem* %cast_op24, %ListItem** %path23
  ret %ListItem* %_this1
}


define i1 @equals (%Object* %o18, %Object* %o26){
__fresh2:
  %o1_slot9 = alloca %Object*
  store %Object* %o18, %Object** %o1_slot9
  %o2_slot7 = alloca %Object*
  store %Object* %o26, %Object** %o2_slot7
  %lhs_or_call10 = load %Object** %o1_slot9
  %lhs_or_call11 = load %Object** %o2_slot7
  %bop12 = icmp eq %Object* %lhs_or_call10, %lhs_or_call11
  ret i1 %bop12
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
  store i8* @_const_str6, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}


