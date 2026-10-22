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

cbuffer cb3 : register(b3)
{
  float4 cb3[31];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r0.xyz = floor(r0.xyz);
  r0.xyz = r0.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r0.w = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.y = t0[r1.y].val[0/4];
  r1.z = t0[r1.y].val[0/4+1];
  r1.w = t0[r1.y].val[0/4+2];
  r2.x = t0[r1.x].val[0/4];
  r2.y = t0[r1.x].val[0/4+2];
  r2.z = t0[r1.x].val[0/4+1];
  r1.xyz = cb0[70].xyz + r1.yzw;
  r3.xyz = v0.yyy * r2.xzy;
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + r1.xyz;
  r0.xyz = r3.zxy + -r0.xyz;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r6.xyz = t3.SampleLevel(s0_s, r0.yz, -1).xyz;
  r0.w = cb3[29].y + r6.y;
  r1.w = r0.x + -r0.w;
  r0.xw = -r6.zz + r0.xw;
  r2.w = r6.x + -r6.y;
  r2.w = max(9.99999975e-005, r2.w);
  r1.w = max(0, r1.w);
  r1.w = r1.w / r2.w;
  r1.w = min(1, r1.w);
  r2.w = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.w = min(0.200000003, r2.w);
  r1.w = r2.w * r1.w;
  r2.w = 5 * r1.w;
  r4.w = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.xw = max(float2(0,9.99999975e-005), r0.xw);
  r0.w = r4.w / r0.w;
  r0.w = min(1, r0.w);
  r4.w = 1 + -r0.w;
  r0.w = ceil(r0.w);
  r4.w = min(0.200000003, r4.w);
  r0.w = r4.w * r0.w;
  r0.w = 5 * r0.w;
  r4.w = cmp(r2.w >= r0.w);
  r2.w = max(r2.w, r0.w);
  r0.w = r1.w * 5 + -r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r6.xy = t4.SampleLevel(s1_s, r0.yz, -1).xy;
  r0.yz = t5.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r1.w = r4.w ? r6.y : r6.x;
  r0.w = r0.w ? r1.w : r6.x;
  r0.w = cb3[29].z * r0.w;
  r0.w = r0.w * r2.w;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(9,5,10,11));
  r7.x = t0[r6.y].val[0/4];
  r7.y = t0[r6.y].val[0/4+1];
  r7.z = t0[r6.y].val[0/4+2];
  r1.w = cb3[15].z + r7.z;
  r4.w = r3.z + -r1.w;
  r0.x = min(r4.w, r0.x);
  r0.x = cb3[30].x * r0.x;
  r0.x = r2.w * r0.x;
  r0.x = r0.w * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r0.w = 0.00100000005 * r7.y;
  r7.x = r7.x * 0.00100000005 + cb1[1].x;
  r7.y = cb1[1].x * 0.800000012 + r0.w;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r7.xy = frac(r7.xy);
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r7.zw = abs(r7.xy) * abs(r7.xy);
  r7.xy = -abs(r7.xy) * float2(2,2) + float2(3,3);
  r7.xy = r7.zw * r7.xy + float2(-0.5,-0.5);
  r7.xy = r7.xy + r7.xy;
  r0.w = r7.y * r7.y + r7.x;
  r2.w = cmp(cb1[1].z != 0.000000);
  r4.w = cb1[6].x / cb1[1].z;
  r2.w = r2.w ? r4.w : cb1[6].x;
  r0.w = cb1[1].y * r0.w + r2.w;
  r7.y = r2.x;
  r7.x = r4.x;
  r7.z = r5.x;
  r8.x = t0[r6.x].val[0/4];
  r8.y = t0[r6.x].val[0/4+1];
  r8.z = t0[r6.x].val[0/4+2];
  r9.w = r8.x;
  r3.w = 1;
  r10.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r11.x = t0[r10.y].val[0/4+1];
  r11.y = t0[r10.y].val[0/4];
  r11.z = t0[r10.y].val[0/4+2];
  r9.x = r11.y;
  r12.x = t0[r10.z].val[0/4];
  r12.y = t0[r10.z].val[0/4+2];
  r12.z = t0[r10.z].val[0/4+1];
  r9.y = r12.x;
  r10.y = t0[r10.w].val[0/4];
  r10.z = t0[r10.w].val[0/4+1];
  r10.w = t0[r10.w].val[0/4+2];
  r13.x = t0[r10.x].val[0/4];
  r13.y = t0[r10.x].val[0/4+1];
  r13.z = t0[r10.x].val[0/4+2];
  r13.w = t0[r10.x].val[0/4+3];
  r9.z = r10.y;
  r14.x = dot(r3.xyzw, r9.xyzw);
  r12.x = r11.z;
  r11.y = r12.z;
  r11.z = r10.z;
  r12.z = r10.w;
  r11.w = r8.y;
  r12.w = r8.z;
  r14.y = dot(r3.xyzw, r11.xyzw);
  r14.z = dot(r3.xyzw, r12.xyzw);
  r3.x = dot(r14.xyz, r7.xyz);
  r8.y = r2.z;
  r8.x = r4.y;
  r8.z = r5.y;
  r3.y = dot(r14.xyz, r8.xyz);
  r10.xyz = r13.yyy * r2.xzy;
  r2.x = r4.z;
  r4.xyz = r13.xxx * r4.xyz;
  r2.z = r5.z;
  r3.z = dot(r14.xyz, r2.xyz);
  r2.w = dot(r5.xyz, r5.xyz);
  r5.xyz = r13.zzz * r5.xyz;
  r2.w = sqrt(r2.w);
  r3.xyz = r3.xyz / r2.www;
  r3.w = 1 / cb1[1].z;
  r4.w = -r3.w * 0.25 + r3.z;
  r4.w = max(0, r4.w);
  r4.w = cb1[1].z * r4.w;
  r5.w = log2(r4.w);
  r5.w = cb1[1].w * r5.w;
  r5.w = exp2(r5.w);
  r6.x = cmp(r4.w != 0.000000);
  r4.w = r6.x ? r5.w : r4.w;
  r4.w = r4.w * r0.w;
  r13.xy = cb1[0].xy * r4.ww + r3.xy;
  r13.z = r3.z;
  r4.w = dot(r13.xyz, r13.xyz);
  r4.w = rsqrt(r4.w);
  r13.xyz = r13.xyz * r4.www;
  r4.w = dot(r3.xyz, r3.xyz);
  r4.w = sqrt(r4.w);
  r3.xyz = r13.xyz * r4.www + -r3.xyz;
  r3.xyz = r3.xyz * r2.www;
  r0.xyz = r3.xyz * cb3[28].www + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r14.xyzw = cb0[1].xyzw * r0.yyyy;
  r14.xyzw = r0.xxxx * cb0[0].xyzw + r14.xyzw;
  r14.xyzw = r0.zzzz * cb0[2].xyzw + r14.xyzw;
  r14.xyzw = cb0[3].xyzw + r14.xyzw;
  r0.x = 0.00100000005 * r14.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r14.z + r0.x;
  o0.xyw = r14.xyw;
  o1.xyzw = r14.xyzw;
  r14.x = t0[r6.z].val[0/4+1];
  r14.y = t0[r6.z].val[0/4];
  r14.z = t0[r6.z].val[0/4+2];
  r6.x = t0[r6.w].val[0/4];
  r6.y = t0[r6.w].val[0/4+2];
  r6.z = t0[r6.w].val[0/4+1];
  r15.x = r14.y;
  r15.y = r6.x;
  r0.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r15.w = r1.x;
  r15.z = r0.x;
  r3.x = dot(v0.xyzw, r15.xyzw);
  r14.w = r1.y;
  r6.w = r1.z;
  r6.x = r14.z;
  r14.y = r6.z;
  r14.z = r0.y;
  r6.z = r0.z;
  r3.z = dot(v0.xyzw, r6.xyzw);
  r3.y = dot(v0.xyzw, r14.xyzw);
  r6.xyz = -cb0[70].xyz + r3.xyz;
  r6.w = 1;
  r0.x = dot(r6.xyzw, r9.xyzw);
  r0.y = dot(r6.xyzw, r11.xyzw);
  r0.z = dot(r6.xyzw, r12.xyzw);
  r1.x = dot(r0.xyz, r7.xyz);
  r1.y = dot(r0.xyz, r8.xyz);
  r1.z = dot(r0.xyz, r2.xyz);
  r0.xyz = r1.xyz / r2.www;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r1.y = -r3.w * 0.25 + r0.z;
  r1.y = max(0, r1.y);
  r1.y = cb1[1].z * r1.y;
  r1.z = log2(r1.y);
  r1.z = cb1[1].w * r1.z;
  r1.z = exp2(r1.z);
  r2.x = cmp(r1.y != 0.000000);
  r1.y = r2.x ? r1.z : r1.y;
  r0.w = r1.y * r0.w;
  r2.xy = cb1[0].xy * r0.ww + r0.xy;
  r2.z = r0.z;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.xyz * r1.xxx + -r0.xyz;
  r0.xyz = r0.xyz * r2.www;
  r1.xyz = -cb0[113].zxy + r3.zxy;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.xyz = -r2.xyz + r1.xyz;
  r0.w = r1.x + -r1.w;
  r1.xy = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
  r1.z = r2.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t3.SampleLevel(s0_s, r1.xy, -1).xyz;
  r1.w = r2.x + -r2.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.x = cb3[29].y + r2.y;
  r2.y = -r2.x + r1.z;
  r1.z = -r2.z + r1.z;
  r2.x = r2.x + -r2.z;
  r2.xy = max(float2(9.99999975e-005,0), r2.xy);
  r1.w = r2.y / r1.w;
  r1.w = min(1, r1.w);
  r2.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.y = min(0.200000003, r2.y);
  r1.w = r2.y * r1.w;
  r2.y = max(0, r1.z);
  r1.z = 10000 * r1.z;
  r1.z = max(0, r1.z);
  r0.w = min(r1.z, r0.w);
  r0.w = cb3[30].x * r0.w;
  r1.z = r2.y / r2.x;
  r1.z = min(1, r1.z);
  r2.x = 1 + -r1.z;
  r1.z = ceil(r1.z);
  r2.x = min(0.200000003, r2.x);
  r1.z = r2.x * r1.z;
  r1.z = 5 * r1.z;
  r2.x = r1.w * 5 + -r1.z;
  r1.w = 5 * r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.y = cmp(r1.w >= r1.z);
  r1.z = max(r1.w, r1.z);
  r2.zw = t4.SampleLevel(s1_s, r1.xy, -1).xy;
  r1.xy = t5.SampleLevel(s2_s, r1.xy, -1).xy;
  r1.xy = float2(-1,-1) + r1.xy;
  r1.w = r2.y ? r2.w : r2.z;
  r1.w = r2.x ? r1.w : r2.z;
  r1.w = cb3[29].z * r1.w;
  r1.w = r1.w * r1.z;
  r0.w = r1.z * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = r0.ww * r1.xy;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[28].www + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o5.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.yyy * r10.xyz;
  r3.xyz = r1.yyy * r10.xyz;
  r3.xyz = r1.xxx * r4.xyz + r3.xyz;
  r0.xyw = r0.xxx * r4.xyz + r2.xyz;
  o3.xyz = r0.zzz * r5.xyz + r0.xyw;
  o4.xyz = r1.zzz * r5.xyz + r3.xyz;
  o4.w = r1.w * r13.w;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}