// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[5].xy * v0.xy;
  r1.xyzw = floor(r0.xyxy);
  r0.z = r1.y * cb0[5].x + r1.x;
  r2.xy = frac(r0.xy);
  r0.z = 0.5 + r0.z;
  r2.z = r0.z / cb0[4].z;
  r0.z = cmp(1 < r2.z);
  r1.x = ddx_coarse(r0.x);
  r1.y = ddy_coarse(r0.y);
  r1.xy = v0.xy * cb0[5].xy + r1.xy;
  r1.xy = floor(r1.xy);
  r1.xy = cmp(r1.xy != r1.zw);
  r0.w = (int)r1.y | (int)r1.x;
  r1.x = cmp(cb0[4].y >= 0);
  if (r1.x != 0) {
    r1.xyzw = t0.SampleLevel(s0_s, r2.xyz, cb0[4].y).xyzw;
  } else {
    r3.xy = ddx_coarse(r0.xy);
    r3.z = 0;
    r4.xy = ddy_coarse(r0.xy);
    r4.z = 0;
    r1.xyzw = t0.SampleGrad(s0_s, r2.xyz, r3.xyzx, r4.xyzx).xyzw;
  }
  r2.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r3.x = dot(r1.xyzw, cb0[0].xyzw);
  r3.y = dot(r1.xyzw, cb0[1].xyzw);
  r3.z = dot(r1.xyzw, cb0[2].xyzw);
  r3.w = dot(r1.xyzw, cb0[3].xyzw);
  r1.xyzw = v1.xyzw * r3.xyzw;
  r3.xyz = r3.xyz * v1.xyz + float3(0.5,0.5,0.5);
  r3.xyz = frac(r3.xyz);
  r1.xyz = r0.www ? r3.xyz : r1.xyz;
  r0.xyzw = r0.zzzz ? r2.xyzw : r1.xyzw;
  r1.x = cmp(cb0[4].x != 1.000000);
  if (r1.x != 0) {
    r0.xyz = saturate(r0.xyz);
    r1.x = 1 / cb0[4].x;
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
  o1.xyzw = float4(0,0,0,0);
  return;
}