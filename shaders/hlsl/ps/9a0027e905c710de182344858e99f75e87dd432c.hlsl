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
  float4 cb3[14];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  uint v3 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.z;
  r0.y = 1;
  r0.xy = v0.ww * r0.xy;
  r0.z = r0.x * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.y = cb2[1].w * 0.617499948 + -r0.x;
  r0.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r0.y = saturate(r0.y / r0.w);
  r0.w = -cb2[1].w * 0.649999976 + 8000;
  r0.y = r0.y * r0.w + r0.z;
  r0.z = cb3[13].y + r0.x;
  r0.x = r0.x / cb3[13].y;
  r0.y = r0.z / r0.y;
  r0.z = cb3[13].x * cb2[1].w;
  r0.w = cmp(r0.z >= 0);
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.y = r0.w ? r0.y : r0.x;
  r0.x = r0.z ? r0.y : r0.x;
  r0.yzw = -cb0[129].xxy + v0.xxy;
  r1.xy = cb0[152].xx + r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.y = (uint)r1.y << 1;
  r1.x = (int)r1.y + (int)r1.x;
  r1.x = (uint)r1.x % 5;
  r1.x = (uint)r1.x;
  r0.y = r0.y * cb0[130].z + -0.469999999;
  r0.yzw = float3(4.93230057,0.015625,0.015625) * r0.yzw;
  r0.y = cos(r0.y);
  r0.y = 0.899999976 + r0.y;
  r0.y = saturate(0.555555582 * r0.y);
  r0.z = t2.SampleBias(s1_s, r0.zw, cb0[143].y).x;
  r0.z = r1.x + r0.z;
  r0.z = 0.166666672 * r0.z;
  r0.w = cmp(9.99999975e-006 < abs(cb3[13].x));
  r1.x = 1 + cb3[13].x;
  r0.w = r0.w ? r1.x : 1.39999998;
  r0.y = r0.w + -r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-0.5 + r0.x);
  r0.y = mad((int)v2.x, 36, 18);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r0.y = r0.y + r0.z;
  r0.y = r0.y + r0.w;
  r0.y = frac(r0.y);
  r0.y = cb0[142].z + r0.y;
  r0.y = cb1[2].x * r0.y;
  r0.y = cb3[7].x * r0.y;
  r1.x = cb3[7].w * r0.y;
  r1.y = cb3[8].x * r0.y;
  r2.x = cb3[8].z * v1.x + cb3[8].w;
  r2.y = v1.y * cb3[9].x + cb3[9].y;
  r0.yz = float2(-0.5,-0.5) + r2.xy;
  r0.w = cb3[8].y * cb0[142].z;
  r0.w = 0.25 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.x = -r2.x;
  r4.y = r3.x;
  r4.z = r2.x;
  r2.y = dot(r4.zy, r0.yz);
  r2.x = dot(r4.yx, r0.yz);
  r0.yz = r2.xy + r1.xy;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.y = t1.SampleBias(s0_s, r0.yz, cb0[143].y).w;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}