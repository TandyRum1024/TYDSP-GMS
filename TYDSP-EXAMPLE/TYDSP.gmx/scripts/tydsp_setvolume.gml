///tydsp_setvolume( volume, time )
/**
    This function is technically same as audio_sound_gain,
    But it's a wrapper function, for TYDSP system!
**/
dspVolume = argument0;
audio_sound_gain(dspOut, dspVolume, argument1);
