// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[20];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  out float4 o1 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5;
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
  r3.xyzw = cb0[6].zwxy + -cb0[3].zwxy;
  r3.xyzw = r0.xxxx * r3.xyzw + cb0[3].zwxy;
  r1.xyz = r3.xxx * r2.xyz + r1.xyz;
  r4.xyz = r2.yzx * r0.yzw;
  r0.yzw = r0.wyz * r2.zxy + -r4.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r1.xyw = r3.yyy * r0.yzw + r1.xyz;
  r4.w = r1.y;
  r2.w = cb0[2].w + -cb0[1].w;
  r0.x = r0.x * r2.w + cb0[1].w;
  sincos(r0.x, r0.x, r3.x);
  r5.xyz = r0.xxx * r2.xyz;
  r5.xyz = r3.xxx * r0.yzw + r5.xyz;
  r0.xyz = r0.xxx * r0.yzw;
  r0.xyz = r3.xxx * r2.xyz + -r0.xyz;
  r0.xyz = r0.xyz * r3.zzz;
  r2.xyz = r5.xyz * r3.www;
  r3.xyz = cb0[10].xyz * r2.yyy;
  r4.xyz = cb0[9].xyz * r0.yyy + r3.xyz;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r3.xyz = cb2[1].xyz * r0.yyy;
  r4.w = r1.x;
  r2.xyw = cb0[10].xyz * r2.xxx;
  r5.xyz = cb0[10].xyz * r2.zzz;
  r1.xyz = cb0[9].xyz * r0.zzz + r5.xyz;
  r4.xyz = cb0[9].xyz * r0.xxx + r2.xyw;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r0.xyz = cb2[0].xyz * r0.xxx + r3.xyz;
  r0.w = dot(v0.xyzw, r1.xyzw);
  r0.xyz = cb2[2].xyz * r0.www + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = -cb1[70].xyz + r0.xyz;
  r2.xyz = -cb3[7].xyz + r1.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.w = dot(cb3[11].xyz, r2.xyz);
  r2.xyz = cb3[11].xyz * r1.www + cb3[7].xyz;
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb3[18].z;
  r0.w = r0.w * 2 + cb3[19].y;
  r0.w = saturate(-2 + r0.w);
  r3.xy = float2(3.14159274,6.28318548) * r0.ww;
  r1.w = cos(r3.y);
  r3.xy = sin(r3.xy);
  r4.xyz = -r2.xyz + r1.xyz;
  r5.xyz = cb3[11].zxy * r4.yzx;
  r5.xyz = cb3[11].yzx * r4.zxy + -r5.xyz;
  r3.yzw = r5.xyz * r3.yyy;
  r5.z = 50 * r3.x;
  r3.xyz = r4.xyz * r1.www + r3.yzw;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb3[9].xyz + -r1.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r0.www * r2.xyz + r1.xyz;
  r5.xy = float2(0,0);
  r1.xyz = r5.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.xy = v4.xy;
  o1.zw = float2(0,0);
  return;
}