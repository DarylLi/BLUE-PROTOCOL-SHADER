// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[48];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
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
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v5.xy;
  r0.xy = r0.xy * cb0[130].zw + float2(-0.5,-0.5);
  r0.xy = v5.ww * r0.xy;
  r1.z = v5.w;
  r0.zw = v5.zw;
  r1.xyw = float3(2,-2,1);
  r2.xyzw = r1.xyzw * r0.xyzw;
  r0.x = r2.z * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.y = r2.z * cb0[65].x + cb0[65].y;
  r0.x = r0.y + r0.x;
  r0.y = cmp(cb0[31].w < 1);
  r0.x = r0.y ? r2.w : r0.x;
  r0.yz = r2.xy / r2.ww;
  r0.yz = r0.yz * cb0[66].xy + cb0[66].wz;
  r1.x = t0.SampleLevel(s0_s, r0.yz, 0).x;
  r1.y = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = r1.x * cb0[65].x + cb0[65].y;
  r1.y = 1 / r1.y;
  r1.x = r1.x + r1.y;
  r0.x = r1.x + -r0.x;
  r0.x = saturate(r0.x / cb4[19].x);
  r1.x = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r1.x = cb4[19].y * r1.x;
  r1.x = exp2(r1.x);
  r0.x = r0.x ? 0 : r1.x;
  r1.x = cb4[24].w * r0.x;
  r0.x = cb4[19].z * r0.x;
  r1.y = cb1[18].x + cb1[18].y;
  r1.y = cb1[18].z + r1.y;
  r1.y = frac(r1.y);
  r1.y = cb0[142].z + r1.y;
  r1.y = cb3[2].x * r1.y;
  r1.x = r1.y * r1.x;
  r0.x = r1.y * r0.x;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r1.yz = r2.xy / cb4[25].yy;
  r1.yz = float2(-0.5,-0.5) + r1.yz;
  r3.x = dot(r1.yz, cb4[2].xy);
  r3.y = dot(r1.yz, cb4[3].xy);
  r1.yz = float2(0.5,0.5) + r3.xy;
  r3.xy = r1.xx * cb4[20].zw + r1.yz;
  r1.xy = r1.xx * cb4[24].xy + r1.yz;
  r1.xy = t1.SampleBias(s1_s, r1.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = sqrt(r2.w);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r1.z = sqrt(r2.w);
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb4[25].zzz * r3.xyz + r1.xyz;
  r1.xyz = float3(-1,-1,1) * r1.xyz;
  r3.xy = r2.xy / cb4[21].yy;
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r4.x = dot(r3.xy, cb4[2].xy);
  r4.y = dot(r3.xy, cb4[3].xy);
  r3.xy = float2(0.5,0.5) + r4.xy;
  r3.zw = r0.xx * cb4[20].zw + r3.xy;
  r3.xy = r0.xx * cb4[24].xy + r3.xy;
  r0.x = cb4[22].w + cb0[143].y;
  r3.zw = t1.SampleBias(s1_s, r3.zw, r0.x).xy;
  r3.xy = t1.SampleBias(s1_s, r3.xy, r0.x).xy;
  r4.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb4[24].zzz * r4.xyz + r3.xyz;
  r3.w = 1 + r3.z;
  r0.x = dot(r3.xyw, r1.xyz);
  r2.w = 1 + r3.z;
  r1.xyz = r2.www * r1.xyz;
  r1.xyz = r3.xyw * r0.xxx + -r1.xyz;
  r3.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb4[25].www * r3.xyz + r1.xyz;
  r3.xyz = -cb0[67].xyz + r2.xyz;
  r2.xyz = r2.xyz / cb4[17].zzz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb4[18].x;
  r2.w = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r2.w = cb4[18].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r3.x = 1 + -cb4[18].z;
  r2.w = r3.x * r2.w;
  r0.x = r0.x ? 0 : r2.w;
  r0.x = cb4[18].z + r0.x;
  r3.xy = cb4[17].ww * r2.yx;
  r3.z = -r2.z;
  r2.x = cb4[17].x * cb0[142].z;
  r2.y = -0.100000001 * r2.x;
  r2.x = 0;
  r2.xyzw = r2.xyxy + r3.xzyz;
  r2.xy = t1.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r2.zw = t1.SampleBias(s1_s, r2.zw, cb0[143].y).xy;
  r3.xy = r2.zw * float2(2,2) + float2(-1,-1);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.z = sqrt(r2.w);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = sqrt(r2.w);
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = r0.xxx * r3.xyz + r2.xyz;
  r1.xyz = -r2.xyz + r1.xyz;
  r0.x = v1.z * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb4[26].x + cb4[26].w);
  r1.xyz = r0.xxx * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r1.yyy;
  r2.xyz = r1.xxx * v0.xyz + r2.xyz;
  r1.xyz = r1.zzz * v1.xyz + r2.xyz;
  r2.xyz = cb0[13].xyz * r1.yyy;
  r2.xyz = r1.xxx * cb0[12].xyz + r2.xyz;
  r1.xyz = r1.zzz * cb0[14].xyz + r2.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r2.xy = cb0[13].xy * v1.yy;
  r2.xy = v1.xx * cb0[12].xy + r2.xy;
  r2.xy = v1.zz * cb0[14].xy + r2.xy;
  r1.xy = -r1.xy * r0.xx + r2.xy;
  r0.x = 1 + -v3.w;
  r1.z = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r1.z = cb4[46].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = 1 + -r1.z;
  r0.x = r0.x ? 1 : r1.z;
  r1.z = -1 + cb4[47].y;
  r0.x = r1.z * r0.x;
  r1.xy = r1.xy * r0.xx;
  r1.xy = cb0[130].xy * r1.xy;
  r1.xy = cb0[132].zw * r1.xy;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = -9.99999975e-006 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r2.w = cb2[7].y * cb2[7].x;
  r2.z = cb2[7].x;
  r2.xy = cb2[7].zw * r2.zw;
  r1.xy = r2.xy * r1.xy;
  r0.xy = r1.xy * float2(0.000230000005,-0.000230000005) + r0.yz;
  r1.xy = float2(0.000230000005,-0.000230000005) * r1.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.y = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.x = -r0.w * r1.w + r0.x;
  r0.y = -0.5 * cb4[47].z;
  r0.y = min(50, abs(r0.y));
  r0.y = max(1, r0.y);
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y + -cb4[47].z);
  r0.xy = r1.xy * r0.xx;
  r0.xy = float2(4,4) * r0.xy;
  o0.xy = max(float2(0,0), r0.xy);
  r0.xy = min(float2(0,0), r0.xy);
  o0.zw = -r0.xy;
  return;
}