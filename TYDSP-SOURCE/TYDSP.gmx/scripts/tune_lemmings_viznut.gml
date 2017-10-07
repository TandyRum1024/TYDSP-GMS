///tune_lemmings_viznut( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
============================================

    A code from "Collection of oneliner music formulas"
--------------------------------------------
    - Original tune by viznut
    - http://pelulamu.net/countercomplex/music_formula_collection.txt
    
============================================
**/

return (t>>6|t|t>>(t>>16))*10+((t>>11)&7);
