// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DArray<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cmp(asint(cb0[0].xyzw) == int4(-1,-1,-1,-1));
  r1.xyzw = asint(cb0[0].xyzw);
  r2.xy = v0.xy;
  r2.z = r1.x;
  r2.x = t0.Sample(s0_s, r2.xyz).x;
  r2.x = r0.x ? 0 : r2.x;
  r3.xy = v0.xy;
  r3.z = r1.y;
  r0.x = t0.Sample(s0_s, r3.xyz).x;
  r2.y = r0.y ? 0 : r0.x;
  r1.xy = v0.xy;
  r0.x = t0.Sample(s0_s, r1.xyz).x;
  r2.z = r0.z ? 0 : r0.x;
  r1.xy = v0.xy;
  r0.x = t0.Sample(s0_s, r1.xyw).x;
  r2.w = r0.w ? 0 : r0.x;
  r0.x = dot(r2.xyzw, cb0[1].xyzw);
  r0.y = dot(r2.xyzw, cb0[2].xyzw);
  r0.z = dot(r2.xyzw, cb0[3].xyzw);
  r0.w = dot(r2.xyzw, cb0[4].xyzw);
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.x = cmp(cb0[5].x != 1.000000);
  if (r1.x != 0) {
    r0.xyz = saturate(r0.xyz);
    r1.x = 1 / cb0[5].x;
    r1.x = 2.20000005 / r1.x;
    r1.yzw = log2(r0.xyz);
    r1.xyz = r1.xxx * r1.yzw;
    r2.xyz = exp2(r1.xyz);
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = r2.xyz ? r1.xyz : r3.xyz;
  }
  o0.xyzw = r0.xyzw;
  return;
}