// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[34];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z * cb3[32].w + cb3[33].y;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.x = 1 + r0.x;
  r0.y = 1 + r1.x;
  r0.z = -r0.x * 0.5 + 1;
  r0.x = 0.5 * r0.x;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[33].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.w = r0.y * 0.5 + -0.5;
  r0.y = cmp(r0.y >= 1);
  r0.y = r0.y ? 1.000000 : 0;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.y = r0.w ? r0.y : 1;
  r0.w = cmp(r0.y >= 0.5);
  r0.y = -0.5 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.x : r0.z;
  r0.x = r0.y ? r0.z : r0.x;
  r0.z = cb3[33].w * r0.x;
  r0.w = dot(v0.xyz, cb0[8].xyz);
  r0.w = r0.w * cb0[7].w + -cb0[5].w;
  r1.x = r0.w * r0.w;
  r1.y = r1.x * r0.w;
  r1.z = -r1.x * 2 + r1.y;
  r1.z = r1.z + r0.w;
  r2.xyz = cb0[2].xyz * r1.zzz;
  r1.z = 3 * r1.x;
  r1.w = r1.y * 2 + -r1.z;
  r1.y = r1.y * -2 + r1.z;
  r1.z = 1 + r1.w;
  r2.xyz = r1.zzz * cb0[1].xyz + r2.xyz;
  r1.z = r1.x * r0.w + -r1.x;
  r2.xyz = r1.zzz * cb0[5].xyz + r2.xyz;
  r1.yzw = r1.yyy * cb0[4].xyz + r2.xyz;
  r2.xyz = float3(3,3,3) * cb0[2].zxy;
  r2.xyz = cb0[1].zxy * float3(6,6,6) + r2.xyz;
  r2.xyz = cb0[5].zxy * float3(3,3,3) + r2.xyz;
  r2.xyz = -cb0[4].zxy * float3(6,6,6) + r2.xyz;
  r3.xyz = float3(4,4,4) * cb0[2].zxy;
  r3.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r3.xyz;
  r3.xyz = -cb0[5].zxy * float3(2,2,2) + r3.xyz;
  r3.xyz = cb0[4].zxy * float3(6,6,6) + r3.xyz;
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r2.xyz = cb0[2].zxy + r2.xyz;
  r1.x = dot(r2.xyz, r2.xyz);
  r1.x = rsqrt(r1.x);
  r2.xyz = r2.xyz * r1.xxx;
  r3.xyz = cb0[7].zxy * r2.zxy;
  r3.xyz = cb0[7].yzx * r2.xyz + -r3.xyz;
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = rsqrt(r1.x);
  r3.xyz = r3.xyz * r1.xxx;
  r1.x = saturate(r0.w);
  r2.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r2.w * r1.x;
  r2.w = cmp(0 != cb0[4].w);
  r0.w = r2.w ? r1.x : r0.w;
  r4.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r4.xyzw = r0.wwww * r4.xyzw + cb0[3].xyzw;
  r1.xyz = r4.zzz * r3.xyz + r1.yzw;
  r5.xyz = r3.yzx * r2.xyz;
  r5.xyz = r2.zxy * r3.zxy + -r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r1.xyw = r4.www * r5.xyz + r1.xyz;
  r6.w = r1.y;
  r2.w = cb0[2].w + -cb0[1].w;
  r0.w = r0.w * r2.w + cb0[1].w;
  sincos(r0.w, r7.x, r8.x);
  r7.yzw = r7.xxx * r3.xyz;
  r7.yzw = r8.xxx * r5.xyz + r7.yzw;
  r5.xyz = r7.xxx * r5.xyz;
  r3.xyz = r8.xxx * r3.xyz + -r5.xyz;
  r5.xyz = r7.yzw * r4.yyy;
  r8.xyz = cb0[10].xyz * r5.yyy;
  r9.xyz = r3.xyz * r4.xxx;
  r6.xyz = cb0[9].xyz * r9.yyy + r8.xyz;
  r6.y = dot(v0.xyzw, r6.xyzw);
  r8.xyz = cb2[1].xyz * r6.yyy;
  r10.w = r1.x;
  r5.xyw = cb0[10].xyz * r5.xxx;
  r11.xyz = cb0[10].xyz * r5.zzz;
  r1.xyz = cb0[9].xyz * r9.zzz + r11.xyz;
  r10.xyz = cb0[9].xyz * r9.xxx + r5.xyw;
  r6.x = dot(v0.xyzw, r10.xyzw);
  r6.z = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[0].xyz * r6.xxx + r8.xyz;
  r1.xyz = cb2[2].xyz * r6.zzz + r1.xyz;
  r5.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r0.xy = float2(0,0);
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
  r0.x = cb1[139].z * cb3[32].w + cb3[33].y;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.x = 1 + r0.x;
  r0.y = 1 + r1.x;
  r0.z = -r0.x * 0.5 + 1;
  r0.x = 0.5 * r0.x;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[33].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.w = r0.y * 0.5 + -0.5;
  r0.y = cmp(r0.y >= 1);
  r0.y = r0.y ? 1.000000 : 0;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.y = r0.w ? r0.y : 1;
  r0.w = cmp(r0.y >= 0.5);
  r0.y = -0.5 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.x : r0.z;
  r0.x = r0.y ? r0.z : r0.x;
  r0.z = cb3[33].w * r0.x;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r5.xyw = cb2[13].xyz + cb1[113].xyz;
  r1.w = r5.x;
  r6.w = v0.w;
  r1.x = dot(r6.xyzw, r1.xyzw);
  r8.w = r5.y;
  r8.x = cb2[10].y;
  r8.y = cb2[11].y;
  r8.z = cb2[12].y;
  r1.y = dot(r6.xyzw, r8.xyzw);
  r5.x = cb2[10].z;
  r5.y = cb2[11].z;
  r5.z = cb2[12].z;
  r1.z = dot(r6.xyzw, r5.xyzw);
  r0.xy = float2(0,0);
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xy = cmp(float2(0,0) < r4.xy);
  r0.zw = cmp(r4.xy < float2(0,0));
  r0.xy = (int2)-r0.xy + (int2)r0.zw;
  r0.xy = (int2)r0.xy;
  r0.xzw = r3.xyz * r0.xxx;
  r1.xyz = r7.yzw * r0.yyy;
  r3.xyz = cb0[9].xyz * r0.xxx;
  r3.xyz = cb0[8].xyz * r2.yyy + r3.xyz;
  r3.xyz = cb0[10].xyz * r1.xxx + r3.xyz;
  r4.x = dot(v1.xyz, r3.xyz);
  r3.z = dot(v2.xyz, r3.xyz);
  r0.xyz = cb0[9].xyz * r0.zzz;
  r5.xyz = cb0[9].xyz * r0.www;
  r2.xyw = cb0[8].xyz * r2.xxx + r5.xyz;
  r0.xyz = cb0[8].xyz * r2.zzz + r0.xyz;
  r0.xyz = cb0[10].xyz * r1.yyy + r0.xyz;
  r1.xyz = cb0[10].xyz * r1.zzz + r2.xyw;
  r4.y = dot(v1.xyz, r0.xyz);
  r3.x = dot(v2.xyz, r0.xyz);
  r4.z = dot(v1.xyz, r1.xyz);
  r3.y = dot(v2.xyz, r1.xyz);
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
  return;
}