// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float o3 : TEXCOORD6,
  out float p3 : TEXCOORD8,
  out float3 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(3,3,3) * cb0[2].zxy;
  r0.xyz = cb0[1].zxy * float3(6,6,6) + r0.xyz;
  r0.xyz = cb0[5].zxy * float3(3,3,3) + r0.xyz;
  r0.xyz = -cb0[4].zxy * float3(6,6,6) + r0.xyz;
  r1.xyz = float3(4,4,4) * cb0[2].zxy;
  r1.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r1.xyz;
  r1.xyz = -cb0[5].zxy * float3(2,2,2) + r1.xyz;
  r1.xyz = cb0[4].zxy * float3(6,6,6) + r1.xyz;
  r0.w = dot(v0.xyz, cb0[8].xyz);
  r0.w = r0.w * cb0[7].w + -cb0[5].w;
  r1.xyz = r1.xyz * r0.www;
  r1.w = r0.w * r0.w;
  r0.xyz = r0.xyz * r1.www + r1.xyz;
  r0.xyz = cb0[2].zxy + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = cb0[7].zxy * r0.zxy;
  r1.xyz = cb0[7].yzx * r0.xyz + -r1.xyz;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r2.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0 != cb0[4].w);
  r3.x = saturate(r0.w);
  r3.y = r3.x * -2 + 3;
  r3.x = r3.x * r3.x;
  r3.x = r3.y * r3.x;
  r2.w = r2.w ? r3.x : r0.w;
  r3.x = cb0[2].w + -cb0[1].w;
  r3.x = r2.w * r3.x + cb0[1].w;
  sincos(r3.x, r3.x, r4.x);
  r3.yzw = r3.xxx * r2.xyz;
  r3.yzw = r4.xxx * r1.xyz + -r3.yzw;
  r5.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r5.xyzw = r2.wwww * r5.xyzw + cb0[3].xyzw;
  r4.yz = cmp(float2(0,0) < r5.xy);
  r6.xy = cmp(r5.xy < float2(0,0));
  r4.yz = (int2)-r4.yz + (int2)r6.xy;
  r4.yz = (int2)r4.yz;
  r6.xyz = r4.yyy * r3.yzw;
  r3.yzw = r5.xxx * r3.yzw;
  r7.xyz = cb0[9].xyz * r6.xxx;
  r7.xyz = cb0[8].xyz * r0.yyy + r7.xyz;
  r8.xyz = r3.xxx * r1.xyz;
  r4.xyw = r4.xxx * r2.xyz + r8.xyz;
  r8.xyz = r4.xyw * r4.zzz;
  r4.xyz = r4.xyw * r5.yyy;
  r7.xyz = cb0[10].xyz * r8.xxx + r7.xyz;
  r9.x = dot(v1.xyz, r7.xyz);
  r7.z = dot(v2.xyz, r7.xyz);
  r6.xyw = cb0[9].xyz * r6.yyy;
  r10.xyz = cb0[9].xyz * r6.zzz;
  r10.xyz = cb0[8].xyz * r0.xxx + r10.xyz;
  r0.xyz = cb0[8].xyz * r0.zzz + r6.xyw;
  r0.xyz = cb0[10].xyz * r8.yyy + r0.xyz;
  r6.xyz = cb0[10].xyz * r8.zzz + r10.xyz;
  r9.y = dot(v1.xyz, r0.xyz);
  r7.x = dot(v2.xyz, r0.xyz);
  r9.z = dot(v1.xyz, r6.xyz);
  r7.y = dot(v2.xyz, r6.xyz);
  r0.xyz = r9.xyz * r7.xyz;
  r0.xyz = r7.zxy * r9.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = r0.xyz * r7.xyz;
  r0.xyz = r0.zxy * r7.yzx + -r6.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = cb2[4].yyy * cb2[1].xyz;
  r8.xyz = r6.xyz * r0.yyy;
  r6.xyz = r7.xxx * r6.xyz;
  r9.xyz = cb2[4].xxx * cb2[0].xyz;
  r8.xyz = r0.xxx * r9.xyz + r8.xyz;
  r6.xyz = r7.zzz * r9.xyz + r6.xyz;
  r7.xzw = cb2[4].zzz * cb2[2].xyz;
  o0.xyz = r0.zzz * r7.xzw + r8.xyz;
  r0.xyz = r7.yyy * r7.xzw + r6.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  r2.w = r1.w * r0.w;
  r3.x = -r1.w * 2 + r2.w;
  r3.x = r3.x + r0.w;
  r0.w = r1.w * r0.w + -r1.w;
  r1.w = 3 * r1.w;
  r6.xyz = cb0[2].xyz * r3.xxx;
  r3.x = r2.w * 2 + -r1.w;
  r1.w = r2.w * -2 + r1.w;
  r2.w = 1 + r3.x;
  r6.xyz = r2.www * cb0[1].xyz + r6.xyz;
  r6.xyz = r0.www * cb0[5].xyz + r6.xyz;
  r6.xyz = r1.www * cb0[4].xyz + r6.xyz;
  r1.xyz = r5.zzz * r1.xyz + r6.xyz;
  r1.xyw = r5.www * r2.xyz + r1.xyz;
  r2.w = r1.x;
  r5.xyz = cb0[10].xyz * r4.xxx;
  r2.xyz = cb0[9].xyz * r3.yyy + r5.xyz;
  r0.w = dot(v0.xyzw, r2.xyzw);
  r2.w = r1.y;
  r4.xyw = cb0[10].xyz * r4.yyy;
  r5.xyz = cb0[10].xyz * r4.zzz;
  r1.xyz = cb0[9].xyz * r3.www + r5.xyz;
  r2.xyz = cb0[9].xyz * r3.zzz + r4.xyw;
  r2.x = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[1].xyz * r2.xxx;
  r2.xyz = cb2[0].xyz * r0.www + r2.xyz;
  r0.w = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[2].xyz * r0.www + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = -cb1[70].xyz + r1.xyz;
  r3.xyz = -cb4[9].xyz + r2.xyz;
  r0.w = dot(cb4[13].xyz, r3.xyz);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb4[19].w;
  r1.w = r1.w * 2 + cb4[20].z;
  r1.w = saturate(-2 + r1.w);
  r3.xyz = cb4[13].xyz * r0.www + cb4[9].xyz;
  r4.xyz = -r3.xyz + r2.xyz;
  r5.xyz = cb4[13].zxy * r4.yzx;
  r5.xyz = cb4[13].yzx * r4.zxy + -r5.xyz;
  r6.xy = float2(3.14159274,6.28318548) * r1.ww;
  r6.xz = sin(r6.xy);
  r0.w = cos(r6.y);
  r5.xyz = r6.zzz * r5.xyz;
  r6.z = 50 * r6.x;
  r4.xyz = r4.xyz * r0.www + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = cb4[11].xyz + -r2.xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r1.www * r3.xyz + r2.xyz;
  r6.xy = float2(0,0);
  r2.xyz = r6.xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  o4.xyz = r1.xyz;
  r1.xyzw = cb3[22].xyzw + r2.xyzw;
  r0.w = cmp(r1.z < 0);
  r2.x = cmp(0 < cb3[28].x);
  r0.w = r0.w ? r2.x : 0;
  r1.zw = r0.ww ? float2(9.99999997e-007,1) : r1.zw;
  o3.x = r1.z;
  o5.xyzw = r1.xyzw;
  r1.x = cb3[23].z;
  r1.y = cb3[24].z;
  r1.z = cb3[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  p3.x = cb3[27].y * r0.x + cb3[27].x;
  return;
}