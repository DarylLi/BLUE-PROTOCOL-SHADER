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
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[3].w == 1.000000);
  r0.y = cmp(cb0[4].x >= cb0[4].y);
  r1.xyzw = cb0[4].xyxy * v0.xyxy;
  r0.zw = float2(-1,-1) + cb0[4].xy;
  r2.xy = cmp(float2(1,1) >= r1.xy);
  r3.xw = cmp(r1.xy >= r0.zw);
  r4.x = r2.x;
  r4.yw = float2(-1,0);
  r4.z = r3.x;
  r3.xz = float2(-1,0);
  r3.y = r2.y;
  r2.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.y = 1 / cb0[3].w;
  r0.zw = r1.zw / cb0[3].ww;
  r0.zw = frac(r0.zw);
  r1.xy = cmp(r0.yy >= r0.zw);
  r3.x = -1 + cb0[3].w;
  r3.x = max(1, r3.x);
  r0.y = r3.x * r0.y;
  r1.zw = cmp(r0.zw >= r0.yy);
  r0.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.yz = float2(1,1) / cb0[4].wz;
  r2.xy = -r1.zy * float2(0.5,0.5) + v0.xy;
  if (r0.x != 0) {
    r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xzwy;
    r1.x = 0;
    r2.zw = r2.xy + r1.xy;
    r4.xyzw = t0.SampleLevel(s0_s, r2.zw, 0).xzwy;
    r2.zw = float2(255,255) * r3.xw;
    r2.zw = round(r2.zw);
    r2.zw = (int2)r2.zw;
    r0.x = (uint)r2.z << 8;
    r0.x = (int)r2.w | (int)r0.x;
    r3.x = (int)r0.x;
    r2.zw = float2(255,255) * r4.xw;
    r2.zw = round(r2.zw);
    r2.zw = (int2)r2.zw;
    r0.x = (uint)r2.z << 8;
    r0.x = (int)r2.w | (int)r0.x;
    r4.x = (int)r0.x;
    r0.x = r4.x + -r3.x;
    r0.x = r0.x * 0.5 + r3.x;
    r0.x = round(r0.x);
    r0.x = max(0, r0.x);
    r5.x = min(65535, r0.x);
    r2.zw = r4.yz + -r3.yz;
    r5.yz = r2.zw * float2(0.5,0.5) + r3.yz;
    r4.xyz = r0.www ? r4.xyz : r5.xyz;
    r3.xyz = r0.yyy ? r3.xyz : r4.xyz;
    o0.zw = r3.yz;
  } else {
    if (r0.z != 0) {
      r1.w = 0;
      r4.xyzw = r2.xyxy + r1.zwzy;
      r5.xyzw = t0.SampleLevel(s0_s, r4.xy, 0).xzwy;
      r4.xyzw = t0.SampleLevel(s0_s, r4.zw, 0).xzwy;
      r0.xz = float2(255,255) * r5.xw;
      r0.xz = round(r0.xz);
      r0.xz = (int2)r0.xz;
      r0.x = (uint)r0.x << 8;
      r0.x = (int)r0.z | (int)r0.x;
      r5.x = (int)r0.x;
      r0.xz = float2(255,255) * r4.xw;
      r0.xz = round(r0.xz);
      r0.xz = (int2)r0.xz;
      r0.x = (uint)r0.x << 8;
      r0.x = (int)r0.z | (int)r0.x;
      r4.x = (int)r0.x;
      r0.x = r4.x + -r5.x;
      r0.x = r0.x * 0.5 + r5.x;
      r0.x = round(r0.x);
      r0.x = max(0, r0.x);
      r6.x = min(65535, r0.x);
      r0.xz = r4.yz + -r5.yz;
      r6.yz = r0.xz * float2(0.5,0.5) + r5.yz;
      r4.xyz = r0.www ? r4.xyz : r6.xyz;
      r3.xyz = r0.yyy ? r5.xyz : r4.xyz;
      o0.zw = r3.yz;
    } else {
      r4.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
      r1.xw = float2(0,0);
      r5.xyzw = r2.xyxy + r1.xyzw;
      r6.xyzw = t0.SampleLevel(s0_s, r5.xy, 0).xyzw;
      r5.xyzw = t0.SampleLevel(s0_s, r5.zw, 0).xyzw;
      r0.xz = r2.xy + r1.zy;
      r1.xyzw = t0.SampleLevel(s0_s, r0.xz, 0).xyzw;
      r0.xz = float2(255,255) * r4.xy;
      r0.xz = round(r0.xz);
      r0.xz = (int2)r0.xz;
      r0.x = (uint)r0.x << 8;
      r0.x = (int)r0.z | (int)r0.x;
      r2.xy = float2(255,255) * r6.xy;
      r2.xy = round(r2.xy);
      r2.xy = (int2)r2.xy;
      r0.z = (uint)r2.x << 8;
      r0.z = (int)r2.y | (int)r0.z;
      r0.xz = (int2)r0.xz;
      r2.xy = float2(255,255) * r5.xy;
      r2.xy = round(r2.xy);
      r2.xy = (int2)r2.xy;
      r2.x = (uint)r2.x << 8;
      r2.x = (int)r2.y | (int)r2.x;
      r2.x = (int)r2.x;
      r1.xy = float2(255,255) * r1.xy;
      r1.xy = round(r1.xy);
      r1.xy = (int2)r1.xy;
      r1.x = (uint)r1.x << 8;
      r1.x = (int)r1.y | (int)r1.x;
      r1.x = (int)r1.x;
      r1.y = r2.x + -r0.x;
      r0.x = r1.y * 0.5 + r0.x;
      r1.y = round(r0.x);
      r1.y = max(0, r1.y);
      r2.x = min(65535, r1.y);
      r4.xy = r5.zw + -r4.zw;
      r2.yz = r4.xy * float2(0.5,0.5) + r4.zw;
      r1.x = r1.x + -r0.z;
      r0.z = r1.x * 0.5 + r0.z;
      r1.x = round(r0.z);
      r1.x = max(0, r1.x);
      r4.x = min(65535, r1.x);
      r1.xy = r1.zw + -r6.zw;
      r4.yz = r1.xy * float2(0.5,0.5) + r6.zw;
      r0.z = r0.z + -r0.x;
      r0.x = r0.z * 0.5 + r0.x;
      r0.x = round(r0.x);
      r0.x = max(0, r0.x);
      r1.x = min(65535, r0.x);
      r0.xz = r4.yz + -r2.yz;
      r1.yz = r0.xz * float2(0.5,0.5) + r2.yz;
      r0.xzw = r0.www ? r4.xyz : r1.xyz;
      r3.xyz = r0.yyy ? r2.xyz : r0.xzw;
      o0.zw = r3.yz;
    }
  }
  r0.x = max(0, r3.x);
  r0.x = min(65535, r0.x);
  r0.x = (int)r0.x;
  r0.y = (int)r0.x & 255;
  r0.x = (int)-r0.y + (int)r0.x;
  r0.x = (uint)r0.x >> 8;
  r0.x = (int)r0.x;
  o0.x = 0.00392156886 * r0.x;
  r0.x = (int)r0.y;
  o0.y = 0.00392156886 * r0.x;
  return;
}