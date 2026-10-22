// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[130].xy + cb1[129].xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = min(v0.xy, r0.xy);
  r1.x = cmp(0 < cb0[0].z);
  if (r1.x != 0) {
    r1.x = dot(cb1[67].xyz, cb2[0].xyz);
    r1.x = -cb2[0].w + r1.x;
    r1.y = dot(v1.xyz, v1.xyz);
    r1.y = rsqrt(r1.y);
    r1.yzw = v1.xyz * r1.yyy;
    r1.y = dot(r1.yzw, cb2[0].xyz);
    r1.x = -r1.x / r1.y;
    r1.y = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r1.z = r1.y * cb1[65].x + cb1[65].y;
    r1.y = r1.y * cb1[65].z + -cb1[65].w;
    r1.y = 1 / r1.y;
    r1.y = r1.z + r1.y;
    r1.y = r1.y + -r1.x;
    r1.y = max(0, r1.y);
    r1.z = cb1[130].y + cb1[129].y;
    r1.z = -0.5 + r1.z;
    r2.x = 0;
    r2.y = 0.5 * cb1[132].w;
    r3.xyzw = float4(0,0,0,0);
    r1.w = 0;
    r2.z = 0;
    while (true) {
      r2.w = cmp(r2.z >= cb0[0].z);
      if (r2.w != 0) break;
      r0.z = r2.z * cb1[132].w + r0.y;
      r2.w = t0.SampleLevel(s0_s, r0.xz, 0).x;
      r4.x = r2.w * cb1[65].x + cb1[65].y;
      r2.w = r2.w * cb1[65].z + -cb1[65].w;
      r2.w = 1 / r2.w;
      r2.w = r4.x + r2.w;
      r2.w = r2.w + -r1.x;
      r2.w = max(0, r2.w);
      r2.w = saturate(cb0[0].y * r2.w);
      r2.w = cb0[0].z * r2.w;
      r2.w = max(1, r2.w);
      r2.w = r2.w * r2.w;
      r4.x = r2.w + r2.w;
      r4.y = -r2.z * r2.z;
      r4.x = r4.y / r4.x;
      r4.x = 1.44269502 * r4.x;
      r4.x = exp2(r4.x);
      r2.w = 6.28318548 * r2.w;
      r2.w = sqrt(r2.w);
      r2.w = r4.x / r2.w;
      r4.x = r0.y * cb1[132].y + r2.z;
      r4.x = cmp(r4.x < r1.z);
      r4.x = r4.x ? 1.000000 : 0;
      r4.y = r4.x * r2.w;
      r4.zw = r2.xy + r0.xz;
      r5.xyzw = t1.SampleLevel(s1_s, r4.zw, 0).xyzw;
      r3.xyzw = r5.xyzw * r4.yyyy + r3.xyzw;
      r1.w = r2.w * r4.x + r1.w;
      r2.z = 2 + r2.z;
    }
    r0.z = r1.y + r1.y;
    r1.y = 0.5 + cb1[129].y;
    r2.xyzw = r3.xyzw;
    r1.z = r1.w;
    r4.x = -2;
    while (true) {
      r4.y = cmp(-cb0[0].z >= r4.x);
      if (r4.y != 0) break;
      r0.w = r4.x * cb1[132].w + r0.y;
      r4.y = t0.SampleLevel(s0_s, r0.xw, 0).x;
      r4.z = r4.y * cb1[65].x + cb1[65].y;
      r4.y = r4.y * cb1[65].z + -cb1[65].w;
      r4.y = 1 / r4.y;
      r4.y = r4.z + r4.y;
      r4.y = r4.y + -r1.x;
      r4.y = max(0, r4.y);
      r4.z = saturate(cb0[0].y * r4.y);
      r4.z = cb0[0].z * r4.z;
      r4.z = max(1, r4.z);
      r4.z = r4.z * r4.z;
      r4.w = r4.z + r4.z;
      r5.x = -r4.x * r4.x;
      r4.w = r5.x / r4.w;
      r4.zw = float2(6.28318548,1.44269502) * r4.zw;
      r4.w = exp2(r4.w);
      r4.z = sqrt(r4.z);
      r4.z = r4.w / r4.z;
      r4.w = r0.y * cb1[132].y + r4.x;
      r4.y = cmp(r4.y < r0.z);
      r4.y = r4.y ? 1.000000 : 0;
      r4.y = r4.z * r4.y;
      r4.z = cmp(r1.y < r4.w);
      r4.z = r4.z ? 1.000000 : 0;
      r4.w = r4.y * r4.z;
      r5.xyzw = t1.SampleLevel(s1_s, r0.xw, 0).xyzw;
      r2.xyzw = r5.xyzw * r4.wwww + r2.xyzw;
      r1.z = r4.y * r4.z + r1.z;
      r4.x = -2 + r4.x;
    }
    r0.z = max(9.99999975e-005, r1.z);
    r1.xyzw = r2.xyzw / r0.zzzz;
    o0.xyzw = r1.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
  } else {
    r0.xyzw = t1.SampleLevel(s1_s, r0.xy, 0).xyzw;
    o0.xyzw = r0.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
  }
  return;
}