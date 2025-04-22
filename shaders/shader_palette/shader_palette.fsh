// Taken directly from Void Stranger's data.win.

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 cBl;

uniform vec3 cG0;
uniform vec3 cG1;

uniform vec3 cWh;

void main() //Alternate palette
{
    vec4 Color = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    if (Color.r < 0.51)
	{
		if (Color.r < 0.25)
			gl_FragColor.rgb = cBl; //Black
		else 
			gl_FragColor.rgb = cG0; //Dark gray
		
	} 
	else 
	{
		if (Color.r < 0.76)
			gl_FragColor.rgb = cG1; //Gray
		else 
			gl_FragColor.rgb = cWh; //White
		
	}
 
}