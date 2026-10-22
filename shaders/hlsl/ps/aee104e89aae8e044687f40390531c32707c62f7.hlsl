// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
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
  nointerpolation float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float3 v5 : PARTICLE_LIGHTING_OFFSET0,
  float4 v6 : TEXCOORD6,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[142].zz + v4.xy;
  r0.xy = float2(100,100) * r0.xy;
  r0.zw = floor(r0.xy);
  r0.zw = (int2)r0.zw;
  r0.zw = mad((int2)r0.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.z = mad((int)r0.w, 0x3c6ef35f, (int)r0.z);
  r0.w = mad(0x3c6ef35f, (int)r0.z, (int)r0.w);
  r1.x = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r2.x = mad((int)r0.w, (int)r1.x, (int)r0.z);
  r2.y = mad((int)r1.x, (int)r2.x, (int)r0.w);
  r2.z = mad((int)r2.x, (int)r2.y, (int)r1.x);
  r1.xyz = (uint3)r2.xyz >> int3(16,16,16);
  r1.xyz = (uint3)r1.xyz;
  r0.z = -0.00100000005 + v2.w;
  r0.xyz = frac(r0.xyz);
  r0.z = frac(r0.z);
  r0.zw = float2(4,2) * r0.zz;
  r0.zw = floor(r0.zw);
  r0.zw = float2(0.5,0.5) * r0.zw;
  r0.zw = frac(r0.zw);
  r0.zw = v4.xy * float2(0.5,0.5) + r0.zw;
  r0.z = t1.SampleBias(s1_s, r0.zw, cb1[143].y).x;
  r0.w = r0.z * 3 + -3;
  r0.z = ceil(r0.z);
  r0.w = saturate(v3.w * 4 + r0.w);
  r2.xy = float2(3,1.5) * r0.ww;
  r2.z = 1.52590219e-005;
  r1.xyz = r2.zzy * r1.xyz;
  r0.w = r1.z * 1.52590219e-005 + r2.y;
  r0.w = min(r0.w, r2.x);
  r1.z = 1 + -r0.w;
  r1.w = -r1.z * 0.5 + 0.5;
  r1.z = r1.z * 0.5 + 0.5;
  r1.xy = max(r1.xy, r1.ww);
  r1.xy = min(r1.xy, r1.zz);
  r0.xy = r1.xy + -r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = -r0.x * 2 + 1;
  r0.x = max(0, r0.x);
  r0.x = r0.x * 10 + -10;
  r0.x = saturate(r0.w * 10 + r0.x);
  r0.x = r0.x * r0.z + -0.333299994;
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
  r1.xy = float2(0.100000001,0.100000001) * cb0[1].yz;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}