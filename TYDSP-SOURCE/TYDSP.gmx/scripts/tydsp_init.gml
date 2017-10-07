///tydsp_init( RATE, volume )
/**
    TYDSP
    --------------
    DSP / Bytebeat thing for gamemaker:studio
**/
dspVolume = argument1;
dspBufferSize = 256;
dspBufferNum = 6;

dspDesiredRate = argument0;

for (var i=0; i<dspBufferNum; i++)
{
    dspBuffers[i] = buffer_create(dspBufferSize, buffer_fast, 1);
    dspFree[i] = true;
}
dspBufferInd = 0;
dspFeedInd = 0;
dspFilled = 0;


dspBufferFull = false;
dspLeftover = ds_queue_create();

dspOut = audio_create_play_queue(buffer_u8, dspDesiredRate, audio_mono);
dspTime = 0;

//Wind up sound
//audio_queue_sound(dspOut, 0, 0, 0);
audio_play_sound(dspOut, 0, 0);
audio_sound_gain(dspOut, dspVolume, 0);
