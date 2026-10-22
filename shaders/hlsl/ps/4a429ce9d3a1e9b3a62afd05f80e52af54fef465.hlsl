// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
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
  linear centroid float4 v3 : TEXCOORD10,
  linear centroid float4 v4 : TEXCOORD11,
  float4 v5 : TEXCOORD0,
  float4 v6 : COLOR1,
  nointerpolation float4 v7 : COLOR2,
  float v8 : PARTICLE_TIME0,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v4.zxy * v3.yzx;
  r0.xyz = v4.yzx * v3.zxy + -r0.xyz;
  r0.xyz = v4.www * r0.xyz;
  r1.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v3.xyz + r0.xyz;
  r0.xyz = r1.zzz * v4.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.x = v9.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = v8.x * cb2[13].z + v5.x;
  r1.x = r0.y * cb2[14].y + v7.w;
  r0.y = v8.x * cb2[14].z + v5.y;
  r1.y = r0.y * cb2[14].w + v7.w;
  r0.y = t0.SampleBias(s0_s, r1.xy, cb0[143].y).x;
  r0.z = r0.y * cb2[18].y + -cb2[18].y;
  r0.y = -0.5 + r0.y;
  r0.y = r0.y + r0.y;
  r0.z = saturate(cb2[18].y * v6.w + r0.z);
  r0.x = r0.x * r0.z;
  r1.x = cb2[15].w * r0.y;
  r1.y = cb2[16].x * r0.y;
  r1.xy = v5.xy + r1.xy;
  r0.y = r1.y * cb2[17].y + -cb2[17].y;
  r0.y = saturate(cb2[17].w + r0.y);
  r0.x = r0.y * r0.x;
  r1.zw = float2(1,1) + -r1.xy;
  r0.yzw = saturate(r1.xzw * float3(5,5,5) + float3(-0.5,-0.5,-0.5));
  r0.y = r0.y * r0.z;
  r0.y = r0.y * r0.w;
  r0.x = saturate(r0.x * r0.y);
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