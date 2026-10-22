// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[37];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[6].xyz + r0.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r2.w = 1 + -r1.w;
  r2.w = cb0[7].w * r2.w;
  r1.w = cb0[7].z * r1.w + r2.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r0.w + r2.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r0.w = cb0[1].w * r0.w + r4.x;
  r4.xyz = cmp(cb0[1].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[3].xyz);
  r4.xyz = cmp(cb0[2].xyz < r0.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r4.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r2.w * cb0[4].w + r0.w;
  r0.w = cmp(abs(r0.w) < 0.999000013);
  r0.w = r0.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r4.x = r1.x;
  r4.y = r2.x;
  r4.z = r3.x;
  r4.w = r0.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r4.x = r1.y;
  r4.y = r2.y;
  r4.z = r3.y;
  r4.w = r0.y;
  r1.y = dot(v0.xyzw, r4.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r1.w = r1.w * r0.w;
  r2.x = cmp(r0.w >= 1);
  if (r2.x != 0) {
    r0.y = cb2[1].z * r0.y;
    r0.x = r0.x * cb2[0].z + r0.y;
    r0.x = r0.z * cb2[2].z + r0.x;
    r0.x = cb2[3].z + r0.x;
    r0.y = (int)v2.x + asint(cb3[0].w);
    r0.y = (int)r0.y * asint(cb3[0].y);
    r0.y = t2.Load(r0.y).y;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.xyz = r1.zxy * r0.www + -cb1[70].zxy;
    r2.xyz = r3.xyz + -r2.xyz;
    r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r0.z = r2.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t4.SampleLevel(s1_s, r2.yz, -1).xyz;
    r2.x = cb4[34].z + r4.y;
    r2.w = -r2.x + r0.z;
    r2.w = max(0, r2.w);
    r3.w = r4.x + -r4.y;
    r3.w = max(9.99999975e-005, r3.w);
    r2.w = r2.w / r3.w;
    r2.w = min(1, r2.w);
    r3.w = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.w * r2.w;
    r3.w = 5 * r2.w;
    r0.z = -r4.z + r0.z;
    r4.x = max(0, r0.z);
    r2.x = r2.x + -r4.z;
    r2.x = max(9.99999975e-005, r2.x);
    r2.x = r4.x / r2.x;
    r2.x = min(1, r2.x);
    r4.x = ceil(r2.x);
    r2.x = 1 + -r2.x;
    r2.x = min(0.200000003, r2.x);
    r2.x = r4.x * r2.x;
    r2.x = 5 * r2.x;
    r4.xy = t5.SampleLevel(s2_s, r2.yz, -1).xy;
    r2.w = r2.w * 5 + -r2.x;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r4.z = cmp(r3.w >= r2.x);
    r4.y = r4.z ? r4.y : r4.x;
    r2.w = r2.w ? r4.y : r4.x;
    r2.w = cb4[34].w * r2.w;
    r2.x = max(r3.w, r2.x);
    r2.w = r2.w * r2.x;
    r0.z = 10000 * r0.z;
    r0.z = max(0, r0.z);
    r0.x = cb4[14].z + r0.x;
    r0.x = r3.x + -r0.x;
    r0.x = min(r0.z, r0.x);
    r0.x = cb4[35].y * r0.x;
    r0.x = r2.x * r0.x;
    r0.x = r2.w * r0.x;
    r2.xy = t6.SampleLevel(s3_s, r2.yz, -1).xy;
    r2.xy = float2(-1,-1) + r2.xy;
    r2.xy = r2.xy * r0.xx;
    r0.x = dot(r2.xy, r2.xy);
    r0.x = sqrt(r0.x);
    r2.z = -1.20000005 * r0.x;
    r0.x = cb4[23].y * cb1[142].z;
    r3.xw = r3.yz / cb4[23].ww;
    r3.xw = r0.xx * float2(0.353553385,-0.353553385) + r3.xw;
    r3.xw = float2(0.5,0.5) + r3.xw;
    r3.xw = frac(r3.xw);
    r3.xw = r3.xw * float2(2,2) + float2(-1,-1);
    r4.xy = -abs(r3.xw) * float2(2,2) + float2(3,3);
    r3.xw = abs(r3.xw) * abs(r3.xw);
    r3.xw = r3.xw * r4.xy;
    r0.z = dot(float2(-0.707106769,0.707106769), r3.xw);
    r4.xyz = r1.xyz * r0.www + -cb1[70].xyz;
    r4.xyz = r4.xyz / cb4[24].zzz;
    r4.xyz = r0.xxx * float3(-0.5,-0.5,-0.5) + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = frac(r4.xyz);
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = -abs(r4.xyz) * float3(2,2,2) + float3(3,3,3);
    r4.xyz = abs(r4.xyz) * abs(r4.xyz);
    r4.xyz = r4.xyz * r5.xyz;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = sqrt(r0.x);
    r0.x = r0.z + r0.x;
    r0.x = 6.28318548 * r0.x;
    sincos(r0.x, r0.x, r3.x);
    r4.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
    r4.xyz = r3.xxx * float3(0,0,10) + r4.xyz;
    r4.xyz = float3(0,0,-10) + r4.xyz;
    r4.xyz = cb4[24].www * r4.xyz;
    r0.x = 0.5 + cb1[142].z;
    r0.x = cb4[25].x * r0.x;
    r0.x = 6.28318548 * r0.x;
    r0.x = sin(r0.x);
    r0.x = r0.x * 0.5 + 0.75;
    r5.xy = cb4[25].xw * cb1[142].zz;
    r0.z = 6.28318548 * r5.x;
    r0.z = sin(r0.z);
    r0.z = r0.z * 0.5 + 0.75;
    r5.z = cb4[26].x * cb1[142].z;
    r3.xy = r3.yz / cb4[26].yy;
    r3.xy = r5.yz + r3.xy;
    r2.w = t3.SampleLevel(s0_s, r3.xy, -1).x;
    r2.w = cb4[26].z * r2.w;
    r3.x = cmp(0 >= r2.w);
    r2.w = log2(r2.w);
    r2.w = cb4[26].w * r2.w;
    r2.w = exp2(r2.w);
    r2.w = r3.x ? 0 : r2.w;
    r2.w = saturate(cb4[27].x + r2.w);
    r0.z = r0.z + -r0.x;
    r0.x = r2.w * r0.z + r0.x;
    r0.x = cb4[27].y * r0.x;
    r0.x = cb4[27].z * r0.x;
    r3.xyz = r4.xyz * r0.xxx + float3(1,1,1);
    r0.x = 1 + -r0.y;
    r0.xyz = r3.xyz * r0.xxx;
    r3.xy = cb4[35].zw * r0.zx;
    r3.z = cb4[36].x * r0.y;
    r3.w = cb4[36].y * r3.x;
    r0.xyz = r3.yzw + r2.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r2.xyzw = cb1[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r2.xyzw;
  r0.xyzw = r1.wwww * cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}