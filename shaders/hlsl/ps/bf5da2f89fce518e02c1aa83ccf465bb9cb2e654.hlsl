// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[33];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[45].zw * v5.yy;
  r0.xy = v5.xx * cb1[44].zw + r0.xy;
  r0.xy = v5.zz * cb1[46].zw + r0.xy;
  r0.xy = cb1[47].zw + r0.xy;
  r0.x = r0.x / r0.y;
  r0.x = -cb1[70].z + r0.x;
  r0.x = -cb4[29].y + r0.x;
  r0.x = abs(r0.x) / cb4[29].z;
  r0.x = -r0.x * cb4[29].w + 1;
  r0.y = cb4[28].z * v2.y + cb4[28].w;
  r0.y = -cb4[29].x * r0.y + 1;
  r0.y = -r0.y * r0.x + 1;
  r0.z = cb3[2].x * cb1[142].z;
  r0.z = cb4[30].x * r0.z;
  r0.zw = cb4[17].xy * r0.zz;
  r0.x = v2.x;
  r1.xy = r0.xy * cb4[16].xy + r0.zw;
  r0.xy = r0.xy * cb4[18].xy + float2(0.200000003,0.200000003);
  r0.xy = r0.zw * float2(0.699999988,0.699999988) + r0.xy;
  r0.z = t1.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r2.y = r0.z * 2 + -1;
  r2.xw = float2(0,1);
  r0.zw = cb4[31].xx * r2.xy;
  r1.z = 0.5 + cb1[142].z;
  r1.z = frac(r1.z);
  r2.xy = r0.zw * r1.zz + r1.xy;
  r1.w = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r1.w = r1.w * 2 + -1;
  r2.x = frac(cb1[142].z);
  r1.xy = r0.zw * r2.xx + r1.xy;
  r2.xy = r0.zw * r2.xx + r0.xy;
  r0.xy = r0.zw * r1.zz + r0.xy;
  r0.z = r1.z + r1.z;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb1[143].y).y;
  r0.x = r0.x * 2 + -1;
  r0.y = t1.SampleBias(s1_s, r2.xy, cb1[143].y).y;
  r0.y = r0.y * 2 + -1;
  r0.w = t1.SampleBias(s1_s, r1.xy, cb1[143].y).x;
  r0.w = r0.w * 2 + -1;
  r1.x = r1.w + -r0.w;
  r1.y = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.z = min(1, r0.z);
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.y = min(1, r1.y);
  r1.y = 1 + -r1.y;
  r0.z = r1.y * r0.z;
  r0.w = r0.z * r1.x + r0.w;
  r0.x = r0.x + -r0.y;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = r0.w + -r0.x;
  r0.x = r0.x * cb4[31].y + v2.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb4[31].w + -cb4[31].w;
  r0.x = saturate(cb4[32].y + r0.x);
  r0.yz = -cb1[129].xy + v5.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t2.SampleBias(s2_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.x = r0.y * 0.166666672 + r0.x;
  r0.x = -0.833299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = ddx_coarse(v4.zxy);
  r1.xyz = ddy_coarse(v4.yzx);
  r2.xyz = r1.xyz * r0.xyz;
  r0.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = max(9.99999994e-009, r0.x);
  r0.y = v3.x;
  r1.x = cb0[11].x * r0.y;
  r1.w = cb0[11].y * v3.y;
  r0.yz = float2(1,2) * r1.wx;
  r1.y = 0.5 * r1.w;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r2.xy = ddx_coarse(r0.zy);
  r0.yz = ddy_coarse(r0.yz);
  r0.z = r2.y * r0.z;
  r0.y = r2.x * r0.y + -r0.z;
  r0.x = abs(r0.y) / r0.x;
  r0.x = min(cb2[7].w, r0.x);
  r0.y = cmp(cb2[7].z < r0.x);
  r0.xz = -cb2[7].zy + r0.xx;
  r2.xyz = cb2[7].wzw + -cb2[7].zyy;
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
  r2.xyzw = cb0[13].xxxx * r2.xyzw;
  r0.xyzw = r0.xyzw * cb0[13].yyyy + r2.xyzw;
  r0.xyzw = r0.xyzw * cb0[12].xxxx + cb0[12].yyyy;
  r2.xyzw = cb2[9].xyzw * cb0[13].wwww;
  r0.xyzw = r0.xyzw * cb0[13].zzzz + r2.xyzw;
  r2.x = 1 + -cb0[12].z;
  r3.xyzw = cb2[8].xyzw * cb0[12].zzzz;
  r0.xyzw = r0.xyzw * r2.xxxx + r3.xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}