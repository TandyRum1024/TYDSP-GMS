///tydsp_feedroom()
/**
    Shove this bad guy up in AUDIO PLAYBACK event.
**/

dspFree[@ dspFeedInd] = true;
dspBufferFull = false;

dspFeedInd++;
dspFeedInd = dspFeedInd%dspBufferNum;
