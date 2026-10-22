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

cbuffer cb4 : register(b4)
{
  float4 cb4[31];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out uint o3 : PRIMITIVE_ID0,
  out float o4 : TEXCOORD6,
  out float3 p4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb3[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o2.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.y = t0[r2.x].val[0/4+1];
  r3.z = t0[r2.x].val[0/4];
  r3.w = t0[r2.x].val[0/4+2];
  r2.x = t0[r2.y].val[0/4];
  r2.y = t0[r2.y].val[0/4+1];
  r2.z = t0[r2.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.zyw;
  r7.xyz = r6.xyz * r0.yyy;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r0.w].val[0/4+2];
  r8.z = t0[r0.w].val[0/4];
  r8.w = t0[r0.w].val[0/4+1];
  r0.y = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.y].val[0/4];
  r9.y = t0[r0.y].val[0/4+1];
  r9.z = t0[r0.y].val[0/4+2];
  r10.xyz = r8.zwx * r5.xxx;
  r0.xyw = r0.xxx * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  o1.xyz = r1.xyz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.y = r3.z;
  r0.x = r8.z;
  r0.z = r9.x;
  r5.xyz = v0.yyy * r3.zyw;
  r5.xyz = r8.zwx * v0.xxx + r5.xyz;
  r5.xyz = r9.xyz * v0.zzz + r5.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r5.xyz = -cb0[70].xyz + r2.xyz;
  r6.x = t0[r4.y].val[0/4+1];
  r6.y = t0[r4.y].val[0/4];
  r6.z = t0[r4.y].val[0/4+2];
  r7.x = r6.y;
  r10.x = t0[r4.z].val[0/4];
  r10.y = t0[r4.z].val[0/4+2];
  r10.z = t0[r4.z].val[0/4+1];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r7.y = r10.x;
  r7.z = r4.x;
  r4.xw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r11.x = t0[r4.x].val[0/4];
  r11.y = t0[r4.x].val[0/4+1];
  r11.z = t0[r4.x].val[0/4+2];
  r12.x = t0[r4.w].val[0/4];
  r12.y = t0[r4.w].val[0/4+1];
  r12.z = t0[r4.w].val[0/4+2];
  r7.w = r11.x;
  r5.w = 1;
  r7.x = dot(r5.xyzw, r7.xyzw);
  r10.x = r6.z;
  r6.y = r10.z;
  r6.z = r4.y;
  r10.z = r4.z;
  r6.w = r11.y;
  r10.w = r11.z;
  r7.z = dot(r5.xyzw, r10.xyzw);
  r7.y = dot(r5.xyzw, r6.xyzw);
  r0.y = dot(r7.xyz, r0.xyz);
  r8.y = r3.w;
  r3.x = r8.w;
  r3.z = r9.y;
  r0.z = dot(r7.xyz, r3.xyz);
  r8.z = r9.z;
  r0.x = dot(r9.xyz, r9.xyz);
  r0.x = sqrt(r0.x);
  r0.w = dot(r7.xyz, r8.xyz);
  r0.yzw = r0.yzw / r0.xxx;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = sqrt(r1.w);
  r2.w = 0.00100000005 * r12.y;
  r3.y = cb1[1].x * 0.800000012 + r2.w;
  r3.x = r12.x * 0.00100000005 + cb1[1].x;
  r2.w = cb4[15].z + r12.z;
  r2.w = r5.z + -r2.w;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = frac(r3.xy);
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.zw = abs(r3.xy) * abs(r3.xy);
  r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
  r3.xy = r3.zw * r3.xy + float2(-0.5,-0.5);
  r3.xy = r3.xy + r3.xy;
  r3.x = r3.y * r3.y + r3.x;
  r3.y = cmp(cb1[1].z != 0.000000);
  r3.z = cb1[6].x / cb1[1].z;
  r3.y = r3.y ? r3.z : cb1[6].x;
  r3.x = cb1[1].y * r3.x + r3.y;
  r3.y = 1 / cb1[1].z;
  r3.y = -r3.y * 0.25 + r0.w;
  r3.y = max(0, r3.y);
  r3.y = cb1[1].z * r3.y;
  r3.z = log2(r3.y);
  r3.z = cb1[1].w * r3.z;
  r3.z = exp2(r3.z);
  r3.w = cmp(r3.y != 0.000000);
  r3.y = r3.w ? r3.z : r3.y;
  r3.x = r3.x * r3.y;
  r3.yz = cb1[0].xy * r3.xx + r0.yz;
  r3.w = r0.w;
  r3.x = dot(r3.yzw, r3.yzw);
  r3.x = rsqrt(r3.x);
  r3.xyz = r3.yzw * r3.xxx;
  r0.yzw = r3.xyz * r1.www + -r0.yzw;
  r0.xyz = r0.yzw * r0.xxx;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = r5.zxy + -r3.xyz;
  r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r0.w = r3.x * 9.99999975e-005 + 0.200000003;
  r4.xyz = t3.SampleLevel(s0_s, r3.yz, -1).xyz;
  r1.w = r4.x + -r4.y;
  r1.w = max(9.99999975e-005, r1.w);
  r3.x = cb4[29].y + r4.y;
  r3.w = -r3.x + r0.w;
  r0.w = -r4.z + r0.w;
  r3.x = r3.x + -r4.z;
  r3.xw = max(float2(9.99999975e-005,0), r3.xw);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.w = min(0.200000003, r3.w);
  r1.w = r3.w * r1.w;
  r3.w = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(r0.w, r2.w);
  r0.w = cb4[30].x * r0.w;
  r2.w = r3.w / r3.x;
  r2.w = min(1, r2.w);
  r3.x = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r3.x = min(0.200000003, r3.x);
  r2.w = r3.x * r2.w;
  r2.w = 5 * r2.w;
  r3.x = r1.w * 5 + -r2.w;
  r1.w = 5 * r1.w;
  r3.x = cmp(9.99999975e-006 < abs(r3.x));
  r3.w = cmp(r1.w >= r2.w);
  r1.w = max(r1.w, r2.w);
  r4.xy = t4.SampleLevel(s1_s, r3.yz, -1).xy;
  r3.yz = t5.SampleLevel(s2_s, r3.yz, -1).xy;
  r3.yz = float2(-1,-1) + r3.yz;
  r2.w = r3.w ? r4.y : r4.x;
  r2.w = r3.x ? r2.w : r4.x;
  r2.w = cb4[29].z * r2.w;
  r2.w = r2.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.w * r0.w;
  r3.yz = r0.ww * r3.yz;
  r0.w = dot(r3.yz, r3.yz);
  r0.w = sqrt(r0.w);
  r3.w = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb4[28].www + r3.yzw;
  r0.xyz = r2.xyz + r0.xyz;
  p4.xyz = r0.xyz;
  o4.x = 0;
  r2.x = cb2[23].z;
  r2.y = cb2[24].z;
  r2.z = cb2[25].z;
  r0.w = dot(r2.xyz, r1.xyz);
  r1.x = -abs(r0.w) * abs(r0.w) + 1;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / abs(r0.w);
  r0.w = cmp(0 < abs(r0.w));
  r0.w = r0.w ? r1.x : cb2[27].z;
  r0.w = max(0, r0.w);
  r0.w = min(cb2[27].z, r0.w);
  r0.w = cb2[27].y * r0.w + cb2[27].x;
  r1.xyzw = cb2[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[21].xyzw + r1.xyzw;
  r1.xyzw = cb2[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb2[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o5.xy = r1.xy;
  r0.x = r0.x * cb2[27].w + r0.w;
  o5.z = r0.x * r0.y;
  o5.w = r0.y;
  return;
}