//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_left;
uniform float u_right;
uniform float u_width;

void main()
{
	float st = (u_right-u_left)/u_width;
	
	vec2 pixelRight= vec2(v_vTexcoord.x+st,v_vTexcoord.y);
    vec2 pixelLeft= vec2(v_vTexcoord.x-st,v_vTexcoord.y);

	
	
    vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 colorRight = v_vColour * texture2D( gm_BaseTexture, pixelRight );
	vec4 colorLeft = v_vColour * texture2D( gm_BaseTexture, pixelLeft );
	
	if(color.a==0.0 && (colorRight.a ==1.0 || colorLeft.a==1.0))
	{
		gl_FragColor = vec4(1.0,0.0,0.0,1.0);	
	}
	else
	{
		gl_FragColor= color;	
	}
	//rimuovere l'opzione automatically crop da text group in Hero, per avere anche i pixel sui gomiti
}
