// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.Sample(s0_s, v4.xy).xy;
  r0.xy = cmp(float2(0,0) < r0.yx);
  if (r0.x != 0) {
    r1.xy = v1.xy;
    r1.z = 1;
    r2.x = 0;
    while (true) {
      r0.x = cmp(v3.x < r1.x);
      r0.z = cmp(0.828100026 < r1.z);
      r0.x = r0.z ? r0.x : 0;
      r0.z = cmp(r2.x == 0.000000);
      r0.x = r0.z ? r0.x : 0;
      if (r0.x == 0) break;
      r2.xy = t0.SampleLevel(s0_s, r1.xy, 0).xy;
      r1.xy = cb0[27].zw * float2(-2,-0) + r1.xy;
      r1.z = r2.y;
    }
    r2.yz = r1.xz;
    r0.xz = r2.xz * float2(0.5,-2) + float2(0.0078125,2.03125);
    r0.x = t2.SampleLevel(s0_s, r0.xz, 0).x;
    r0.x = r0.x * -2.00787401 + 3.25;
    r1.x = cb0[27].z * r0.x + r2.y;
    r1.y = v2.y;
    r0.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
    r2.xy = v1.zw;
    r2.z = 1;
    r3.x = 0;
    while (true) {
      r0.w = cmp(r2.x < v3.y);
      r1.w = cmp(0.828100026 < r2.z);
      r0.w = r0.w ? r1.w : 0;
      r1.w = cmp(r3.x == 0.000000);
      r0.w = r0.w ? r1.w : 0;
      if (r0.w == 0) break;
      r3.xy = t0.SampleLevel(s0_s, r2.xy, 0).xy;
      r2.xy = cb0[27].zw * float2(2,0) + r2.xy;
      r2.z = r3.y;
    }
    r3.yz = r2.xz;
    r2.xy = r3.xz * float2(0.5,-2) + float2(0.5234375,2.03125);
    r0.w = t2.SampleLevel(s0_s, r2.xy, 0).x;
    r0.w = r0.w * -2.00787401 + 3.25;
    r1.z = -cb0[27].z * r0.w + r3.y;
    r1.xw = cb0[27].xx * r1.xz + -v0.xx;
    r1.xw = round(r1.xw);
    r1.xw = sqrt(abs(r1.xw));
    r0.z = t0.SampleLevel(s0_s, r1.zy, 0, int2(1, 0)).x;
    r0.xz = float2(4,4) * r0.xz;
    r0.xz = round(r0.xz);
    r0.xz = r0.xz * float2(16,16) + r1.xw;
    r0.xz = r0.xz * float2(0.00625000009,0.0017857143) + float2(0.00312500005,0.000892857148);
    r0.xz = t1.SampleLevel(s0_s, r0.xz, 0).xy;
    o0.xy = r0.xz;
  } else {
    o0.xy = float2(0,0);
  }
  if (r0.y != 0) {
    r0.xy = v2.xy;
    r0.z = 1;
    r1.x = 0;
    while (true) {
      r0.w = cmp(v3.z < r0.y);
      r1.w = cmp(0.828100026 < r0.z);
      r0.w = r0.w ? r1.w : 0;
      r1.w = cmp(r1.x == 0.000000);
      r0.w = r0.w ? r1.w : 0;
      if (r0.w == 0) break;
      r1.xy = t0.SampleLevel(s0_s, r0.xy, 0).yx;
      r0.xy = cb0[27].zw * float2(-0,-2) + r0.xy;
      r0.z = r1.y;
    }
    r1.yz = r0.yz;
    r0.xy = r1.xz * float2(0.5,-2) + float2(0.0078125,2.03125);
    r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
    r0.x = r0.x * -2.00787401 + 3.25;
    r0.x = cb0[27].w * r0.x + r1.y;
    r0.y = v1.x;
    r1.x = t0.SampleLevel(s0_s, r0.yx, 0).y;
    r2.xy = v2.zw;
    r2.z = 1;
    r3.x = 0;
    while (true) {
      r0.w = cmp(r2.y < v3.w);
      r1.z = cmp(0.828100026 < r2.z);
      r0.w = r0.w ? r1.z : 0;
      r1.z = cmp(r3.x == 0.000000);
      r0.w = r0.w ? r1.z : 0;
      if (r0.w == 0) break;
      r3.xy = t0.SampleLevel(s0_s, r2.xy, 0).yx;
      r2.xy = cb0[27].zw * float2(0,2) + r2.xy;
      r2.z = r3.y;
    }
    r3.yz = r2.yz;
    r1.zw = r3.xz * float2(0.5,-2) + float2(0.5234375,2.03125);
    r0.w = t2.SampleLevel(s0_s, r1.zw, 0).x;
    r0.w = r0.w * -2.00787401 + 3.25;
    r0.z = -cb0[27].w * r0.w + r3.y;
    r0.xw = cb0[27].yy * r0.xz + -v0.yy;
    r0.xw = round(r0.xw);
    r0.xw = sqrt(abs(r0.xw));
    r1.y = t0.SampleLevel(s0_s, r0.yz, 0, int2(0, 1)).y;
    r0.yz = float2(4,4) * r1.xy;
    r0.yz = round(r0.yz);
    r0.xy = r0.yz * float2(16,16) + r0.xw;
    r0.xy = r0.xy * float2(0.00625000009,0.0017857143) + float2(0.00312500005,0.000892857148);
    r0.xy = t1.SampleLevel(s0_s, r0.xy, 0).xy;
    o0.zw = r0.xy;
  } else {
    o0.zw = float2(0,0);
  }
  return;
}