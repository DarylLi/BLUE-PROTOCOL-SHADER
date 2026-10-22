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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
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
  r6.xy = r6.xy / cb2[29].ww;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r7.xyz = t3.SampleLevel(s0_s, r0.yz, -1).xyz;
  r0.w = cb2[32].z + r7.y;
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
  r1.y = cb2[32].w * r1.y;
  r1.y = r1.y * r0.w;
  r7.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,10,11));
  r2.w = t0[r7.y].val[8/4];
  r2.w = cb2[17].z + r2.w;
  r3.w = r3.z + -r2.w;
  r3.xyz = r3.xyz / cb2[30].zzz;
  r0.x = min(r3.w, r0.x);
  r0.x = cb2[33].y * r0.x;
  r0.x = r0.w * r0.x;
  r0.x = r1.y * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r0.w = cb2[29].y * cb0[142].z;
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
  r3.xyz = cb2[30].www * r3.xyz;
  r6.xy = cb2[31].yx * cb0[142].zz;
  r6.xy = float2(6.28318548,6.28318548) * r6.xy;
  r6.xy = sin(r6.xy);
  r6.xy = r6.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r0.w = r6.x * r6.y;
  r0.w = cb2[31].z * r0.w;
  r0.w = cb2[31].w * r0.w;
  r3.xyz = r3.xyz * r0.www + float3(1,1,1);
  r0.w = asint(cb1[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.y = (int)v2.x + asint(cb1[0].w);
  r0.w = mad(asint(cb1[0].y), (int)r1.y, (int)r0.w);
  r0.w = t1.Load(r0.w).y;
  r0.w = 1 + -r0.w;
  r3.xyz = r3.xyz * r0.www;
  r3.w = cb2[32].x * r3.z;
  r0.xyz = r3.xyw + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r3.xyzw = cb0[1].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb0[0].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb0[2].xyzw + r3.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r0.x = 0.00100000005 * r3.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r3.z + r0.x;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r0.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r2.x = t0[r0.y].val[0/4];
  r2.y = t0[r0.y].val[0/4+1];
  r2.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r3.xyw = cb0[113].yzx + r2.yzx;
  r6.w = r3.y;
  r8.x = t0[r7.z].val[0/4+1];
  r8.y = t0[r7.z].val[0/4];
  r8.z = t0[r7.z].val[0/4+2];
  r6.x = r8.z;
  r2.x = t0[r7.w].val[0/4];
  r2.y = t0[r7.w].val[0/4+1];
  r2.z = t0[r7.w].val[0/4+2];
  r7.x = t0[r7.x].val[0/4];
  r7.y = t0[r7.x].val[0/4+1];
  r7.z = t0[r7.x].val[0/4+2];
  r7.w = t0[r7.x].val[0/4+3];
  r6.y = r2.z;
  r6.z = r0.z;
  r6.z = dot(v0.xyzw, r6.xyzw);
  r8.w = r3.x;
  r3.x = r8.y;
  r3.y = r2.x;
  r8.y = r2.y;
  r3.z = r0.x;
  r8.z = r0.y;
  r6.y = dot(v0.xyzw, r8.xyzw);
  r6.x = dot(v0.xyzw, r3.xyzw);
  r0.xyz = -cb0[113].xyz + r6.xyz;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.x = -r2.x + r0.z;
  r2.x = r2.x * 9.99999975e-005 + 0.200000003;
  r3.xy = -cb0[113].xy + r6.xy;
  r2.yz = r3.xy + -r2.yz;
  r3.xy = r3.xy / cb2[29].ww;
  r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
  r8.xyz = t3.SampleLevel(s0_s, r2.yz, -1).xyz;
  r3.z = cb2[32].z + r8.y;
  r3.w = -r3.z + r2.x;
  r2.x = -r8.z + r2.x;
  r3.z = r3.z + -r8.z;
  r4.w = r8.x + -r8.y;
  r4.w = max(9.99999975e-005, r4.w);
  r3.zw = max(float2(9.99999975e-005,0), r3.zw);
  r3.w = r3.w / r4.w;
  r3.w = min(1, r3.w);
  r4.w = 1 + -r3.w;
  r3.w = ceil(r3.w);
  r4.w = min(0.200000003, r4.w);
  r3.w = r4.w * r3.w;
  r4.w = max(0, r2.x);
  r2.x = 10000 * r2.x;
  r2.x = max(0, r2.x);
  r3.z = r4.w / r3.z;
  r3.z = min(1, r3.z);
  r4.w = 1 + -r3.z;
  r3.z = ceil(r3.z);
  r4.w = min(0.200000003, r4.w);
  r3.z = r4.w * r3.z;
  r3.z = 5 * r3.z;
  r4.w = r3.w * 5 + -r3.z;
  r3.w = 5 * r3.w;
  r4.w = cmp(9.99999975e-006 < abs(r4.w));
  r5.w = cmp(r3.w >= r3.z);
  r3.z = max(r3.w, r3.z);
  r8.xy = t4.SampleLevel(s1_s, r2.yz, -1).xy;
  r2.yz = t5.SampleLevel(s2_s, r2.yz, -1).xy;
  r2.yz = float2(-1,-1) + r2.yz;
  r3.w = r5.w ? r8.y : r8.x;
  r3.w = r4.w ? r3.w : r8.x;
  r3.w = cb2[32].w * r3.w;
  r3.w = r3.w * r3.z;
  r2.w = r0.z + -r2.w;
  r0.xyz = r0.xyz / cb2[30].zzz;
  r2.x = min(r2.x, r2.w);
  r2.x = cb2[33].y * r2.x;
  r2.x = r3.z * r2.x;
  r2.x = r3.w * r2.x;
  r2.xy = r2.xx * r2.yz;
  r2.w = dot(r2.xy, r2.xy);
  r2.w = sqrt(r2.w);
  r2.z = -1.20000005 * r2.w;
  r2.w = cb2[29].y * cb0[139].z;
  r3.xy = r2.ww * float2(0.353553385,-0.353553385) + r3.xy;
  r0.xyz = r2.www * float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = frac(r3.xy);
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.zw = -abs(r3.xy) * float2(2,2) + float2(3,3);
  r3.xy = abs(r3.xy) * abs(r3.xy);
  r3.xy = r3.xy * r3.zw;
  r2.w = dot(float2(-0.707106769,0.707106769), r3.xy);
  r3.xyz = -abs(r0.xyz) * float3(2,2,2) + float3(3,3,3);
  r0.xyz = abs(r0.xyz) * abs(r0.xyz);
  r0.xyz = r0.xyz * r3.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r2.w + r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r0.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
  r0.xyz = r3.xxx * float3(0,0,10) + r0.xyz;
  r0.xyz = float3(0,0,-10) + r0.xyz;
  r0.xyz = cb2[30].www * r0.xyz;
  r3.xy = cb2[31].yx * cb0[139].zz;
  r3.xy = float2(6.28318548,6.28318548) * r3.xy;
  r3.xy = sin(r3.xy);
  r3.xy = r3.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r2.w = r3.x * r3.y;
  r2.w = cb2[31].z * r2.w;
  r2.w = cb2[31].w * r2.w;
  r0.xyz = r0.xyz * r2.www + float3(1,1,1);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb2[32].x * r0.z;
  r0.xyz = r0.xyw + r2.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = r7.yyy * r1.xzw;
  r0.w = (uint)r1.y << 1;
  r1.xzw = t2.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r1.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.y = (int)r1.y * asint(cb1[0].y);
  r2.xy = t1.Load(r1.y).xy;
  o5.xy = r2.xy;
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
  o4.w = r2.w * r7.w;
  o4.xyz = r2.zzz * r3.xyz + r0.xyz;
  o3.xyz = r1.zzz * r3.xyz + r1.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}