
draw_set_font(font_text);
draw_set_colour(c_white);
//draw_text(obj_plot1.x,obj_plot1.y,"After the disappearence of his father...");
draw_set_alpha(.5)
draw_roundrect_color(x,y,x+width,y+width,c_black,c_black,false)
draw_set_alpha(1);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(font_text)
draw_set_colour(c_white)

if (string_width(string_hash_to_newline(str)) > width-padding-padding){

message = string_delete(message, last_space, 1);
message=  string_insert("#", message, last_space)
ds_list_add(start,last_space+1);
}

if(count < string_length (message)) {

if (string_char_at(message,count)==" "){
last_space=count
}

count+=(spd);
}

if (string_height(string_hash_to_newline(str)) > height-padding){
    line++
}

str=string_copy(message,ds_list_find_value(start, line), count-ds_list_find_value(start, line));

draw_text(x+padding,y+padding, string_hash_to_newline(str))

