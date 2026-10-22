// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  uint v6 : PRIMITIVE_ID0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 4 * cb3[20].x;
  r0.x = saturate(r0.x);
  r0.x = 0.200000003 + r0.x;
  r0.x = floor(r0.x);
  r0.y = cb2[2].x * cb0[142].z;
  r0.z = r0.y * cb3[17].w + v5.x;
  r1.x = cb3[18].x * r0.z;
  r0.z = r0.y * cb3[18].y + v5.y;
  r0.yw = r0.yy * cb3[16].yw + v5.xy;
  r1.y = cb3[18].z * r0.z;
  r0.z = t1.SampleBias(s1_s, r1.xy, cb0[143].y).x;
  r0.z = -0.5 + r0.z;
  r0.z = r0.z + r0.z;
  r1.xy = r0.zz * cb3[19].yw + cb3[13].xy;
  r2.x = r0.y * cb3[16].z + 4;
  r2.y = r0.w * cb3[17].x + 4;
  r0.yz = r2.xy + r1.xy;
  r1.xyzw = t2.SampleBias(s2_s, r0.yz, cb0[143].y).xyzw;
  r0.y = r1.y + -r1.x;
  r0.x = r0.x * r0.y + r1.x;
  r0.y = r1.z + -r0.x;
  r0.zw = saturate(cb3[20].xx * float2(4,4) + float2(-1,-2));
  r0.zw = float2(0.200000003,0.200000003) + r0.zw;
  r0.zw = floor(r0.zw);
  r0.x = r0.z * r0.y + r0.x;
  r0.y = r1.w + -r0.x;
  r0.x = r0.w * r0.y + r0.x;
  r0.x = saturate(cb3[20].z * r0.x);
  r0.yz = -cb0[129].xy + v0.xy;
  r0.yz = r0.yz * cb0[130].zw + float2(-0.5,-0.5);
  r1.xy = v0.ww * r0.yz;
  r1.zw = v0.zw;
  r2.xyw = float3(2,-2,1);
  r2.z = v0.w;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.y = r1.z * cb0[65].z + -cb0[65].w;
  r0.y = 1 / r0.y;
  r0.z = r1.z * cb0[65].x + cb0[65].y;
  r0.y = r0.z + r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r0.y = r0.z ? r1.w : r0.y;
  r0.zw = r1.xy / r1.ww;
  r0.zw = r0.zw * cb0[66].xy + cb0[66].wz;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.y = r0.z + -r0.y;
  r0.y = saturate(r0.y / cb3[21].x);
  r0.x = r0.x * r0.y;
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb0[70].xyz + r0.yzw;
  r0.yzw = -cb0[67].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r1.xyz = -cb1[2].xyz + cb0[67].xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.yz = sqrt(r0.yz);
  r0.w = max(cb1[2].x, cb1[2].y);
  r0.w = max(cb1[2].z, r0.w);
  r0.w = saturate(ceil(r0.w));
  r1.x = r0.w * r0.z;
  r0.z = r0.w * r0.z + cb3[21].y;
  r0.w = max(r0.z, r1.x);
  r0.z = min(r0.z, r1.x);
  r0.yz = r0.yz / r0.ww;
  r0.w = 1 + r0.z;
  r0.y = saturate(r0.y * r0.w + -r0.z);
  r0.y = r0.y * 3 + -1;
  r0.y = max(cb3[21].z, r0.y);
  r0.y = min(1, r0.y);
  r0.z = 1 + -r0.y;
  r0.w = saturate(ceil(cb2[2].y));
  r0.y = r0.w * r0.z + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = max(0, r0.x);
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