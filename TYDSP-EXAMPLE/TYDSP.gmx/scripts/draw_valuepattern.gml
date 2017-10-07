///draw_valuepattern(buffer)
var val;
surface_set_target(valuePattern);
    draw_surface(valuePattern, 1, 0);
surface_reset_target();

surface_set_target(valuePattern);
for (var j=0; j<256; j++)
{
    val = buffer_peek(argument0, j, buffer_u8);
    draw_point_colour(0, j, merge_color(cSLATE, cSLATE2, val/255));
}
surface_reset_target();
