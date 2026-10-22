// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = max(cb0[6].xyxy, v1.xyxw);
  r0.xyzw = min(cb0[6].zwzw, r0.xyzw);
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.y = t0.SampleLevel(s0_s, r0.zw, 0).w;
  r1.xyzw = max(cb0[6].xyxy, v1.zyzw);
  r1.xyzw = min(cb0[6].zwzw, r1.xyzw);
  r0.z = t0.SampleLevel(s0_s, r1.xy, 0).w;
  r0.w = t0.SampleLevel(s0_s, r1.zw, 0).w;
  r1.xy = max(cb0[6].xy, v0.xy);
  r1.xy = min(cb0[6].zw, r1.xy);
  r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.z = 0.00260416674 + r0.z;
  r2.xz = max(r0.xz, r0.yw);
  r2.yw = min(r0.xz, r0.yw);
  r2.x = max(r2.z, r2.x);
  r2.y = min(r2.w, r2.y);
  r2.z = cb0[11].x * r2.x;
  r2.w = min(r2.y, r1.w);
  r2.z = max(cb0[11].y, r2.z);
  r1.w = max(r2.x, r1.w);
  r1.w = r1.w + -r2.w;
  r1.w = cmp(r1.w >= r2.z);
  if (r1.w != 0) {
    r0.xy = r0.wy + -r0.xz;
    r3.x = r0.y + r0.x;
    r3.y = r0.y + -r0.x;
    r0.x = dot(r3.xy, r3.xy);
    r0.x = rsqrt(r0.x);
    r0.xy = r3.xy * r0.xx;
    r0.zw = -r0.xy * cb0[7].zw + v0.xy;
    r0.zw = max(cb0[6].xy, r0.zw);
    r0.zw = min(cb0[6].zw, r0.zw);
    r3.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r0.zw = r0.xy * cb0[7].zw + v0.xy;
    r0.zw = max(cb0[6].xy, r0.zw);
    r0.zw = min(cb0[6].zw, r0.zw);
    r4.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r0.z = min(abs(r0.x), abs(r0.y));
    r0.z = cb0[10].w * r0.z;
    r0.xy = r0.xy / r0.zz;
    r0.xy = max(float2(-2,-2), r0.xy);
    r0.xy = min(float2(2,2), r0.xy);
    r0.zw = -r0.xy * cb0[8].zw + v0.xy;
    r0.zw = max(cb0[6].xy, r0.zw);
    r0.zw = min(cb0[6].zw, r0.zw);
    r5.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r0.xy = r0.xy * cb0[8].zw + v0.xy;
    r0.xy = max(cb0[6].xy, r0.xy);
    r0.xy = min(cb0[6].zw, r0.xy);
    r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r3.xyzw = r4.xyzw + r3.xyzw;
    r0.xyzw = r5.xyzw + r0.xyzw;
    r4.xyzw = float4(0.25,0.25,0.25,0.25) * r3.xyzw;
    r0.xyzw = r0.xyzw * float4(0.25,0.25,0.25,0.25) + r4.xyzw;
    r1.w = cmp(r0.w < r2.y);
    r0.w = cmp(r2.x < r0.w);
    r0.w = (int)r0.w | (int)r1.w;
    r2.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r1.xyz = r0.www ? r2.xyz : r0.xyz;
  }
  o0.xyz = r1.xyz;
  o0.w = 1;
  return;
}