/// Draw sprite, text and options

draw_set_font(Font_1);
draw_set_valign(fa_middle);

var _margin_text = 128;
var _margin_char = 200;

if IsChatterbox(chatterbox) and text != undefined
{
	var _me = (ChatterboxGetContentSpeaker(chatterbox, 0)== "Me");
	
	draw_sprite_ext(characters, 0, _margin_char,     room_height, size[_me], size[_me], 0, colour[_me], 1);
	draw_sprite_ext(characters, 1, room_width - _margin_char, room_height, size[!_me], size[!_me], 0, colour[!_me], 1);
	
	var _yy = room_height - (_margin_text / 2);
	
	
	draw_set_halign(_me ? fa_left : fa_right);
	var _xx = _me ? _margin_text : room_width - _margin_text;
	draw_text(_xx, _yy, text);
	
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		draw_set_halign(fa_center);
		
		var _width = 400;
		var _height = 64;
		
		for(var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++;)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, i)
			{
				_xx = room_width / 2;
				_yy = (room_height/6)*(i+2);
				
				draw_rectangle(_xx, _yy, _width, _height, false);
				
				var _icon = ""
				if(option_index == i) _icon = ">";
				var _option = ChatterboxGetOption(chatterbox, i);
				
				draw_text(_xx, _yy, _icon + _option);
				
			}
		}
	}
}
