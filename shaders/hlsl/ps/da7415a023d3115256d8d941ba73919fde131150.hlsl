// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 + v0.x;
  r0.x = 6.28318548 * r0.x;
  r0.y = 3.14159274 * v0.y;
  sincos(r0.y, r1.x, r2.x);
  sincos(r0.x, r0.x, r3.x);
  r0.x = r1.x * r0.x;
  r0.y = r3.x * -r1.x;
  r0.z = r2.x;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xyz, cb0[8].x).xyzw;
  r1.x = dot(r0.xyzw, cb0[9].xyzw);
  r1.y = dot(r0.xyzw, cb0[10].xyzw);
  r1.z = dot(r0.xyzw, cb0[11].xyzw);
  r1.w = dot(r0.xyzw, cb0[12].xyzw);
  r0.xyzw = v1.xyzw * r1.xyzw;
  r1.x = cmp(cb0[2].x != 1.000000);
  if (r1.x != 0) {
    r0.xyz = saturate(r0.xyz);
    r1.x = 2.20000005 * cb0[2].x;
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
  o1.xyzw = float4(0,0,0,0);
  return;
}