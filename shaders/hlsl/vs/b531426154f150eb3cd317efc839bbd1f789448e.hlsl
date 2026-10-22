// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[31];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r1.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r1.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.x = r1.w * r0.x;
  r4.x = r1.x;
  r4.y = r2.x;
  r4.z = r0.y;
  r4.w = r3.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r0.z;
  r5.w = r3.y;
  r1.w = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.z;
  r6.y = r2.z;
  r6.z = r0.w;
  r6.w = r3.z;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r4.yzw = cb2[1].xyz * r1.www;
  r4.yzw = cb2[0].xyz * r1.xxx + r4.yzw;
  r4.yzw = cb2[2].xyz * r0.www + r4.yzw;
  r5.xzw = cb2[3].xyz + cb1[70].xyz;
  r4.yzw = r5.xzw + r4.yzw;
  r0.w = 1;
  r0.w = r0.w * r0.x;
  r1.x = cmp(r0.x >= 1);
  if (r1.x != 0) {
    r5.xzw = cb2[1].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb2[0].xyz + r5.xzw;
    r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r1.xyw = cb2[1].xyz * r1.yyy;
    r1.xyw = r4.xxx * cb2[0].xyz + r1.xyw;
    r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
    r5.xyz = cb2[1].xyz * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r5.xyz;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r5.xyz = cb2[1].xyz * r0.zzz;
    r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
    r5.xyz = r6.zzz * cb2[2].xyz + r5.xyz;
    r0.y = 0.00100000005 * r3.y;
    r0.z = dot(r5.xyz, r5.xyz);
    r0.z = sqrt(r0.z);
    r2.xyz = v0.yyy * r2.xyz;
    r1.xyz = v0.xxx * r1.xyz + r2.xyz;
    r1.xyz = v0.zzz * r5.xyz + r1.xyz;
    r1.xyz = r1.xyz / r0.zzz;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r1.w);
    r2.x = 1 / cb3[1].z;
    r2.x = -r2.x * 0.25 + r1.z;
    r2.x = max(0, r2.x);
    r2.x = cb3[1].z * r2.x;
    r2.y = cmp(r2.x != 0.000000);
    r2.z = log2(r2.x);
    r2.z = cb3[1].w * r2.z;
    r2.z = exp2(r2.z);
    r2.x = r2.y ? r2.z : r2.x;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r0.y;
    r2.yz = float2(0.5,0.5) + r3.xy;
    r2.yz = frac(r2.yz);
    r2.yz = r2.yz * float2(2,2) + float2(-1,-1);
    r3.xy = abs(r2.yz) * abs(r2.yz);
    r2.yz = -abs(r2.yz) * float2(2,2) + float2(3,3);
    r2.yz = r3.xy * r2.yz + float2(-0.5,-0.5);
    r2.yz = r2.yz + r2.yz;
    r0.y = r2.z * r2.z + r2.y;
    r2.y = cmp(cb3[1].z != 0.000000);
    r2.z = cb3[6].x / cb3[1].z;
    r2.y = r2.y ? r2.z : cb3[6].x;
    r0.y = cb3[1].y * r0.y + r2.y;
    r0.y = r0.y * r2.x;
    r2.xy = cb3[0].xy * r0.yy + r1.xy;
    r2.z = r1.z;
    r0.y = dot(r2.xyz, r2.xyz);
    r0.y = rsqrt(r0.y);
    r2.xyz = r2.xyz * r0.yyy;
    r1.xyz = r2.xyz * r1.www + -r1.xyz;
    r1.xyz = r1.xyz * r0.zzz;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.xyw = r4.wyz * r0.xxx + -cb1[70].zxy;
    r2.xyz = r3.xyw + -r2.xyz;
    r0.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r1.w = r2.x * 9.99999975e-005 + 0.200000003;
    r2.xyz = t2.SampleLevel(s0_s, r0.yz, -1).xyz;
    r2.w = cb4[29].y + r2.y;
    r3.y = -r2.w + r1.w;
    r3.y = max(0, r3.y);
    r2.x = r2.x + -r2.y;
    r2.x = max(9.99999975e-005, r2.x);
    r2.x = r3.y / r2.x;
    r2.x = min(1, r2.x);
    r2.y = ceil(r2.x);
    r2.x = 1 + -r2.x;
    r2.x = min(0.200000003, r2.x);
    r2.x = r2.y * r2.x;
    r1.w = -r2.z + r1.w;
    r3.y = max(0, r1.w);
    r2.z = r2.w + -r2.z;
    r2.z = max(9.99999975e-005, r2.z);
    r2.z = r3.y / r2.z;
    r2.z = min(1, r2.z);
    r2.w = ceil(r2.z);
    r2.z = 1 + -r2.z;
    r2.z = min(0.200000003, r2.z);
    r2.z = r2.w * r2.z;
    r2.yz = float2(5,5) * r2.xz;
    r3.yw = t3.SampleLevel(s1_s, r0.yz, -1).xy;
    r2.x = r2.x * 5 + -r2.z;
    r2.x = cmp(9.99999975e-006 < abs(r2.x));
    r2.w = cmp(r2.y >= r2.z);
    r2.w = r2.w ? r3.w : r3.y;
    r2.x = r2.x ? r2.w : r3.y;
    r2.x = cb4[29].z * r2.x;
    r2.y = max(r2.y, r2.z);
    r2.x = r2.x * r2.y;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r2.z = cb4[15].z + r3.z;
    r2.z = r3.x + -r2.z;
    r1.w = min(r2.z, r1.w);
    r1.w = cb4[30].x * r1.w;
    r1.w = r2.y * r1.w;
    r1.w = r2.x * r1.w;
    r0.yz = t4.SampleLevel(s2_s, r0.yz, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r2.xy = r1.ww * r0.yz;
    r0.y = dot(r2.xy, r2.xy);
    r0.y = sqrt(r0.y);
    r2.z = -1.20000005 * r0.y;
    r1.xyz = r1.xyz * cb4[28].www + r2.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = r4.yzw * r0.xxx + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}