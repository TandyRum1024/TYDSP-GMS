tunePaused = !tunePaused;
pauseCtr = 255;

if (tunePaused)
{
    tydsp_setvolume(0, 250);
}
else
{
    tydsp_setvolume(0.15, 250);
}
