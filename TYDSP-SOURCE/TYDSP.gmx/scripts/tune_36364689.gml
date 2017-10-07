///tune_36364689( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
============================================

    A code from "Collection of oneliner music formulas"
--------------------------------------------
    - Original tune by ryg
    - http://pelulamu.net/countercomplex/music_formula_collection.txt
    
============================================
**/

var numz;
numz[0] = 3;numz[1] = 6;numz[2] = 3;
numz[3] = 6;numz[4] = 4;numz[5] = 6;
numz[6] = 8;numz[7] = 9;

return ((t*(numz[@ t>>13&7]&15))/12&128)+(((((t>>12)^(t>>12)-2)%11*t)/4|t>>13)&127);
