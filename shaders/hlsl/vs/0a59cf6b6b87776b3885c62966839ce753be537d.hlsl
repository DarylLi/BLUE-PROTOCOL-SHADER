// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[20];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float4 v5 : ATTRIBUTE8,
  float4 v6 : ATTRIBUTE9,
  float4 v7 : ATTRIBUTE10,
  int4 v8 : ATTRIBUTE11,
  float2 v9 : ATTRIBUTE12,
  float4 v10 : ATTRIBUTE13,
  float4 v11 : ATTRIBUTE14,
  float4 v12 : ATTRIBUTE15,
  uint v13 : SV_InstanceID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out float4 o6 : COLOR1,
  out float4 o7 : COLOR2,
  out float o8 : PARTICLE_TIME0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v13.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyzw, v5.xyzw);
  r0.y = dot(v0.xyzw, v6.xyzw);
  r0.z = dot(v0.xyzw, v7.xyzw);
  r1.xyz = cb0[70].xyz + r0.xyz;
  r2.x = dot(v2.xyz, v5.xyz);
  r2.y = dot(v2.xyz, v6.xyz);
  r2.z = dot(v2.xyz, v7.xyz);
  r0.w = 1 + -v4.y;
  r1.w = v10.w + v9.y;
  r1.w = v4.y + r1.w;
  r1.w = 18.849556 * r1.w;
  r1.w = sin(r1.w);
  r3.xyz = r2.xyz * r1.www;
  r3.xyz = cb4[18].zzz * r3.xyz;
  r3.xyz = r3.xyz * r0.www;
  r4.x = v5.w;
  r4.y = v6.w;
  r4.z = v7.w;
  r0.xyz = -r4.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.0142857144 * r0.x;
  r0.x = cmp(0 >= r0.x);
  r0.y = log2(r0.y);
  r0.y = cb4[18].w * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.x ? 0 : r0.y;
  r0.yzw = cb4[12].xyz + cb3[6].xyz;
  r1.w = cb4[19].x * v10.z;
  r0.yzw = r1.www * r0.yzw;
  r5.xyz = r0.xxx * r0.yzw + r3.xyz;
  r5.xyz = r5.xyz + r1.xyz;
  r6.xyz = v2.yzx * v1.xyz;
  r6.xyz = v2.xyz * v1.yzx + -r6.xyz;
  r6.xyz = v2.www * r6.xyz;
  r7.xyz = v2.yzx * r6.xyz;
  r6.xyz = r6.zxy * v2.zxy + -r7.xyz;
  r6.xyz = v2.www * r6.xyz;
  r7.x = dot(r6.xyz, v5.xyz);
  r7.y = dot(r6.xyz, v6.xyz);
  r7.z = dot(r6.xyz, v7.xyz);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = rsqrt(r0.x);
  o3.xyz = r7.xyz * r0.xxx;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  o4.xyz = r2.xyz * r0.xxx;
  o4.w = cb1[4].w * v2.w;
  if (cb2[1].z != 0) {
    r0.x = (int)v13.x * 3;
    r2.xyzw = t0.Load(r0.x).xyzw;
    r6.xy = mad((int2)v13.xx, int2(3,3), int2(1,2));
    r7.xyzw = t0.Load(r6.x).xyzw;
    r6.xyzw = t0.Load(r6.y).xyzw;
    r2.x = dot(v0.xyzw, r2.xyzw);
    r2.y = dot(v0.xyzw, r7.xyzw);
    r2.z = dot(v0.xyzw, r6.xyzw);
    r1.xyz = cb0[113].xyz + r2.xyz;
  }
  r2.xyz = -cb0[113].xyz + r1.xyz;
  r2.xyz = r2.xyz + -r4.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r1.w = 0.0142857144 * r0.x;
  r0.x = cmp(0 >= r0.x);
  r1.w = log2(r1.w);
  r1.w = cb4[18].w * r1.w;
  r1.w = exp2(r1.w);
  r0.x = r0.x ? 0 : r1.w;
  r0.xyz = r0.xxx * r0.yzw + r3.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyzw = cb0[1].xyzw * r5.yyyy;
  r0.xyzw = r5.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r5.zzzz * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  o6.xyzw = v11.xyzw;
  o7.xyzw = v10.xyzw;
  o8.x = v9.y;
  return;
}