// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb3[11].z + v0.x;
  r0.z = cb1[142].z * cb3[12].z + v0.y;
  r0.xy = cb3[12].yw * r0.xz;
  r0.xy = t1.SampleBias(s1_s, r0.xy, cb1[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r1.xy = cb3[13].xx * r0.xy;
  r0.x = 1 + -r0.z;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.xyz = r1.xyz * cb1[138].www + cb1[138].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = v3.zxy * v2.yzx;
  r1.xyz = v3.yzx * v2.zxy + -r1.xyz;
  r1.xyz = v3.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v2.xyz + r1.xyz;
  r0.xyz = r0.zzz * v3.xyz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb1[18].xyz, r0.xyz);
  r0.x = 1 + -r0.x;
  r0.y = cb1[142].z * cb3[14].x + v0.x;
  r1.x = cb3[14].w * r0.y;
  r0.y = cb1[142].z * cb3[15].x + v0.y;
  r1.y = cb3[15].y * r0.y;
  r0.y = t2.SampleBias(s2_s, r1.xy, cb1[143].y).x;
  r0.y = 1 + -r0.y;
  r0.x = -r0.y * r0.x + cb3[15].z;
  r0.x = saturate(ceil(r0.x));
  r0.x = -0.333299994 + r0.x;
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