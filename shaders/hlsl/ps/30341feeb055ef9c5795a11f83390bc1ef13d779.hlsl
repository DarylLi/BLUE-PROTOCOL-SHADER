// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[67];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r0.xyz * r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = mad((int2)v4.xx, int2(36,36), int2(32,5));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r0.xyz = r3.xyz + -r0.xyz;
  r0.w = dot(r1.xyz, r2.xzw);
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb2[53].y * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r0.xyz = r0.xyz / r1.xxx;
  r1.xy = cb0[13].xy * r0.yy;
  r0.xy = r0.xx * cb0[12].xy + r1.xy;
  r0.xy = r0.zz * cb0[14].xy + r0.xy;
  r0.xy = r0.xy * cb2[11].xy + -cb2[12].xy;
  r0.x = r0.x + r0.y;
  r0.x = t2.Sample(s0_s, r0.xx).x;
  r0.x = r0.w * r0.x;
  r0.x = max(cb2[66].z, r0.x);
  r0.y = t1.SampleBias(s1_s, v3.xy, cb0[143].y).x;
  r0.y = -1 + r0.y;
  r0.z = cb2[55].y + r0.y;
  r0.y = cb2[56].z + r0.y;
  r0.yz = saturate(ceil(r0.yz));
  r0.w = 1 + -r0.z;
  r0.z = cb2[66].y * r0.w + r0.z;
  r0.x = r0.z * r0.x;
  r0.z = 1 + -r0.y;
  r0.y = cb2[66].w * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.y = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.y = cb2[66].x * r0.y;
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