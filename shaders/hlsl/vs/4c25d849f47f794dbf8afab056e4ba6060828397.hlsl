// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float o0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : SV_POSITION0)
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
  r4.xyzw = cb3[20].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb3[19].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb3[21].xyzw + r4.xyzw;
  r1.xyzw = cb3[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r2.w = cmp(0 < cb3[28].x);
  r0.x = r0.x ? r2.w : 0;
  r1.zw = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o0.x = r1.z;
  o1.xyzw = r1.xyzw;
  r1.xy = cmp(float2(0,0) < r3.xy);
  r1.zw = cmp(r3.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r1.xzw = r2.xyz * r1.xxx;
  r2.xyz = r6.yzw * r1.yyy;
  r3.xyz = cb0[9].xyz * r1.zzz;
  r3.xyz = cb0[8].xyz * r0.www + r3.xyz;
  r3.xyz = cb0[10].xyz * r2.yyy + r3.xyz;
  r0.x = dot(v2.xyz, r3.xyz);
  r3.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xyz = r3.xyz * r0.xxx;
  r1.xyz = cb0[9].xyz * r1.xxx;
  r4.xyz = cb0[9].xyz * r1.www;
  r0.xyw = cb0[8].xyz * r0.yyy + r4.xyz;
  r1.xyz = cb0[8].xyz * r0.zzz + r1.xyz;
  r1.xyz = cb0[10].xyz * r2.xxx + r1.xyz;
  r0.xyz = cb0[10].xyz * r2.zzz + r0.xyw;
  r0.x = dot(v2.xyz, r0.xyz);
  r0.y = dot(v2.xyz, r1.xyz);
  r1.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.yzw = r0.yyy * r1.xyz + r3.xyz;
  r1.xyz = cb2[4].zzz * cb2[2].xyz;
  r0.xyz = r0.xxx * r1.xyz + r0.yzw;
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
  p0.x = cb3[27].y * r0.x + cb3[27].x;
  return;
}