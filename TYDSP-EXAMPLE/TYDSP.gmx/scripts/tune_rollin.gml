///tune_rollin( time, x, y, u, v )
var t = argument0;
var X = argument1;
var Y = argument2;
var U = argument3;
var V = argument4;
/**
============================================

    A code from "Collection of oneliner music formulas"
--------------------------------------------
    - Original tune by stephth
    - http://pelulamu.net/countercomplex/music_formula_collection.txt
    
============================================
**/

return (((t*9) & (t>>4)) | ((t*5) & (t>>7)) | ((t*3) & (t / 1024)))-1;
