// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out uint p3 : SV_RenderTargetArrayIndex0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb4[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r2.w].val[0/4];
  r4.y = t0[r2.w].val[0/4+1];
  r4.z = t0[r2.w].val[0/4+2];
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r7.xyz = r6.xxx * r2.xyz;
  r8.xyz = r6.yyy * r3.xzw;
  r6.xyz = r6.zzz * r4.xyz;
  r9.xyz = r8.xyz * r0.zzz;
  r9.xyz = r0.yyy * r7.xyz + r9.xyz;
  o0.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r1.yyy;
  r0.yzw = r1.xxx * r7.xyz + r0.yzw;
  r0.yzw = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r1.x = t0[r3.y].val[0/4];
  r1.y = t0[r3.y].val[0/4+1];
  r1.z = t0[r3.y].val[0/4+2];
  r6.xyz = v0.yyy * r3.xzw;
  r6.xyz = r2.xyz * v0.xxx + r6.xyz;
  r6.xyz = r4.xyz * v0.zzz + r6.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r1.w = (int)r0.x * asint(cb4[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb4[0].y) + -1;
  r2.w = min(5, (uint)r1.w);
  r2.w = mad(asint(cb4[0].y), (int)r0.x, (int)r2.w);
  r2.w = t1.Load(r2.w).y;
  r3.y = (int)cb5[7].y;
  r7.xyz = -cb1[70].xyz + r1.xyz;
  r8.x = t0[r5.y].val[0/4];
  r8.y = t0[r5.y].val[0/4+1];
  r8.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r9.x = t0[r5.w].val[0/4];
  r9.y = t0[r5.w].val[0/4+1];
  r9.z = t0[r5.w].val[0/4+2];
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r10.x = t0[r6.z].val[0/4];
  r10.y = t0[r6.z].val[0/4+1];
  r10.w = t0[r6.z].val[0/4+2];
  r7.w = 1;
  r11.x = r8.x;
  r11.y = r5.x;
  r11.z = r9.x;
  r11.w = r10.x;
  r11.x = dot(r7.xyzw, r11.xyzw);
  r12.x = r8.y;
  r12.y = r5.y;
  r12.z = r9.y;
  r12.w = r10.y;
  r11.y = dot(r7.xyzw, r12.xyzw);
  r10.x = r8.z;
  r10.y = r5.z;
  r10.z = r9.z;
  r11.z = dot(r7.xyzw, r10.xyzw);
  r5.x = t0[r6.w].val[0/4];
  r5.y = t0[r6.w].val[0/4+1];
  r5.z = t0[r6.w].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = sqrt(r4.w);
  r8.x = r2.x;
  r8.y = r3.x;
  r8.z = r4.x;
  r8.x = dot(r11.xyz, r8.xyz);
  r9.x = r2.y;
  r9.y = r3.z;
  r9.z = r4.y;
  r8.y = dot(r11.xyz, r9.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r8.z = dot(r11.xyz, r4.xyz);
  r2.xyz = r8.xyz / r4.www;
  r3.x = cmp((int)r3.y == 5);
  r3.z = cmp(r6.x < 0.5);
  r3.z = r3.z ? 0.750000 : 0;
  r3.w = cb2[14].x + r6.y;
  r3.z = r3.w * cb2[14].z + r3.z;
  r3.z = 0.5 + r3.z;
  r3.z = frac(r3.z);
  r3.z = r3.z * 2 + -1;
  r3.w = abs(r3.z) * abs(r3.z);
  r3.z = -abs(r3.z) * 2 + 3;
  r3.z = r3.w * r3.z + -0.5;
  r2.w = r3.z * r2.w;
  r2.w = dot(cb2[14].yy, r2.ww);
  r4.xyz = r2.www * r0.yzw + r2.xyz;
  r4.xyz = r3.xxx ? r4.xyz : r2.xyz;
  r2.w = cmp(2 < (int)r3.y);
  if (r2.w != 0) {
    r1.w = min(2, (uint)r1.w);
    r0.x = mad(asint(cb4[0].y), (int)r0.x, (int)r1.w);
    r3.zw = t1.Load(r0.x).xy;
    if (r3.x != 0) {
      r8.xyz = float3(0.0625,1,16) * r3.www;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = r8.xyz * r3.zzz;
      r0.x = r5.y + r5.w;
      r0.x = cb2[2].x + r0.x;
      r9.x = r0.x + r3.w;
      r9.y = r0.x * cb2[3].y + r3.w;
      r1.w = cb2[3].y * r9.x;
      r9.z = 0.5 * r1.w;
      r9.w = r9.x + -r3.z;
      r9.xyzw = float4(0.5,0.5,0.5,1.5) + r9.xyzw;
      r9.xyzw = frac(r9.xyzw);
      r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r10.xyzw = abs(r9.xyzw) * abs(r9.xyzw);
      r9.xyzw = -abs(r9.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r9.xyzw = r10.xyzw * r9.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r9.xyzw = r9.xyzw + r9.xyzw;
      r10.w = r9.y * r9.z;
      r1.w = cmp(r10.w < 0);
      r10.y = abs(r10.w);
      r10.xz = float2(-1,1);
      r6.zw = r1.ww ? r10.xy : r10.zw;
      r1.w = -r9.y * r9.z + r6.z;
      r1.w = r6.w * r1.w + r10.w;
      r2.w = r6.z + -r1.w;
      r1.w = r6.w * r2.w + r1.w;
      r1.w = cb2[3].x * r1.w;
      r2.w = 1 + -cb2[0].w;
      r3.x = 1 + -cb2[3].x;
      r3.x = r9.x * r3.x;
      r1.w = r1.w * r2.w + r3.x;
      r2.w = r9.w * cb2[4].x + 1;
      r1.w = r2.w * r1.w;
      r8.xyz = r8.xyz * r1.www;
      r8.xyz = r8.xyz * cb2[2].yyy + r4.xyz;
      r9.x = r0.x * 0.100000001 + r3.w;
      r0.x = cb2[18].x * cb2[7].x;
      r9.y = r0.x * 0.100000001 + r3.w;
      r6.zw = float2(0.5,0.5) + r9.xy;
      r6.zw = frac(r6.zw);
      r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
      r9.xy = abs(r6.zw) * abs(r6.zw);
      r6.zw = -abs(r6.zw) * float2(2,2) + float2(3,3);
      r6.zw = r9.xy * r6.zw + float2(-0.5,-0.5);
      r6.zw = r6.zw + r6.zw;
      r6.zw = r6.zw * r6.zw;
      r0.x = r6.w * r6.z;
      r0.x = -r0.x * cb2[7].x + 1;
      r1.w = cb2[0].w * r9.w;
      r0.x = r1.w * cb2[4].x + r0.x;
      r9.xyz = cb2[5].xyz + -r8.xyz;
      r9.xyz = cb2[6].yyy * r9.xyz;
      r9.xyz = r9.xyz * r0.xxx;
      r4.xyz = r9.xyz * r3.zzz + r8.xyz;
    } else {
      r8.xyz = float3(0.0625,1,16) * r3.www;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = r8.xyz * r3.zzz;
      r0.x = r5.y + r5.w;
      r0.x = cb2[2].x + r0.x;
      r9.x = r0.x + r3.w;
      r9.y = r0.x * cb2[3].y + r3.w;
      r0.x = cb2[3].y * r9.x;
      r9.z = 0.5 * r0.x;
      r3.xzw = float3(0.5,0.5,0.5) + r9.xyz;
      r3.xzw = frac(r3.xzw);
      r3.xzw = r3.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r9.xyz = abs(r3.xzw) * abs(r3.xzw);
      r3.xzw = -abs(r3.xzw) * float3(2,2,2) + float3(3,3,3);
      r3.xzw = r9.xyz * r3.xzw + float3(-0.5,-0.5,-0.5);
      r3.xzw = r3.xzw + r3.xzw;
      r9.w = r3.z * r3.w;
      r0.x = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r6.zw = r0.xx ? r9.xy : r9.zw;
      r0.x = -r3.z * r3.w + r6.z;
      r0.x = r6.w * r0.x + r9.w;
      r1.w = r6.z + -r0.x;
      r0.x = r6.w * r1.w + r0.x;
      r0.x = cb2[3].x * r0.x;
      r1.w = 1 + -cb2[0].w;
      r2.w = 1 + -cb2[3].x;
      r2.w = r3.x * r2.w;
      r0.x = r0.x * r1.w + r2.w;
      r3.xzw = r8.xyz * r0.xxx;
      r4.xyz = r3.xzw * cb2[2].yyy + r4.xyz;
    }
  }
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r1.w = 1 / cb2[1].z;
  r1.w = -r1.w * 0.25 + r4.z;
  r1.w = max(0, r1.w);
  r1.w = cb2[1].z * r1.w;
  r2.w = cmp(r1.w != 0.000000);
  r3.x = log2(r1.w);
  r3.x = cb2[1].w * r3.x;
  r3.x = exp2(r3.x);
  r1.w = r2.w ? r3.x : r1.w;
  r5.x = r5.x * 0.00100000005 + cb2[1].x;
  r5.y = cb2[1].x * 0.800000012 + r5.w;
  r3.xz = float2(0.5,0.5) + r5.xy;
  r3.xz = frac(r3.xz);
  r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
  r5.xy = abs(r3.xz) * abs(r3.xz);
  r3.xz = -abs(r3.xz) * float2(2,2) + float2(3,3);
  r3.xz = r5.xy * r3.xz + float2(-0.5,-0.5);
  r3.xz = r3.xz + r3.xz;
  r2.w = r3.z * r3.z + r3.x;
  r3.x = cmp(cb2[1].z != 0.000000);
  r3.z = cb2[6].x / cb2[1].z;
  r3.x = r3.x ? r3.z : cb2[6].x;
  r2.w = cb2[1].y * r2.w + r3.x;
  r1.w = r2.w * r1.w;
  r3.xz = cb2[0].xy * r1.ww + r4.xy;
  r8.xy = r3.yy ? r3.xz : r4.xy;
  r8.z = r4.z;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r3.xzw = r8.xyz * r1.www;
  r3.xzw = r3.xzw * r0.xxx;
  r3.xyz = r3.yyy ? r3.xzw : r4.xyz;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz * r4.www;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = r7.zxy + -r3.xyz;
  r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r0.x = r3.x * 9.99999975e-005 + 0.200000003;
  r4.xyz = t3.SampleLevel(s0_s, r3.yz, -1).xyz;
  r1.w = cb5[8].x + r4.y;
  r2.w = -r1.w + r0.x;
  r2.w = max(0, r2.w);
  r3.x = r4.x + -r4.y;
  r3.x = max(9.99999975e-005, r3.x);
  r2.w = r2.w / r3.x;
  r2.w = min(1, r2.w);
  r3.x = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r3.x * r2.w;
  r3.x = 5 * r2.w;
  r0.x = -r4.z + r0.x;
  r3.w = max(0, r0.x);
  r1.w = r1.w + -r4.z;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r3.w * r1.w;
  r1.w = 5 * r1.w;
  r4.xy = t4.SampleLevel(s1_s, r3.yz, -1).xy;
  r2.w = r2.w * 5 + -r1.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.w = cmp(r3.x >= r1.w);
  r3.w = r3.w ? r4.y : r4.x;
  r2.w = r2.w ? r3.w : r4.x;
  r2.w = cb5[8].y * r2.w;
  r1.w = max(r3.x, r1.w);
  r2.w = r2.w * r1.w;
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r3.x = cb5[4].z + r5.z;
  r3.x = r7.z + -r3.x;
  r0.x = min(r3.x, r0.x);
  r0.x = cb5[8].w * r0.x;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r3.xy = t5.SampleLevel(s2_s, r3.yz, -1).xy;
  r3.xy = float2(-1,-1) + r3.xy;
  r3.xy = r3.xy * r0.xx;
  r0.x = dot(r3.xy, r3.xy);
  r0.x = sqrt(r0.x);
  r3.z = -1.20000005 * r0.x;
  r2.xyz = r2.xyz * cb5[7].zzz + r3.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.x = asuint(cb0[1].w) << 2;
  r2.xyzw = cb3[r0.x+30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[r0.x+29].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb3[r0.x+31].xyzw + r2.xyzw;
  r2.xyzw = cb3[r0.x+32].xyzw + r2.xyzw;
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xy = r6.xy;
  o2.zw = float2(0,0);
  o5.xyzw = r2.xyzw;
  o7.xyzw = r2.xyzw;
  o4.xyz = r1.xyz;
  o6.xyz = r0.yzw;
  o3.x = v1.x;
  p3.x = cb0[1].w;
  return;
}