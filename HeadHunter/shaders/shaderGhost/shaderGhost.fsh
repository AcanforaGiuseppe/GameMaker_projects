// Simple passthrough fragment shader

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 originalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float thr = 0.3;
	
	if(originalColor.r < thr && originalColor.g < thr && originalColor.b < thr)
		gl_FragColor = vec4(1, 1, 1, originalColor.a);
	else
		gl_FragColor = vec4(0, 0 ,originalColor.b, originalColor.a);
}