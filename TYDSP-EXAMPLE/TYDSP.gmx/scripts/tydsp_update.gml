///tydsp_update()
/**

    Updates the TYDSP system.
    
**/
if (dspBufferFull = false)
{
    //Fill in leftover
    while (!ds_queue_empty(dspLeftover))
    {
        tydsp_pend( ds_queue_dequeue(dspLeftover) );
        if (dspBufferFull)
        {
            //show_debug_message("FULL NOOO");
            break;
        }
    }
}

//Update time
dspTime++;
dspPended = false;

if (!audio_is_playing(dspOut))
{
    audio_play_sound(dspOut, 0, 0);
}
