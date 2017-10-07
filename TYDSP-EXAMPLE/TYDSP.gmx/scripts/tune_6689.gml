///tune_6689( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
============================================

    A code from "Collection of oneliner music formulas"
--------------------------------------------
    - Original tune by mu6k
    - http://pelulamu.net/countercomplex/music_formula_collection.txt
    
============================================
**/

var numz;
numz[0] = 6;
numz[1] = 6;
numz[2] = 8;
numz[3] = 9;

var Y = t & 16383;
var X = t * (numz[@ (t>>16&3)]) / 24 & 127;
return (ech(3, 3)/Y&1)*35 + X * Y / ech(4, 4) + (((t>>8)^(t>>10)|(t>>14)|X)&63);
