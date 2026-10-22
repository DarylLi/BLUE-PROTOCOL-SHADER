// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
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
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r5.y = dot(v0.xyzw, r5.xyzw);
  r7.xyz = cb2[1].xyz * r5.yyy;
  r9.w = r1.x;
  r4.xyw = cb0[10].xyz * r4.xxx;
  r10.xyz = cb0[10].xyz * r4.zzz;
  r1.xyz = cb0[9].xyz * r8.zzz + r10.xyz;
  r9.xyz = cb0[9].xyz * r8.xxx + r4.xyw;
  r5.x = dot(v0.xyzw, r9.xyzw);
  r5.z = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[0].xyz * r5.xxx + r7.xyz;
  r1.xyz = cb2[2].xyz * r5.zzz + r1.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = -cb1[70].xyz + r1.xyz;
  r7.xyz = -cb2[3].xyz + r4.xyz;
  r8.xyz = cb3[2].yyy * cb2[1].zxy;
  r8.xyz = cb3[2].xxx * cb2[0].zxy + r8.xyz;
  r8.xyz = cb3[2].zzz * cb2[2].zxy + r8.xyz;
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = r8.xyz / r0.xxx;
  r0.x = dot(r8.yzx, r7.xyz);
  r7.xyz = r8.yzx * r0.xxx + cb2[3].xyz;
  r9.xyz = -r7.xyz + r4.xyz;
  r10.xyz = r9.yzx * r8.xyz;
  r8.xyz = r8.zxy * r9.zxy + -r10.xyz;
  r0.x = cb1[142].z * cb3[8].x + v3.w;
  r1.w = abs(cb2[5].x) + abs(cb2[5].y);
  r1.w = abs(cb2[5].z) + r1.w;
  r1.w = frac(r1.w);
  r0.x = r1.w * 0.5 + r0.x;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r2.w = cb3[8].z * v3.x;
  r0.x = r2.w * r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r6.x);
  r8.xyz = r8.xyz * r0.xxx;
  r8.xyz = r9.xyz * r6.xxx + r8.xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r4.xyz = r7.xyz + -r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyzw = cb1[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb1[0].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb1[2].xyzw + r4.xyzw;
  r4.xyzw = cb1[3].xyzw + r4.xyzw;
  r0.x = 0.00100000005 * r4.w;
  r1.x = cmp(1 < asint(cb1[135].x));
  r0.x = r1.x ? r0.x : 0;
  o0.z = r4.z + r0.x;
  o0.xyw = r4.xyw;
  o1.xyzw = r4.xyzw;
  r0.x = cb1[139].z * cb3[8].x + v3.w;
  r0.x = r1.w * 0.5 + r0.x;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * r2.w;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r4.x = cb2[10].x;
  r4.y = cb2[11].x;
  r4.z = cb2[12].x;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r4.w = r7.x;
  r5.w = v0.w;
  r4.x = dot(r5.xyzw, r4.xyzw);
  r8.w = r7.y;
  r8.x = cb2[10].y;
  r8.y = cb2[11].y;
  r8.z = cb2[12].y;
  r4.y = dot(r5.xyzw, r8.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r4.z = dot(r5.xyzw, r7.xyzw);
  r1.yzw = -cb1[113].xyz + r4.xyz;
  r5.xyz = -cb2[13].xyz + r1.yzw;
  r7.xyz = cb3[2].yyy * cb2[11].zxy;
  r7.xyz = cb3[2].xxx * cb2[10].zxy + r7.xyz;
  r7.xyz = cb3[2].zzz * cb2[12].zxy + r7.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = dot(r7.yzx, r5.xyz);
  r5.xyz = r7.yzx * r2.www + cb2[13].xyz;
  r8.xyz = -r5.xyz + r1.yzw;
  r9.xyz = r8.yzx * r7.xyz;
  r7.xyz = r7.zxy * r8.zxy + -r9.xyz;
  r7.xyz = r7.xyz * r0.xxx;
  r7.xyz = r8.xyz * r1.xxx + r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r1.xyz = r5.xyz + -r1.yzw;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyzw = cb1[92].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb1[91].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r4.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
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
  o3.xyz = r0.zzz * r2.xyz + r0.xyw;
  o4.xyz = r3.yyy * r2.xyz + r1.xyz;
  o3.w = 0;
  o4.w = cb2[4].w * v2.w;
  o5.xyzw = v3.xyzw;
  o6.xy = v4.xy;
  o6.zw = float2(0,0);
  return;
}