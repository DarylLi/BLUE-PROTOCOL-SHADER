// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[66];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(cb0[65].xy, v0.xy);
  r0.xy = min(cb0[65].zw, r0.xy);
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xy = cb0[0].ww * cb0[64].xy;
  r1.zw = r1.xy * cb0[64].zw + v0.xy;
  r1.zw = max(cb0[65].xy, r1.zw);
  r1.zw = min(cb0[65].zw, r1.zw);
  r2.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r1.xy = -r1.xy * cb0[64].zw + v0.xy;
  r1.xy = max(cb0[65].xy, r1.xy);
  r1.xy = min(cb0[65].zw, r1.xy);
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = cb0[0].zzzz * r1.xyzw;
  r1.xyzw = r2.xyzw * cb0[0].zzzz + r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[0].xxxx + r1.xyzw;
  r1.xyzw = r0.xyzw;
  r2.x = 2;
  while (true) {
    r2.y = cmp((int)r2.x >= asint(cb0[63].x));
    if (r2.y != 0) break;
    r2.y = (int)r2.x ^ 2;
    r2.z = max((int)-r2.x, (int)r2.x);
    r2.z = (uint)r2.z >> 1;
    r2.w = -(int)r2.z;
    r2.y = r2.y ? -0.000000 : 0;
    r2.y = r2.y ? r2.w : r2.z;
    r3.xyzw = cb0[r2.y+0].yyww * cb0[64].xyxy;
    r4.xyzw = r3.xyzw * cb0[64].zwzw + v0.xyxy;
    r4.xyzw = max(cb0[65].xyxy, r4.xyzw);
    r4.xyzw = min(cb0[65].zwzw, r4.xyzw);
    r5.xyzw = t0.Sample(s0_s, r4.xy).xyzw;
    r3.xyzw = -r3.xyzw * cb0[64].zwzw + v0.xyxy;
    r3.xyzw = max(cb0[65].xyxy, r3.xyzw);
    r3.xyzw = min(cb0[65].zwzw, r3.xyzw);
    r6.xyzw = t0.Sample(s0_s, r3.xy).xyzw;
    r6.xyzw = cb0[r2.y+0].xxxx * r6.xyzw;
    r5.xyzw = r5.xyzw * cb0[r2.y+0].xxxx + r6.xyzw;
    r5.xyzw = r1.xyzw + r5.xyzw;
    r4.xyzw = t0.Sample(s0_s, r4.zw).xyzw;
    r3.xyzw = t0.Sample(s0_s, r3.zw).xyzw;
    r3.xyzw = cb0[r2.y+0].zzzz * r3.xyzw;
    r3.xyzw = r4.xyzw * cb0[r2.y+0].zzzz + r3.xyzw;
    r1.xyzw = r5.xyzw + r3.xyzw;
    r2.x = (int)r2.x + 2;
  }
  o0.w = r1.w;
  r0.x = dot(r1.xyz, float3(0.300000012,0.600000024,0.100000001));
  r0.xyz = r0.xxx * float3(0.649999976,0.649999976,0.649999976) + float3(0.0299999993,0.0599999987,0.109999999);
  r0.xyz = r0.xyz + -r1.xyz;
  o0.xyz = cb0[63].yyy * r0.xyz + r1.xyz;
  return;
}