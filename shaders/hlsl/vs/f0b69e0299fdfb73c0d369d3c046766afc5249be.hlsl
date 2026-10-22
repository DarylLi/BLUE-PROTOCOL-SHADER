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

cbuffer cb2 : register(b2)
{
  float4 cb2[34];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
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
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
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
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r3.w = t0[r4.y].val[8/4];
  r3.w = cb2[17].z + r3.w;
  r4.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r6.xyz = r4.xyz * r0.zzz;
  r4.xyz = r4.xyz * r1.yyy;
  r7.x = t0[r2.x].val[0/4];
  r7.y = t0[r2.x].val[0/4+1];
  r7.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r5.xxx;
  r3.xyz = r7.xyz * v0.xxx + r3.xyz;
  r3.xyz = r8.xyz * v0.zzz + r3.xyz;
  r5.xyz = r8.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r2.xyz = r3.xyz + r2.yzw;
  r3.xyz = r0.yyy * r9.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r3.xyz;
  r0.yzw = r1.xxx * r9.xyz + r4.xyz;
  r0.yzw = r1.zzz * r5.xyz + r0.yzw;
  o1.xyz = r0.yzw;
  o6.xyz = r0.yzw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.yzw = -cb0[70].xyz + r2.xyz;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.x = -r1.x + r0.w;
  r1.x = r1.x * 9.99999975e-005 + 0.200000003;
  r3.xy = -cb0[70].xy + r2.xy;
  r1.yz = r3.xy + -r1.yz;
  r3.xy = r3.xy / cb2[29].ww;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r4.xyz = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.w = cb2[32].z + r4.y;
  r2.w = r1.x + -r1.w;
  r1.xw = -r4.zz + r1.xw;
  r3.z = r4.x + -r4.y;
  r3.z = max(9.99999975e-005, r3.z);
  r2.w = max(0, r2.w);
  r2.w = r2.w / r3.z;
  r2.w = min(1, r2.w);
  r3.z = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r3.z = min(0.200000003, r3.z);
  r2.w = r3.z * r2.w;
  r3.z = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.xw = max(float2(0,9.99999975e-005), r1.xw);
  r1.w = r3.z / r1.w;
  r1.w = min(1, r1.w);
  r3.z = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.z = min(0.200000003, r3.z);
  r1.w = r3.z * r1.w;
  r1.w = 5 * r1.w;
  r3.z = r2.w * 5 + -r1.w;
  r2.w = 5 * r2.w;
  r3.z = cmp(9.99999975e-006 < abs(r3.z));
  r4.x = cmp(r2.w >= r1.w);
  r1.w = max(r2.w, r1.w);
  r4.yz = t4.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.yz = t5.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.yz = float2(-1,-1) + r1.yz;
  r2.w = r4.x ? r4.z : r4.y;
  r2.w = r3.z ? r2.w : r4.y;
  r2.w = cb2[32].w * r2.w;
  r2.w = r2.w * r1.w;
  r3.z = r0.w + -r3.w;
  r0.yzw = r0.yzw / cb2[30].zzz;
  r1.x = min(r3.z, r1.x);
  r1.x = cb2[33].y * r1.x;
  r1.x = r1.w * r1.x;
  r1.x = r2.w * r1.x;
  r1.xy = r1.xx * r1.yz;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = sqrt(r1.w);
  r1.z = -1.20000005 * r1.w;
  r1.w = cb2[29].y * cb0[142].z;
  r0.yzw = r1.www * float3(-0.5,-0.5,-0.5) + r0.yzw;
  r3.xy = r1.ww * float2(0.353553385,-0.353553385) + r3.xy;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = frac(r3.xy);
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.yzw = float3(0.5,0.5,0.5) + r0.yzw;
  r0.yzw = frac(r0.yzw);
  r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r4.xyz = -abs(r0.yzw) * float3(2,2,2) + float3(3,3,3);
  r0.yzw = abs(r0.yzw) * abs(r0.yzw);
  r0.yzw = r0.yzw * r4.xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.zw = -abs(r3.xy) * float2(2,2) + float2(3,3);
  r3.xy = abs(r3.xy) * abs(r3.xy);
  r0.zw = r3.xy * r0.zw;
  r0.z = dot(float2(-0.707106769,0.707106769), r0.zw);
  r0.y = r0.z + r0.y;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r3.x, r4.x);
  r0.yzw = float3(7.07106781,-7.07106781,0) * r3.xxx;
  r0.yzw = r4.xxx * float3(0,0,10) + r0.yzw;
  r0.yzw = float3(0,0,-10) + r0.yzw;
  r0.yzw = cb2[30].www * r0.yzw;
  r3.xy = cb2[31].yx * cb0[142].zz;
  r3.xy = float2(6.28318548,6.28318548) * r3.xy;
  r3.xy = sin(r3.xy);
  r3.xy = r3.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r1.w = r3.x * r3.y;
  r1.w = cb2[31].z * r1.w;
  r1.w = cb2[31].w * r1.w;
  r0.yzw = r0.yzw * r1.www + float3(1,1,1);
  r1.w = asint(cb1[0].y) + -1;
  r1.w = min(2, (uint)r1.w);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, (int)r1.w);
  r0.x = t1.Load(r0.x).y;
  r0.x = 1 + -r0.x;
  r0.xyz = r0.yzw * r0.xxx;
  r0.w = cb2[32].x * r0.z;
  r0.xyz = r0.xyw + r1.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  o4.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o5.w = 1;
  return;
}