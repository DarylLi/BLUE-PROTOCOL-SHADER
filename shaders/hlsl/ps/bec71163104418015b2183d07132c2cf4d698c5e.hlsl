// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.yz = asint(cb0[32].xy);
  r0.yz = -r0.yz * cb1[132].zw + v0.xy;
  r1.xy = float2(0.5,0.5) * cb1[132].xy;
  r1.xy = floor(r1.xy);
  r1.zw = r0.yz * r1.xy + float2(-0.5,-0.5);
  r1.zw = floor(r1.zw);
  r1.zw = r1.zw / r1.xy;
  r2.xy = float2(1,1) / r1.xy;
  r1.zw = r2.xy * float2(0.5,0.5) + r1.zw;
  r3.xy = r1.zw + r2.xy;
  r3.xy = t1.SampleLevel(s1_s, r3.xy, 0).xy;
  r4.w = r3.y;
  r2.z = 0;
  r2.xyzw = r1.zwzw + r2.xzzy;
  r2.xy = t1.SampleLevel(s1_s, r2.xy, 0).xy;
  r2.zw = t1.SampleLevel(s1_s, r2.zw, 0).xy;
  r4.yz = r2.yw;
  r2.yw = t1.SampleLevel(s1_s, r1.zw, 0).xy;
  r0.yz = -r1.zw + r0.yz;
  r4.x = r2.w;
  r4.xyzw = abs(r4.xyzw) + -r0.xxxx;
  r4.xyzw = float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005) + abs(r4.xyzw);
  r4.xyzw = float4(1,1,1,1) / r4.xyzw;
  r1.zw = r0.yz * r1.xy;
  r0.yz = -r0.zy * r1.yx + float2(1,1);
  r5.yz = r0.yz * r1.zw;
  r5.w = r1.w * r1.z;
  r5.x = r0.y * r0.z;
  r1.xyzw = r5.xyzw * r4.xyzw;
  r0.y = r1.y * r2.x;
  r0.y = r1.x * r2.y + r0.y;
  r0.y = r1.z * r2.z + r0.y;
  r0.y = r1.w * r3.x + r0.y;
  r0.z = dot(r1.xyzw, float4(1,1,1,1));
  r0.y = r0.y / r0.z;
  r0.y = -1 + r0.y;
  r0.z = -cb0[34].z + r0.x;
  r0.x = -cb0[35].x + r0.x;
  r0.x = saturate(cb0[35].y * r0.x);
  r0.z = saturate(cb0[34].w * r0.z);
  r0.z = 1 + -r0.z;
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r0.y + 1;
  o0.xyzw = sqrt(r0.xxxx);
  return;
}