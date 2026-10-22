// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[30];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
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
  out float4 o3 : TEXCOORD4,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : LIGHTMAP_ID0,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4+2];
  r8.y = t0[r2.x].val[0/4];
  r8.z = t0[r2.x].val[0/4+1];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.yzx * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  o1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  r0.y = (int)r0.x * asint(cb2[0].y);
  r0.x = mad(asint(cb2[0].y), (int)r0.x, asint(cb2[0].z));
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  o2.xy = r0.yw;
  o2.zw = float2(0,0);
  r1.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(9,5,24));
  r0.y = t0[r1.z].val[12/4];
  r0.y = (int)r0.y + asint(cb2[1].y);
  r0.w = mad((int)r0.y, 15, 2);
  p4.x = r0.y;
  r5.x = t1[r0.w].val[0/4];
  r5.y = t1[r0.w].val[0/4+1];
  r5.z = t1[r0.w].val[0/4+2];
  r5.w = t1[r0.w].val[0/4+3];
  o3.xy = r0.xz * r5.xy + r5.zw;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  r0.y = r3.x;
  r0.x = r8.y;
  r0.z = r9.x;
  r5.xyz = v0.yyy * r3.xyz;
  r5.xyz = r8.yzx * v0.xxx + r5.xyz;
  r5.xyz = r9.xyz * v0.zzz + r5.xyz;
  r2.xyz = r5.xyz + r2.yzw;
  r5.xyz = -cb0[70].xyz + r2.xyz;
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r6.x = t0[r1.y].val[0/4];
  r6.y = t0[r1.y].val[0/4+1];
  r6.z = t0[r1.y].val[0/4+2];
  r7.w = r1.x;
  r10.x = t0[r4.y].val[0/4+1];
  r10.y = t0[r4.y].val[0/4];
  r10.z = t0[r4.y].val[0/4+2];
  r7.x = r10.y;
  r11.x = t0[r4.z].val[0/4];
  r11.y = t0[r4.z].val[0/4+2];
  r11.z = t0[r4.z].val[0/4+1];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r7.y = r11.x;
  r7.z = r4.x;
  r5.w = 1;
  r7.x = dot(r5.xyzw, r7.xyzw);
  r11.x = r10.z;
  r10.y = r11.z;
  r10.z = r4.y;
  r11.z = r4.z;
  r10.w = r1.z;
  r11.w = r1.w;
  r7.z = dot(r5.xyzw, r11.xyzw);
  r7.y = dot(r5.xyzw, r10.xyzw);
  r0.x = dot(r7.xyz, r0.xyz);
  r8.y = r3.z;
  r3.x = r8.z;
  r3.z = r9.y;
  r0.y = dot(r7.xyz, r3.xyz);
  r8.z = r9.z;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r0.z = dot(r7.xyz, r8.xyz);
  r0.xyz = r0.xyz / r0.www;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.00100000005 * r6.y;
  r3.y = cb1[1].x * 0.800000012 + r1.y;
  r3.x = r6.x * 0.00100000005 + cb1[1].x;
  r1.y = cb3[15].z + r6.z;
  r1.zw = float2(0.5,0.5) + r3.xy;
  r1.zw = frac(r1.zw);
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r3.xy = abs(r1.zw) * abs(r1.zw);
  r1.zw = -abs(r1.zw) * float2(2,2) + float2(3,3);
  r1.zw = r3.xy * r1.zw + float2(-0.5,-0.5);
  r1.zw = r1.zw + r1.zw;
  r1.z = r1.w * r1.w + r1.z;
  r1.w = cmp(cb1[1].z != 0.000000);
  r2.w = cb1[6].x / cb1[1].z;
  r1.w = r1.w ? r2.w : cb1[6].x;
  r1.z = cb1[1].y * r1.z + r1.w;
  r1.w = 1 / cb1[1].z;
  r1.w = -r1.w * 0.25 + r0.z;
  r1.w = max(0, r1.w);
  r1.w = cb1[1].z * r1.w;
  r2.w = log2(r1.w);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r3.x = cmp(r1.w != 0.000000);
  r1.w = r3.x ? r2.w : r1.w;
  r1.z = r1.z * r1.w;
  r3.xy = cb1[0].xy * r1.zz + r0.xy;
  r3.z = r0.z;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r0.xyz = r3.xyz * r1.xxx + -r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r1.xzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xzw = floor(r1.xzw);
  r1.xzw = r1.xzw * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xyzw = r5.zzxy + -r1.xyzw;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r3.xyz = t4.SampleLevel(s0_s, r1.zw, -1).xyz;
  r1.x = r3.x + -r3.y;
  r1.x = max(9.99999975e-005, r1.x);
  r2.w = cb3[29].x + r3.y;
  r3.x = -r2.w + r0.w;
  r0.w = -r3.z + r0.w;
  r2.w = r2.w + -r3.z;
  r2.w = max(9.99999975e-005, r2.w);
  r3.x = max(0, r3.x);
  r1.x = r3.x / r1.x;
  r1.x = min(1, r1.x);
  r3.x = 1 + -r1.x;
  r1.x = ceil(r1.x);
  r3.x = min(0.200000003, r3.x);
  r1.x = r3.x * r1.x;
  r3.x = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(r0.w, r1.y);
  r0.w = cb3[29].w * r0.w;
  r1.y = r3.x / r2.w;
  r1.y = min(1, r1.y);
  r2.w = 1 + -r1.y;
  r1.y = ceil(r1.y);
  r2.w = min(0.200000003, r2.w);
  r1.y = r2.w * r1.y;
  r1.y = 5 * r1.y;
  r2.w = r1.x * 5 + -r1.y;
  r1.x = 5 * r1.x;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.x = cmp(r1.x >= r1.y);
  r1.x = max(r1.x, r1.y);
  r3.yz = t5.SampleLevel(s1_s, r1.zw, -1).xy;
  r1.yz = t6.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.yz = float2(-1,-1) + r1.yz;
  r1.w = r3.x ? r3.z : r3.y;
  r1.w = r2.w ? r1.w : r3.y;
  r1.w = cb3[29].y * r1.w;
  r1.w = r1.w * r1.x;
  r0.w = r1.x * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = r0.ww * r1.yz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[28].zzz + r1.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}