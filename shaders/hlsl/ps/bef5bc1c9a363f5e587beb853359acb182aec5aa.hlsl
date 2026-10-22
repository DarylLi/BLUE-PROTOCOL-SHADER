// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(float2(0,0) < cb0[0].yx);
  if (r0.x != 0) {
    r0.xz = max(cb0[1].xy, v0.xy);
    r0.xz = min(cb0[1].zw, r0.xz);
    r0.x = t2.SampleLevel(s2_s, r0.xz, 0).x;
    r0.z = cb0[0].y * r0.x;
    r0.w = cmp(cb1[31].w < 1);
    r0.x = r0.x * cb0[0].y + cb1[65].w;
    r0.x = cb1[65].z * r0.x;
    r0.x = 1 / r0.x;
    r1.x = r0.z * cb1[30].z + cb1[31].z;
    r0.x = r0.w ? r0.x : r1.x;
  } else {
    r0.x = t0.SampleLevel(s0_s, v0.xy, 0).x;
    r0.w = r0.x * cb1[65].x + cb1[65].y;
    r1.x = r0.x * cb1[65].z + -cb1[65].w;
    r1.x = 1 / r1.x;
    r0.z = r1.x + r0.w;
  }
  r1.xy = v1.xy * r0.zz;
  r0.w = min(cb2[0].z, cb1[67].z);
  r1.z = cb1[67].z + -r0.w;
  r1.w = v1.z * r0.z + r1.z;
  r0.z = dot(r1.xyw, r1.xyw);
  r1.x = rsqrt(r0.z);
  r0.z = r1.x * r0.z;
  r1.y = max(0, cb2[0].w);
  r1.z = cmp(0 < r1.y);
  r2.x = r1.y * r1.x;
  r0.w = r2.x * r1.w + r0.w;
  r2.x = -r2.x * r1.w + r1.w;
  r1.x = -r1.y * r1.x + 1;
  r1.x = r1.x * r0.z;
  r1.y = -cb2[3].y + r0.w;
  r1.y = cb2[0].y * r1.y;
  r1.y = max(-127, r1.y);
  r1.y = exp2(-r1.y);
  r1.y = cb2[3].x * r1.y;
  r0.w = -cb2[1].w + r0.w;
  r0.w = cb2[1].y * r0.w;
  r0.w = max(-127, r0.w);
  r0.w = exp2(-r0.w);
  r0.w = cb2[1].z * r0.w;
  r1.y = r1.z ? r1.y : cb2[0].x;
  r0.w = r1.z ? r0.w : cb2[1].x;
  r1.x = r1.z ? r1.x : r0.z;
  r1.z = r1.z ? r2.x : r1.w;
  r1.w = cb2[0].y * r1.z;
  r1.w = max(-127, r1.w);
  r2.x = exp2(-r1.w);
  r2.x = 1 + -r2.x;
  r2.x = r2.x / r1.w;
  r2.y = -r1.w * 0.240226507 + 0.693147182;
  r1.w = cmp(0.00999999978 < abs(r1.w));
  r1.w = r1.w ? r2.x : r2.y;
  r1.z = cb2[1].y * r1.z;
  r1.z = max(-127, r1.z);
  r2.x = exp2(-r1.z);
  r2.x = 1 + -r2.x;
  r2.x = r2.x / r1.z;
  r2.y = -r1.z * 0.240226507 + 0.693147182;
  r1.z = cmp(0.00999999978 < abs(r1.z));
  r1.z = r1.z ? r2.x : r2.y;
  r0.w = r1.z * r0.w;
  r0.w = r1.y * r1.w + r0.w;
  r0.w = r0.w * r1.x;
  r0.w = exp2(-r0.w);
  r0.w = min(1, r0.w);
  r0.w = max(cb2[2].w, r0.w);
  r1.x = cmp(0 < cb2[3].w);
  r0.z = cmp(cb2[3].w < r0.z);
  r0.z = r0.z ? r1.x : 0;
  r1.w = r0.z ? 1 : r0.w;
  r0.z = 1 + -r1.w;
  r2.xyz = cb2[2].xyz * r0.zzz;
  r0.z = t1.Sample(s1_s, v0.xy).x;
  r2.xyz = r2.xyz * r0.zzz;
  r1.xyz = cb1[135].yyy * r2.xyz;
  r0.x = cmp(r0.x == 0.000000);
  r0.x = r0.x ? r0.y : 0;
  o0.xyzw = r0.xxxx ? float4(0,0,0,1) : r1.xyzw;
  return;
}