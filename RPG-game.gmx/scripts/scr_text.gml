///scr_text("Text",speed,x,y,maxlength,font,text_num,"","","","","","","","","");

txt = instance_create(argument[2],argument[3],obj_text);
with (txt)
{
    
    text_num =argument[6];
    var j = 0;
    for (var i = 0; i < 8;i++){
        text_next[i] = "";
    }
    for (var i = 7; i < argument_count;i++){
        text_next[j++] = argument[i];
    }
    padding = 16;
    maxlength = argument[4];
    text = argument[0];
    spd = argument[1];
    font = argument[5];
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    
}


