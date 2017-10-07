///tune_hardcore_ryg( time, x, y, u, v )
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
    - http://pouet.net/topic.php?which=8357&page=8
    - http://pelulamu.net/countercomplex/music_formula_collection.txt
    
============================================
**/

return ((t>>4)*(13&($8898a989>>(t>>11&30)))&255)+((((t>>9|(t>>2)|t>>8)*10+4*((t>>2)&t>>15|t>>8))&255)>>1);
