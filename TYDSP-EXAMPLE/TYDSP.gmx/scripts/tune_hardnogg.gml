///tune_hardnogg( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
=======================================

    "HARDNOGG+ 303 by Madgarden"
---------------------------------------
    - Original tune from EGGNOGG+
    - RPN -> INFIX by PISSENWYY
    
=======================================
**/

//t 10 >> 5 *
var melody = (t >> 10) * 5;
//5 & 1 + t * )
melody = ((melody & 5) + 1) * t;
//t 16 >> 3 & 1 + /
melody /= (((t >> 16) & 3) + 1);
//10 * 12 /
melody *= 10;
melody /= 12;
//t 7 >> 127 & +)
melody += ((t >> 7) & 127);
//9999999 x 1 + 15 * / t 1 15 x u + - << % / + )
melody += (9999999 / ((X + 1) * 15)) / (t % (1 << (15 - (X + U))));
//x x * u * ^
melody ^= X*X * U;
//t 9 >> 1 & 1 + *)
melody *= ((t >> 9) & 1) + 1;
//t 8 >> 3 & 1 - )
var arp = (((t >> 8) & 3) - 1);
//t 15 >> 1 & * t 18 >> 1 & * )
arp = (arp * ((t >> 15) & 1)) * ((t >> 18) & 1);
//1 + * )
melody *= arp+1;
//dup t 11 >> 15 & 3 + * &)
melody &= (melody*(((t >> 11) & 15) + 3));
//dup 1 * t 19 >> 1 & * t ~ 9 >> 1 & * ^ )
melody ^= ((melody * 1) * ((t >> 19) & 1)) * ((~t >> 9)&1);
//dup 3 * t ~ 9 >> 1 & * ^)
melody ^= (melody * 3) * ((~t >> 9) & 1);
//128 &)
melody &= 128;
//255 & + 1 >> dup )
melody = (tuneStackReg+(melody & 255)) >> 1;
tuneStackReg = melody;

return melody;
