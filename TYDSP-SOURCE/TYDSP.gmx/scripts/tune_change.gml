///tune_change(index)
tuneIndex = argument0;
tuneRate = tunes[@ tuneIndex, 1];
tydsp_change_rate( tuneRate );
t = 0;
tuneSpeed = 1;

tuneX = 0;
tuneY = 0;
tuneU = 0;
tuneV = 0;
