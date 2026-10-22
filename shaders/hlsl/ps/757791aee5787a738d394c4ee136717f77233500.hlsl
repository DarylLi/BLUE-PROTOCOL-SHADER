// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD6,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb1[129].xy + v4.xy;
  r0.zw = cb1[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t2.SampleBias(s1_s, r0.xy, cb1[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.yz = mad((int2)v2.xx, int2(36,36), int2(4,18));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.y = t0[r0.y].val[12/4];
  r0.y = cb1[141].w * r0.y;
  r1.xyz = -cb1[67].xyz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.z = r0.z / cb3[5].w;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[6].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = r0.z ? 1 : r0.w;
  r0.w = v5.x ? 1 : -1;
  r0.y = r0.y * r0.w;
  r0.y = max(0, -r0.y);
  r0.w = cb3[5].z * cb1[142].z;
  r0.xw = float2(0.166666672,6.28318548) * r0.xw;
  r0.w = sin(r0.w);
  r0.y = abs(r0.w) * r0.y;
  r0.x = r0.y * r0.z + r0.x;
  r0.x = -0.833299994 + r0.x;
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
  r1.xy = float2(0.100000001,0.100000001) * cb0[1].xy;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}