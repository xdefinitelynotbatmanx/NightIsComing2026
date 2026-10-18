//Draw the button + text

draw_self();

draw_set_font(fnt_Menu); //setting our font

draw_set_halign(fa_center);
draw_set_valign(fa_middle); //alignment

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top); //resets our alignment just incase.
