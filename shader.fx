texture PdTexture;
float XtoOriginal = 0.45;
float PdBrightness = 3;

sampler TextureSampler = sampler_state
{
    Texture = <PdTexture>;
};
 
float4 SetShaderBrightness(float2 TextureCoordinate : TEXCOORD0) : COLOR0
{
    float4 color = tex2D(TextureSampler, TextureCoordinate);
 
    color.r *= 0.45 * PdBrightness;
    color.g *= 0.45 * PdBrightness;
    color.b *= 0.45 * PdBrightness;
 
    return color;
}

technique TexReplace
{
    pass P0
    {
        PixelShader = compile ps_2_0 SetShaderBrightness();
        Texture[0] = PdTexture;
        LightEnable[1] = false;
        LightEnable[2] = false;
        LightEnable[3] = false;
        LightEnable[4] = false;
    }
}