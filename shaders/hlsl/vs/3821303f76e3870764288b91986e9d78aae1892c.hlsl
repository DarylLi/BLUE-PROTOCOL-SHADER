// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[41];
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
  float4 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[18].x + cb2[18].y;
  r0.x = cb2[18].z + r0.x;
  r0.x = frac(r0.x);
  r0.x = cb1[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r0.x = cb4[26].z * r0.x;
  r0.yz = v5.xy + -v4.xy;
  r0.yz = cb4[27].ww * r0.yz + v4.xy;
  r0.yz = cb4[28].xx * r0.yz;
  r0.xy = r0.xx * cb4[27].yz + r0.yz;
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
  r0.xyz = cb4[28].yyy * r1.xyz + r0.xyz;
  r0.xyz = cb4[39].xyz * r0.xyz;
  r0.w = dot(-cb2[0].xyz, -cb2[0].xyz);
  r0.w = sqrt(r0.w);
  r1.x = dot(-cb2[1].xyz, -cb2[1].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r1.x = dot(-cb2[2].xyz, -cb2[2].xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb4[39].w * r0.w + 1;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb4[40].xxx * r0.xyz;
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
  r0.w = dot(v0.xyzw, r6.xyzw);
  r6.xyz = cb2[1].xyz * r0.www;
  r8.w = r1.x;
  r5.xyw = cb0[10].xyz * r5.xxx;
  r10.xyz = cb0[10].xyz * r5.zzz;
  r1.xyz = cb0[9].xyz * r9.zzz + r10.xyz;
  r8.xyz = cb0[9].xyz * r9.xxx + r5.xyw;
  r0.w = dot(v0.xyzw, r8.xyzw);
  r5.xyz = cb2[0].xyz * r0.www + r6.xyz;
  r0.w = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[2].xyz * r0.www + r5.xyz;
  r5.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r0.xyz = r0.xyz * v3.xxx + r1.xyz;
  o7.xyz = r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyz = r0.xyz;
  r0.xyzw = cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
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
  o1.xyz = r0.zzz * r2.xyz + r0.xyw;
  o2.xyz = r3.yyy * r2.xyz + r1.xyz;
  o1.w = 0;
  o2.w = cb2[4].w * v2.w;
  o3.xyzw = v3.xyzw;
  o4.xyzw = v4.xyzw;
  o5.xy = v5.xy;
  o5.zw = float2(0,0);
  o6.w = 1;
  return;
}