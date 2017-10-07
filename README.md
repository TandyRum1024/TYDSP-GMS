# TYDSP
Real-time audio for Gamemaker : studio by PISSENWYY


![WOWW](https://imgur.com/Cn8suhK.png)

----

# What's this?

TYDSP is DSP / realtime audio.

You can pend / shove intergers into your audio device using gamemaker's audio buffer functions!


# Quick references

```tydsp_init( RATE, VOLUME )``` - Initializes the TYDSP system with desired rate and volume.

```tydsp_pend( INT )``` - Shoves / pends the integer into audio queue.

```tydsp_update()``` - Updates the TYDSP system.

```tydsp_change_rate( RATE )``` - Changes the TYDSP system's desired sample rate.

```tydsp_reset()``` - Re-sets the TYDSP system.

```tydsp_feedroom()``` - Put this into AUDIO PLAYBACK (async) event. (for telling the system that one buffer has ended playing)

```tydsp_end()``` - Execute this when TYDSP is no more needed, for preventing memory leaks.

```tydsp_setvolume( VOLUME, TIME )``` - basically audio_sound_gain for TYDSP.
