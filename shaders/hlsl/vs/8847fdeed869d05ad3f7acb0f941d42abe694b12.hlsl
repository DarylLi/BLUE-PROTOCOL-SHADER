// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
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
  float4 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[18].x + cb2[18].y;
  r0.x = cb2[18].z + r0.x;
  r0.x = frac(r0.x);
  r0.x = cb1[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r0.x = cb4[9].y * r0.x;
  r0.yz = v5.xy + -v4.xy;
  r0.yz = cb4[10].zz * r0.yz + v4.xy;
  r0.yz = cb4[10].ww * r0.yz;
  r0.xw = r0.xx * cb4[10].xy + r0.yz;
  r0.xw = t0.SampleLevel(s0_s, r0.xw, -1).xy;
  r1.xy = r0.xw * float2(2,2) + float2(-1,-1);
  r2.xy = r0.xw + r0.xw;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r2.z = sqrt(r0.x);
  r1.xyz = float3(-1,-1,-1) + r2.xyz;
  r1.xyz = v3.xxx * r1.xyz + float3(0,0,1);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb4[11].xxx * r2.xyz + r1.xyz;
  r1.xyz = cb4[11].yzw * r1.xyz;
  r0.x = dot(-cb2[0].xyz, -cb2[0].xyz);
  r0.w = dot(-cb2[1].xyz, -cb2[1].xyz);
  r0.xw = sqrt(r0.xw);
  r0.x = r0.x + r0.w;
  r0.w = dot(-cb2[2].xyz, -cb2[2].xyz);
  r0.w = sqrt(r0.w);
  r0.x = r0.x + r0.w;
  r0.x = r0.x * 0.333333343 + -1;
  r0.x = cb4[12].x * r0.x + 1;
  r1.xyz = r1.xyz * r0.xxx;
  r1.xyz = cb4[12].yyy * r1.xyz;
  r0.x = dot(v0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[7].w + -cb0[5].w;
  r0.w = r0.x * r0.x;
  r1.w = r0.w * r0.x;
  r2.x = -r0.w * 2 + r1.w;
  r2.x = r2.x + r0.x;
  r2.xyz = cb0[2].xyz * r2.xxx;
  r2.w = 3 * r0.w;
  r3.x = r1.w * 2 + -r2.w;
  r1.w = r1.w * -2 + r2.w;
  r2.w = 1 + r3.x;
  r2.xyz = r2.www * cb0[1].xyz + r2.xyz;
  r2.w = r0.w * r0.x + -r0.w;
  r2.xyz = r2.www * cb0[5].xyz + r2.xyz;
  r2.xyz = r1.www * cb0[4].xyz + r2.xyz;
  r3.xyz = float3(3,3,3) * cb0[2].zxy;
  r3.xyz = cb0[1].zxy * float3(6,6,6) + r3.xyz;
  r3.xyz = cb0[5].zxy * float3(3,3,3) + r3.xyz;
  r3.xyz = -cb0[4].zxy * float3(6,6,6) + r3.xyz;
  r4.xyz = float3(4,4,4) * cb0[2].zxy;
  r4.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r4.xyz;
  r4.xyz = -cb0[5].zxy * float3(2,2,2) + r4.xyz;
  r4.xyz = cb0[4].zxy * float3(6,6,6) + r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r3.xyz = r3.xyz * r0.www + r4.xyz;
  r3.xyz = cb0[2].zxy + r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = cb0[7].zxy * r3.zxy;
  r4.xyz = cb0[7].yzx * r3.xyz + -r4.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = saturate(r0.x);
  r1.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r1.w * r0.w;
  r1.w = cmp(0 != cb0[4].w);
  r0.x = r1.w ? r0.w : r0.x;
  r5.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r5.xyzw = r0.xxxx * r5.xyzw + cb0[3].xyzw;
  r2.xyz = r5.zzz * r4.xyz + r2.xyz;
  r6.xyz = r4.yzx * r3.xyz;
  r6.xyz = r3.zxy * r4.zxy + -r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r2.xyw = r5.www * r6.xyz + r2.xyz;
  r7.w = r2.y;
  r0.w = cb0[2].w + -cb0[1].w;
  r0.x = r0.x * r0.w + cb0[1].w;
  sincos(r0.x, r0.x, r8.x);
  r8.yzw = r0.xxx * r4.xyz;
  r8.yzw = r8.xxx * r6.xyz + r8.yzw;
  r6.xyz = r0.xxx * r6.xyz;
  r4.xyz = r8.xxx * r4.xyz + -r6.xyz;
  r6.xyz = r8.yzw * r5.yyy;
  r9.xyz = cb0[10].xyz * r6.yyy;
  r10.xyz = r4.xyz * r5.xxx;
  r7.xyz = cb0[9].xyz * r10.yyy + r9.xyz;
  r7.y = dot(v0.xyzw, r7.xyzw);
  r9.xyz = cb2[1].xyz * r7.yyy;
  r11.w = r2.x;
  r6.xyw = cb0[10].xyz * r6.xxx;
  r12.xyz = cb0[10].xyz * r6.zzz;
  r2.xyz = cb0[9].xyz * r10.zzz + r12.xyz;
  r11.xyz = cb0[9].xyz * r10.xxx + r6.xyw;
  r7.x = dot(v0.xyzw, r11.xyzw);
  r7.z = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[0].xyz * r7.xxx + r9.xyz;
  r2.xyz = cb2[2].xyz * r7.zzz + r2.xyz;
  r6.xyz = cb2[3].xyz + cb1[70].xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r1.xyz = r1.xyz * v3.xxx + r2.xyz;
  r2.xyzw = cb1[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r2.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r0.w = cmp(1 < asint(cb1[135].x));
  r0.x = r0.w ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.xyzw = cb2[18].yyyy * cb2[7].xyzw;
  r1.xyzw = cb2[18].xxxx * cb2[6].xyzw + r1.xyzw;
  r1.xyzw = cb2[18].zzzz * cb2[8].xyzw + r1.xyzw;
  r1.xyzw = cb2[9].xyzw + r1.xyzw;
  r2.xyz = cb2[11].xyz * r1.yyy;
  r2.xyz = r1.xxx * cb2[10].xyz + r2.xyz;
  r1.xyz = r1.zzz * cb2[12].xyz + r2.xyz;
  r1.xyz = r1.www * cb2[13].xyz + r1.xyz;
  r0.x = r1.x + r1.y;
  r0.x = r0.x + r1.z;
  r0.x = frac(r0.x);
  r0.x = cb1[139].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r0.x = cb4[9].y * r0.x;
  r0.xy = r0.xx * cb4[10].xy + r0.yz;
  r0.xy = t0.SampleLevel(s0_s, r0.xy, -1).xy;
  r0.zw = r0.xy * float2(2,2) + float2(-1,-1);
  r1.xy = r0.xy + r0.xy;
  r0.x = dot(r0.zw, r0.zw);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.xyz = float3(-1,-1,-1) + r1.xyz;
  r0.xyz = v3.xxx * r0.xyz + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb4[11].xxx * r1.xyz + r0.xyz;
  r0.xyz = cb4[11].yzw * r0.xyz;
  r0.w = dot(-cb2[10].xyz, -cb2[10].xyz);
  r0.w = sqrt(r0.w);
  r1.x = dot(-cb2[11].xyz, -cb2[11].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r1.x = dot(-cb2[12].xyz, -cb2[12].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb4[12].x * r0.w + 1;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb4[12].yyy * r0.xyz;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  r1.w = r2.x;
  r7.w = v0.w;
  r1.x = dot(r7.xyzw, r1.xyzw);
  r6.w = r2.y;
  r6.x = cb2[10].y;
  r6.y = cb2[11].y;
  r6.z = cb2[12].y;
  r1.y = dot(r7.xyzw, r6.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r1.z = dot(r7.xyzw, r2.xyzw);
  r0.xyz = r0.xyz * v3.xxx + r1.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xy = cmp(float2(0,0) < r5.xy);
  r0.zw = cmp(r5.xy < float2(0,0));
  r0.xy = (int2)-r0.xy + (int2)r0.zw;
  r0.xy = (int2)r0.xy;
  r0.xzw = r4.xyz * r0.xxx;
  r1.xyz = r8.yzw * r0.yyy;
  r2.xyz = cb0[9].xyz * r0.xxx;
  r2.xyz = cb0[8].xyz * r3.yyy + r2.xyz;
  r2.xyz = cb0[10].xyz * r1.xxx + r2.xyz;
  r4.x = dot(v1.xyz, r2.xyz);
  r2.z = dot(v2.xyz, r2.xyz);
  r0.xyz = cb0[9].xyz * r0.zzz;
  r5.xyz = cb0[9].xyz * r0.www;
  r3.xyw = cb0[8].xyz * r3.xxx + r5.xyz;
  r0.xyz = cb0[8].xyz * r3.zzz + r0.xyz;
  r0.xyz = cb0[10].xyz * r1.yyy + r0.xyz;
  r1.xyz = cb0[10].xyz * r1.zzz + r3.xyw;
  r4.y = dot(v1.xyz, r0.xyz);
  r2.x = dot(v2.xyz, r0.xyz);
  r4.z = dot(v1.xyz, r1.xyz);
  r2.y = dot(v2.xyz, r1.xyz);
  r0.xyz = r4.xyz * r2.xyz;
  r0.xyz = r2.zxy * r4.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = r0.xyz * r2.xyz;
  r0.xyz = r0.zxy * r2.yzx + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xyz = r1.xyz * r0.yyy;
  r1.xyz = r2.xxx * r1.xyz;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyw = r0.xxx * r4.xyz + r3.xyz;
  r1.xyz = r2.zzz * r4.xyz + r1.xyz;
  r2.xzw = cb2[4].zzz * cb2[2].xyz;
  o3.xyz = r0.zzz * r2.xzw + r0.xyw;
  o4.xyz = r2.yyy * r2.xzw + r1.xyz;
  o3.w = 0;
  o4.w = cb2[4].w * v2.w;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  return;
}