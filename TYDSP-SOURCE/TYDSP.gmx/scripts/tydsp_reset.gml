///tydsp_reset()
/**
    re-sets the TYDSP system.
**/
audio_stop_sound(dspOut);
audio_free_play_queue(dspOut);

dspOut = audio_create_play_queue(buffer_u8, dspDesiredRate, audio_mono);
audio_queue_sound(dspOut, 0, 0, 0);
audio_play_sound(dspOut, 0, 0);

audio_sound_gain(dspOut, dspVolume, 0);

buffer_seek(dspBuffers[@ dspBufferInd], buffer_seek_start, 0);

dspBufferInd = 0;
dspFeedInd = 0;
dspFilled = 0;
drawInfo = true;
dspBufferFull = false;

dspTime = 0;

ds_queue_clear(dspLeftover);
