//
// Simple passthrough vertex shader
//
const vec2 madd = vec2(0.5,0.5);
const vec2 madd2 = vec2(0.5,-0.5);
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;

void main()
{
    gl_Position = vec4( in_Position.xy, 0.0, 1.0);
    v_vTexcoord = in_Position.xy*madd2+madd;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
}

