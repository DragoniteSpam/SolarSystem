varying vec3 v_vPosition;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define ATTENUATION_FACTOR 0.03125

void main() {
    vec4 base = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
    float dist = length(v_vPosition);
    vec3 light_normalized = normalize(-v_vPosition);
    float diffuse = dot(v_vNormal, light_normalized);
    diffuse = min(diffuse * (1. / (1. + (ATTENUATION_FACTOR * dist))), 1.);
    gl_FragColor = vec4(base.rgb * diffuse, base.a);
}