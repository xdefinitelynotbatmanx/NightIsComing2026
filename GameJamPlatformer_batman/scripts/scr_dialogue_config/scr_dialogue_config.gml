function scr_dialogue_config(){
	//this stores our dialogue settings inside a script
	global.dlg_defaults =
	{
	
		//Player input
		advanced_key: ord("F"), //this is the button to press to skip lines
		interact_key: ord("E"), //this is our interact key
		
		//Typewriter effect - speed
		typing_speed: 1,
		
		//dialogue box 
		box_width: 700,
		box_height: 200,
		box_margin: 64,
		text_padding: 24,
		border_thickness: 3,
		
		//colours for our dialogue
		
		box_color: make_colour_rgb(20, 24, 36),
		border_color: make_colour_rgb(220,220, 235),
		text_color: c_white,
		name_color: make_colour_rgb(255, 220, 120),
		
		//setting our texts
		font: -1, //default font
		name_font: 1,
		
		//text layout
		text_spacing: 4,
		name_gap: 34,
		
		//portraits for the NPC
		show_portrait: true, 
		portrait_size: 96, //perfect square 
		portrait_gap: 16, //space between portrait and text.
	
	}; 

}