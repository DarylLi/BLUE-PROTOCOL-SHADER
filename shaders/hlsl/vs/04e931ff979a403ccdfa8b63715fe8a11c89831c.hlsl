// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[9];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r1.x = (int)v2.x + asint(cb4[0].w);
    bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
    r5.xzw = t3.Load(r1.w).xyz;
    r6.xyw = cb2[1].xyz * r1.yyy;
    r6.xyw = r4.xxx * cb2[0].xyz + r6.xyw;
    r1.yzw = r1.zzz * cb2[2].xyz + r6.xyw;
    r6.xyw = cb2[1].xyz * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r6.xyw;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r6.xyw = cb2[1].xyz * r0.zzz;
    r6.xyw = r0.yyy * cb2[0].xyz + r6.xyw;
    r6.xyz = r6.zzz * cb2[2].xyz + r6.xyw;
    r0.y = dot(r1.yzw, r1.yzw);
    r0.y = rsqrt(r0.y);
    r7.xyz = r1.yzw * r0.yyy;
    r0.y = dot(r2.xyz, r2.xyz);
    r0.y = rsqrt(r0.y);
    r8.xyz = r2.xyz * r0.yyy;
    r0.y = dot(r6.xyz, r6.xyz);
    r0.z = rsqrt(r0.y);
    r9.xyz = r6.xyz * r0.zzz;
    r8.xyz = r8.xyz * r5.zzz;
    r5.xyz = r5.xxx * r7.xyz + r8.xyz;
    r5.xyz = r5.www * r9.xyz + r5.xyz;
    r0.z = (int)r1.x * asint(cb4[0].y);
    r7.xy = t2.Load(r0.z).xy;
    r0.z = asint(cb4[0].y) + -1;
    r2.w = min(5, (uint)r0.z);
    r2.w = mad(asint(cb4[0].y), (int)r1.x, (int)r2.w);
    r2.w = t2.Load(r2.w).y;
    r3.w = (int)cb5[7].y;
    r7.zw = float2(0.00100000005,0.00100000005) * r3.xy;
    r0.y = sqrt(r0.y);
    r2.xyz = v0.yyy * r2.xyz;
    r1.yzw = v0.xxx * r1.yzw + r2.xyz;
    r1.yzw = v0.zzz * r6.xyz + r1.yzw;
    r1.yzw = r1.yzw / r0.yyy;
    r2.x = cmp((int)r3.w == 5);
    r2.y = cmp(r7.x < 0.5);
    r2.y = r2.y ? 0.750000 : 0;
    r2.z = cb3[14].x + r7.y;
    r2.y = r2.z * cb3[14].z + r2.y;
    r2.y = 0.5 + r2.y;
    r2.y = frac(r2.y);
    r2.y = r2.y * 2 + -1;
    r2.z = abs(r2.y) * abs(r2.y);
    r2.y = -abs(r2.y) * 2 + 3;
    r2.y = r2.z * r2.y + -0.5;
    r2.y = r2.y * r2.w;
    r2.y = dot(cb3[14].yy, r2.yy);
    r2.yzw = r2.yyy * r5.xyz + r1.yzw;
    r2.yzw = r2.xxx ? r2.yzw : r1.yzw;
    r3.y = cmp(2 < (int)r3.w);
    if (r3.y != 0) {
      r0.z = min(2, (uint)r0.z);
      r0.z = mad(asint(cb4[0].y), (int)r1.x, (int)r0.z);
      r5.xy = t2.Load(r0.z).xy;
      if (r2.x != 0) {
        r6.xyz = float3(0.0625,1,16) * r5.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r5.xxx;
        r0.z = r7.z + r7.w;
        r0.z = cb3[2].x + r0.z;
        r8.x = r0.z + r5.y;
        r8.y = r0.z * cb3[3].y + r5.y;
        r1.x = cb3[3].y * r8.x;
        r8.z = 0.5 * r1.x;
        r8.w = r8.x + -r5.x;
        r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
        r8.xyzw = frac(r8.xyzw);
        r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r9.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
        r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r8.xyzw = r9.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r8.xyzw = r8.xyzw + r8.xyzw;
        r9.w = r8.y * r8.z;
        r1.x = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r5.zw = r1.xx ? r9.xy : r9.zw;
        r1.x = -r8.y * r8.z + r5.z;
        r1.x = r5.w * r1.x + r9.w;
        r2.x = r5.z + -r1.x;
        r1.x = r5.w * r2.x + r1.x;
        r1.x = cb3[3].x * r1.x;
        r2.x = 1 + -cb3[0].w;
        r3.y = 1 + -cb3[3].x;
        r3.y = r8.x * r3.y;
        r1.x = r1.x * r2.x + r3.y;
        r2.x = r8.w * cb3[4].x + 1;
        r1.x = r2.x * r1.x;
        r6.xyz = r6.xyz * r1.xxx;
        r6.xyz = r6.xyz * cb3[2].yyy + r2.yzw;
        r7.x = r0.z * 0.100000001 + r5.y;
        r0.z = cb3[18].x * cb3[7].x;
        r7.y = r0.z * 0.100000001 + r5.y;
        r5.zw = float2(0.5,0.5) + r7.xy;
        r5.zw = frac(r5.zw);
        r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
        r7.xy = abs(r5.zw) * abs(r5.zw);
        r5.zw = -abs(r5.zw) * float2(2,2) + float2(3,3);
        r5.zw = r7.xy * r5.zw + float2(-0.5,-0.5);
        r5.zw = r5.zw + r5.zw;
        r5.zw = r5.zw * r5.zw;
        r0.z = r5.w * r5.z;
        r0.z = -r0.z * cb3[7].x + 1;
        r1.x = cb3[0].w * r8.w;
        r0.z = r1.x * cb3[4].x + r0.z;
        r8.xyz = cb3[5].xyz + -r6.xyz;
        r8.xyz = cb3[6].yyy * r8.xyz;
        r8.xyz = r8.xyz * r0.zzz;
        r2.yzw = r8.xyz * r5.xxx + r6.xyz;
      } else {
        r6.xyz = float3(0.0625,1,16) * r5.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r5.xzw = r6.xyz * r5.xxx;
        r0.z = r7.z + r7.w;
        r0.z = cb3[2].x + r0.z;
        r6.x = r0.z + r5.y;
        r6.y = r0.z * cb3[3].y + r5.y;
        r0.z = cb3[3].y * r6.x;
        r6.z = 0.5 * r0.z;
        r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = abs(r6.xyz) * abs(r6.xyz);
        r6.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
        r6.xyz = r7.xyz * r6.xyz + float3(-0.5,-0.5,-0.5);
        r6.xyz = r6.xyz + r6.xyz;
        r8.w = r6.y * r6.z;
        r0.z = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r7.xy = r0.zz ? r8.xy : r8.zw;
        r0.z = -r6.y * r6.z + r7.x;
        r0.z = r7.y * r0.z + r8.w;
        r1.x = r7.x + -r0.z;
        r0.z = r7.y * r1.x + r0.z;
        r0.z = cb3[3].x * r0.z;
        r1.x = 1 + -cb3[0].w;
        r2.x = 1 + -cb3[3].x;
        r2.x = r6.x * r2.x;
        r0.z = r0.z * r1.x + r2.x;
        r5.xyz = r5.xzw * r0.zzz;
        r2.yzw = r5.xyz * cb3[2].yyy + r2.yzw;
      }
    }
    r0.z = dot(r2.yzw, r2.yzw);
    r0.z = sqrt(r0.z);
    r1.x = 1 / cb3[1].z;
    r1.x = -r1.x * 0.25 + r2.w;
    r1.x = max(0, r1.x);
    r1.x = cb3[1].z * r1.x;
    r2.x = cmp(r1.x != 0.000000);
    r3.y = log2(r1.x);
    r3.y = cb3[1].w * r3.y;
    r3.y = exp2(r3.y);
    r1.x = r2.x ? r3.y : r1.x;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r7.w;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r3.xy) * abs(r3.xy);
    r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = r5.xy * r3.xy + float2(-0.5,-0.5);
    r3.xy = r3.xy + r3.xy;
    r2.x = r3.y * r3.y + r3.x;
    r3.x = cmp(cb3[1].z != 0.000000);
    r3.y = cb3[6].x / cb3[1].z;
    r3.x = r3.x ? r3.y : cb3[6].x;
    r2.x = cb3[1].y * r2.x + r3.x;
    r1.x = r2.x * r1.x;
    r3.xy = cb3[0].xy * r1.xx + r2.yz;
    r5.xy = r3.ww ? r3.xy : r2.yz;
    r5.z = r2.w;
    r1.x = dot(r5.xyz, r5.xyz);
    r1.x = rsqrt(r1.x);
    r5.xyz = r5.xyz * r1.xxx;
    r5.xyz = r5.xyz * r0.zzz;
    r2.xyz = r3.www ? r5.xyz : r2.yzw;
    r1.xyz = r2.xyz + -r1.yzw;
    r1.xyz = r1.xyz * r0.yyy;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.xyw = r4.wyz * r0.xxx + -cb1[70].zxy;
    r2.xyz = r3.xyw + -r2.xyz;
    r0.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r1.w = r2.x * 9.99999975e-005 + 0.200000003;
    r2.xyz = t4.SampleLevel(s0_s, r0.yz, -1).xyz;
    r2.w = cb5[8].x + r2.y;
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
    r3.yw = t5.SampleLevel(s1_s, r0.yz, -1).xy;
    r2.x = r2.x * 5 + -r2.z;
    r2.x = cmp(9.99999975e-006 < abs(r2.x));
    r2.w = cmp(r2.y >= r2.z);
    r2.w = r2.w ? r3.w : r3.y;
    r2.x = r2.x ? r2.w : r3.y;
    r2.x = cb5[8].y * r2.x;
    r2.y = max(r2.y, r2.z);
    r2.x = r2.x * r2.y;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r2.z = cb5[4].z + r3.z;
    r2.z = r3.x + -r2.z;
    r1.w = min(r2.z, r1.w);
    r1.w = cb5[8].w * r1.w;
    r1.w = r2.y * r1.w;
    r1.w = r2.x * r1.w;
    r0.yz = t6.SampleLevel(s2_s, r0.yz, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r2.xy = r1.ww * r0.yz;
    r0.y = dot(r2.xy, r2.xy);
    r0.y = sqrt(r0.y);
    r2.z = -1.20000005 * r0.y;
    r1.xyz = r1.xyz * cb5[7].zzz + r2.xyz;
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