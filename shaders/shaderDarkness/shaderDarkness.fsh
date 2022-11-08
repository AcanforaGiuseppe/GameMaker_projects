//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_posx; //pos per l'eroe
uniform float u_posy;

void main()
{
	float px= u_posx/320.0; //dara valori veri in termini di 0 e 1
	//float py= u_posy/180.0;
	float py= u_posy/320.0;
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	
	//disegno del cerchio di luce
	float dist=distance(vec2(px,py),v_vTexcoord);
	float st = step(dist,0.2); //utile per far tornare 0 e 1 se il valore al secondo argomento é piu alto del primo
						//0.2 indica quanto é grande il cerchio
	//float st = smoothstep(dist,0.1,0.2);
	if(st>0.0)
	{
		gl_FragColor = vec4(1.0-st);
		
	}else{
			gl_FragColor=vec4(0.0,0.0,0.0,0.7); //per avere una visione semi buia
	}
	//gl_FragColor=vec4(0.0,0.0,0.0,1.0);
	//gl_FragColor = vec4(dist*2.0);
	
	
	//gl_FragColor=vec4(vec3(v_vTexcoord.x*v_vTexcoord.y),1.0); //con v_vTexcoord.y il colore andra da 0 a 1 dal nero a bianco in verticale
	//gl_FragColor=vec4(vec3(v_vTexcoord.y),1.0); //colore in diagonale
	//gl_FragColor=vec4(vec3(v_vTexcoord.x,v_vTexcoord.y,0.0,1.0); //colore rainbow
	//Tools > Text group
	
	
}
