// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[77];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  float4 v3 : TEXCOORD10,
  float4 v4 : TEXCOORD11,
  float4 v5 : TEXCOORD0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb2[54].x + v5.x;
  r0.z = cb0[142].z * cb2[55].z + v5.y;
  r0.xy = cb2[55].yw * r0.xz;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb0[143].y).z;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r0.y = cb0[142].z * cb2[71].x + v5.x;
  r1.x = cb2[72].y * r0.y;
  r0.y = cb0[142].z * cb2[72].z + v5.y;
  r1.y = cb2[72].w * r0.y;
  r0.yz = r0.xx * cb2[73].yy + r1.xy;
  r0.y = t2.SampleBias(s2_s, r0.yz, cb0[143].y).x;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb2[73].z * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y ? 0 : r0.z;
  r0.z = cb0[142].z * cb2[74].w + v5.x;
  r1.x = cb2[76].x * r0.z;
  r0.z = cb0[142].z * cb2[76].y + v5.y;
  r1.y = cb2[76].z * r0.z;
  r0.xz = r0.xx * cb2[56].yy + r1.xy;
  r0.x = t0.SampleBias(s0_s, r0.xz, cb0[143].y).x;
  r0.z = -0.100000001 + v5.x;
  r0.w = 0.899999976 + -v5.x;
  r0.z = min(r0.z, r0.w);
  r0.x = r0.z * 5 + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * cb2[69].x + -cb2[69].x;
  r0.x = saturate(cb2[69].z + r0.x);
  r0.y = 0.5 + cb0[142].z;
  r0.y = frac(r0.y);
  r0.z = r0.y + r0.y;
  r0.w = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.w = -1 + r0.w;
  r0.w = r0.w + r0.w;
  r0.zw = min(float2(1,1), r0.zw);
  r0.w = 1 + -r0.w;
  r0.z = r0.w * r0.z;
  r1.xy = cb0[45].zw * v0.yy;
  r1.xy = v0.xx * cb0[44].zw + r1.xy;
  r1.xy = v0.zz * cb0[46].zw + r1.xy;
  r1.xy = cb0[47].zw + r1.xy;
  r0.w = r1.x / r1.y;
  r0.w = -cb0[70].z + r0.w;
  r0.w = -cb2[42].w + r0.w;
  r0.w = abs(r0.w) / cb2[43].x;
  r0.w = -r0.w * cb2[43].y + 1;
  r1.x = cb2[42].x * v5.y + cb2[42].y;
  r1.y = -cb2[42].z * r1.x + 1;
  r2.y = -r1.y * r0.w + 1;
  r0.w = cb1[2].x * cb0[142].z;
  r0.w = cb2[44].x * r0.w;
  r1.yz = cb2[3].xy * r0.ww;
  r2.x = v5.x;
  r2.zw = r2.xy * cb2[1].xy + r1.yz;
  r2.xy = r2.xy * cb2[2].xy + float2(0.200000003,0.200000003);
  r1.yz = r1.yz * float2(0.699999988,0.699999988) + r2.xy;
  r2.y = t0.SampleBias(s0_s, r1.yz, cb0[143].y).x;
  r2.x = 0;
  r2.xy = cb2[45].xx * r2.xy;
  r3.xy = r2.xy * r0.yy + r2.zw;
  r0.yw = r2.xy * r0.yy + r1.yz;
  r0.y = t0.SampleBias(s0_s, r0.yw, cb0[143].y).y;
  r0.w = t0.SampleBias(s0_s, r3.xy, cb0[143].y).x;
  r1.w = frac(cb0[142].z);
  r2.zw = r2.xy * r1.ww + r2.zw;
  r1.yz = r2.xy * r1.ww + r1.yz;
  r1.y = t0.SampleBias(s0_s, r1.yz, cb0[143].y).y;
  r1.z = t0.SampleBias(s0_s, r2.zw, cb0[143].y).x;
  r0.yw = -r1.yz + r0.yw;
  r0.w = r0.z * r0.w + r1.z;
  r0.y = r0.z * r0.y + r1.y;
  r0.y = r0.w + -r0.y;
  r0.y = r0.y * cb2[46].y + v5.x;
  r0.y = r0.y * 2 + -1;
  r0.y = 1 + -abs(r0.y);
  r0.y = r0.y * cb2[69].x + -cb2[69].x;
  r0.y = saturate(cb2[69].z + r0.y);
  r0.y = cb2[69].w * r0.y;
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.x;
  r0.z = saturate(cb2[67].w * r1.x);
  r0.y = saturate(cb2[68].z * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.x = -0.337221563 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = v1.xyz / v1.www;
  r0.xy = -cb0[126].xy + r0.xy;
  r1.xyz = v2.xyz / v2.www;
  r1.xy = -cb0[126].zw + r1.xy;
  r0.xyz = -r1.xyz + r0.xyz;
  o0.xy = r0.xy * float2(0.249500006,0.249500006) + float2(0.499992371,0.499992371);
  r0.x = (uint)r0.z >> 16;
  r0.y = (int)r0.z & 0x0000ffff;
  r0.xy = (uint2)r0.xy;
  r0.y = r0.y * 1.52590219e-005 + 1.52590223e-006;
  r0.x = r0.x * 1.52590219e-005 + 1.52590223e-006;
  o0.zw = min(float2(1,1), r0.xy);
  return;
}