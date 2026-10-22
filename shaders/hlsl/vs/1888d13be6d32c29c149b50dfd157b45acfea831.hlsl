// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[30];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
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
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR1,
  out float4 o2 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[7].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[8].x + r1.w;
  r1.w = saturate(cb0[8].y * r1.w);
  o1.y = 1 + -r1.w;
  r1.w = 1 + -r0.x;
  r1.w = cb0[8].w * r1.w;
  r0.x = cb0[8].z * r0.x + r1.w;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[2].w * r3.w + r1.w;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[2].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[4].xyz);
  r4.xyz = cmp(cb0[3].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[4].xyz);
  r2.w = cb0[6].w * r2.w;
  r4.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r4.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r4.z = r1.w * r0.x;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r0.x = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r0.z;
  r6.w = r3.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r7.x = r1.z;
  r7.y = r2.z;
  r7.z = r0.w;
  r7.w = r3.z;
  r0.w = dot(v0.xyzw, r7.xyzw);
  r5.yzw = cb2[1].xyz * r1.xxx;
  r5.yzw = cb2[0].xyz * r0.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r0.www + r5.yzw;
  r6.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r6.xzw + r5.yzw;
  r0.x = 1;
  r0.x = r0.x * r4.z;
  r0.w = (int)v2.x + asint(cb4[0].w);
  r0.w = (int)r0.w * asint(cb4[0].y);
  r1.xw = t2.Load(r0.w).xy;
  r0.w = cmp(r4.z >= 1);
  if (r0.w != 0) {
    r6.xzw = cb2[1].xyz * r3.yyy;
    r6.xzw = r3.xxx * cb2[0].xyz + r6.xzw;
    r3.xyz = r3.zzz * cb2[2].xyz + r6.xzw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r6.xzw = cb2[1].xyz * r1.yyy;
    r6.xzw = r5.xxx * cb2[0].xyz + r6.xzw;
    r6.xzw = r1.zzz * cb2[2].xyz + r6.xzw;
    r7.xyw = cb2[1].xyz * r6.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r7.xyw;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r7.xyw = cb2[1].xyz * r0.zzz;
    r0.yzw = r0.yyy * cb2[0].xyz + r7.xyw;
    r0.yzw = r7.zzz * cb2[2].xyz + r0.yzw;
    r1.y = 0.00100000005 * r3.y;
    r1.z = dot(r0.yzw, r0.yzw);
    r1.z = sqrt(r1.z);
    r2.xyz = v0.yyy * r2.xyz;
    r2.xyz = v0.xxx * r6.xzw + r2.xyz;
    r0.yzw = v0.zzz * r0.yzw + r2.xyz;
    r0.yzw = r0.yzw / r1.zzz;
    r2.x = dot(r0.yzw, r0.yzw);
    r2.x = sqrt(r2.x);
    r2.y = 1 / cb3[1].z;
    r2.y = -r2.y * 0.25 + r0.w;
    r2.y = max(0, r2.y);
    r2.y = cb3[1].z * r2.y;
    r2.z = cmp(r2.y != 0.000000);
    r2.w = log2(r2.y);
    r2.w = cb3[1].w * r2.w;
    r2.w = exp2(r2.w);
    r2.y = r2.z ? r2.w : r2.y;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r1.y;
    r2.zw = float2(0.5,0.5) + r3.xy;
    r2.zw = frac(r2.zw);
    r2.zw = r2.zw * float2(2,2) + float2(-1,-1);
    r3.xy = abs(r2.zw) * abs(r2.zw);
    r2.zw = -abs(r2.zw) * float2(2,2) + float2(3,3);
    r2.zw = r3.xy * r2.zw + float2(-0.5,-0.5);
    r2.zw = r2.zw + r2.zw;
    r1.y = r2.w * r2.w + r2.z;
    r2.z = cmp(cb3[1].z != 0.000000);
    r2.w = cb3[6].x / cb3[1].z;
    r2.z = r2.z ? r2.w : cb3[6].x;
    r1.y = cb3[1].y * r1.y + r2.z;
    r1.y = r1.y * r2.y;
    r6.xy = cb3[0].xy * r1.yy + r0.yz;
    r6.z = r0.w;
    r1.y = dot(r6.xyz, r6.xyz);
    r1.y = rsqrt(r1.y);
    r2.yzw = r6.xyz * r1.yyy;
    r0.yzw = r2.yzw * r2.xxx + -r0.yzw;
    r0.yzw = r0.yzw * r1.zzz;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r5.wyz * r4.zzz + -cb1[70].zxy;
    r2.xyz = r6.xyz + -r2.xyz;
    r1.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r2.x = r2.x * 9.99999975e-005 + 0.200000003;
    r2.yzw = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
    r3.x = cb5[29].x + r2.z;
    r3.y = -r3.x + r2.x;
    r3.y = max(0, r3.y);
    r2.xy = r2.xy + -r2.wz;
    r2.y = max(9.99999975e-005, r2.y);
    r2.y = r3.y / r2.y;
    r2.y = min(1, r2.y);
    r2.z = ceil(r2.y);
    r2.y = 1 + -r2.y;
    r2.y = min(0.200000003, r2.y);
    r2.y = r2.z * r2.y;
    r3.y = max(0, r2.x);
    r2.w = r3.x + -r2.w;
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r3.y / r2.w;
    r2.w = min(1, r2.w);
    r3.x = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.x * r2.w;
    r2.xzw = float3(10000,5,5) * r2.xyw;
    r3.xy = t4.SampleLevel(s1_s, r1.yz, -1).xy;
    r2.y = r2.y * 5 + -r2.w;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r4.x = cmp(r2.z >= r2.w);
    r3.y = r4.x ? r3.y : r3.x;
    r2.y = r2.y ? r3.y : r3.x;
    r2.y = cb5[29].y * r2.y;
    r2.z = max(r2.z, r2.w);
    r2.x = max(0, r2.x);
    r2.w = cb5[15].z + r3.z;
    r2.w = r6.x + -r2.w;
    r2.x = min(r2.x, r2.w);
    r2.x = cb5[29].w * r2.x;
    r2.xy = r2.zy * r2.xz;
    r2.x = r2.y * r2.x;
    r1.yz = t5.SampleLevel(s2_s, r1.yz, -1).xy;
    r1.yz = float2(-1,-1) + r1.yz;
    r2.xy = r2.xx * r1.yz;
    r1.y = dot(r2.xy, r2.xy);
    r1.y = sqrt(r1.y);
    r2.z = -1.20000005 * r1.y;
    r0.yzw = r0.yzw * cb5[28].zzz + r2.xyz;
  } else {
    r0.yzw = float3(0,0,0);
  }
  r0.yzw = r5.yzw * r4.zzz + r0.yzw;
  r2.xyzw = cb1[1].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb1[2].xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * cb1[3].xyzw + r2.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.x = r3.w;
  o1.zw = r4.zw;
  o2.xy = r1.xw;
  o2.zw = float2(0,0);
  return;
}