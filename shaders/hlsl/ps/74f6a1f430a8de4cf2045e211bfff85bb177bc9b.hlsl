// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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

  r0.xy = cb2[8].yz * v2.xy;
  r1.x = cb2[6].x * r0.x;
  r1.y = cb2[7].x * r0.y;
  r0.x = cb2[4].x * cb0[142].z;
  r2.x = cb2[7].w * r0.x;
  r2.y = cb2[8].x * r0.x;
  r0.yz = r2.xy + r1.xy;
  r0.yz = t1.SampleBias(s1_s, r0.yz, cb0[143].y).xy;
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.yz, r0.yz);
  r1.xy = -r0.yz;
  r0.y = 1 + -r0.w;
  r0.y = max(0, r0.y);
  r1.z = sqrt(r0.y);
  r2.x = cb2[4].w * r0.x;
  r2.y = cb2[5].x * r0.x;
  r0.x = cb2[5].z * v2.x;
  r0.x = cb2[6].x * r0.x;
  r0.z = cb2[6].z * v2.y;
  r0.y = cb2[7].x * r0.z;
  r0.xy = r2.xy + r0.xy;
  r0.xy = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r0.z = 1 + r0.w;
  r0.w = dot(r0.xyz, r1.xyz);
  r1.xyz = r0.zzz * r1.xyz;
  r0.xyz = r0.xyz * r0.www + -r1.xyz;
  r1.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb2[9].xxx * r1.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v0.xyz + r1.xyz;
  r0.xyz = r0.zzz * v1.xyz + r0.xyw;
  r1.xyz = cb0[13].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb0[12].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb0[14].xyz + r0.xyw;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r1.xyz = -cb0[67].xyz + r1.xyz;
  r0.z = abs(r1.x) + abs(r1.y);
  r0.z = r0.z + abs(r1.z);
  r0.z = 0.333333343 * r0.z;
  r0.z = r0.z / cb2[10].z;
  r0.z = 1 + -r0.z;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb2[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r1.xy = float2(1,1) + -v2.xy;
  r1.xy = v2.xy * r1.xy;
  r1.zw = float2(4,4) * r1.xy;
  r1.xy = cmp(float2(0,0) >= r1.xy);
  r1.zw = log2(r1.zw);
  r1.zw = cb2[9].zz * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.xy = r1.xy ? float2(0,0) : r1.zw;
  r0.w = r1.x * r1.y;
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = cb0[130].zw * r1.xy;
  r2.xy = -r1.xy * cb0[130].zw + float2(1,1);
  r1.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r3.xy = v5.ww * r1.xy;
  r1.x = dot(r1.zz, r2.xx);
  r1.y = r2.y * r1.w;
  r1.x = r1.y * r1.x;
  r1.x = saturate(4 * r1.x);
  r2.z = v5.w;
  r3.zw = v5.zw;
  r2.xyw = float3(2,-2,1);
  r4.xyzw = r3.xyzw * r2.xyzw;
  r1.y = r4.z * cb0[65].z + -cb0[65].w;
  r1.y = 1 / r1.y;
  r1.z = r4.z * cb0[65].x + cb0[65].y;
  r1.y = r1.z + r1.y;
  r1.z = cmp(cb0[31].w < 1);
  r1.y = r1.z ? r4.w : r1.y;
  r1.zw = r4.xy / r4.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r2.x = t0.SampleLevel(s0_s, r1.zw, 0).x;
  r2.y = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = r2.x * cb0[65].x + cb0[65].y;
  r2.y = 1 / r2.y;
  r2.x = r2.x + r2.y;
  r1.y = r2.x + -r1.y;
  r1.y = saturate(r1.y / cb2[10].x);
  r1.x = r1.y * r1.x;
  r0.w = r1.x * r0.w;
  r1.x = -1 + cb2[10].y;
  r0.w = r1.x * r0.w;
  r0.z = r0.z * r0.w;
  r0.xy = r0.xy * r0.zz;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = -9.99999975e-006 + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.w = cb1[7].y * cb1[7].x;
  r0.z = cb1[7].x;
  r0.zw = cb1[7].zw * r0.zw;
  r0.xy = r0.zw * r0.xy;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r1.zw;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r3.w * r2.w + r0.z;
  r0.w = -0.5 * cb2[11].x;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb2[11].x);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  o0.xy = max(float2(0,0), r0.xy);
  r0.xy = min(float2(0,0), r0.xy);
  o0.zw = -r0.xy;
  return;
}