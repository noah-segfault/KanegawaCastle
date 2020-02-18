draw_set_color(c_white);
draw_set_font(font_score);
//draw_text(64,32,global.points);

action_draw_score(__view_get( e__VW.XView, 0 )+10, __view_get( e__VW.YView, 0 )+5, "Score: ");
