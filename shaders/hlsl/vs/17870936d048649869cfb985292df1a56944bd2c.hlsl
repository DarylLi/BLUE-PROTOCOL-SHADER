// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[37];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[7].w + -cb0[5].w;
  r0.y = r0.x * r0.x;
  r0.z = r0.y * r0.x;
  r0.w = -r0.y * 2 + r0.z;
  r0.w = r0.w + r0.x;
  r1.xyz = cb0[2].xyz * r0.www;
  r0.w = 3 * r0.y;
  r1.w = r0.z * 2 + -r0.w;
  r0.z = r0.z * -2 + r0.w;
  r0.w = 1 + r1.w;
  r1.xyz = r0.www * cb0[1].xyz + r1.xyz;
  r0.w = r0.y * r0.x + -r0.y;
  r1.xyz = r0.www * cb0[5].xyz + r1.xyz;
  r1.xyz = r0.zzz * cb0[4].xyz + r1.xyz;
  r2.xyz = float3(3,3,3) * cb0[2].zxy;
  r2.xyz = cb0[1].zxy * float3(6,6,6) + r2.xyz;
  r2.xyz = cb0[5].zxy * float3(3,3,3) + r2.xyz;
  r2.xyz = -cb0[4].zxy * float3(6,6,6) + r2.xyz;
  r3.xyz = float3(4,4,4) * cb0[2].zxy;
  r3.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r3.xyz;
  r3.xyz = -cb0[5].zxy * float3(2,2,2) + r3.xyz;
  r3.xyz = cb0[4].zxy * float3(6,6,6) + r3.xyz;
  r3.xyz = r3.xyz * r0.xxx;
  r0.yzw = r2.xyz * r0.yyy + r3.xyz;
  r0.yzw = cb0[2].zxy + r0.yzw;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r2.xyz = cb0[7].zxy * r0.wyz;
  r2.xyz = cb0[7].yzx * r0.yzw + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(r0.x);
  r2.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.w * r1.w;
  r2.w = cmp(0 != cb0[4].w);
  r0.x = r2.w ? r1.w : r0.x;
  r3.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r3.xyzw = r0.xxxx * r3.xyzw + cb0[3].xyzw;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r4.xyz = r2.yzx * r0.yzw;
  r4.xyz = r0.wyz * r2.zxy + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r1.xyw = r3.www * r4.xyz + r1.xyz;
  r5.w = r1.y;
  r2.w = cb0[2].w + -cb0[1].w;
  r0.x = r0.x * r2.w + cb0[1].w;
  sincos(r0.x, r0.x, r6.x);
  r6.yzw = r0.xxx * r2.xyz;
  r6.yzw = r6.xxx * r4.xyz + r6.yzw;
  r4.xyz = r0.xxx * r4.xyz;
  r2.xyz = r6.xxx * r2.xyz + -r4.xyz;
  r4.xyz = r6.yzw * r3.yyy;
  r7.xyz = cb0[10].xyz * r4.yyy;
  r8.xyz = r2.xyz * r3.xxx;
  r5.xyz = cb0[9].xyz * r8.yyy + r7.xyz;
  r0.x = dot(v0.xyzw, r5.xyzw);
  r5.xyz = cb2[1].xyz * r0.xxx;
  r7.w = r1.x;
  r4.xyw = cb0[10].xyz * r4.xxx;
  r9.xyz = cb0[10].xyz * r4.zzz;
  r1.xyz = cb0[9].xyz * r8.zzz + r9.xyz;
  r7.xyz = cb0[9].xyz * r8.xxx + r4.xyw;
  r0.x = dot(v0.xyzw, r7.xyzw);
  r4.xyz = cb2[0].xyz * r0.xxx + r5.xyz;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[2].xyz * r0.xxx + r4.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = -cb1[70].xyz + r1.xyz;
  r4.xyz = r4.xyz / cb3[24].zzz;
  r0.x = cb3[23].y * cb1[142].z;
  r4.xyz = r0.xxx * float3(-0.5,-0.5,-0.5) + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xyz = -abs(r4.xyz) * float3(2,2,2) + float3(3,3,3);
  r4.xyz = abs(r4.xyz) * abs(r4.xyz);
  r4.xyz = r4.xyz * r5.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r4.xyz = -cb1[70].zxy + r1.zxy;
  r3.zw = r4.yz / cb3[23].ww;
  r3.zw = r0.xx * float2(0.353553385,-0.353553385) + r3.zw;
  r3.zw = float2(0.5,0.5) + r3.zw;
  r3.zw = frac(r3.zw);
  r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
  r5.xy = -abs(r3.zw) * float2(2,2) + float2(3,3);
  r3.zw = abs(r3.zw) * abs(r3.zw);
  r3.zw = r3.zw * r5.xy;
  r0.x = dot(float2(-0.707106769,0.707106769), r3.zw);
  r0.x = r0.x + r1.w;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r5.x);
  r5.yzw = float3(7.07106781,-7.07106781,0) * r0.xxx;
  r5.xyz = r5.xxx * float3(0,0,10) + r5.yzw;
  r5.xyz = float3(0,0,-10) + r5.xyz;
  r5.xyz = cb3[24].www * r5.xyz;
  r3.zw = r4.yz / cb3[26].yy;
  r7.z = cb3[26].x * cb1[142].z;
  r7.xy = cb3[25].xw * cb1[142].zz;
  r3.zw = r7.yz + r3.zw;
  r0.x = 6.28318548 * r7.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * 0.5 + 0.75;
  r1.w = t0.SampleLevel(s0_s, r3.zw, -1).x;
  r1.w = cb3[26].z * r1.w;
  r2.w = log2(r1.w);
  r1.w = cmp(0 >= r1.w);
  r2.w = cb3[26].w * r2.w;
  r2.w = exp2(r2.w);
  r1.w = r1.w ? 0 : r2.w;
  r1.w = saturate(cb3[27].x + r1.w);
  r2.w = 0.5 + cb1[142].z;
  r2.w = cb3[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r0.x = -r2.w + r0.x;
  r0.x = r1.w * r0.x + r2.w;
  r0.x = cb3[27].y * r0.x;
  r0.x = cb3[27].z * r0.x;
  r5.xyz = r5.xyz * r0.xxx + float3(1,1,1);
  r0.x = 1 + -v4.y;
  r5.xyz = r5.xyz * r0.xxx;
  r7.z = cb3[36].x * r5.y;
  r7.xy = cb3[35].zw * r5.zx;
  r7.w = cb3[36].y * r7.x;
  r5.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r5.xyz = floor(r5.xyz);
  r5.xyz = r5.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r4.yzw = -r5.xyz + r4.xyz;
  r3.zw = float2(9.99999975e-005,9.99999975e-005) * r4.zw;
  r0.x = r4.y * 9.99999975e-005 + 0.200000003;
  r4.yzw = t1.SampleLevel(s1_s, r3.zw, -1).xyz;
  r1.w = r4.y + -r4.z;
  r1.w = max(9.99999975e-005, r1.w);
  r2.w = cb3[34].z + r4.z;
  r4.y = -r2.w + r0.x;
  r0.x = -r4.w + r0.x;
  r2.w = r2.w + -r4.w;
  r2.w = max(9.99999975e-005, r2.w);
  r4.y = max(0, r4.y);
  r1.w = r4.y / r1.w;
  r1.w = min(1, r1.w);
  r4.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r4.y = min(0.200000003, r4.y);
  r1.w = r4.y * r1.w;
  r4.y = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r2.w = r4.y / r2.w;
  r2.w = min(1, r2.w);
  r4.y = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r4.y = min(0.200000003, r4.y);
  r2.w = r4.y * r2.w;
  r2.w = 5 * r2.w;
  r4.y = r1.w * 5 + -r2.w;
  r1.w = 5 * r1.w;
  r4.y = cmp(9.99999975e-006 < abs(r4.y));
  r4.z = cmp(r1.w >= r2.w);
  r1.w = max(r1.w, r2.w);
  r5.xy = t2.SampleLevel(s2_s, r3.zw, -1).xy;
  r3.zw = t3.SampleLevel(s3_s, r3.zw, -1).xy;
  r3.zw = float2(-1,-1) + r3.zw;
  r2.w = r4.z ? r5.y : r5.x;
  r2.w = r4.y ? r2.w : r5.x;
  r2.w = cb3[34].w * r2.w;
  r2.w = r2.w * r1.w;
  r4.y = cb3[14].z + cb2[5].z;
  r4.x = r4.x + -r4.y;
  r0.x = min(r4.x, r0.x);
  r0.x = cb3[35].y * r0.x;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r4.xy = r0.xx * r3.zw;
  r0.x = dot(r4.xy, r4.xy);
  r0.x = sqrt(r0.x);
  r4.z = -1.20000005 * r0.x;
  r4.xyz = r4.xyz + r7.yzw;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyzw = cb1[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb1[0].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb1[2].xyzw + r4.xyzw;
  o4.xyz = r1.xyz;
  r1.xyzw = cb1[3].xyzw + r4.xyzw;
  o0.xy = cb1[364].xy * r1.zz + r1.xy;
  o0.zw = r1.zw;
  r1.xy = cmp(float2(0,0) < r3.xy);
  r1.zw = cmp(r3.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r1.xzw = r2.xyz * r1.xxx;
  r2.xyz = r6.yzw * r1.yyy;
  r3.xyz = cb0[9].xyz * r1.xxx;
  r3.xyz = cb0[8].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb0[10].xyz * r2.xxx + r3.xyz;
  r4.x = dot(v1.xyz, r3.xyz);
  r3.z = dot(v2.xyz, r3.xyz);
  r1.xyz = cb0[9].xyz * r1.zzz;
  r5.xyz = cb0[9].xyz * r1.www;
  r0.xyz = cb0[8].xyz * r0.yyy + r5.xyz;
  r1.xyz = cb0[8].xyz * r0.www + r1.xyz;
  r1.xyz = cb0[10].xyz * r2.yyy + r1.xyz;
  r0.xyz = cb0[10].xyz * r2.zzz + r0.xyz;
  r4.y = dot(v1.xyz, r1.xyz);
  r3.x = dot(v2.xyz, r1.xyz);
  r4.z = dot(v1.xyz, r0.xyz);
  r3.y = dot(v2.xyz, r0.xyz);
  r0.xyz = r4.xyz * r3.xyz;
  r0.xyz = r3.zxy * r4.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = r0.xyz * r3.xyz;
  r0.xyz = r0.zxy * r3.yzx + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb2[4].yyy * cb2[1].xyz;
  r2.xyz = r1.xyz * r0.yyy;
  r1.xyz = r3.xxx * r1.xyz;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyw = r0.xxx * r4.xyz + r2.xyz;
  r1.xyz = r3.zzz * r4.xyz + r1.xyz;
  r2.xyz = cb2[4].zzz * cb2[2].xyz;
  o1.xyz = r0.zzz * r2.xyz + r0.xyw;
  o2.xyz = r3.yyy * r2.xyz + r1.xyz;
  o1.w = 0;
  o2.w = cb2[4].w * v2.w;
  o3.xy = v4.xy;
  o3.zw = float2(0,0);
  o4.w = 1;
  return;
}