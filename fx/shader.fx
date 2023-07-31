/*
    @Author: THEGizmo
    @Copyright: 2023-2024
    @Description: shader
    All rights reserved
*/

int CUSTOMFLAGS
<
    string skipUnusedParameters = "yes";
>;

texture Tex0;

technique replace_texture
{
    pass P0
    {
        AlphaTestEnable = true;
        AlphaRef = 128;
        AlphaFunc = GreaterEqual;
        AlphaBlendEnable = true;
        
        Texture[0] = Tex0;
    }
}