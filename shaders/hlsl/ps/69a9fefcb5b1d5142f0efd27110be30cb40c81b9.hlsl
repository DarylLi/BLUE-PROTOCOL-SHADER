// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[211];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(float2(0,0) < cb0[0].yx);
  if (r0.x != 0) {
    r0.xz = max(cb0[1].xy, v0.xy);
    r0.xz = min(cb0[1].zw, r0.xz);
    r0.x = t4.SampleLevel(s4_s, r0.xz, 0).x;
    r0.z = cb0[0].y * r0.x;
    r0.w = cmp(cb1[31].w < 1);
    r0.x = r0.x * cb0[0].y + cb1[65].w;
    r0.x = cb1[65].z * r0.x;
    r0.x = 1 / r0.x;
    r1.x = r0.z * cb1[30].z + cb1[31].z;
    r0.x = r0.w ? r0.x : r1.x;
  } else {
    r0.x = t0.SampleLevel(s1_s, v0.xy, 0).x;
    r0.w = r0.x * cb1[65].x + cb1[65].y;
    r1.x = r0.x * cb1[65].z + -cb1[65].w;
    r1.x = 1 / r1.x;
    r0.z = r1.x + r0.w;
  }
  r1.xyz = v1.xyz * r0.zzz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.z = dot(r1.xyz, cb1[60].xyz);
  r0.w = r0.w / r1.z;
  r0.w = cb1[210].z * r0.w;
  r0.w = max(0, r0.w);
  r1.z = min(cb2[0].z, cb1[67].z);
  r2.x = cb1[67].z + -r1.z;
  r1.w = v1.z * r0.z + r2.x;
  r2.x = dot(r1.xyw, r1.xyw);
  r2.y = rsqrt(r2.x);
  r2.x = r2.x * r2.y;
  r0.w = max(cb2[0].w, r0.w);
  r2.z = cmp(0 < r0.w);
  r2.w = r0.w * r2.y;
  r1.z = r2.w * r1.w + r1.z;
  r2.w = -r2.w * r1.w + r1.w;
  r0.w = -r0.w * r2.y + 1;
  r0.w = r0.w * r2.x;
  r2.y = -cb2[3].y + r1.z;
  r2.y = cb2[0].y * r2.y;
  r2.y = max(-127, r2.y);
  r2.y = exp2(-r2.y);
  r2.y = cb2[3].x * r2.y;
  r1.z = -cb2[1].w + r1.z;
  r1.z = cb2[1].y * r1.z;
  r1.z = max(-127, r1.z);
  r1.z = exp2(-r1.z);
  r1.z = cb2[1].z * r1.z;
  r2.y = r2.z ? r2.y : cb2[0].x;
  r1.z = r2.z ? r1.z : cb2[1].x;
  r0.w = r2.z ? r0.w : r2.x;
  r2.z = r2.z ? r2.w : r1.w;
  r2.w = cb2[0].y * r2.z;
  r2.w = max(-127, r2.w);
  r3.x = exp2(-r2.w);
  r3.x = 1 + -r3.x;
  r3.x = r3.x / r2.w;
  r3.y = -r2.w * 0.240226507 + 0.693147182;
  r2.w = cmp(0.00999999978 < abs(r2.w));
  r2.w = r2.w ? r3.x : r3.y;
  r2.z = cb2[1].y * r2.z;
  r2.z = max(-127, r2.z);
  r3.x = exp2(-r2.z);
  r3.x = 1 + -r3.x;
  r3.x = r3.x / r2.z;
  r3.y = -r2.z * 0.240226507 + 0.693147182;
  r2.z = cmp(0.00999999978 < abs(r2.z));
  r2.z = r2.z ? r3.x : r3.y;
  r1.z = r2.z * r1.z;
  r1.z = r2.y * r2.w + r1.z;
  r0.w = r1.z * r0.w;
  r2.yz = cmp(float2(0,0) < cb2[3].zw);
  if (r2.y != 0) {
    r1.z = saturate(r2.x * cb2[7].x + cb2[7].y);
    r2.yw = float2(1,-1) * cb2[6].yx;
    r3.x = dot(r1.xy, r2.yw);
    r3.y = dot(r1.xy, cb2[6].xy);
    r3.z = r1.w;
    r1.xyw = t1.SampleLevel(s2_s, r3.xyz, 0).xyz;
    r3.xyz = t1.SampleLevel(s2_s, r3.xyz, cb2[7].z).xyz;
    r1.xyw = -r3.xyz + r1.xyw;
    r1.xyz = r1.zzz * r1.xyw + r3.xyz;
    r1.xyz = cb2[2].xyz * r1.xyz;
  } else {
    r1.xyz = cb2[2].xyz;
  }
  r0.w = exp2(-r0.w);
  r0.w = min(1, r0.w);
  r0.w = max(cb2[2].w, r0.w);
  r1.w = cmp(cb2[3].w < r2.x);
  r1.w = r1.w ? r2.z : 0;
  r0.w = r1.w ? 1 : r0.w;
  r1.w = 1 + -r0.w;
  r1.xyz = r1.xyz * r1.www;
  r1.w = cmp(0 < cb2[7].w);
  if (r1.w != 0) {
    r0.z = r0.z * cb1[209].x + cb1[209].y;
    r0.z = log2(r0.z);
    r0.z = cb1[209].z * r0.z;
    r2.z = cb1[208].z * r0.z;
    r3.xy = -cb1[129].xy + v2.xy;
    r2.xy = cb1[210].xy * r3.xy;
    r2.xyzw = t2.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  } else {
    r2.xyzw = float4(0,0,0,1);
  }
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r2.w = r2.w * r0.w;
  r0.z = t3.Sample(s3_s, v0.xy).x;
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = cb1[135].yyy * r1.xyz;
  r0.x = cmp(r0.x == 0.000000);
  r0.x = r0.x ? r0.y : 0;
  o0.xyzw = r0.xxxx ? float4(0,0,0,1) : r2.xyzw;
  return;
}