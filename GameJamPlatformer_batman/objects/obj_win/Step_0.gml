//our win condition

if place_meeting(x, y, obj_Player) && playerWin == true
{
	instance_destroy(all);
	room_goto(rm_menu);

} else {
	
	if place_meeting(x,y, obj_Player){
		room_goto_next();
	}
}
