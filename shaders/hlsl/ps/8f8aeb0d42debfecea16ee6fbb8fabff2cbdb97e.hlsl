// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[4].yy * float2(0.5,1.5) + v1.xx;
  r0.z = v1.y;
  r1.xyz = t0.Sample(s0_s, r0.xz).xyz;
  r0.xyz = t0.Sample(s0_s, r0.yz).xyz;
  r2.x = cmp(asint(cb0[4].x) == 1);
  if (r2.x != 0) {
    r2.yzw = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
    r3.xyz = cmp(r1.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r4.xyz = log2(r1.xyz);
    r4.xyz = float3(0.416666657,0.416666657,0.416666657) * r4.xyz;
    r4.xyz = exp2(r4.xyz);
    r4.xyz = r4.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r1.xyz = r3.xyz ? r4.xyz : r2.yzw;
  }
  r1.w = 1;
  o0.y = saturate(dot(cb0[0].xyzw, r1.xyzw));
  o0.z = saturate(dot(cb0[1].xyzw, r1.xyzw));
  o0.x = saturate(dot(cb0[2].xyzw, r1.xyzw));
  if (r2.x != 0) {
    r1.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
    r2.xyz = cmp(r0.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r3.xyz = log2(r0.xyz);
    r3.xyz = float3(0.416666657,0.416666657,0.416666657) * r3.xyz;
    r3.xyz = exp2(r3.xyz);
    r3.xyz = r3.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = r2.xyz ? r3.xyz : r1.xyz;
  }
  r0.w = 1;
  o0.w = saturate(dot(cb0[0].xyzw, r0.xyzw));
  return;
}