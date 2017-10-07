///hud_update()
var curWid = window_get_width();
var curHei = window_get_height();

if (!os_is_paused())
{
    if (curWid != winWid || curHei != winHei)
    {
        if (curWid > 0 && curHei > 0)
        {
            winWid = curWid;
            winHei = curHei;
            
            window_set_size(winWid, winHei);
            hudScale = ((winWid / 1280) + (winHei / 720)) / 2;
            
            //show_debug_message("WID : "+string(winWid)+", HEI : "+string(winHei));
            
            //RESIZE
            surface_resize(surfGUI, winWid, winHei);
            surface_resize(surfFG, winWid, winHei);
            //surface_resize(surfCOMP, winWid, winHei);
        }
    }
}
