// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[86];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  float4 v3 : COLOR0,
  float4 v4 : TEXCOORD0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v0.xy;
  r0.zw = cb0[152].xx + r0.xy;
  r0.xy = float2(0.015625,0.015625) * r0.xy;
  r0.x = t1.SampleBias(s1_s, r0.xy, cb0[143].y).x;
  r0.yz = (uint2)r0.zw;
  r0.z = (uint)r0.z << 1;
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r0.x = r0.y + r0.x;
  r0.y = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.z = r0.x * 0.166666672 + r0.y;
  r0.x = 0.166666672 * r0.x;
  r0.x = cb2[81].x * r0.y + r0.x;
  r0.xy = float2(-0.5,-0.5) + r0.xz;
  r0.z = -cb2[81].w + v3.w;
  r0.y = r0.z * r0.y;
  r0.z = t0.SampleBias(s0_s, v4.xy, cb0[143].y).x;
  r0.z = -1 + r0.z;
  r0.w = cb2[68].z + r0.z;
  r0.z = cb2[69].w + r0.z;
  r0.zw = saturate(ceil(r0.zw));
  r1.x = 1 + -r0.w;
  r0.w = cb2[81].y * r1.x + r0.w;
  r0.y = r0.w * r0.y;
  r0.w = 1 + -r0.z;
  r0.z = cb2[82].x * r0.w + r0.z;
  r0.y = r0.y * r0.z;
  r0.y = saturate(ceil(r0.y));
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyzw = cb0[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v0.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r0.xyz = cb0[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = cb0[130].x / cb0[130].y;
  r0.y = 1.77777779 / r0.y;
  r0.y = max(1, r0.y);
  r0.z = 0.763943851 * cb0[128].x;
  r0.y = r0.z * r0.y;
  r0.xy = r0.xx * r0.yy + float2(-0.5,-300);
  r0.xy = saturate(float2(0.00333889807,0.000175438603) * r0.xy);
  r0.x = r0.x * -0.600000024 + 1;
  r0.x = r0.y * -0.200000003 + r0.x;
  r0.x = v4.z * r0.x;
  r1.x = v0.z;
  r1.y = 1;
  r0.yz = v0.ww * r1.xy;
  r0.x = r0.x * cb2[85].y + r0.z;
  r0.x = r0.y / r0.x;
  oDepthLE = min(v0.z, r0.x);
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