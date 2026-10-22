// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[84];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  uint v5 : PRIMITIVE_ID0,
  uint w5 : LIGHTMAP_ID0,
  float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb4[65].y + v3.x;
  r0.z = cb1[142].z * cb4[66].y + v3.y;
  r0.xy = cb4[66].xz * r0.xz;
  r0.x = t2.SampleBias(s2_s, r0.xy, cb1[143].y).x;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.xy = cb4[67].yw * r0.xx;
  r0.z = t3.SampleBias(s3_s, v3.xy, cb1[143].y).y;
  r0.z = r0.z * cb4[68].x + cb4[68].y;
  r0.xy = r0.xy * r0.zz + v3.xy;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.x = -1 + r0.x;
  r0.y = cb4[69].z + r0.x;
  r0.x = cb4[70].w + r0.x;
  r0.xy = saturate(ceil(r0.xy));
  r0.z = 1 + -r0.y;
  r0.y = cb4[82].z * r0.z + r0.y;
  r0.z = -cb4[83].x + v2.w;
  r0.y = r0.y * r0.z;
  r0.z = 1 + -r0.x;
  r0.x = cb4[83].y * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb1[129].xy + v7.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t4.SampleBias(s4_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb4[82].y * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = ddx_coarse(v6.zxy);
  r1.xyz = ddy_coarse(v6.yzx);
  r2.xyz = r1.xyz * r0.xyz;
  r0.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = max(9.99999994e-009, r0.x);
  r0.y = v4.x;
  r1.x = cb0[1].x * r0.y;
  r1.w = cb0[1].y * v4.y;
  r0.yz = float2(1,2) * r1.wx;
  r1.y = 0.5 * r1.w;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r2.xy = ddx_coarse(r0.zy);
  r0.yz = ddy_coarse(r0.yz);
  r0.z = r2.y * r0.z;
  r0.y = r2.x * r0.y + -r0.z;
  r0.x = abs(r0.y) / r0.x;
  r0.x = min(cb3[7].w, r0.x);
  r0.y = cmp(cb3[7].z < r0.x);
  r0.xz = -cb3[7].zy + r0.xx;
  r2.xyz = cb3[7].wzw + -cb3[7].zyy;
  r3.xy = r2.xy + -r0.xz;
  r3.xz = r3.xy / r2.xy;
  r4.y = r3.x;
  r3.xy = r0.xz / r2.xy;
  r0.x = r0.y ? r0.x : r0.z;
  r2.xyz = r0.xxx / r2.zzz;
  r4.x = r3.x;
  r4.zw = float2(0,1);
  r3.xw = float2(0,1);
  r0.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r2.w = 1;
  r2.xyzw = cb0[3].xxxx * r2.xyzw;
  r0.xyzw = r0.xyzw * cb0[3].yyyy + r2.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].xxxx + cb0[2].yyyy;
  r2.xyzw = cb3[9].xyzw * cb0[3].wwww;
  r0.xyzw = r0.xyzw * cb0[3].zzzz + r2.xyzw;
  r2.x = 1 + -cb0[2].z;
  r3.xyzw = cb3[8].xyzw * cb0[2].zzzz;
  r0.xyzw = r0.xyzw * r2.xxxx + r3.xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}