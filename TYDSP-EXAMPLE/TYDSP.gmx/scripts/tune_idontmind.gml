///tune_idontmind( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
=======================================

    "I DON'T MIND" by Madgarden
---------------------------------------
    - Original tune from EGGNOGG+
    - RPN -> INFIX by PISSENWYY
    
=======================================
**/

var first = (t >> 12) + (t >> 11);
var sec = ((((t >> 12) & 15) + 1) * t);
var third = first | sec;
third &= 8;
third ^= $12345678;
third |= ~t >> 8;
var four = ((((third >> (((t >> 13)%6)*4)) & $7) + 1) * t);
var five = (((t >> 10) & 1) + 1);
var six = (((t >> 12) & 1) + 1) * (four*five);
var seven = six | (t*(X + 2));
seven ^= (t >> (7 - x));
var idontMind = seven | (t >> 4);
idontMind ^= (((t >> 5) & 63) + 10);
idontMind ^= ((t >> 11) & 48);

return idontMind;
