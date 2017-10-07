///tydsp_end();
/**
    Destroys the data structure, Preventing memory leaks.
**/
ds_queue_destroy(dspLeftover);

audio_stop_sound(dspOut);
audio_free_play_queue(dspOut);

for (var i=0; i<dspBufferNum; i++)
{
    buffer_delete(dspBuffers[i]);
}
