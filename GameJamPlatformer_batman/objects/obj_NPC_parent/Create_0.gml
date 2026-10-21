//Variables

interaction_range = 40; //how far until we can interact
show_popup = false; //this will be our 'e' to interact
selected_option = 0; //what has the player selected? 

//default dialogue length
if (!variable_instance_exists(id, "dialogue_length"))
{
	dialogue_length	= 1; //set it 1 line of dialogue
}


