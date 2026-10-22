// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[78];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 + cb0[142].z;
  r0.x = frac(r0.x);
  r0.y = r0.x + r0.x;
  r0.z = max(1, r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.y + r0.y;
  r0.z = -1 + r0.z;
  r0.z = r0.z + r0.z;
  r0.yz = min(float2(1,1), r0.yz);
  r0.z = 1 + -r0.z;
  r0.y = r0.z * r0.y;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r0.z = -cb3[42].w + r1.z;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.000104999992 + -0.0500000007);
  r0.w = saturate(r0.w * 3 + -1);
  r0.z = abs(r0.z) / cb3[43].x;
  r0.z = -r0.z * cb3[43].y + 1;
  r1.x = cb3[42].x * v2.y + cb3[42].y;
  r1.y = -cb3[42].z * r1.x + 1;
  r2.y = -r1.y * r0.z + 1;
  r0.z = cb2[2].x * cb0[142].z;
  r0.z = cb3[44].x * r0.z;
  r1.yz = cb3[3].xy * r0.zz;
  r2.x = v2.x;
  r2.zw = r2.xy * cb3[1].xy + r1.yz;
  r2.xy = r2.xy * cb3[2].xy + float2(0.200000003,0.200000003);
  r1.yz = r1.yz * float2(0.699999988,0.699999988) + r2.xy;
  r2.y = t1.SampleBias(s1_s, r1.yz, cb0[143].y).x;
  r2.x = 0;
  r2.xy = cb3[45].xx * r2.xy;
  r3.xy = r2.xy * r0.xx + r2.zw;
  r0.xz = r2.xy * r0.xx + r1.yz;
  r4.xyz = t1.SampleBias(s1_s, r0.xz, cb0[143].y).xyz;
  r3.xyz = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xyz;
  r0.x = frac(cb0[142].z);
  r2.zw = r2.xy * r0.xx + r2.zw;
  r0.xz = r2.xy * r0.xx + r1.yz;
  r1.yzw = t1.SampleBias(s1_s, r0.xz, cb0[143].y).xyz;
  r2.xyz = t1.SampleBias(s1_s, r2.zw, cb0[143].y).xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r0.yyy * r3.xyz + r2.xyz;
  r3.xyz = r2.xyz + r2.xyz;
  r2.yzw = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r2.yzw = cb3[45].zzz * r2.yzw + r3.xyz;
  r2.yzw = float3(-1,-1,1) * r2.yzw;
  r3.xyz = r4.xyz + -r1.yzw;
  r0.xyz = r0.yyy * r3.xyz + r1.yzw;
  r1.yzw = r0.xyz + r0.xyz;
  r3.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.x = r2.x + -r0.y;
  r0.x = r0.x * cb3[46].y + v2.x;
  r0.x = r0.x * 2 + -1;
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * cb3[69].x + -cb3[69].x;
  r0.x = saturate(cb3[69].z + r0.x);
  r3.xyz = cb3[45].yyy * r3.xyz + r1.yzw;
  r3.w = 1 + r3.z;
  r0.y = dot(r3.xyw, r2.yzw);
  r0.z = 1 + r3.z;
  r1.yzw = r0.zzz * r2.yzw;
  r1.yzw = r3.xyw * r0.yyy + -r1.yzw;
  r2.xyz = float3(0,0,1) + -r1.yzw;
  r1.yzw = cb3[45].www * r2.xyz + r1.yzw;
  r1.yzw = float3(-1,-1,-1) + r1.yzw;
  r0.y = cb3[6].y + v2.y;
  r0.y = r0.y * cb3[47].w + -cb3[47].w;
  r0.y = saturate(cb3[48].z + r0.y);
  r0.z = cb3[49].y * r0.y;
  r0.y = -cb3[49].y * r0.y + 1;
  r0.y = cb3[49].w * r0.y + r0.z;
  r1.yzw = r0.yyy * r1.yzw + float3(1,1,1);
  r1.yzw = r1.yzw * cb0[138].www + cb0[138].xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r1.zzz;
  r2.xyz = r1.yyy * v0.xyz + r2.xyz;
  r1.yzw = r1.www * v1.xyz + r2.xyz;
  r2.xyz = cb0[13].xyz * r1.zzz;
  r2.xyz = r1.yyy * cb0[12].xyz + r2.xyz;
  r1.yzw = r1.www * cb0[14].xyz + r2.xyz;
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = rsqrt(r0.z);
  r1.yz = r1.yz * r0.zz;
  r0.z = 1 + -cb3[76].w;
  r0.z = r0.w * r0.z + cb3[76].w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z;
  r0.z = 1 + -r1.x;
  r0.w = saturate(cb3[67].w * r1.x);
  r0.z = saturate(cb3[68].z * r0.z);
  r0.z = r0.w * r0.z;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  r0.yz = -cb0[129].xy + v5.xy;
  r0.yz = r0.yz * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r0.yz;
  r3.z = v5.w;
  r2.zw = v5.zw;
  r3.xyw = float3(2,-2,1);
  r4.xyzw = r3.xyzw * r2.xyzw;
  r0.y = r4.z * cb0[65].z + -cb0[65].w;
  r0.y = 1 / r0.y;
  r0.z = r4.z * cb0[65].x + cb0[65].y;
  r0.y = r0.z + r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r0.y = r0.z ? r4.w : r0.y;
  r0.zw = r4.xy / r4.ww;
  r0.zw = r0.zw * cb0[66].xy + cb0[66].wz;
  r1.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r1.w = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = r1.x * cb0[65].x + cb0[65].y;
  r1.w = 1 / r1.w;
  r1.x = r1.x + r1.w;
  r0.y = r1.x + -r0.y;
  r0.y = saturate(r0.y / cb3[77].y);
  r0.x = r0.y * r0.x;
  r0.x = 0.400000006 * r0.x;
  r0.xy = r1.yz * r0.xx;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r1.x = dot(r0.xy, r0.xy);
  r1.x = -9.99999975e-006 + r1.x;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.w = cb1[7].y * cb1[7].x;
  r1.z = cb1[7].x;
  r1.xy = cb1[7].zw * r1.zw;
  r0.xy = r1.xy * r0.xy;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r0.zw;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r2.w * r3.w + r0.z;
  r0.w = -0.5 * cb3[77].z;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb3[77].z);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  o0.xy = max(float2(0,0), r0.xy);
  r0.xy = min(float2(0,0), r0.xy);
  o0.zw = -r0.xy;
  return;
}