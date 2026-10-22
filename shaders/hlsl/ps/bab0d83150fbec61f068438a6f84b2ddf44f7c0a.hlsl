// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD10,
  float4 v2 : TEXCOORD11,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v0.xy;
  r0.zw = cb0[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t1.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.yz = mad((int2)v3.xx, int2(36,36), int2(4,18));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.y = t0[r0.y].val[12/4];
  r0.y = cb0[141].w * r0.y;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.z = r0.z / cb1[5].w;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb1[6].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = r0.z ? 1 : r0.w;
  r0.w = v5.x ? 1 : -1;
  r0.y = r0.y * r0.w;
  r0.y = max(0, -r0.y);
  r0.w = cb1[5].z * cb0[142].z;
  r0.xw = float2(0.166666672,6.28318548) * r0.xw;
  r0.w = sin(r0.w);
  r0.y = abs(r0.w) * r0.y;
  r0.x = r0.y * r0.z + r0.x;
  r0.x = -0.833299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}