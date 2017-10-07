///draw_wavepattern(buffer)
var val;

vertex_begin(waveVert, waveFormat);
for (var j=0; j<256; j++)
{
    val = buffer_peek(argument0, j, buffer_u8);
    
    vertex_position(waveVert, j-1, oldVal);
    vertex_colour(waveVert, cMINT2, 1.0);
    vertex_position(waveVert, j, val);
    vertex_colour(waveVert, cMINT2, 1.0);
    
    vertex_position(waveVert, j, oldVal+1);
    vertex_colour(waveVert, cLINE, 1.0);
    vertex_position(waveVert, j+1, val+1);
    vertex_colour(waveVert, cLINE, 1.0);
    
    oldVal = val;
}
vertex_end(waveVert);


surface_set_target(wavePattern);
draw_clear_alpha(0, 0);
vertex_submit(waveVert, pr_linelist, -1);
surface_reset_target();

