// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[9];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
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
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD6,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb1[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = -cb1[67].xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.yzw = -cb3[2].xyz + cb1[67].xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.xy = sqrt(r0.xy);
  r0.z = max(cb3[2].x, cb3[2].y);
  r0.z = max(cb3[2].z, r0.z);
  r0.z = saturate(ceil(r0.z));
  r0.w = r0.z * r0.y;
  r0.y = r0.z * r0.y + cb5[7].w;
  r0.z = max(r0.y, r0.w);
  r0.y = min(r0.y, r0.w);
  r0.xy = r0.xy / r0.zz;
  r0.z = 1 + r0.y;
  r0.x = saturate(r0.x * r0.z + -r0.y);
  r0.x = r0.x * 3 + -1;
  r0.x = max(cb5[8].x, r0.x);
  r0.x = min(1, r0.x);
  r0.y = 1 + -r0.x;
  r0.z = saturate(ceil(cb4[2].y));
  r0.x = r0.z * r0.y + r0.x;
  r1.xyzw = -cb1[129].xyxy + v4.xyxy;
  r2.xyzw = float4(0.015625,0.015625,0.5,0.5) * r1.xyzw;
  r0.yz = cb1[152].xx + r1.zw;
  r0.yz = (uint2)r0.yz;
  r1.xy = frac(r2.zw);
  r0.w = t2.SampleBias(s2_s, r2.xy, cb1[143].y).x;
  r1.xy = r1.xy + r1.xy;
  r1.xy = floor(r1.xy);
  r1.z = r1.x + r1.y;
  r1.xy = r1.xy + -r1.yx;
  r1.z = -1 + r1.z;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.x = 0.5 * r1.x;
  r1.x = r1.z * 0.25 + r1.x;
  r1.x = r1.y * 0.75 + r1.x;
  r0.x = r1.x + r0.x;
  r0.x = saturate(-0.824450016 + r0.x);
  r0.x = ceil(r0.x);
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.y = r0.y + r0.w;
  r0.y = r0.y * 0.166666672 + -0.5;
  r0.x = r0.y * r0.x;
  r0.yz = cb5[4].xx * v2.xy;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb1[143].y).w;
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.zw = float2(0,1);
  r1.xw = float2(0,1);
  r2.x = min(0, cb2[7].w);
  r2.y = cmp(cb2[7].z < r2.x);
  r2.xz = -cb2[7].zy + r2.xx;
  r3.xyz = cb2[7].wzw + -cb2[7].zyy;
  r4.xy = r3.xy + -r2.xz;
  r0.xy = r4.yx / r3.yx;
  r1.z = r0.x;
  r3.xy = r2.xz / r3.xy;
  r2.x = r2.y ? r2.x : r2.z;
  r4.xyz = r2.xxx / r3.zzz;
  r0.x = r3.x;
  r1.y = r3.y;
  r0.xyzw = r2.yyyy ? r0.xyzw : r1.xyzw;
  r4.w = 1;
  r1.xyzw = cb0[3].xxxx * r4.xyzw;
  r0.xyzw = r0.xyzw * cb0[3].yyyy + r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].xxxx + cb0[2].yyyy;
  r1.xyzw = cb2[9].xyzw * cb0[3].wwww;
  r0.xyzw = r0.xyzw * cb0[3].zzzz + r1.xyzw;
  r1.x = 1 + -cb0[2].z;
  r2.xyzw = cb2[8].xyzw * cb0[2].zzzz;
  r0.xyzw = r0.xyzw * r1.xxxx + r2.xyzw;
  r1.xy = float2(0.100000001,0.100000001) * cb0[1].zw;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}