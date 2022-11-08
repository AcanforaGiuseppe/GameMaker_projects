//
// Simple passthrough fragment shader
//


//Interveniamo sempre nel fragment e poi assegnarlo nel ghost tramite draw event
//NG le shader non hanno memoria per salvarsi di che colore era un pixel prima
//posso pero mettere delle variabili negli oggetti che tengono conto del valore
//e far passare quello alle shader

varying vec2 v_vTexcoord;
varying vec4 v_vColour; //vec4 rgb

void main()
{
    vec4 originalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); //rappresenta il colore nello specifico pixel
	float thr = 0.3; //soglia dei colori rgb se sono sotto questo valore diventano neri
	if(originalColor.r <thr && originalColor.g <thr && originalColor.b <thr)
	{
		gl_FragColor=vec4(1.0,1.0,1.0,originalColor.a);
	}
	gl_FragColor = vec4(0.0,0.0,originalColor.b, originalColor.a); //colorazione blu
}