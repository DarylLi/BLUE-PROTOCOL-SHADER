// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[43];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE5,
  float2 v6 : ATTRIBUTE6,
  float4 v7 : ATTRIBUTE8,
  float4 v8 : ATTRIBUTE9,
  float4 v9 : ATTRIBUTE10,
  int4 v10 : ATTRIBUTE11,
  float2 v11 : ATTRIBUTE12,
  float4 v12 : ATTRIBUTE14,
  float4 v13 : ATTRIBUTE15,
  uint v14 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : TEXCOORD1,
  out float4 o7 : COLOR0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v14.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v7.xyzw);
  r0.y = dot(v0.xyzw, v8.xyzw);
  r0.z = dot(v0.xyzw, v9.xyzw);
  r0.xyz = cb0[70].xyz + r0.xyz;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb3[2].x * r0.w;
  r0.w = cb4[27].z * r0.w;
  r1.xy = v6.xy + -v4.xy;
  r1.xy = cb4[28].ww * r1.xy + v4.xy;
  r1.xy = cb4[29].xx * r1.xy;
  r1.zw = r0.ww * cb4[28].yz + r1.xy;
  r1.zw = t0.SampleLevel(s0_s, r1.zw, -1).xy;
  r2.xy = r1.zw + r1.zw;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r2.xyz = float3(-1,-1,-1) + r2.xyz;
  r2.xyz = v3.xxx * r2.xyz + float3(0,0,1);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb4[29].yyy * r3.xyz + r2.xyz;
  r3.x = cb4[41].w * r2.x;
  r3.yz = cb4[42].xy * r2.yz;
  r2.x = v7.x;
  r2.y = v8.x;
  r2.z = v9.x;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = sqrt(r0.w);
  r2.x = v7.y;
  r2.y = v8.y;
  r2.z = v9.y;
  r1.z = dot(-r2.xyz, -r2.xyz);
  r1.z = sqrt(r1.z);
  r0.w = r1.z + r0.w;
  r2.x = v7.z;
  r2.y = v8.z;
  r2.z = v9.z;
  r1.z = dot(-r2.xyz, -r2.xyz);
  r1.z = sqrt(r1.z);
  r0.w = r1.z + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb4[42].z * r0.w + 1;
  r2.xyz = r3.xyz * r0.www;
  r2.xyz = cb4[42].www * r2.xyz;
  r2.xyz = r2.xyz * v3.xxx + r0.xyz;
  r3.xyz = v2.yzx * v1.xyz;
  r3.xyz = v2.xyz * v1.yzx + -r3.xyz;
  r3.xyz = v2.www * r3.xyz;
  r4.xyz = v2.yzx * r3.xyz;
  r3.xyz = r3.zxy * v2.zxy + -r4.xyz;
  r3.xyz = v2.www * r3.xyz;
  r4.x = dot(r3.xyz, v7.xyz);
  r4.y = dot(r3.xyz, v8.xyz);
  r4.z = dot(r3.xyz, v9.xyz);
  r3.x = dot(v2.xyz, v7.xyz);
  r3.y = dot(v2.xyz, v8.xyz);
  r3.z = dot(v2.xyz, v9.xyz);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r4.xyz * r0.www;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r3.xyz * r0.www;
  o4.w = cb1[4].w * v2.w;
  if (cb2[1].z != 0) {
    r0.w = (int)v14.x * 3;
    r3.xyzw = t1.Load(r0.w).xyzw;
    r1.zw = mad((int2)v14.xx, int2(3,3), int2(1,2));
    r4.xyzw = t1.Load(r1.z).xyzw;
    r5.xyzw = t1.Load(r1.w).xyzw;
    r3.x = dot(v0.xyzw, r3.xyzw);
    r3.y = dot(v0.xyzw, r4.xyzw);
    r3.z = dot(v0.xyzw, r5.xyzw);
    r0.xyz = cb0[113].xyz + r3.xyz;
  }
  r0.w = (int)v14.x * 3;
  r3.xyzw = t1.Load(r0.w).xyzw;
  r1.zw = mad((int2)v14.xx, int2(3,3), int2(1,2));
  r4.xyzw = t1.Load(r1.z).xyzw;
  r5.xyzw = t1.Load(r1.w).xyzw;
  r6.xyzw = cb1[18].yyyy * cb1[7].xyzw;
  r6.xyzw = cb1[18].xxxx * cb1[6].xyzw + r6.xyzw;
  r6.xyzw = cb1[18].zzzz * cb1[8].xyzw + r6.xyzw;
  r6.xyzw = cb1[9].xyzw + r6.xyzw;
  r0.w = dot(r6.xyzw, r3.xyzw);
  r1.z = dot(r6.xyzw, r4.xyzw);
  r0.w = r1.z + r0.w;
  r1.z = dot(r6.xyzw, r5.xyzw);
  r0.w = r1.z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[139].z + r0.w;
  r0.w = cb3[2].x * r0.w;
  r0.w = cb4[27].z * r0.w;
  r1.xy = r0.ww * cb4[28].yz + r1.xy;
  r1.xy = t0.SampleLevel(s0_s, r1.xy, -1).xy;
  r6.xy = r1.xy + r1.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r1.xyz = float3(-1,-1,-1) + r6.xyz;
  r1.xyz = v3.xxx * r1.xyz + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb4[29].yyy * r6.xyz + r1.xyz;
  r6.x = cb4[41].w * r1.x;
  r6.yz = cb4[42].xy * r1.yz;
  r1.x = r3.x;
  r1.y = r4.x;
  r1.z = r5.x;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r1.x = r3.y;
  r1.y = r4.y;
  r1.z = r5.y;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r5.x = r3.z;
  r5.y = r4.z;
  r1.x = dot(-r5.xyz, -r5.xyz);
  r1.x = sqrt(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb4[42].z * r0.w + 1;
  r1.xyz = r6.xyz * r0.www;
  r1.xyz = cb4[42].www * r1.xyz;
  r0.xyz = r1.xyz * v3.xxx + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyzw = cb0[1].xyzw * r2.yyyy;
  r0.xyzw = r2.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r2.zzzz * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v4.xy;
  o5.zw = v5.yx;
  o6.xy = v6.xy;
  o6.zw = float2(0,0);
  o7.xyzw = v3.xyzw;
  return;
}