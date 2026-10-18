//This is our heads up display which holds information for our health

//HUD

var hud_x = 32;
var hud_y = 40; 

//adding our hearts to the screen

var life_gap = 50; //this is the gap between my hearts

for (var counter = 0; counter < playerLives; counter++) //this is our loop that draws our sprites
{
	draw_sprite(spr_life, 0, hud_x + (counter * life_gap),hud_y);
}

// coin counter

draw_set_font(fnt_text); //draws our font

draw_set_colour(c_white); //set colour
draw_text(hud_x, 60, "COINS COLLECTED: " + string(coins));

//reset drawing settings
draw_set_font(-1);
draw_set_colour(c_white);
