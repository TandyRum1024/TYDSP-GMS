///tune_technogg_carnival( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
============================================

    "TECHNOGG CARNIVAL '92 by Madgarden"
--------------------------------------------
    - Original tune from EGGNOGG+
    - RPN -> INFIX by PISSENWYY
    
============================================
**/

var first = ((t >> 10) * 5);
var melody = ((((((t >> 12) & 2) + 5) & first) + 1) * t);
melody = ~melody;
var key = (melody / (((t >> 16) & 3) + 1)) * 10 / 12 + (t >> 7 & 127);
var drum = (9999999 / ((X+1) * 25) / (t%(1<<(15-(X+0)))) + key) ^ (X * X * U);
//Key
drum *= 2;
var arp_key;
arp_key = (((t >> 10) & 7) - 3);
arp_key = drum * ((((t >> 15) & 1) * arp_key) * ((t >> 18) & 1) + 1);
var technogg = (((t >> 4) & 127) + 79 + X + arp_key) ^ arp_key;
//Ending fadeout thing
technogg |= V;

return technogg;
