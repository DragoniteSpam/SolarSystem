varying vec3 v_vPosition;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 base = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
    vec3 light_normalized = normalize(-v_vPosition);
    float diffuse = min(dot(v_vNormal, light_normalized), 1.);
    gl_FragColor = vec4(base.rgb * diffuse, base.a);
}