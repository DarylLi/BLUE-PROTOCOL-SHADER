// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

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
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float2 v8 : ATTRIBUTE6,
  float2 v9 : ATTRIBUTE7,
  float3 v10 : ATTRIBUTE11,
  float3 v11 : ATTRIBUTE12,
  float4 v12 : ATTRIBUTE13,
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

  r0.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r1.xyzw = t1.Load(r0.x).xyzw;
  r2.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r3.xyzw = t1.Load(r2.x).xyzw;
  r4.xyzw = t1.Load(r2.y).xyzw;
  r5.xyzw = t1.Load(r0.y).xyzw;
  r6.xyzw = t1.Load(r2.z).xyzw;
  r2.xyzw = t1.Load(r2.w).xyzw;
  r5.xyzw = v5.yyyy * r5.xyzw;
  r6.xyzw = v5.yyyy * r6.xyzw;
  r2.xyzw = v5.yyyy * r2.xyzw;
  r1.xyzw = v5.xxxx * r1.xyzw + r5.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r6.xyzw;
  r2.xyzw = v5.xxxx * r4.xyzw + r2.xyzw;
  r4.xyzw = t1.Load(r0.z).xyzw;
  r5.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r6.xyzw = t1.Load(r5.x).xyzw;
  r7.xyzw = t1.Load(r5.y).xyzw;
  r1.xyzw = v5.zzzz * r4.xyzw + r1.xyzw;
  r3.xyzw = v5.zzzz * r6.xyzw + r3.xyzw;
  r2.xyzw = v5.zzzz * r7.xyzw + r2.xyzw;
  r0.xyzw = t1.Load(r0.w).xyzw;
  r4.xyzw = t1.Load(r5.z).xyzw;
  r5.xyzw = t1.Load(r5.w).xyzw;
  r0.xyzw = v5.wwww * r0.xyzw + r1.xyzw;
  r1.xyzw = v5.wwww * r4.xyzw + r3.xyzw;
  r2.xyzw = v5.wwww * r5.xyzw + r2.xyzw;
  r3.x = cmp(4 < asuint(cb0[1].y));
  if (r3.x != 0) {
    r3.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r4.xyzw = t1.Load(r3.x).xyzw;
    r5.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r6.xyzw = t1.Load(r5.x).xyzw;
    r7.xyzw = t1.Load(r5.y).xyzw;
    r4.xyzw = v6.xxxx * r4.xyzw + r0.xyzw;
    r6.xyzw = v6.xxxx * r6.xyzw + r1.xyzw;
    r7.xyzw = v6.xxxx * r7.xyzw + r2.xyzw;
    r8.xyzw = t1.Load(r3.y).xyzw;
    r9.xyzw = t1.Load(r5.z).xyzw;
    r5.xyzw = t1.Load(r5.w).xyzw;
    r4.xyzw = v6.yyyy * r8.xyzw + r4.xyzw;
    r6.xyzw = v6.yyyy * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.yyyy * r5.xyzw + r7.xyzw;
    r7.xyzw = t1.Load(r3.z).xyzw;
    r8.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r9.xyzw = t1.Load(r8.x).xyzw;
    r10.xyzw = t1.Load(r8.y).xyzw;
    r4.xyzw = v6.zzzz * r7.xyzw + r4.xyzw;
    r6.xyzw = v6.zzzz * r9.xyzw + r6.xyzw;
    r5.xyzw = v6.zzzz * r10.xyzw + r5.xyzw;
    r3.xyzw = t1.Load(r3.w).xyzw;
    r7.xyzw = t1.Load(r8.z).xyzw;
    r8.xyzw = t1.Load(r8.w).xyzw;
    r0.xyzw = v6.wwww * r3.xyzw + r4.xyzw;
    r1.xyzw = v6.wwww * r7.xyzw + r6.xyzw;
    r2.xyzw = v6.wwww * r8.xyzw + r5.xyzw;
  }
  r3.x = dot(r0.xyz, v1.xyz);
  r3.y = dot(r1.xyz, v1.xyz);
  r3.z = dot(r2.xyz, v1.xyz);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r4.x = dot(r0.xyz, v2.xyz);
  r4.y = dot(r1.xyz, v2.xyz);
  r4.z = dot(r2.xyz, v2.xyz);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r5.xyz = v10.xyz + v0.xyz;
  r5.w = 1;
  r0.x = dot(r0.xyzw, r5.xyzw);
  r0.y = dot(r1.xyzw, r5.xyzw);
  r0.z = dot(r2.xyzw, r5.xyzw);
  r0.xyz = v11.xyz + r0.xyz;
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cb2[18].x + cb2[18].y;
  r0.w = cb2[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb1[142].z + r0.w;
  r0.w = cb3[2].x * r0.w;
  r0.w = cb4[26].z * r0.w;
  r1.xy = v9.xy + -v7.xy;
  r1.xy = cb4[27].ww * r1.xy + v7.xy;
  r1.xy = cb4[28].xx * r1.xy;
  r1.xy = r0.ww * cb4[27].yz + r1.xy;
  r1.xy = t0.SampleLevel(s0_s, r1.xy, -1).xy;
  r2.xy = r1.xy + r1.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r1.xyz = float3(-1,-1,-1) + r2.xyz;
  r1.xyz = v12.xxx * r1.xyz + float3(0,0,1);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb4[28].yyy * r2.xyz + r1.xyz;
  r1.xyz = cb4[39].yzw * r1.xyz;
  r0.w = dot(-cb2[0].xyz, -cb2[0].xyz);
  r0.w = sqrt(r0.w);
  r1.w = dot(-cb2[1].xyz, -cb2[1].xyz);
  r1.w = sqrt(r1.w);
  r0.w = r1.w + r0.w;
  r1.w = dot(-cb2[2].xyz, -cb2[2].xyz);
  r1.w = sqrt(r1.w);
  r0.w = r1.w + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb4[40].x * r0.w + 1;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = cb4[40].yyy * r1.xyz;
  r1.xyz = r1.xyz * v12.xxx + r0.xyz;
  r2.xyzw = cb1[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  o0.xy = cb1[364].xy * r2.zz + r2.xy;
  r5.xyz = cb2[4].xxx * cb2[0].xyz;
  r6.xyz = cb2[4].yyy * cb2[1].xyz;
  r7.xyz = cb2[4].zzz * cb2[2].xyz;
  r8.xyz = r6.xyz * r3.yyy;
  r3.xyw = r3.xxx * r5.xyz + r8.xyz;
  o1.xyz = r3.zzz * r7.xyz + r3.xyw;
  r3.xyz = r6.xyz * r4.yyy;
  r3.xyz = r4.xxx * r5.xyz + r3.xyz;
  o2.xyz = r4.zzz * r7.xyz + r3.xyz;
  o2.w = cb2[4].w * v2.w;
  o0.zw = r2.zw;
  o1.w = 0;
  o3.xyzw = v12.xyzw;
  o4.xy = v7.xy;
  o4.zw = v8.xy;
  o5.xy = v9.xy;
  o5.zw = float2(0,0);
  o6.xyz = r1.xyz;
  o6.w = 1;
  o7.xyz = r0.xyz;
  return;
}