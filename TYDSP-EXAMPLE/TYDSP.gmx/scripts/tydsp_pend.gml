///tydsp_pend( Int )
/**
    Fills the buffer with integer.
**/
var data = argument0;
var currentBuff;

if (dspFree[@ dspBufferInd]) //Check empty
{
    if (dspFilled < dspBufferSize) //Not full
    {
        currentBuff = dspBuffers[@ dspBufferInd];
        
        buffer_write(currentBuff, buffer_u8, data);
        dspFilled++;
        
        if (dspFilled >= dspBufferSize)
        {
            audio_queue_sound(dspOut, currentBuff, 0, dspFilled);
            //dspBufferLeft++;
            //show_debug_message("Filled buffer #"+string(dspBufferInd));
            dspFree[@ dspBufferInd] = false;
            
            //buffer_fill(dspBuffers[@ dspBufferInd], 0, buffer_u8, 0, dspBufferSize);
            buffer_seek(dspBuffers[@ dspBufferInd], buffer_seek_start, 0);
            
            dspBufferInd++;
            dspBufferInd = dspBufferInd%dspBufferNum;
            dspFilled = 0;
            
            buffer_seek(dspBuffers[@ dspBufferInd], buffer_seek_start, 0);
            //buffer_fill(dspBuffers[@ dspBufferInd], 0, buffer_u8, 0, dspBufferSize);
        }
    }
    else //Full
    {
        show_debug_message("It's full! NONSENSE!");
        dspBufferInd++;
        ds_queue_enqueue(dspLeftover, data);
    }
}
else
{
    var found = false;
    for (var i=0;i<dspBufferNum;i++) //Find empty
    {
        if (dspFree[@ i])
        {
            dspBufferInd = i;
            found = true;
        }
    }
    
    if (!found)
    {
        dspBufferFull = true;
    }
    ds_queue_enqueue(dspLeftover, data);
}
