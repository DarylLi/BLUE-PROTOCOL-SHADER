// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[13];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
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
  float2 v6 : ATTRIBUTE15,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : SV_POSITION0)
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
  o1.xyz = r7.yyy * r7.xzw + r6.xyz;
  o0.w = 0;
  o1.w = cb2[4].w * v2.w;
  o2.xyzw = v3.xyzw;
  o3.xyzw = v4.xyzw;
  o4.xy = v5.xy;
  o4.zw = float2(0,0);
  o5.xy = v6.xy * cb3[2].xy + cb3[2].zw;
  o5.zw = float2(0,0);
  r0.x = r1.w * r0.w;
  r0.y = -r1.w * 2 + r0.x;
  r0.y = r0.y + r0.w;
  r0.z = r1.w * r0.w + -r1.w;
  r0.w = 3 * r1.w;
  r6.xyz = cb0[2].xyz * r0.yyy;
  r0.y = r0.x * 2 + -r0.w;
  r0.x = r0.x * -2 + r0.w;
  r0.y = 1 + r0.y;
  r6.xyz = r0.yyy * cb0[1].xyz + r6.xyz;
  r0.yzw = r0.zzz * cb0[5].xyz + r6.xyz;
  r0.xyz = r0.xxx * cb0[4].xyz + r0.yzw;
  r0.xyz = r5.zzz * r1.xyz + r0.xyz;
  r0.xyw = r5.www * r2.xyz + r0.xyz;
  r1.w = r0.x;
  r2.xyz = cb0[10].xyz * r4.xxx;
  r1.xyz = cb0[9].xyz * r3.yyy + r2.xyz;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r2.w = r0.y;
  r1.yzw = cb0[10].xyz * r4.yyy;
  r4.xyz = cb0[10].xyz * r4.zzz;
  r0.xyz = cb0[9].xyz * r3.www + r4.xyz;
  r2.xyz = cb0[9].xyz * r3.zzz + r1.yzw;
  r1.y = dot(v0.xyzw, r2.xyzw);
  r1.yzw = cb2[1].xyz * r1.yyy;
  r1.xyz = cb2[0].xyz * r1.xxx + r1.yzw;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb2[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cb2[18].x + cb2[18].y;
  r0.w = cb2[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb1[142].z + r0.w;
  r0.w = cb4[2].x * r0.w;
  r0.w = cb5[5].w * r0.w;
  r1.xy = v5.xy + -v4.xy;
  r1.xy = cb5[7].xx * r1.xy + v4.xy;
  r1.xy = cb5[7].yy * r1.xy;
  r1.xy = r0.ww * cb5[6].zw + r1.xy;
  r1.xy = t0.SampleLevel(s0_s, r1.xy, -1).xy;
  r1.zw = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xy = r1.xy + r1.xy;
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r1.xyz = float3(-1,-1,-1) + r2.xyz;
  r1.xyz = v3.xxx * r1.xyz + float3(0,0,1);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb5[7].zzz * r2.xyz + r1.xyz;
  r2.x = cb5[11].w * r1.x;
  r2.yz = cb5[12].xy * r1.yz;
  r0.w = dot(-cb2[0].xyz, -cb2[0].xyz);
  r0.w = sqrt(r0.w);
  r1.x = dot(-cb2[1].xyz, -cb2[1].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r1.x = dot(-cb2[2].xyz, -cb2[2].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb5[12].z * r0.w + 1;
  r1.xyz = r2.xyz * r0.www;
  r1.xyz = cb5[12].www * r1.xyz;
  r0.xyz = r1.xyz * v3.xxx + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = cb1[3].xyzw + r0.xyzw;
  return;
}