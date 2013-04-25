%State = type { %_State_vtable*, i8*, i32, %Guy*, %List*, %List* }
%_State_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%State*)*, void (%State*)*, void (%State*)*, void (%State*, i32)*, void (%State*)* }
%Guy = type { %_Guy_vtable*, i8*, i32, i32, i32, i8* }
%_Guy_vtable = type { %_GameObject_vtable*, i8* (%Object*)*, void (%GameObject*)*, void (%Guy*)*, void (%Guy*)*, void (%Guy*)*, %Missile* (%Guy*, %List*)* }
%Missile = type { %_Missile_vtable*, i8*, i32, i32, i32, i32, i32, i8*, %List* }
%_Missile_vtable = type { %_DelayedObject_vtable*, i8* (%Object*)*, void (%GameObject*)*, void (%Missile*)*, i32 (%Missile*)*, i32 (%DelayedObject*)*, i32 (%Missile*)* }
%Alien = type { %_Alien_vtable*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* }
%_Alien_vtable = type { %_DelayedObject_vtable*, i8* (%Object*)*, void (%Alien*)*, void (%Alien*)*, i32 (%Alien*)*, i32 (%DelayedObject*)*, void (%Alien*)*, void (%Alien*)*, void (%Alien*)* }
%DelayedObject = type { %_DelayedObject_vtable*, i8*, i32, i32, i32, i32 }
%_DelayedObject_vtable = type { %_GameObject_vtable*, i8* (%Object*)*, void (%GameObject*)*, void (%GameObject*)*, i32 (%DelayedObject*)*, i32 (%DelayedObject*)* }
%GameObject = type { %_GameObject_vtable*, i8*, i32, i32 }
%_GameObject_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%GameObject*)*, void (%GameObject*)* }
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
@_const_str30.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str30 = alias bitcast([ 6 x i8 ]* @_const_str30.str. to i8*)@_const_str29.str. = private unnamed_addr constant [ 39 x i8 ] c "Minimum size of the console is 80x25!
\00", align 4
@_const_str29 = alias bitcast([ 39 x i8 ]* @_const_str29.str. to i8*)@_const_str28.str. = private unnamed_addr constant [ 6 x i8 ] c "HERE
\00", align 4
@_const_str28 = alias bitcast([ 6 x i8 ]* @_const_str28.str. to i8*)@_const_str27.str. = private unnamed_addr constant [ 151 x i8 ] c "
    Extraterrestrial Encroachers. 

      j - Move left 

      l - Move right 

      f - Fire 

      Esc - quit 


      [Press any key to begin]
\00", align 4
@_const_str27 = alias bitcast([ 151 x i8 ]* @_const_str27.str. to i8*)@_const_str26.str. = private unnamed_addr constant [ 6 x i8 ] c "State\00", align 4
@_const_str26 = alias bitcast([ 6 x i8 ]* @_const_str26.str. to i8*)@_const_str25.str. = private unnamed_addr constant [ 4 x i8 ] c "_^_\00", align 4
@_const_str25 = alias bitcast([ 4 x i8 ]* @_const_str25.str. to i8*)@_const_str24.str. = private unnamed_addr constant [ 4 x i8 ] c "Guy\00", align 4
@_const_str24 = alias bitcast([ 4 x i8 ]* @_const_str24.str. to i8*)@_const_str23.str. = private unnamed_addr constant [ 2 x i8 ] c "!\00", align 4
@_const_str23 = alias bitcast([ 2 x i8 ]* @_const_str23.str. to i8*)@_const_str22.str. = private unnamed_addr constant [ 8 x i8 ] c "Missile\00", align 4
@_const_str22 = alias bitcast([ 8 x i8 ]* @_const_str22.str. to i8*)@_const_str21.str. = private unnamed_addr constant [ 4 x i8 ] c " V \00", align 4
@_const_str21 = alias bitcast([ 4 x i8 ]* @_const_str21.str. to i8*)@_const_str20.str. = private unnamed_addr constant [ 4 x i8 ] c ">=<\00", align 4
@_const_str20 = alias bitcast([ 4 x i8 ]* @_const_str20.str. to i8*)@_const_str19.str. = private unnamed_addr constant [ 4 x i8 ] c " V \00", align 4
@_const_str19 = alias bitcast([ 4 x i8 ]* @_const_str19.str. to i8*)@_const_str18.str. = private unnamed_addr constant [ 4 x i8 ] c "<=>\00", align 4
@_const_str18 = alias bitcast([ 4 x i8 ]* @_const_str18.str. to i8*)@_const_str17.str. = private unnamed_addr constant [ 1 x i8 ] c "\00", align 4
@_const_str17 = alias bitcast([ 1 x i8 ]* @_const_str17.str. to i8*)@_const_str16.str. = private unnamed_addr constant [ 6 x i8 ] c "Alien\00", align 4
@_const_str16 = alias bitcast([ 6 x i8 ]* @_const_str16.str. to i8*)@_const_str15.str. = private unnamed_addr constant [ 14 x i8 ] c "DelayedObject\00", align 4
@_const_str15 = alias bitcast([ 14 x i8 ]* @_const_str15.str. to i8*)@_const_str14.str. = private unnamed_addr constant [ 11 x i8 ] c "GameObject\00", align 4
@_const_str14 = alias bitcast([ 11 x i8 ]* @_const_str14.str. to i8*)@_const_str13.str. = private unnamed_addr constant [ 13 x i8 ] c "invalid list\00", align 4
@_const_str13 = alias bitcast([ 13 x i8 ]* @_const_str13.str. to i8*)@_const_str12.str. = private unnamed_addr constant [ 5 x i8 ] c "List\00", align 4
@_const_str12 = alias bitcast([ 5 x i8 ]* @_const_str12.str. to i8*)@_const_str11.str. = private unnamed_addr constant [ 9 x i8 ] c "ListItem\00", align 4
@_const_str11 = alias bitcast([ 9 x i8 ]* @_const_str11.str. to i8*)@_const_str10.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str10 = alias bitcast([ 7 x i8 ]* @_const_str10.str. to i8*)@_State_vtable9 = private constant %_State_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%State*)* @_State_create_aliens, void (%State*)* @_State_init, void (%State*)* @_State_fire_missile, void (%State*, i32)* @_State_update, void (%State*)* @_State_display}, align 4
@_Guy_vtable8 = private constant %_Guy_vtable {%_GameObject_vtable* @_GameObject_vtable4, i8* (%Object*)* @_Object_get_name, void (%GameObject*)* @_GameObject_init, void (%Guy*)* @_Guy_draw, void (%Guy*)* @_Guy_move_left, void (%Guy*)* @_Guy_move_right, %Missile* (%Guy*, %List*)* @_Guy_fire_missile}, align 4
@_Missile_vtable7 = private constant %_Missile_vtable {%_DelayedObject_vtable* @_DelayedObject_vtable5, i8* (%Object*)* @_Object_get_name, void (%GameObject*)* @_GameObject_init, void (%Missile*)* @_Missile_draw, i32 (%Missile*)* @_Missile_move, i32 (%DelayedObject*)* @_DelayedObject_update, i32 (%Missile*)* @_Missile_collision}, align 4
@_Alien_vtable6 = private constant %_Alien_vtable {%_DelayedObject_vtable* @_DelayedObject_vtable5, i8* (%Object*)* @_Object_get_name, void (%Alien*)* @_Alien_init, void (%Alien*)* @_Alien_draw, i32 (%Alien*)* @_Alien_move, i32 (%DelayedObject*)* @_DelayedObject_update, void (%Alien*)* @_Alien_change_directions, void (%Alien*)* @_Alien_blowup, void (%Alien*)* @_Alien_hit_edge}, align 4
@_DelayedObject_vtable5 = private constant %_DelayedObject_vtable {%_GameObject_vtable* @_GameObject_vtable4, i8* (%Object*)* @_Object_get_name, void (%GameObject*)* @_GameObject_init, void (%GameObject*)* @_GameObject_draw, i32 (%DelayedObject*)* @_DelayedObject_move, i32 (%DelayedObject*)* @_DelayedObject_update}, align 4
@_GameObject_vtable4 = private constant %_GameObject_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, void (%GameObject*)* @_GameObject_init, void (%GameObject*)* @_GameObject_draw}, align 4
@_List_vtable3 = private constant %_List_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name, i1 (%List*)* @_List_is_empty, void (%List*, %Object*)* @_List_insert, void (%List*, %ListItem*)* @_List_remove}, align 4
@_ListItem_vtable2 = private constant %_ListItem_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh267:
  ret void
}


define i32 @program (i32 %argc737, { i32, [ 0 x i8* ] }* %argv735){
__fresh262:
  %argc_slot738 = alloca i32
  store i32 %argc737, i32* %argc_slot738
  %argv_slot736 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv735, { i32, [ 0 x i8* ] }** %argv_slot736
  %vdecl_slot739 = alloca i32
  store i32 80, i32* %vdecl_slot739
  %vdecl_slot740 = alloca i32
  store i32 25, i32* %vdecl_slot740
  call void @print_string( i8* @_const_str28 )
  call void @con_init(  )
  call void @instructions(  )
  %ret741 = call i32 @con_width (  )
  %lhs_or_call742 = load i32* %vdecl_slot739
  %bop743 = icmp sge i32 %ret741, %lhs_or_call742
  %ret744 = call i32 @con_height (  )
  %lhs_or_call745 = load i32* %vdecl_slot740
  %bop746 = icmp sge i32 %ret744, %lhs_or_call745
  %bop747 = and i1 %bop743, %bop746
  br i1 %bop747, label %__then261, label %__else260

__fresh263:
  br label %__then261

__then261:
  %mem_ptr748 = call i32* @oat_malloc ( i32 24 )
  %obj749 = bitcast i32* %mem_ptr748 to %State* 
  %new_obj750 = call %State* @_State_ctor ( %State* %obj749 )
  %vdecl_slot751 = alloca %State*
  store %State* %new_obj750, %State** %vdecl_slot751
  %vdecl_slot752 = alloca i1
  store i1 0, i1* %vdecl_slot752
  %vdecl_slot753 = alloca i32
  store i32 0, i32* %vdecl_slot753
  %vdecl_slot754 = alloca i32
  store i32 0, i32* %vdecl_slot754
  %lhs_or_call755 = load %State** %vdecl_slot751
  %vtmp757 = getelementptr %State* %lhs_or_call755, i32 0, i32 0
  %vtable756 = load %_State_vtable** %vtmp757
  %fptmp758 = getelementptr %_State_vtable* %vtable756, i32 0, i32 3
  %method759 = load void (%State*)** %fptmp758
  call void %method759( %State* %lhs_or_call755 )
  %ret760 = call i32 @con_halfdelay ( i32 1 )
  store i32 %ret760, i32* %vdecl_slot754
  br label %__cond258

__cond258:
  %lhs_or_call761 = load i32* %vdecl_slot753
  %bop762 = icmp ne i32 %lhs_or_call761, 27
  %lhs_or_call763 = load i1* %vdecl_slot752
  %unop764 = icmp eq i1 %lhs_or_call763, 0
  %bop765 = and i1 %bop762, %unop764
  br i1 %bop765, label %__body257, label %__post256

__fresh264:
  br label %__body257

__body257:
  %lhs_or_call766 = load %State** %vdecl_slot751
  %vtmp768 = getelementptr %State* %lhs_or_call766, i32 0, i32 0
  %vtable767 = load %_State_vtable** %vtmp768
  %fptmp769 = getelementptr %_State_vtable* %vtable767, i32 0, i32 6
  %method770 = load void (%State*)** %fptmp769
  call void %method770( %State* %lhs_or_call766 )
  %ret771 = call i32 @con_getch (  )
  store i32 %ret771, i32* %vdecl_slot753
  %lhs_or_call773 = load %State** %vdecl_slot751
  %vtmp775 = getelementptr %State* %lhs_or_call773, i32 0, i32 0
  %vtable774 = load %_State_vtable** %vtmp775
  %fptmp776 = getelementptr %_State_vtable* %vtable774, i32 0, i32 5
  %method777 = load void (%State*, i32)** %fptmp776
  %lhs_or_call772 = load i32* %vdecl_slot753
  call void %method777( %State* %lhs_or_call773, i32 %lhs_or_call772 )
  br label %__cond258

__fresh265:
  br label %__post256

__post256:
  call void @lose(  )
  call void @con_cleanup(  )
  br label %__merge259

__fresh266:
  br label %__else260

__else260:
  call void @con_cleanup(  )
  call void @print_string( i8* @_const_str29 )
  br label %__merge259

__merge259:
  call void @print_string( i8* @_const_str30 )
  ret i32 0
}


define void @lose (){
__fresh255:
  ret void
}


define void @instructions (){
__fresh254:
  %vdecl_slot733 = alloca i32
  store i32 0, i32* %vdecl_slot733
  call void @con_move( i32 0, i32 0 )
  call void @con_print( i8* @_const_str27 )
  %ret734 = call i32 @con_getch (  )
  store i32 %ret734, i32* %vdecl_slot733
  ret void
}


define void @_State_display (%State* %_this1){
__fresh253:
  call void @con_clear(  )
  %path723 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call724 = load %Guy** %path723
  %vtmp726 = getelementptr %Guy* %lhs_or_call724, i32 0, i32 0
  %vtable725 = load %_Guy_vtable** %vtmp726
  %fptmp727 = getelementptr %_Guy_vtable* %vtable725, i32 0, i32 3
  %method728 = load void (%Guy*)** %fptmp727
  call void %method728( %Guy* %lhs_or_call724 )
  %path729 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call730 = load %List** %path729
  call void @draw_list( %List* %lhs_or_call730 )
  %path731 = getelementptr %State* %_this1, i32 0, i32 5
  %lhs_or_call732 = load %List** %path731
  call void @draw_list( %List* %lhs_or_call732 )
  call void @con_refresh(  )
  ret void
}


define void @_State_update (%State* %_this1, i32 %k678){
__fresh244:
  %k_slot679 = alloca i32
  store i32 %k678, i32* %k_slot679
  %lhs_or_call680 = load i32* %k_slot679
  %bop681 = icmp eq i32 %lhs_or_call680, 106
  br i1 %bop681, label %__then234, label %__else233

__fresh245:
  br label %__then234

__then234:
  %path682 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call683 = load %Guy** %path682
  %vtmp685 = getelementptr %Guy* %lhs_or_call683, i32 0, i32 0
  %vtable684 = load %_Guy_vtable** %vtmp685
  %fptmp686 = getelementptr %_Guy_vtable* %vtable684, i32 0, i32 4
  %method687 = load void (%Guy*)** %fptmp686
  call void %method687( %Guy* %lhs_or_call683 )
  br label %__merge232

__fresh246:
  br label %__else233

__else233:
  br label %__merge232

__merge232:
  %lhs_or_call688 = load i32* %k_slot679
  %bop689 = icmp eq i32 %lhs_or_call688, 108
  br i1 %bop689, label %__then237, label %__else236

__fresh247:
  br label %__then237

__then237:
  %path690 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call691 = load %Guy** %path690
  %vtmp693 = getelementptr %Guy* %lhs_or_call691, i32 0, i32 0
  %vtable692 = load %_Guy_vtable** %vtmp693
  %fptmp694 = getelementptr %_Guy_vtable* %vtable692, i32 0, i32 5
  %method695 = load void (%Guy*)** %fptmp694
  call void %method695( %Guy* %lhs_or_call691 )
  br label %__merge235

__fresh248:
  br label %__else236

__else236:
  br label %__merge235

__merge235:
  %lhs_or_call696 = load i32* %k_slot679
  %bop697 = icmp eq i32 %lhs_or_call696, 102
  br i1 %bop697, label %__then240, label %__else239

__fresh249:
  br label %__then240

__then240:
  %vtmp699 = getelementptr %State* %_this1, i32 0, i32 0
  %vtable698 = load %_State_vtable** %vtmp699
  %fptmp700 = getelementptr %_State_vtable* %vtable698, i32 0, i32 4
  %method701 = load void (%State*)** %fptmp700
  call void %method701( %State* %_this1 )
  br label %__merge238

__fresh250:
  br label %__else239

__else239:
  br label %__merge238

__merge238:
  %path702 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call703 = load %List** %path702
  %vtmp705 = getelementptr %List* %lhs_or_call703, i32 0, i32 0
  %vtable704 = load %_List_vtable** %vtmp705
  %fptmp706 = getelementptr %_List_vtable* %vtable704, i32 0, i32 2
  %method707 = load i1 (%List*)** %fptmp706
  %ret708 = call i1 %method707 ( %List* %lhs_or_call703 )
  br i1 %ret708, label %__then243, label %__else242

__fresh251:
  br label %__then243

__then243:
  %path709 = getelementptr %State* %_this1, i32 0, i32 2
  %path710 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call711 = load i32* %path710
  %ret712 = call i32 @con_width (  )
  %ret713 = call i32 @oat_div ( i32 %ret712, i32 10 )
  %bop714 = add i32 %lhs_or_call711, %ret713
  store i32 %bop714, i32* %path709
  %vtmp716 = getelementptr %State* %_this1, i32 0, i32 0
  %vtable715 = load %_State_vtable** %vtmp716
  %fptmp717 = getelementptr %_State_vtable* %vtable715, i32 0, i32 2
  %method718 = load void (%State*)** %fptmp717
  call void %method718( %State* %_this1 )
  br label %__merge241

__fresh252:
  br label %__else242

__else242:
  br label %__merge241

__merge241:
  %path719 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call720 = load %List** %path719
  call void @update_list( %List* %lhs_or_call720 )
  %path721 = getelementptr %State* %_this1, i32 0, i32 5
  %lhs_or_call722 = load %List** %path721
  call void @update_list( %List* %lhs_or_call722 )
  ret void
}


define void @_State_fire_missile (%State* %_this1){
__fresh231:
  %path662 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call663 = load %Guy** %path662
  %vtmp665 = getelementptr %Guy* %lhs_or_call663, i32 0, i32 0
  %vtable664 = load %_Guy_vtable** %vtmp665
  %fptmp666 = getelementptr %_Guy_vtable* %vtable664, i32 0, i32 6
  %method667 = load %Missile* (%Guy*, %List*)** %fptmp666
  %path660 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call661 = load %List** %path660
  %ret668 = call %Missile* %method667 ( %Guy* %lhs_or_call663, %List* %lhs_or_call661 )
  %vdecl_slot669 = alloca %Missile*
  store %Missile* %ret668, %Missile** %vdecl_slot669
  %path671 = getelementptr %State* %_this1, i32 0, i32 5
  %lhs_or_call672 = load %List** %path671
  %vtmp674 = getelementptr %List* %lhs_or_call672, i32 0, i32 0
  %vtable673 = load %_List_vtable** %vtmp674
  %fptmp675 = getelementptr %_List_vtable* %vtable673, i32 0, i32 3
  %method676 = load void (%List*, %Object*)** %fptmp675
  %lhs_or_call670 = load %Missile** %vdecl_slot669
  %cast_op677 = bitcast %Missile* %lhs_or_call670 to %Object* 
  call void %method676( %List* %lhs_or_call672, %Object* %cast_op677 )
  ret void
}


define void @_State_init (%State* %_this1){
__fresh230:
  %path649 = getelementptr %State* %_this1, i32 0, i32 3
  %lhs_or_call650 = load %Guy** %path649
  %vtmp652 = getelementptr %Guy* %lhs_or_call650, i32 0, i32 0
  %vtable651 = load %_Guy_vtable** %vtmp652
  %fptmp653 = getelementptr %_Guy_vtable* %vtable651, i32 0, i32 2
  %method654 = load void (%GameObject*)** %fptmp653
  %cast_op655 = bitcast %Guy* %lhs_or_call650 to %GameObject* 
  call void %method654( %GameObject* %cast_op655 )
  %vtmp657 = getelementptr %State* %_this1, i32 0, i32 0
  %vtable656 = load %_State_vtable** %vtmp657
  %fptmp658 = getelementptr %_State_vtable* %vtable656, i32 0, i32 2
  %method659 = load void (%State*)** %fptmp658
  call void %method659( %State* %_this1 )
  ret void
}


define void @_State_create_aliens (%State* %_this1){
__fresh225:
  %ret608 = call i32 @con_width (  )
  %ret609 = call i32 @oat_div ( i32 %ret608, i32 10 )
  %vdecl_slot610 = alloca i32
  store i32 %ret609, i32* %vdecl_slot610
  %vdecl_slot611 = alloca i32
  store i32 0, i32* %vdecl_slot611
  %vdecl_slot612 = alloca i32
  store i32 0, i32* %vdecl_slot612
  br label %__cond221

__cond221:
  %lhs_or_call613 = load i32* %vdecl_slot612
  %path614 = getelementptr %State* %_this1, i32 0, i32 2
  %lhs_or_call615 = load i32* %path614
  %bop616 = icmp slt i32 %lhs_or_call613, %lhs_or_call615
  br i1 %bop616, label %__body220, label %__post219

__fresh226:
  br label %__body220

__body220:
  %lhs_or_call617 = load i32* %vdecl_slot610
  %lhs_or_call618 = load i32* %vdecl_slot612
  %ret619 = call i32 @oat_mod ( i32 %lhs_or_call618, i32 %lhs_or_call617 )
  %bop620 = icmp eq i32 %ret619, 0
  br i1 %bop620, label %__then224, label %__else223

__fresh227:
  br label %__then224

__then224:
  %lhs_or_call621 = load i32* %vdecl_slot611
  %bop622 = add i32 %lhs_or_call621, 5
  store i32 %bop622, i32* %vdecl_slot611
  br label %__merge222

__fresh228:
  br label %__else223

__else223:
  br label %__merge222

__merge222:
  %lhs_or_call623 = load i32* %vdecl_slot611
  %lhs_or_call624 = load i32* %vdecl_slot610
  %lhs_or_call625 = load i32* %vdecl_slot612
  %ret626 = call i32 @oat_mod ( i32 %lhs_or_call625, i32 %lhs_or_call624 )
  %bop627 = mul i32 %ret626, 10
  %mem_ptr628 = call i32* @oat_malloc ( i32 48 )
  %obj629 = bitcast i32* %mem_ptr628 to %Alien* 
  %new_obj630 = call %Alien* @_Alien_ctor ( %Alien* %obj629, i32 %bop627, i32 %lhs_or_call623, i32 5 )
  %vdecl_slot631 = alloca %Alien*
  store %Alien* %new_obj630, %Alien** %vdecl_slot631
  %lhs_or_call632 = load %Alien** %vdecl_slot631
  %vtmp634 = getelementptr %Alien* %lhs_or_call632, i32 0, i32 0
  %vtable633 = load %_Alien_vtable** %vtmp634
  %fptmp635 = getelementptr %_Alien_vtable* %vtable633, i32 0, i32 2
  %method636 = load void (%Alien*)** %fptmp635
  call void %method636( %Alien* %lhs_or_call632 )
  %path638 = getelementptr %State* %_this1, i32 0, i32 4
  %lhs_or_call639 = load %List** %path638
  %vtmp641 = getelementptr %List* %lhs_or_call639, i32 0, i32 0
  %vtable640 = load %_List_vtable** %vtmp641
  %fptmp642 = getelementptr %_List_vtable* %vtable640, i32 0, i32 3
  %method643 = load void (%List*, %Object*)** %fptmp642
  %lhs_or_call637 = load %Alien** %vdecl_slot631
  %cast_op644 = bitcast %Alien* %lhs_or_call637 to %Object* 
  call void %method643( %List* %lhs_or_call639, %Object* %cast_op644 )
  %lhs_or_call645 = load i32* %vdecl_slot612
  %bop646 = add i32 %lhs_or_call645, 1
  store i32 %bop646, i32* %vdecl_slot612
  %lhs_or_call647 = load i32* %vdecl_slot612
  %bop648 = add i32 %lhs_or_call647, 1
  store i32 %bop648, i32* %vdecl_slot612
  br label %__cond221

__fresh229:
  br label %__post219

__post219:
  ret void
}


define %State* @_State_ctor (%State* %_this1){
__fresh218:
  %cast_op589 = bitcast %State* %_this1 to %Object* 
  %dummy590 = call %Object* @_Object_ctor ( %Object* %cast_op589 )
  %path591 = getelementptr %State* %_this1, i32 0, i32 1
  store i8* @_const_str26, i8** %path591
  %path592 = getelementptr %State* %_this1, i32 0, i32 4
  %mem_ptr593 = call i32* @oat_malloc ( i32 12 )
  %obj594 = bitcast i32* %mem_ptr593 to %List* 
  %new_obj595 = call %List* @_List_ctor ( %List* %obj594 )
  store %List* %new_obj595, %List** %path592
  %path596 = getelementptr %State* %_this1, i32 0, i32 5
  %mem_ptr597 = call i32* @oat_malloc ( i32 12 )
  %obj598 = bitcast i32* %mem_ptr597 to %List* 
  %new_obj599 = call %List* @_List_ctor ( %List* %obj598 )
  store %List* %new_obj599, %List** %path596
  %path600 = getelementptr %State* %_this1, i32 0, i32 3
  %mem_ptr601 = call i32* @oat_malloc ( i32 24 )
  %obj602 = bitcast i32* %mem_ptr601 to %Guy* 
  %new_obj603 = call %Guy* @_Guy_ctor ( %Guy* %obj602, i32 10 )
  store %Guy* %new_obj603, %Guy** %path600
  %vt_slot604 = getelementptr %State* %_this1, i32 0, i32 0
  store %_State_vtable* @_State_vtable9, %_State_vtable** %vt_slot604
  %path605 = getelementptr %State* %_this1, i32 0, i32 2
  %ret606 = call i32 @con_width (  )
  %ret607 = call i32 @oat_div ( i32 %ret606, i32 10 )
  store i32 %ret607, i32* %path605
  ret %State* %_this1
}


define void @draw_list (%List* %l548){
__fresh207:
  %l_slot549 = alloca %List*
  store %List* %l548, %List** %l_slot549
  %lhs_or_call550 = load %List** %l_slot549
  %path551 = getelementptr %List* %lhs_or_call550, i32 0, i32 2
  %lhs_or_call552 = load %ListItem** %path551
  %vdecl_slot553 = alloca %ListItem*
  store %ListItem* %lhs_or_call552, %ListItem** %vdecl_slot553
  br label %__cond194

__cond194:
  %lhs_or_call554 = load %ListItem** %vdecl_slot553
  %cast_op555 = bitcast i8* null to %Object* 
  %cast_op556 = bitcast %ListItem* %lhs_or_call554 to %Object* 
  %ret557 = call i1 @ptr_equals ( %Object* %cast_op556, %Object* %cast_op555 )
  %unop558 = icmp eq i1 %ret557, 0
  br i1 %unop558, label %__body193, label %__post192

__fresh208:
  br label %__body193

__body193:
  %lhs_or_call559 = load %ListItem** %vdecl_slot553
  %ifnull_slot560 = alloca %ListItem*
  store %ListItem* %lhs_or_call559, %ListItem** %ifnull_slot560
  %ifnull_guard561 = icmp ne %ListItem* %lhs_or_call559, null
  br i1 %ifnull_guard561, label %__then206, label %__else205

__fresh209:
  br label %__then206

__then206:
  %lhs_or_call562 = load %ListItem** %ifnull_slot560
  %path563 = getelementptr %ListItem* %lhs_or_call562, i32 0, i32 2
  %lhs_or_call564 = load %Object** %path563
  %ifnull_slot565 = alloca %Object*
  store %Object* %lhs_or_call564, %Object** %ifnull_slot565
  %ifnull_guard566 = icmp ne %Object* %lhs_or_call564, null
  br i1 %ifnull_guard566, label %__then203, label %__else202

__fresh210:
  br label %__then203

__then203:
  %lhs_or_call567 = load %Object** %ifnull_slot565
  %cast_op568 = bitcast %Object* %lhs_or_call567 to %DelayedObject* 
  %cast_op569 = bitcast %DelayedObject* %cast_op568 to i8** 
  %cast_op570 = bitcast %_DelayedObject_vtable* @_DelayedObject_vtable5 to i8* 
  %vt_ptr_slot571 = alloca i8*
  %tmp0573 = load i8** %cast_op569
  store i8* %tmp0573, i8** %vt_ptr_slot571
  br label %__loop200

__loop200:
  %tmp1574 = load i8** %vt_ptr_slot571
  %guard1578 = icmp eq i8* %tmp1574, %cast_op570
  br i1 %guard1578, label %__then197, label %__fall1199

__fresh211:
  br label %__fall1199

__fall1199:
  %guard2579 = icmp eq i8* %tmp1574, null
  br i1 %guard2579, label %__else196, label %__fall2198

__fresh212:
  br label %__fall2198

__fall2198:
  %tmp2575 = load i8** %vt_ptr_slot571
  %tmp3576 = bitcast i8* %tmp2575 to i8** 
  %tmp4577 = load i8** %tmp3576
  store i8* %tmp4577, i8** %vt_ptr_slot571
  br label %__loop200

__fresh213:
  br label %__then197

__then197:
  %var_slot572 = alloca %DelayedObject*
  store %DelayedObject* %cast_op568, %DelayedObject** %var_slot572
  %lhs_or_call580 = load %DelayedObject** %var_slot572
  %vtmp582 = getelementptr %DelayedObject* %lhs_or_call580, i32 0, i32 0
  %vtable581 = load %_DelayedObject_vtable** %vtmp582
  %fptmp583 = getelementptr %_DelayedObject_vtable* %vtable581, i32 0, i32 3
  %method584 = load void (%GameObject*)** %fptmp583
  %cast_op585 = bitcast %DelayedObject* %lhs_or_call580 to %GameObject* 
  call void %method584( %GameObject* %cast_op585 )
  br label %__done195

__fresh214:
  br label %__else196

__else196:
  br label %__done195

__done195:
  br label %__merge201

__fresh215:
  br label %__else202

__else202:
  br label %__merge201

__merge201:
  %lhs_or_call586 = load %ListItem** %ifnull_slot560
  %path587 = getelementptr %ListItem* %lhs_or_call586, i32 0, i32 4
  %lhs_or_call588 = load %ListItem** %path587
  store %ListItem* %lhs_or_call588, %ListItem** %vdecl_slot553
  br label %__merge204

__fresh216:
  br label %__else205

__else205:
  br label %__merge204

__merge204:
  br label %__cond194

__fresh217:
  br label %__post192

__post192:
  ret void
}


define void @update_list (%List* %l498){
__fresh179:
  %l_slot499 = alloca %List*
  store %List* %l498, %List** %l_slot499
  %lhs_or_call500 = load %List** %l_slot499
  %path501 = getelementptr %List* %lhs_or_call500, i32 0, i32 2
  %lhs_or_call502 = load %ListItem** %path501
  %vdecl_slot503 = alloca %ListItem*
  store %ListItem* %lhs_or_call502, %ListItem** %vdecl_slot503
  br label %__cond163

__cond163:
  %lhs_or_call504 = load %ListItem** %vdecl_slot503
  %cast_op505 = bitcast i8* null to %Object* 
  %cast_op506 = bitcast %ListItem* %lhs_or_call504 to %Object* 
  %ret507 = call i1 @ptr_equals ( %Object* %cast_op506, %Object* %cast_op505 )
  %unop508 = icmp eq i1 %ret507, 0
  br i1 %unop508, label %__body162, label %__post161

__fresh180:
  br label %__body162

__body162:
  %lhs_or_call509 = load %ListItem** %vdecl_slot503
  %ifnull_slot510 = alloca %ListItem*
  store %ListItem* %lhs_or_call509, %ListItem** %ifnull_slot510
  %ifnull_guard511 = icmp ne %ListItem* %lhs_or_call509, null
  br i1 %ifnull_guard511, label %__then178, label %__else177

__fresh181:
  br label %__then178

__then178:
  %lhs_or_call512 = load %ListItem** %ifnull_slot510
  %path513 = getelementptr %ListItem* %lhs_or_call512, i32 0, i32 2
  %lhs_or_call514 = load %Object** %path513
  %ifnull_slot515 = alloca %Object*
  store %Object* %lhs_or_call514, %Object** %ifnull_slot515
  %ifnull_guard516 = icmp ne %Object* %lhs_or_call514, null
  br i1 %ifnull_guard516, label %__then175, label %__else174

__fresh182:
  br label %__then175

__then175:
  %lhs_or_call517 = load %Object** %ifnull_slot515
  %cast_op518 = bitcast %Object* %lhs_or_call517 to %DelayedObject* 
  %cast_op519 = bitcast %DelayedObject* %cast_op518 to i8** 
  %cast_op520 = bitcast %_DelayedObject_vtable* @_DelayedObject_vtable5 to i8* 
  %vt_ptr_slot521 = alloca i8*
  %tmp0523 = load i8** %cast_op519
  store i8* %tmp0523, i8** %vt_ptr_slot521
  br label %__loop169

__loop169:
  %tmp1524 = load i8** %vt_ptr_slot521
  %guard1528 = icmp eq i8* %tmp1524, %cast_op520
  br i1 %guard1528, label %__then166, label %__fall1168

__fresh183:
  br label %__fall1168

__fall1168:
  %guard2529 = icmp eq i8* %tmp1524, null
  br i1 %guard2529, label %__else165, label %__fall2167

__fresh184:
  br label %__fall2167

__fall2167:
  %tmp2525 = load i8** %vt_ptr_slot521
  %tmp3526 = bitcast i8* %tmp2525 to i8** 
  %tmp4527 = load i8** %tmp3526
  store i8* %tmp4527, i8** %vt_ptr_slot521
  br label %__loop169

__fresh185:
  br label %__then166

__then166:
  %var_slot522 = alloca %DelayedObject*
  store %DelayedObject* %cast_op518, %DelayedObject** %var_slot522
  %lhs_or_call530 = load %DelayedObject** %var_slot522
  %vtmp532 = getelementptr %DelayedObject* %lhs_or_call530, i32 0, i32 0
  %vtable531 = load %_DelayedObject_vtable** %vtmp532
  %fptmp533 = getelementptr %_DelayedObject_vtable* %vtable531, i32 0, i32 5
  %method534 = load i32 (%DelayedObject*)** %fptmp533
  %ret535 = call i32 %method534 ( %DelayedObject* %lhs_or_call530 )
  %vdecl_slot536 = alloca i32
  store i32 %ret535, i32* %vdecl_slot536
  %lhs_or_call537 = load i32* %vdecl_slot536
  %bop538 = icmp eq i32 %lhs_or_call537, 0
  br i1 %bop538, label %__then172, label %__else171

__fresh186:
  br label %__then172

__then172:
  %lhs_or_call540 = load %List** %l_slot499
  %vtmp542 = getelementptr %List* %lhs_or_call540, i32 0, i32 0
  %vtable541 = load %_List_vtable** %vtmp542
  %fptmp543 = getelementptr %_List_vtable* %vtable541, i32 0, i32 4
  %method544 = load void (%List*, %ListItem*)** %fptmp543
  %lhs_or_call539 = load %ListItem** %ifnull_slot510
  call void %method544( %List* %lhs_or_call540, %ListItem* %lhs_or_call539 )
  br label %__merge170

__fresh187:
  br label %__else171

__else171:
  br label %__merge170

__merge170:
  br label %__done164

__fresh188:
  br label %__else165

__else165:
  br label %__done164

__done164:
  br label %__merge173

__fresh189:
  br label %__else174

__else174:
  br label %__merge173

__merge173:
  %lhs_or_call545 = load %ListItem** %ifnull_slot510
  %path546 = getelementptr %ListItem* %lhs_or_call545, i32 0, i32 4
  %lhs_or_call547 = load %ListItem** %path546
  store %ListItem* %lhs_or_call547, %ListItem** %vdecl_slot503
  br label %__merge176

__fresh190:
  br label %__else177

__else177:
  br label %__merge176

__merge176:
  br label %__cond163

__fresh191:
  br label %__post161

__post161:
  ret void
}


define %Missile* @_Guy_fire_missile (%Guy* %_this1, %List* %aliens487){
__fresh160:
  %aliens_slot488 = alloca %List*
  store %List* %aliens487, %List** %aliens_slot488
  %lhs_or_call489 = load %List** %aliens_slot488
  %path490 = getelementptr %Guy* %_this1, i32 0, i32 3
  %lhs_or_call491 = load i32* %path490
  %path492 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call493 = load i32* %path492
  %bop494 = add i32 %lhs_or_call493, 1
  %mem_ptr495 = call i32* @oat_malloc ( i32 36 )
  %obj496 = bitcast i32* %mem_ptr495 to %Missile* 
  %new_obj497 = call %Missile* @_Missile_ctor ( %Missile* %obj496, i32 %bop494, i32 %lhs_or_call491, i32 0, %List* %lhs_or_call489 )
  ret %Missile* %new_obj497
}


define void @_Guy_draw (%Guy* %_this1){
__fresh159:
  call void @con_move( i32 0, i32 0 )
  %path481 = getelementptr %Guy* %_this1, i32 0, i32 3
  %lhs_or_call482 = load i32* %path481
  %path483 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call484 = load i32* %path483
  call void @con_move( i32 %lhs_or_call484, i32 %lhs_or_call482 )
  %path485 = getelementptr %Guy* %_this1, i32 0, i32 5
  %lhs_or_call486 = load i8** %path485
  call void @con_print( i8* %lhs_or_call486 )
  call void @con_move( i32 0, i32 0 )
  ret void
}


define void @_Guy_move_right (%Guy* %_this1){
__fresh156:
  %path472 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call473 = load i32* %path472
  %bop474 = add i32 %lhs_or_call473, 3
  %ret475 = call i32 @con_width (  )
  %bop476 = icmp slt i32 %bop474, %ret475
  br i1 %bop476, label %__then155, label %__else154

__fresh157:
  br label %__then155

__then155:
  %path477 = getelementptr %Guy* %_this1, i32 0, i32 2
  %path478 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call479 = load i32* %path478
  %bop480 = add i32 %lhs_or_call479, 1
  store i32 %bop480, i32* %path477
  br label %__merge153

__fresh158:
  br label %__else154

__else154:
  br label %__merge153

__merge153:
  ret void
}


define void @_Guy_move_left (%Guy* %_this1){
__fresh150:
  %path465 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call466 = load i32* %path465
  %bop467 = icmp sgt i32 %lhs_or_call466, 0
  br i1 %bop467, label %__then149, label %__else148

__fresh151:
  br label %__then149

__then149:
  %path468 = getelementptr %Guy* %_this1, i32 0, i32 2
  %path469 = getelementptr %Guy* %_this1, i32 0, i32 2
  %lhs_or_call470 = load i32* %path469
  %bop471 = sub i32 %lhs_or_call470, 1
  store i32 %bop471, i32* %path468
  br label %__merge147

__fresh152:
  br label %__else148

__else148:
  br label %__merge147

__merge147:
  ret void
}


define %Guy* @_Guy_ctor (%Guy* %_this1, i32 %hp452){
__fresh146:
  %hp_slot453 = alloca i32
  store i32 %hp452, i32* %hp_slot453
  %ret454 = call i32 @con_height (  )
  %bop455 = sub i32 %ret454, 1
  %ret456 = call i32 @con_width (  )
  %bop457 = ashr i32 %ret456, 1
  %cast_op458 = bitcast %Guy* %_this1 to %GameObject* 
  %dummy459 = call %GameObject* @_GameObject_ctor ( %GameObject* %cast_op458, i32 %bop457, i32 %bop455 )
  %path460 = getelementptr %Guy* %_this1, i32 0, i32 1
  store i8* @_const_str24, i8** %path460
  %path461 = getelementptr %Guy* %_this1, i32 0, i32 5
  store i8* @_const_str25, i8** %path461
  %vt_slot462 = getelementptr %Guy* %_this1, i32 0, i32 0
  store %_Guy_vtable* @_Guy_vtable8, %_Guy_vtable** %vt_slot462
  %path463 = getelementptr %Guy* %_this1, i32 0, i32 4
  %lhs_or_call464 = load i32* %hp_slot453
  store i32 %lhs_or_call464, i32* %path463
  ret %Guy* %_this1
}


define void @_Missile_draw (%Missile* %_this1){
__fresh145:
  %path446 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call447 = load i32* %path446
  %path448 = getelementptr %Missile* %_this1, i32 0, i32 2
  %lhs_or_call449 = load i32* %path448
  call void @con_move( i32 %lhs_or_call449, i32 %lhs_or_call447 )
  %path450 = getelementptr %Missile* %_this1, i32 0, i32 7
  %lhs_or_call451 = load i8** %path450
  call void @con_print( i8* %lhs_or_call451 )
  call void @con_move( i32 0, i32 0 )
  ret void
}


define i32 @_Missile_move (%Missile* %_this1){
__fresh134:
  %vdecl_slot416 = alloca i32
  store i32 1, i32* %vdecl_slot416
  %path417 = getelementptr %Missile* %_this1, i32 0, i32 6
  %lhs_or_call418 = load i32* %path417
  %bop419 = icmp slt i32 %lhs_or_call418, 0
  br i1 %bop419, label %__then130, label %__else129

__fresh135:
  br label %__then130

__then130:
  %path420 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call421 = load i32* %path420
  %bop422 = icmp eq i32 %lhs_or_call421, 0
  br i1 %bop422, label %__then121, label %__else120

__fresh136:
  br label %__then121

__then121:
  store i32 0, i32* %vdecl_slot416
  br label %__merge119

__fresh137:
  br label %__else120

__else120:
  %path423 = getelementptr %Missile* %_this1, i32 0, i32 3
  %path424 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call425 = load i32* %path424
  %bop426 = sub i32 %lhs_or_call425, 1
  store i32 %bop426, i32* %path423
  br label %__merge119

__merge119:
  br label %__merge128

__fresh138:
  br label %__else129

__else129:
  %path427 = getelementptr %Missile* %_this1, i32 0, i32 6
  %lhs_or_call428 = load i32* %path427
  %bop429 = icmp sgt i32 %lhs_or_call428, 0
  br i1 %bop429, label %__then127, label %__else126

__fresh139:
  br label %__then127

__then127:
  %path430 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call431 = load i32* %path430
  %ret432 = call i32 @con_height (  )
  %bop433 = icmp sge i32 %lhs_or_call431, %ret432
  br i1 %bop433, label %__then124, label %__else123

__fresh140:
  br label %__then124

__then124:
  store i32 0, i32* %vdecl_slot416
  br label %__merge122

__fresh141:
  br label %__else123

__else123:
  %path434 = getelementptr %Missile* %_this1, i32 0, i32 3
  %path435 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call436 = load i32* %path435
  %bop437 = add i32 %lhs_or_call436, 1
  store i32 %bop437, i32* %path434
  br label %__merge122

__merge122:
  br label %__merge125

__fresh142:
  br label %__else126

__else126:
  store i32 1, i32* %vdecl_slot416
  br label %__merge125

__merge125:
  br label %__merge128

__merge128:
  %lhs_or_call438 = load i32* %vdecl_slot416
  %bop439 = icmp eq i32 %lhs_or_call438, 1
  br i1 %bop439, label %__then133, label %__else132

__fresh143:
  br label %__then133

__then133:
  %vtmp441 = getelementptr %Missile* %_this1, i32 0, i32 0
  %vtable440 = load %_Missile_vtable** %vtmp441
  %fptmp442 = getelementptr %_Missile_vtable* %vtable440, i32 0, i32 6
  %method443 = load i32 (%Missile*)** %fptmp442
  %ret444 = call i32 %method443 ( %Missile* %_this1 )
  store i32 %ret444, i32* %vdecl_slot416
  br label %__merge131

__fresh144:
  br label %__else132

__else132:
  br label %__merge131

__merge131:
  %lhs_or_call445 = load i32* %vdecl_slot416
  ret i32 %lhs_or_call445
}


define i32 @_Missile_collision (%Missile* %_this1){
__fresh106:
  %vdecl_slot333 = alloca i32
  store i32 1, i32* %vdecl_slot333
  %path334 = getelementptr %Missile* %_this1, i32 0, i32 8
  %lhs_or_call335 = load %List** %path334
  %path336 = getelementptr %List* %lhs_or_call335, i32 0, i32 2
  %lhs_or_call337 = load %ListItem** %path336
  %vdecl_slot338 = alloca %ListItem*
  store %ListItem* %lhs_or_call337, %ListItem** %vdecl_slot338
  br label %__cond90

__cond90:
  %lhs_or_call339 = load %ListItem** %vdecl_slot338
  %cast_op340 = bitcast i8* null to %Object* 
  %cast_op341 = bitcast %ListItem* %lhs_or_call339 to %Object* 
  %ret342 = call i1 @ptr_equals ( %Object* %cast_op341, %Object* %cast_op340 )
  %unop343 = icmp eq i1 %ret342, 0
  br i1 %unop343, label %__body89, label %__post88

__fresh107:
  br label %__body89

__body89:
  %lhs_or_call344 = load %ListItem** %vdecl_slot338
  %ifnull_slot345 = alloca %ListItem*
  store %ListItem* %lhs_or_call344, %ListItem** %ifnull_slot345
  %ifnull_guard346 = icmp ne %ListItem* %lhs_or_call344, null
  br i1 %ifnull_guard346, label %__then105, label %__else104

__fresh108:
  br label %__then105

__then105:
  %lhs_or_call347 = load %ListItem** %ifnull_slot345
  %path348 = getelementptr %ListItem* %lhs_or_call347, i32 0, i32 2
  %lhs_or_call349 = load %Object** %path348
  %ifnull_slot350 = alloca %Object*
  store %Object* %lhs_or_call349, %Object** %ifnull_slot350
  %ifnull_guard351 = icmp ne %Object* %lhs_or_call349, null
  br i1 %ifnull_guard351, label %__then102, label %__else101

__fresh109:
  br label %__then102

__then102:
  %lhs_or_call352 = load %Object** %ifnull_slot350
  %cast_op353 = bitcast %Object* %lhs_or_call352 to %Alien* 
  %cast_op354 = bitcast %Alien* %cast_op353 to i8** 
  %cast_op355 = bitcast %_Alien_vtable* @_Alien_vtable6 to i8* 
  %vt_ptr_slot356 = alloca i8*
  %tmp0358 = load i8** %cast_op354
  store i8* %tmp0358, i8** %vt_ptr_slot356
  br label %__loop96

__loop96:
  %tmp1359 = load i8** %vt_ptr_slot356
  %guard1363 = icmp eq i8* %tmp1359, %cast_op355
  br i1 %guard1363, label %__then93, label %__fall195

__fresh110:
  br label %__fall195

__fall195:
  %guard2364 = icmp eq i8* %tmp1359, null
  br i1 %guard2364, label %__else92, label %__fall294

__fresh111:
  br label %__fall294

__fall294:
  %tmp2360 = load i8** %vt_ptr_slot356
  %tmp3361 = bitcast i8* %tmp2360 to i8** 
  %tmp4362 = load i8** %tmp3361
  store i8* %tmp4362, i8** %vt_ptr_slot356
  br label %__loop96

__fresh112:
  br label %__then93

__then93:
  %var_slot357 = alloca %Alien*
  store %Alien* %cast_op353, %Alien** %var_slot357
  %lhs_or_call365 = load %Alien** %var_slot357
  %path366 = getelementptr %Alien* %lhs_or_call365, i32 0, i32 2
  %lhs_or_call367 = load i32* %path366
  %path368 = getelementptr %Missile* %_this1, i32 0, i32 2
  %lhs_or_call369 = load i32* %path368
  %bop370 = icmp sle i32 %lhs_or_call367, %lhs_or_call369
  %path371 = getelementptr %Missile* %_this1, i32 0, i32 2
  %lhs_or_call372 = load i32* %path371
  %lhs_or_call373 = load %Alien** %var_slot357
  %path374 = getelementptr %Alien* %lhs_or_call373, i32 0, i32 2
  %lhs_or_call375 = load i32* %path374
  %lhs_or_call376 = load %Alien** %var_slot357
  %path377 = getelementptr %Alien* %lhs_or_call376, i32 0, i32 7
  %lhs_or_call378 = load i32* %path377
  %bop379 = add i32 %lhs_or_call375, %lhs_or_call378
  %bop380 = icmp sle i32 %lhs_or_call372, %bop379
  %bop381 = and i1 %bop370, %bop380
  %lhs_or_call382 = load %Alien** %var_slot357
  %path383 = getelementptr %Alien* %lhs_or_call382, i32 0, i32 3
  %lhs_or_call384 = load i32* %path383
  %path385 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call386 = load i32* %path385
  %bop387 = icmp sle i32 %lhs_or_call384, %lhs_or_call386
  %bop388 = and i1 %bop381, %bop387
  %path389 = getelementptr %Missile* %_this1, i32 0, i32 3
  %lhs_or_call390 = load i32* %path389
  %lhs_or_call391 = load %Alien** %var_slot357
  %path392 = getelementptr %Alien* %lhs_or_call391, i32 0, i32 3
  %lhs_or_call393 = load i32* %path392
  %lhs_or_call394 = load %Alien** %var_slot357
  %path395 = getelementptr %Alien* %lhs_or_call394, i32 0, i32 8
  %lhs_or_call396 = load i32* %path395
  %bop397 = add i32 %lhs_or_call393, %lhs_or_call396
  %bop398 = icmp sle i32 %lhs_or_call390, %bop397
  %bop399 = and i1 %bop388, %bop398
  br i1 %bop399, label %__then99, label %__else98

__fresh113:
  br label %__then99

__then99:
  %lhs_or_call400 = load %Alien** %var_slot357
  %vtmp402 = getelementptr %Alien* %lhs_or_call400, i32 0, i32 0
  %vtable401 = load %_Alien_vtable** %vtmp402
  %fptmp403 = getelementptr %_Alien_vtable* %vtable401, i32 0, i32 7
  %method404 = load void (%Alien*)** %fptmp403
  call void %method404( %Alien* %lhs_or_call400 )
  %path406 = getelementptr %Missile* %_this1, i32 0, i32 8
  %lhs_or_call407 = load %List** %path406
  %vtmp409 = getelementptr %List* %lhs_or_call407, i32 0, i32 0
  %vtable408 = load %_List_vtable** %vtmp409
  %fptmp410 = getelementptr %_List_vtable* %vtable408, i32 0, i32 4
  %method411 = load void (%List*, %ListItem*)** %fptmp410
  %lhs_or_call405 = load %ListItem** %ifnull_slot345
  call void %method411( %List* %lhs_or_call407, %ListItem* %lhs_or_call405 )
  store i32 0, i32* %vdecl_slot333
  br label %__merge97

__fresh114:
  br label %__else98

__else98:
  br label %__merge97

__merge97:
  br label %__done91

__fresh115:
  br label %__else92

__else92:
  br label %__done91

__done91:
  br label %__merge100

__fresh116:
  br label %__else101

__else101:
  br label %__merge100

__merge100:
  %lhs_or_call412 = load %ListItem** %ifnull_slot345
  %path413 = getelementptr %ListItem* %lhs_or_call412, i32 0, i32 4
  %lhs_or_call414 = load %ListItem** %path413
  store %ListItem* %lhs_or_call414, %ListItem** %vdecl_slot338
  br label %__merge103

__fresh117:
  br label %__else104

__else104:
  br label %__merge103

__merge103:
  br label %__cond90

__fresh118:
  br label %__post88

__post88:
  %lhs_or_call415 = load i32* %vdecl_slot333
  ret i32 %lhs_or_call415
}


define %Missile* @_Missile_ctor (%Missile* %_this1, i32 %x319, i32 %y317, i32 %delay315, %List* %aliens313){
__fresh87:
  %x_slot320 = alloca i32
  store i32 %x319, i32* %x_slot320
  %y_slot318 = alloca i32
  store i32 %y317, i32* %y_slot318
  %delay_slot316 = alloca i32
  store i32 %delay315, i32* %delay_slot316
  %aliens_slot314 = alloca %List*
  store %List* %aliens313, %List** %aliens_slot314
  %lhs_or_call321 = load i32* %delay_slot316
  %lhs_or_call322 = load i32* %y_slot318
  %lhs_or_call323 = load i32* %x_slot320
  %cast_op324 = bitcast %Missile* %_this1 to %DelayedObject* 
  %dummy325 = call %DelayedObject* @_DelayedObject_ctor ( %DelayedObject* %cast_op324, i32 %lhs_or_call323, i32 %lhs_or_call322, i32 %lhs_or_call321 )
  %path326 = getelementptr %Missile* %_this1, i32 0, i32 1
  store i8* @_const_str22, i8** %path326
  %path327 = getelementptr %Missile* %_this1, i32 0, i32 7
  store i8* @_const_str23, i8** %path327
  %path328 = getelementptr %Missile* %_this1, i32 0, i32 8
  %lhs_or_call329 = load %List** %aliens_slot314
  store %List* %lhs_or_call329, %List** %path328
  %vt_slot330 = getelementptr %Missile* %_this1, i32 0, i32 0
  store %_Missile_vtable* @_Missile_vtable7, %_Missile_vtable** %vt_slot330
  %path331 = getelementptr %Missile* %_this1, i32 0, i32 6
  %unop332 = sub i32 0, 1
  store i32 %unop332, i32* %path331
  ret %Missile* %_this1
}


define void @_Alien_draw (%Alien* %_this1){
__fresh84:
  %vdecl_slot287 = alloca i32
  store i32 0, i32* %vdecl_slot287
  br label %__cond83

__cond83:
  %lhs_or_call288 = load i32* %vdecl_slot287
  %path289 = getelementptr %Alien* %_this1, i32 0, i32 8
  %lhs_or_call290 = load i32* %path289
  %bop291 = icmp slt i32 %lhs_or_call288, %lhs_or_call290
  br i1 %bop291, label %__body82, label %__post81

__fresh85:
  br label %__body82

__body82:
  %path292 = getelementptr %Alien* %_this1, i32 0, i32 3
  %lhs_or_call293 = load i32* %path292
  %lhs_or_call294 = load i32* %vdecl_slot287
  %bop295 = add i32 %lhs_or_call293, %lhs_or_call294
  %path296 = getelementptr %Alien* %_this1, i32 0, i32 2
  %lhs_or_call297 = load i32* %path296
  call void @con_move( i32 %lhs_or_call297, i32 %bop295 )
  %path298 = getelementptr %Alien* %_this1, i32 0, i32 11
  %lhs_or_call299 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path298
  %path300 = getelementptr %Alien* %_this1, i32 0, i32 10
  %lhs_or_call301 = load i32* %path300
  %bound_ptr303 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call299, i32 0, i32 0
  %bound304 = load i32* %bound_ptr303
  call void @oat_array_bounds_check( i32 %bound304, i32 %lhs_or_call301 )
  %elt302 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call299, i32 0, i32 1, i32 %lhs_or_call301
  %lhs_or_call305 = load { i32, [ 0 x i8* ] }** %elt302
  %lhs_or_call306 = load i32* %vdecl_slot287
  %bound_ptr308 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call305, i32 0, i32 0
  %bound309 = load i32* %bound_ptr308
  call void @oat_array_bounds_check( i32 %bound309, i32 %lhs_or_call306 )
  %elt307 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call305, i32 0, i32 1, i32 %lhs_or_call306
  %lhs_or_call310 = load i8** %elt307
  call void @con_print( i8* %lhs_or_call310 )
  call void @con_move( i32 0, i32 0 )
  %lhs_or_call311 = load i32* %vdecl_slot287
  %bop312 = add i32 %lhs_or_call311, 1
  store i32 %bop312, i32* %vdecl_slot287
  br label %__cond83

__fresh86:
  br label %__post81

__post81:
  ret void
}


define i32 @_Alien_move (%Alien* %_this1){
__fresh72:
  %path247 = getelementptr %Alien* %_this1, i32 0, i32 10
  %path248 = getelementptr %Alien* %_this1, i32 0, i32 9
  %lhs_or_call249 = load i32* %path248
  %path250 = getelementptr %Alien* %_this1, i32 0, i32 10
  %lhs_or_call251 = load i32* %path250
  %bop252 = add i32 %lhs_or_call251, 1
  %ret253 = call i32 @oat_mod ( i32 %bop252, i32 %lhs_or_call249 )
  store i32 %ret253, i32* %path247
  %path254 = getelementptr %Alien* %_this1, i32 0, i32 6
  %lhs_or_call255 = load i32* %path254
  %unop256 = sub i32 0, 1
  %bop257 = icmp eq i32 %lhs_or_call255, %unop256
  br i1 %bop257, label %__then71, label %__else70

__fresh73:
  br label %__then71

__then71:
  %path258 = getelementptr %Alien* %_this1, i32 0, i32 2
  %lhs_or_call259 = load i32* %path258
  %bop260 = icmp eq i32 %lhs_or_call259, 0
  br i1 %bop260, label %__then62, label %__else61

__fresh74:
  br label %__then62

__then62:
  %vtmp262 = getelementptr %Alien* %_this1, i32 0, i32 0
  %vtable261 = load %_Alien_vtable** %vtmp262
  %fptmp263 = getelementptr %_Alien_vtable* %vtable261, i32 0, i32 8
  %method264 = load void (%Alien*)** %fptmp263
  call void %method264( %Alien* %_this1 )
  br label %__merge60

__fresh75:
  br label %__else61

__else61:
  %path265 = getelementptr %Alien* %_this1, i32 0, i32 2
  %path266 = getelementptr %Alien* %_this1, i32 0, i32 2
  %lhs_or_call267 = load i32* %path266
  %bop268 = sub i32 %lhs_or_call267, 1
  store i32 %bop268, i32* %path265
  br label %__merge60

__merge60:
  br label %__merge69

__fresh76:
  br label %__else70

__else70:
  %path269 = getelementptr %Alien* %_this1, i32 0, i32 6
  %lhs_or_call270 = load i32* %path269
  %bop271 = icmp eq i32 %lhs_or_call270, 1
  br i1 %bop271, label %__then68, label %__else67

__fresh77:
  br label %__then68

__then68:
  %path272 = getelementptr %Alien* %_this1, i32 0, i32 2
  %lhs_or_call273 = load i32* %path272
  %path274 = getelementptr %Alien* %_this1, i32 0, i32 7
  %lhs_or_call275 = load i32* %path274
  %bop276 = add i32 %lhs_or_call273, %lhs_or_call275
  %ret277 = call i32 @con_width (  )
  %bop278 = icmp sgt i32 %bop276, %ret277
  br i1 %bop278, label %__then65, label %__else64

__fresh78:
  br label %__then65

__then65:
  %vtmp280 = getelementptr %Alien* %_this1, i32 0, i32 0
  %vtable279 = load %_Alien_vtable** %vtmp280
  %fptmp281 = getelementptr %_Alien_vtable* %vtable279, i32 0, i32 8
  %method282 = load void (%Alien*)** %fptmp281
  call void %method282( %Alien* %_this1 )
  br label %__merge63

__fresh79:
  br label %__else64

__else64:
  %path283 = getelementptr %Alien* %_this1, i32 0, i32 2
  %path284 = getelementptr %Alien* %_this1, i32 0, i32 2
  %lhs_or_call285 = load i32* %path284
  %bop286 = add i32 %lhs_or_call285, 1
  store i32 %bop286, i32* %path283
  br label %__merge63

__merge63:
  br label %__merge66

__fresh80:
  br label %__else67

__else67:
  br label %__merge66

__merge66:
  br label %__merge69

__merge69:
  ret i32 1
}


define void @_Alien_hit_edge (%Alien* %_this1){
__fresh59:
  %path236 = getelementptr %Alien* %_this1, i32 0, i32 3
  %path237 = getelementptr %Alien* %_this1, i32 0, i32 3
  %lhs_or_call238 = load i32* %path237
  %path239 = getelementptr %Alien* %_this1, i32 0, i32 8
  %lhs_or_call240 = load i32* %path239
  %bop241 = add i32 %lhs_or_call238, %lhs_or_call240
  %bop242 = add i32 %bop241, 1
  store i32 %bop242, i32* %path236
  %vtmp244 = getelementptr %Alien* %_this1, i32 0, i32 0
  %vtable243 = load %_Alien_vtable** %vtmp244
  %fptmp245 = getelementptr %_Alien_vtable* %vtable243, i32 0, i32 6
  %method246 = load void (%Alien*)** %fptmp245
  call void %method246( %Alien* %_this1 )
  ret void
}


define void @_Alien_blowup (%Alien* %_this1){
__fresh58:
  ret void
}


define void @_Alien_change_directions (%Alien* %_this1){
__fresh57:
  %path232 = getelementptr %Alien* %_this1, i32 0, i32 6
  %path233 = getelementptr %Alien* %_this1, i32 0, i32 6
  %lhs_or_call234 = load i32* %path233
  %bop235 = sub i32 0, %lhs_or_call234
  store i32 %bop235, i32* %path232
  ret void
}


define void @_Alien_init (%Alien* %_this1){
__fresh56:
  %path196 = getelementptr %Alien* %_this1, i32 0, i32 11
  %lhs_or_call197 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path196
  %bound_ptr199 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call197, i32 0, i32 0
  %bound200 = load i32* %bound_ptr199
  call void @oat_array_bounds_check( i32 %bound200, i32 0 )
  %elt198 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call197, i32 0, i32 1, i32 0
  %lhs_or_call201 = load { i32, [ 0 x i8* ] }** %elt198
  %bound_ptr203 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call201, i32 0, i32 0
  %bound204 = load i32* %bound_ptr203
  call void @oat_array_bounds_check( i32 %bound204, i32 0 )
  %elt202 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call201, i32 0, i32 1, i32 0
  store i8* @_const_str18, i8** %elt202
  %path205 = getelementptr %Alien* %_this1, i32 0, i32 11
  %lhs_or_call206 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path205
  %bound_ptr208 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call206, i32 0, i32 0
  %bound209 = load i32* %bound_ptr208
  call void @oat_array_bounds_check( i32 %bound209, i32 0 )
  %elt207 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call206, i32 0, i32 1, i32 0
  %lhs_or_call210 = load { i32, [ 0 x i8* ] }** %elt207
  %bound_ptr212 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call210, i32 0, i32 0
  %bound213 = load i32* %bound_ptr212
  call void @oat_array_bounds_check( i32 %bound213, i32 1 )
  %elt211 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call210, i32 0, i32 1, i32 1
  store i8* @_const_str19, i8** %elt211
  %path214 = getelementptr %Alien* %_this1, i32 0, i32 11
  %lhs_or_call215 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path214
  %bound_ptr217 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call215, i32 0, i32 0
  %bound218 = load i32* %bound_ptr217
  call void @oat_array_bounds_check( i32 %bound218, i32 1 )
  %elt216 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call215, i32 0, i32 1, i32 1
  %lhs_or_call219 = load { i32, [ 0 x i8* ] }** %elt216
  %bound_ptr221 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call219, i32 0, i32 0
  %bound222 = load i32* %bound_ptr221
  call void @oat_array_bounds_check( i32 %bound222, i32 0 )
  %elt220 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call219, i32 0, i32 1, i32 0
  store i8* @_const_str20, i8** %elt220
  %path223 = getelementptr %Alien* %_this1, i32 0, i32 11
  %lhs_or_call224 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path223
  %bound_ptr226 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call224, i32 0, i32 0
  %bound227 = load i32* %bound_ptr226
  call void @oat_array_bounds_check( i32 %bound227, i32 1 )
  %elt225 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call224, i32 0, i32 1, i32 1
  %lhs_or_call228 = load { i32, [ 0 x i8* ] }** %elt225
  %bound_ptr230 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call228, i32 0, i32 0
  %bound231 = load i32* %bound_ptr230
  call void @oat_array_bounds_check( i32 %bound231, i32 1 )
  %elt229 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call228, i32 0, i32 1, i32 1
  store i8* @_const_str21, i8** %elt229
  ret void
}


define %Alien* @_Alien_ctor (%Alien* %_this1, i32 %x148, i32 %y146, i32 %delay144){
__fresh51:
  %x_slot149 = alloca i32
  store i32 %x148, i32* %x_slot149
  %y_slot147 = alloca i32
  store i32 %y146, i32* %y_slot147
  %delay_slot145 = alloca i32
  store i32 %delay144, i32* %delay_slot145
  %lhs_or_call150 = load i32* %delay_slot145
  %lhs_or_call151 = load i32* %y_slot147
  %lhs_or_call152 = load i32* %x_slot149
  %cast_op153 = bitcast %Alien* %_this1 to %DelayedObject* 
  %dummy154 = call %DelayedObject* @_DelayedObject_ctor ( %DelayedObject* %cast_op153, i32 %lhs_or_call152, i32 %lhs_or_call151, i32 %lhs_or_call150 )
  %path155 = getelementptr %Alien* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %path155
  %path156 = getelementptr %Alien* %_this1, i32 0, i32 11
  %array_ptr157 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array158 = bitcast { i32, [ 0 x i32 ] }* %array_ptr157 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %_tmp15159 = alloca i32
  store i32 3, i32* %_tmp15159
  %_tmp16160 = alloca { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array158, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %_tmp16160
  %vdecl_slot161 = alloca i32
  store i32 0, i32* %vdecl_slot161
  br label %__cond47

__cond47:
  %lhs_or_call162 = load i32* %vdecl_slot161
  %lhs_or_call163 = load i32* %_tmp15159
  %bop164 = icmp slt i32 %lhs_or_call162, %lhs_or_call163
  br i1 %bop164, label %__body46, label %__post45

__fresh52:
  br label %__body46

__body46:
  %lhs_or_call165 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %_tmp16160
  %lhs_or_call166 = load i32* %vdecl_slot161
  %bound_ptr168 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call165, i32 0, i32 0
  %bound169 = load i32* %bound_ptr168
  call void @oat_array_bounds_check( i32 %bound169, i32 %lhs_or_call166 )
  %elt167 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %lhs_or_call165, i32 0, i32 1, i32 %lhs_or_call166
  %array_ptr170 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array171 = bitcast { i32, [ 0 x i32 ] }* %array_ptr170 to { i32, [ 0 x i8* ] }* 
  %_tmp17172 = alloca i32
  store i32 2, i32* %_tmp17172
  %_tmp18173 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %array171, { i32, [ 0 x i8* ] }** %_tmp18173
  %vdecl_slot174 = alloca i32
  store i32 0, i32* %vdecl_slot174
  br label %__cond50

__cond50:
  %lhs_or_call175 = load i32* %vdecl_slot174
  %lhs_or_call176 = load i32* %_tmp17172
  %bop177 = icmp slt i32 %lhs_or_call175, %lhs_or_call176
  br i1 %bop177, label %__body49, label %__post48

__fresh53:
  br label %__body49

__body49:
  %lhs_or_call178 = load { i32, [ 0 x i8* ] }** %_tmp18173
  %lhs_or_call179 = load i32* %vdecl_slot174
  %bound_ptr181 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call178, i32 0, i32 0
  %bound182 = load i32* %bound_ptr181
  call void @oat_array_bounds_check( i32 %bound182, i32 %lhs_or_call179 )
  %elt180 = getelementptr { i32, [ 0 x i8* ] }* %lhs_or_call178, i32 0, i32 1, i32 %lhs_or_call179
  store i8* @_const_str17, i8** %elt180
  %lhs_or_call183 = load i32* %vdecl_slot174
  %bop184 = add i32 %lhs_or_call183, 1
  store i32 %bop184, i32* %vdecl_slot174
  br label %__cond50

__fresh54:
  br label %__post48

__post48:
  store { i32, [ 0 x i8* ] }* %array171, { i32, [ 0 x i8* ] }** %elt167
  %lhs_or_call185 = load i32* %vdecl_slot161
  %bop186 = add i32 %lhs_or_call185, 1
  store i32 %bop186, i32* %vdecl_slot161
  br label %__cond47

__fresh55:
  br label %__post45

__post45:
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array158, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %path156
  %vt_slot187 = getelementptr %Alien* %_this1, i32 0, i32 0
  store %_Alien_vtable* @_Alien_vtable6, %_Alien_vtable** %vt_slot187
  %path188 = getelementptr %Alien* %_this1, i32 0, i32 6
  %unop189 = sub i32 0, 1
  store i32 %unop189, i32* %path188
  %path190 = getelementptr %Alien* %_this1, i32 0, i32 7
  store i32 3, i32* %path190
  %path191 = getelementptr %Alien* %_this1, i32 0, i32 8
  store i32 2, i32* %path191
  %path192 = getelementptr %Alien* %_this1, i32 0, i32 9
  store i32 2, i32* %path192
  %path193 = getelementptr %Alien* %_this1, i32 0, i32 10
  store i32 0, i32* %path193
  %path194 = getelementptr %Alien* %_this1, i32 0, i32 4
  store i32 5, i32* %path194
  %path195 = getelementptr %Alien* %_this1, i32 0, i32 5
  store i32 0, i32* %path195
  ret %Alien* %_this1
}


define i32 @_DelayedObject_update (%DelayedObject* %_this1){
__fresh42:
  %vdecl_slot127 = alloca i32
  store i32 1, i32* %vdecl_slot127
  %path128 = getelementptr %DelayedObject* %_this1, i32 0, i32 5
  %path129 = getelementptr %DelayedObject* %_this1, i32 0, i32 5
  %lhs_or_call130 = load i32* %path129
  %bop131 = add i32 %lhs_or_call130, 1
  store i32 %bop131, i32* %path128
  %path132 = getelementptr %DelayedObject* %_this1, i32 0, i32 5
  %lhs_or_call133 = load i32* %path132
  %path134 = getelementptr %DelayedObject* %_this1, i32 0, i32 4
  %lhs_or_call135 = load i32* %path134
  %bop136 = icmp sge i32 %lhs_or_call133, %lhs_or_call135
  br i1 %bop136, label %__then41, label %__else40

__fresh43:
  br label %__then41

__then41:
  %vtmp138 = getelementptr %DelayedObject* %_this1, i32 0, i32 0
  %vtable137 = load %_DelayedObject_vtable** %vtmp138
  %fptmp139 = getelementptr %_DelayedObject_vtable* %vtable137, i32 0, i32 4
  %method140 = load i32 (%DelayedObject*)** %fptmp139
  %ret141 = call i32 %method140 ( %DelayedObject* %_this1 )
  store i32 %ret141, i32* %vdecl_slot127
  %path142 = getelementptr %DelayedObject* %_this1, i32 0, i32 5
  store i32 0, i32* %path142
  br label %__merge39

__fresh44:
  br label %__else40

__else40:
  br label %__merge39

__merge39:
  %lhs_or_call143 = load i32* %vdecl_slot127
  ret i32 %lhs_or_call143
}


define i32 @_DelayedObject_move (%DelayedObject* %_this1){
__fresh38:
  ret i32 1
}


define %DelayedObject* @_DelayedObject_ctor (%DelayedObject* %_this1, i32 %x117, i32 %y115, i32 %delay113){
__fresh37:
  %x_slot118 = alloca i32
  store i32 %x117, i32* %x_slot118
  %y_slot116 = alloca i32
  store i32 %y115, i32* %y_slot116
  %delay_slot114 = alloca i32
  store i32 %delay113, i32* %delay_slot114
  %lhs_or_call119 = load i32* %y_slot116
  %lhs_or_call120 = load i32* %x_slot118
  %cast_op121 = bitcast %DelayedObject* %_this1 to %GameObject* 
  %dummy122 = call %GameObject* @_GameObject_ctor ( %GameObject* %cast_op121, i32 %lhs_or_call120, i32 %lhs_or_call119 )
  %path123 = getelementptr %DelayedObject* %_this1, i32 0, i32 1
  store i8* @_const_str15, i8** %path123
  %vt_slot124 = getelementptr %DelayedObject* %_this1, i32 0, i32 0
  store %_DelayedObject_vtable* @_DelayedObject_vtable5, %_DelayedObject_vtable** %vt_slot124
  %path125 = getelementptr %DelayedObject* %_this1, i32 0, i32 4
  %lhs_or_call126 = load i32* %delay_slot114
  store i32 %lhs_or_call126, i32* %path125
  ret %DelayedObject* %_this1
}


define void @_GameObject_draw (%GameObject* %_this1){
__fresh36:
  ret void
}


define void @_GameObject_init (%GameObject* %_this1){
__fresh35:
  ret void
}


define %GameObject* @_GameObject_ctor (%GameObject* %_this1, i32 %x103, i32 %y101){
__fresh34:
  %x_slot104 = alloca i32
  store i32 %x103, i32* %x_slot104
  %y_slot102 = alloca i32
  store i32 %y101, i32* %y_slot102
  %cast_op105 = bitcast %GameObject* %_this1 to %Object* 
  %dummy106 = call %Object* @_Object_ctor ( %Object* %cast_op105 )
  %path107 = getelementptr %GameObject* %_this1, i32 0, i32 1
  store i8* @_const_str14, i8** %path107
  %vt_slot108 = getelementptr %GameObject* %_this1, i32 0, i32 0
  store %_GameObject_vtable* @_GameObject_vtable4, %_GameObject_vtable** %vt_slot108
  %path109 = getelementptr %GameObject* %_this1, i32 0, i32 2
  %lhs_or_call110 = load i32* %x_slot104
  store i32 %lhs_or_call110, i32* %path109
  %path111 = getelementptr %GameObject* %_this1, i32 0, i32 3
  %lhs_or_call112 = load i32* %y_slot102
  store i32 %lhs_or_call112, i32* %path111
  ret %GameObject* %_this1
}


define i1 @ptr_equals (%Object* %o196, %Object* %o294){
__fresh33:
  %o1_slot97 = alloca %Object*
  store %Object* %o196, %Object** %o1_slot97
  %o2_slot95 = alloca %Object*
  store %Object* %o294, %Object** %o2_slot95
  %lhs_or_call98 = load %Object** %o1_slot97
  %lhs_or_call99 = load %Object** %o2_slot95
  %bop100 = icmp eq %Object* %lhs_or_call98, %lhs_or_call99
  ret i1 %bop100
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
  call void @print_string( i8* @_const_str13 )
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
  store i8* @_const_str12, i8** %path27
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
  store i8* @_const_str11, i8** %path17
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
  store i8* @_const_str10, i8** %path2
  %vt_slot3 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable1, %_Object_vtable** %vt_slot3
  ret %Object* %_this1
}


