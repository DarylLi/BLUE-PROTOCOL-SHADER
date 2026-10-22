// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o2 : TEXCOORD7)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r3.y = dot(v0.xyzw, r4.xyzw);
  r4.xyz = cb2[1].xyz * r3.yyy;
  r5.w = r1.x;
  r2.xyw = cb0[10].xyz * r2.xxx;
  r6.xyz = cb0[10].xyz * r2.zzz;
  r1.xyz = cb0[9].xyz * r0.zzz + r6.xyz;
  r5.xyz = cb0[9].xyz * r0.xxx + r2.xyw;
  r3.x = dot(v0.xyzw, r5.xyzw);
  r3.z = dot(v0.xyzw, r1.xyzw);
  r0.xyz = cb2[0].xyz * r3.xxx + r4.xyz;
  r0.xyz = cb2[2].xyz * r3.zzz + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = 0.00100000005 * r0.w;
  r1.y = cmp(1 < asint(cb1[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = cb2[10].y;
  r0.y = cb2[11].y;
  r0.z = cb2[12].y;
  r1.xyw = cb2[13].xyz + cb1[113].xyz;
  r0.w = r1.y;
  r3.w = v0.w;
  r0.x = dot(r3.xyzw, r0.xyzw);
  r0.xyzw = cb1[92].xyzw * r0.xxxx;
  r2.w = r1.x;
  r2.x = cb2[10].x;
  r2.y = cb2[11].x;
  r2.z = cb2[12].x;
  r2.x = dot(r3.xyzw, r2.xyzw);
  r0.xyzw = r2.xxxx * cb1[91].xyzw + r0.xyzw;
  r1.x = cb2[10].z;
  r1.y = cb2[11].z;
  r1.z = cb2[12].z;
  r1.x = dot(r3.xyzw, r1.xyzw);
  r0.xyzw = r1.xxxx * cb1[93].xyzw + r0.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  return;
}