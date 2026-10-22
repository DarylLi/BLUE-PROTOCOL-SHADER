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
  float4 cb5[10];
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
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : HIT_PROXY_ID0,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyzw = t1.Load(r0.y).xyzw;
  r3.xyzw = t1.Load(r0.z).xyzw;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r4.x = (int)v2.x + asint(cb4[0].w);
  r4.y = (uint)r4.x << 1;
  r4.yzw = t3.Load(r4.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r4.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.xyzw = t3.Load(r5.x).xyzw;
  r6.xyz = r5.yzx * r4.yzw;
  r4.yzw = r5.xyz * r4.zwy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = r4.yzw * r5.yzx;
  r4.yzw = r4.wyz * r5.zxy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r6.w = dot(r6.xyz, r6.xyz);
  r6.w = rsqrt(r6.w);
  r9.xyz = r6.xyz * r6.www;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = rsqrt(r6.w);
  r10.xyz = r7.xyz * r6.www;
  r6.w = dot(r8.xyz, r8.xyz);
  r7.w = rsqrt(r6.w);
  r11.xyz = r8.xyz * r7.www;
  r12.xyz = r10.xyz * r4.zzz;
  r12.xyz = r4.yyy * r9.xyz + r12.xyz;
  o0.xyz = r4.www * r11.xyz + r12.xyz;
  r4.yzw = r10.xyz * r5.yyy;
  r4.yzw = r5.xxx * r9.xyz + r4.yzw;
  r4.yzw = r5.zzz * r11.xyz + r4.yzw;
  o1.w = cb2[4].w * r5.w;
  r5.x = 0.00390625 * r1.w;
  r5.x = trunc(r5.x);
  r5.yzw = cb0[7].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r5.zzz;
  r9.xyz = cb2[0].xyz * r5.yyy + r9.xyz;
  r5.yzw = cb2[2].xyz * r5.www + r9.xyz;
  r5.yzw = cb2[3].xyz + r5.yzw;
  r9.xyz = cb1[70].xyz + r5.yzw;
  r7.w = dot(r9.xyz, r9.xyz);
  r7.w = sqrt(r7.w);
  r7.w = -cb0[8].x + r7.w;
  r7.w = saturate(cb0[8].y * r7.w);
  o2.y = 1 + -r7.w;
  r7.w = 1 + -r5.x;
  r7.w = cb0[8].w * r7.w;
  r7.w = cb0[8].z * r5.x + r7.w;
  r9.xyz = -cb0[5].xyz + r5.yzw;
  r8.w = dot(r9.xyz, r9.xyz);
  r8.w = sqrt(r8.w);
  r8.w = cb0[2].w * r0.w + r8.w;
  r5.yzw = -cb0[6].xyz + r5.yzw;
  r5.y = dot(r5.yzw, r5.yzw);
  r5.y = sqrt(r5.y);
  r5.y = cb0[2].w * r0.w + r5.y;
  r9.xyz = cmp(cb0[2].xyz < r8.www);
  r9.xyz = r9.xyz ? float3(1,1,1) : 0;
  r5.z = dot(r9.xyz, cb0[4].xyz);
  r9.xyz = cmp(cb0[3].xyz < r5.yyy);
  r9.xyz = r9.xyz ? float3(1,1,1) : 0;
  r5.y = dot(r9.xyz, cb0[4].xyz);
  r5.y = cb0[6].w * r5.y;
  r5.w = r5.z * cb0[5].w + r5.y;
  r5.y = cmp(abs(r5.w) < 0.999000013);
  r5.y = r5.y ? 1.000000 : 0;
  r5.z = r7.w * r5.y;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r1.x = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.y;
  r9.y = r2.y;
  r9.z = r3.y;
  r9.w = r0.y;
  r1.y = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.z;
  r9.y = r2.z;
  r9.z = r3.z;
  r9.w = r0.z;
  r1.z = dot(v0.xyzw, r9.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.x = 1;
  r2.x = r2.x * r5.z;
  r2.y = (int)r4.x * asint(cb4[0].y);
  r2.yz = t2.Load(r2.y).xy;
  r3.x = cmp(r5.z >= 1);
  if (r3.x != 0) {
    r3.xyz = cb2[1].xyz * r0.yyy;
    r3.xyz = r0.xxx * cb2[0].xyz + r3.xyz;
    r0.xyz = r0.zzz * cb2[2].xyz + r3.xyz;
    r0.xyz = cb2[3].xyz + r0.xyz;
    r3.x = asint(cb4[0].y) + -1;
    r3.y = min(5, (uint)r3.x);
    r3.y = mad(asint(cb4[0].y), (int)r4.x, (int)r3.y);
    r3.y = t2.Load(r3.y).y;
    r3.z = (int)cb5[7].z;
    r9.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r6.w);
    r7.xyz = v0.yyy * r7.xyz;
    r6.xyz = v0.xxx * r6.xyz + r7.xyz;
    r6.xyz = v0.zzz * r8.xyz + r6.xyz;
    r6.xyz = r6.xyz / r0.yyy;
    r5.y = cmp((int)r3.z == 5);
    r6.w = cmp(r2.y < 0.5);
    r6.w = r6.w ? 0.750000 : 0;
    r7.x = cb3[14].x + r2.z;
    r6.w = r7.x * cb3[14].z + r6.w;
    r6.w = 0.5 + r6.w;
    r6.w = frac(r6.w);
    r6.w = r6.w * 2 + -1;
    r7.x = abs(r6.w) * abs(r6.w);
    r6.w = -abs(r6.w) * 2 + 3;
    r6.w = r7.x * r6.w + -0.5;
    r3.y = r6.w * r3.y;
    r3.y = dot(cb3[14].yy, r3.yy);
    r7.xyz = r3.yyy * r4.yzw + r6.xyz;
    r7.xyz = r5.yyy ? r7.xyz : r6.xyz;
    r3.y = cmp(2 < (int)r3.z);
    if (r3.y != 0) {
      r3.x = min(2, (uint)r3.x);
      r3.x = mad(asint(cb4[0].y), (int)r4.x, (int)r3.x);
      r3.xy = t2.Load(r3.x).xy;
      if (r5.y != 0) {
        r8.xyz = float3(0.0625,1,16) * r3.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r3.xxx;
        r4.x = r9.x + r9.y;
        r4.x = cb3[2].x + r4.x;
        r10.x = r4.x + r3.y;
        r10.y = r4.x * cb3[3].y + r3.y;
        r5.y = cb3[3].y * r10.x;
        r10.z = 0.5 * r5.y;
        r10.w = r10.x + -r3.x;
        r10.xyzw = float4(0.5,0.5,0.5,1.5) + r10.xyzw;
        r10.xyzw = frac(r10.xyzw);
        r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r11.xyzw = abs(r10.xyzw) * abs(r10.xyzw);
        r10.xyzw = -abs(r10.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r10.xyzw = r11.xyzw * r10.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r10.xyzw = r10.xyzw + r10.xyzw;
        r11.w = r10.y * r10.z;
        r5.y = cmp(r11.w < 0);
        r11.y = abs(r11.w);
        r11.xz = float2(-1,1);
        r9.zw = r5.yy ? r11.xy : r11.zw;
        r5.y = -r10.y * r10.z + r9.z;
        r5.y = r9.w * r5.y + r11.w;
        r6.w = r9.z + -r5.y;
        r5.y = r9.w * r6.w + r5.y;
        r5.y = cb3[3].x * r5.y;
        r6.w = 1 + -cb3[0].w;
        r7.w = 1 + -cb3[3].x;
        r7.w = r10.x * r7.w;
        r5.y = r5.y * r6.w + r7.w;
        r6.w = r10.w * cb3[4].x + 1;
        r5.y = r6.w * r5.y;
        r8.xyz = r8.xyz * r5.yyy;
        r8.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
        r10.x = r4.x * 0.100000001 + r3.y;
        r4.x = cb3[18].x * cb3[7].x;
        r10.y = r4.x * 0.100000001 + r3.y;
        r9.zw = float2(0.5,0.5) + r10.xy;
        r9.zw = frac(r9.zw);
        r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
        r10.xy = abs(r9.zw) * abs(r9.zw);
        r9.zw = -abs(r9.zw) * float2(2,2) + float2(3,3);
        r9.zw = r10.xy * r9.zw + float2(-0.5,-0.5);
        r9.zw = r9.zw + r9.zw;
        r9.zw = r9.zw * r9.zw;
        r4.x = r9.w * r9.z;
        r4.x = -r4.x * cb3[7].x + 1;
        r5.y = cb3[0].w * r10.w;
        r4.x = r5.y * cb3[4].x + r4.x;
        r10.xyz = cb3[5].xyz + -r8.xyz;
        r10.xyz = cb3[6].yyy * r10.xyz;
        r10.xyz = r10.xyz * r4.xxx;
        r7.xyz = r10.xyz * r3.xxx + r8.xyz;
      } else {
        r8.xyz = float3(0.0625,1,16) * r3.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r3.xxx;
        r3.x = r9.x + r9.y;
        r3.x = cb3[2].x + r3.x;
        r10.x = r3.x + r3.y;
        r10.y = r3.x * cb3[3].y + r3.y;
        r3.x = cb3[3].y * r10.x;
        r10.z = 0.5 * r3.x;
        r9.xzw = float3(0.5,0.5,0.5) + r10.xyz;
        r9.xzw = frac(r9.xzw);
        r9.xzw = r9.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r10.xyz = abs(r9.xzw) * abs(r9.xzw);
        r9.xzw = -abs(r9.xzw) * float3(2,2,2) + float3(3,3,3);
        r9.xzw = r10.xyz * r9.xzw + float3(-0.5,-0.5,-0.5);
        r9.xzw = r9.xzw + r9.xzw;
        r10.w = r9.z * r9.w;
        r3.x = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r3.xy = r3.xx ? r10.xy : r10.zw;
        r4.x = -r9.z * r9.w + r3.x;
        r4.x = r3.y * r4.x + r10.w;
        r3.x = -r4.x + r3.x;
        r3.x = r3.y * r3.x + r4.x;
        r3.x = cb3[3].x * r3.x;
        r3.y = 1 + -cb3[0].w;
        r4.x = 1 + -cb3[3].x;
        r4.x = r9.x * r4.x;
        r3.x = r3.x * r3.y + r4.x;
        r8.xyz = r8.xyz * r3.xxx;
        r7.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
      }
    }
    r3.x = dot(r7.xyz, r7.xyz);
    r3.x = sqrt(r3.x);
    r3.y = 1 / cb3[1].z;
    r3.y = -r3.y * 0.25 + r7.z;
    r3.y = max(0, r3.y);
    r3.y = cb3[1].z * r3.y;
    r4.x = cmp(r3.y != 0.000000);
    r5.y = log2(r3.y);
    r5.y = cb3[1].w * r5.y;
    r5.y = exp2(r5.y);
    r3.y = r4.x ? r5.y : r3.y;
    r8.x = r0.x * 0.00100000005 + cb3[1].x;
    r8.y = cb3[1].x * 0.800000012 + r9.y;
    r8.xy = float2(0.5,0.5) + r8.xy;
    r8.xy = frac(r8.xy);
    r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
    r8.zw = abs(r8.xy) * abs(r8.xy);
    r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
    r8.xy = r8.zw * r8.xy + float2(-0.5,-0.5);
    r8.xy = r8.xy + r8.xy;
    r0.x = r8.y * r8.y + r8.x;
    r4.x = cmp(cb3[1].z != 0.000000);
    r5.y = cb3[6].x / cb3[1].z;
    r4.x = r4.x ? r5.y : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r4.x;
    r0.x = r0.x * r3.y;
    r8.xy = cb3[0].xy * r0.xx + r7.xy;
    r8.xy = r3.zz ? r8.xy : r7.xy;
    r8.z = r7.z;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = rsqrt(r0.x);
    r8.xyz = r8.xyz * r0.xxx;
    r8.xyz = r8.xyz * r3.xxx;
    r3.xyz = r3.zzz ? r8.xyz : r7.xyz;
    r3.xyz = r3.xyz + -r6.xyz;
    r3.xyz = r3.xyz * r0.yyy;
    r6.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r6.xyz = floor(r6.xyz);
    r6.xyz = r6.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r7.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r6.xyz = r7.xyz + -r6.xyz;
    r0.xy = float2(9.99999975e-005,9.99999975e-005) * r6.yz;
    r4.x = r6.x * 9.99999975e-005 + 0.200000003;
    r6.xyz = t4.SampleLevel(s0_s, r0.xy, -1).xyz;
    r5.y = cb5[8].y + r6.y;
    r6.w = -r5.y + r4.x;
    r6.x = r6.x + -r6.y;
    r6.xw = max(float2(9.99999975e-005,0), r6.xw);
    r6.x = r6.w / r6.x;
    r6.x = min(1, r6.x);
    r6.y = ceil(r6.x);
    r6.x = 1 + -r6.x;
    r6.x = min(0.200000003, r6.x);
    r6.x = r6.y * r6.x;
    r6.y = 5 * r6.x;
    r4.x = -r6.z + r4.x;
    r6.w = max(0, r4.x);
    r5.y = r5.y + -r6.z;
    r5.y = max(9.99999975e-005, r5.y);
    r5.y = r6.w / r5.y;
    r5.y = min(1, r5.y);
    r6.z = ceil(r5.y);
    r5.y = 1 + -r5.y;
    r5.y = min(0.200000003, r5.y);
    r5.y = r6.z * r5.y;
    r5.y = 5 * r5.y;
    r6.zw = t5.SampleLevel(s1_s, r0.xy, -1).xy;
    r6.x = r6.x * 5 + -r5.y;
    r6.x = cmp(9.99999975e-006 < abs(r6.x));
    r7.y = cmp(r6.y >= r5.y);
    r6.w = r7.y ? r6.w : r6.z;
    r6.x = r6.x ? r6.w : r6.z;
    r6.x = cb5[8].z * r6.x;
    r5.y = max(r6.y, r5.y);
    r6.x = r6.x * r5.y;
    r4.x = 10000 * r4.x;
    r4.x = max(0, r4.x);
    r0.z = cb5[4].z + r0.z;
    r0.z = r7.x + -r0.z;
    r0.z = min(r4.x, r0.z);
    r0.z = cb5[9].x * r0.z;
    r0.z = r5.y * r0.z;
    r0.z = r6.x * r0.z;
    r0.xy = t6.SampleLevel(s2_s, r0.xy, -1).xy;
    r0.xy = float2(-1,-1) + r0.xy;
    r0.xy = r0.zz * r0.xy;
    r4.x = dot(r0.xy, r0.xy);
    r4.x = sqrt(r4.x);
    r0.z = -1.20000005 * r4.x;
    r0.xyz = r3.xyz * cb5[7].www + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r1.x = -r5.x * 256 + r1.w;
  o4.x = 0.00392156886 * r1.x;
  o4.y = 0.00392156886 * r2.w;
  o4.z = 0.00392156886 * r3.w;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = r2.xxxx * cb1[3].xyzw + r1.xyzw;
  o0.w = 0;
  o1.xyz = r4.yzw;
  o2.x = r0.w;
  o2.zw = r5.zw;
  o3.xy = r2.yz;
  o3.zw = float2(0,0);
  o4.w = 0;
  o5.w = r2.x;
  o5.xyz = r0.xyz;
  return;
}