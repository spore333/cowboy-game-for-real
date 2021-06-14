varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition; // <- added

void main() {
   // (v_vPosition will contain XYZ of the current pixel)
   vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
   col.a = (v_vPosition.y * 0.01); // make every other stripe transparent, for example
   gl_FragColor = col;
}