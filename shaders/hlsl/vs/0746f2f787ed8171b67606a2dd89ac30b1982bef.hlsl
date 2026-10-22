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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r0.xyz = floor(r0.xyz);
  r0.xyz = r0.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r0.w = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xzw;
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.x = r3.z + -r0.x;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r6.xy = -cb0[70].xy + r2.xy;
  r0.yz = r6.xy + -r0.yz;
  r6.xy = r6.xy / cb2[30].xx;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r7.xyz = t3.SampleLevel(s0_s, r0.yz, -1).xyz;
  r0.w = cb2[32].w + r7.y;
  r1.y = r0.x + -r0.w;
  r0.xw = -r7.zz + r0.xw;
  r2.w = r7.x + -r7.y;
  r2.w = max(9.99999975e-005, r2.w);
  r1.y = max(0, r1.y);
  r1.y = r1.y / r2.w;
  r1.y = min(1, r1.y);
  r2.w = 1 + -r1.y;
  r1.y = ceil(r1.y);
  r2.w = min(0.200000003, r2.w);
  r1.y = r2.w * r1.y;
  r2.w = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.xw = max(float2(0,9.99999975e-005), r0.xw);
  r0.w = r2.w / r0.w;
  r0.w = min(1, r0.w);
  r2.w = 1 + -r0.w;
  r0.w = ceil(r0.w);
  r2.w = min(0.200000003, r2.w);
  r0.w = r2.w * r0.w;
  r0.w = 5 * r0.w;
  r2.w = r1.y * 5 + -r0.w;
  r1.y = 5 * r1.y;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.w = cmp(r1.y >= r0.w);
  r0.w = max(r1.y, r0.w);
  r6.zw = t4.SampleLevel(s1_s, r0.yz, -1).xy;
  r0.yz = t5.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r1.y = r3.w ? r6.w : r6.z;
  r1.y = r2.w ? r1.y : r6.z;
  r1.y = cb2[33].x * r1.y;
  r1.y = r1.y * r0.w;
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r2.w = t0[r6.w].val[8/4];
  r7.x = t0[r6.z].val[0/4];
  r7.y = t0[r6.z].val[0/4+1];
  r7.z = t0[r6.z].val[0/4+2];
  r7.w = t0[r6.z].val[0/4+3];
  r2.w = cb2[17].z + r2.w;
  r2.w = r3.z + -r2.w;
  r3.xyz = r3.xyz / cb2[30].www;
  r0.x = min(r2.w, r0.x);
  r0.x = cb2[33].z * r0.x;
  r0.x = r0.w * r0.x;
  r0.x = r1.y * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r0.w = cb2[29].z * cb0[142].z;
  r3.xyz = r0.www * float3(-0.5,-0.5,-0.5) + r3.xyz;
  r6.xy = r0.ww * float2(0.353553385,-0.353553385) + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r6.xy = frac(r6.xy);
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r8.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
  r3.xyz = abs(r3.xyz) * abs(r3.xyz);
  r3.xyz = r3.xyz * r8.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r3.xy = -abs(r6.xy) * float2(2,2) + float2(3,3);
  r3.zw = abs(r6.xy) * abs(r6.xy);
  r3.xy = r3.zw * r3.xy;
  r1.y = dot(float2(-0.707106769,0.707106769), r3.xy);
  r0.w = r1.y + r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r3.x, r6.x);
  r3.xyz = float3(7.07106781,-7.07106781,0) * r3.xxx;
  r3.xyz = r6.xxx * float3(0,0,10) + r3.xyz;
  r3.xyz = float3(0,0,-10) + r3.xyz;
  r3.xyz = cb2[31].xxx * r3.xyz;
  r6.xy = cb2[31].zy * cb0[142].zz;
  r6.xy = float2(6.28318548,6.28318548) * r6.xy;
  r6.xy = sin(r6.xy);
  r6.xy = r6.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r0.w = r6.x * r6.y;
  r0.w = cb2[31].w * r0.w;
  r0.w = cb2[32].x * r0.w;
  r3.xyz = r3.xyz * r0.www + float3(1,1,1);
  r0.w = asint(cb1[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.y = (int)v2.x + asint(cb1[0].w);
  r0.w = mad(asint(cb1[0].y), (int)r1.y, (int)r0.w);
  r0.w = t1.Load(r0.w).y;
  r0.w = 1 + -r0.w;
  r3.xyz = r3.xyz * r0.www;
  r3.w = cb2[32].y * r3.z;
  r0.xyz = r3.xyw + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.xyz = r7.yyy * r1.xzw;
  r0.w = (uint)r1.y << 1;
  r1.xzw = t2.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r1.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.y = (int)r1.y * asint(cb1[0].y);
  r2.xy = t1.Load(r1.y).xy;
  o3.xy = r2.xy;
  r2.xyzw = t2.Load(r0.w).xyzw;
  r3.xyz = r2.yzx * r1.xzw;
  r1.xyz = r2.xyz * r1.zwx + -r3.xyz;
  r1.xyz = r1.xyz * r2.www;
  r3.xyz = r1.xyz * r2.yzx;
  r1.xyz = r1.zxy * r2.zxy + -r3.xyz;
  r1.xyz = r1.xyz * r2.www;
  r3.xyz = r1.yyy * r0.xyz;
  r0.xyz = r2.yyy * r0.xyz;
  r4.xyz = r7.xxx * r4.xyz;
  r1.xyw = r1.xxx * r4.xyz + r3.xyz;
  r0.xyz = r2.xxx * r4.xyz + r0.xyz;
  r3.xyz = r7.zzz * r5.xyz;
  o2.w = r2.w * r7.w;
  o2.xyz = r2.zzz * r3.xyz + r0.xyz;
  o1.xyz = r1.zzz * r3.xyz + r1.xyw;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}