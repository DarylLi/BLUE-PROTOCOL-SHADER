// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[20];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  out float4 o5 : TEXCOORD0)
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
  r7.xyz = -cb3[7].xyz + r4.xyz;
  r0.x = dot(cb3[11].xyz, r7.xyz);
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb3[18].y;
  r1.w = r1.w * 2 + cb3[19].x;
  r1.w = saturate(-2 + r1.w);
  r7.xyz = cb3[11].xyz * r0.xxx + cb3[7].xyz;
  r8.xyz = -r7.xyz + r4.xyz;
  r9.xyz = cb3[11].zxy * r8.yzx;
  r9.xyz = cb3[11].yzx * r8.zxy + -r9.xyz;
  r3.zw = float2(3.14159274,6.28318548) * r1.ww;
  r10.xy = sin(r3.zw);
  r0.x = cos(r3.w);
  r9.xyz = r10.yyy * r9.xyz;
  r10.z = 50 * r10.x;
  r8.xyz = r8.xyz * r0.xxx + r9.xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r7.xyz = r7.xyz + -r4.xyz;
  r4.xyz = cb3[9].xyz + -r4.xyz;
  r7.xyz = r7.xyz + -r4.xyz;
  r4.xyz = r1.www * r7.xyz + r4.xyz;
  r10.xy = float2(0,0);
  r4.xyz = r10.xyz + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyzw = cb1[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb1[0].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r4.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r2.w = cmp(1 < asint(cb1[135].x));
  r0.x = r2.w ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r4.xyw = cb2[13].xyz + cb1[113].xyz;
  r1.w = r4.x;
  r5.w = v0.w;
  r1.x = dot(r5.xyzw, r1.xyzw);
  r7.w = r4.y;
  r7.x = cb2[10].y;
  r7.y = cb2[11].y;
  r7.z = cb2[12].y;
  r1.y = dot(r5.xyzw, r7.xyzw);
  r4.x = cb2[10].z;
  r4.y = cb2[11].z;
  r4.z = cb2[12].z;
  r1.z = dot(r5.xyzw, r4.xyzw);
  r4.xyz = -cb1[113].xyz + r1.xyz;
  r5.xyz = -cb3[7].xyz + r4.xyz;
  r0.x = dot(cb3[11].xyz, r5.xyz);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb3[18].y;
  r1.w = r1.w * 2 + cb3[19].x;
  r1.w = saturate(-2 + r1.w);
  r5.xyz = cb3[11].xyz * r0.xxx + cb3[7].xyz;
  r7.xyz = -r5.xyz + r4.xyz;
  r8.xyz = cb3[11].zxy * r7.yzx;
  r8.xyz = cb3[11].yzx * r7.zxy + -r8.xyz;
  r3.zw = float2(3.14159274,6.28318548) * r1.ww;
  r9.xy = sin(r3.zw);
  r0.x = cos(r3.w);
  r8.xyz = r9.yyy * r8.xyz;
  r9.z = 50 * r9.x;
  r7.xyz = r7.xyz * r0.xxx + r8.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = cb3[9].xyz + -r4.xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r1.www * r5.xyz + r4.xyz;
  r9.xy = float2(0,0);
  r4.xyz = r9.xyz + r4.xyz;
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
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  return;
}