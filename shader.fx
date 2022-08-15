texture Tex0;

technique teq
{
    pass P0
    {
        Texture[0] = Tex0;

		AlphaBlendEnable = TRUE;
    }
}