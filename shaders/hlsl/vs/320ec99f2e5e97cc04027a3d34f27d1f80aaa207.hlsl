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
  float4 cb5[31];
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
  float4 cb2[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb4[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb4[0].y);
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
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb1[70].xyz + r3.xyz;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r2.xzw;
  r7.xyz = r6.xyz * r0.yyy;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r0.w].val[0/4+2];
  r8.y = t0[r0.w].val[0/4];
  r8.z = t0[r0.w].val[0/4+1];
  r0.y = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.y].val[0/4];
  r9.y = t0[r0.y].val[0/4+1];
  r9.z = t0[r0.y].val[0/4+2];
  r10.xyz = r8.yzx * r5.xxx;
  r0.xyw = r0.xxx * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  o1.xyz = r1.xyz;
  o6.xyz = r1.xyz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.y = r2.x;
  r0.x = r8.y;
  r0.z = r9.x;
  r1.xyz = v0.yyy * r2.xzw;
  r1.xyz = r8.yzx * v0.xxx + r1.xyz;
  r1.xyz = r9.xyz * v0.zzz + r1.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r3.xyz = -cb1[70].xyz + r1.xyz;
  r5.x = t0[r4.y].val[0/4+1];
  r5.y = t0[r4.y].val[0/4];
  r5.z = t0[r4.y].val[0/4+2];
  r6.x = r5.y;
  r7.x = t0[r4.z].val[0/4];
  r7.y = t0[r4.z].val[0/4+2];
  r7.z = t0[r4.z].val[0/4+1];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r6.y = r7.x;
  r6.z = r4.x;
  r4.xw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r10.x = t0[r4.x].val[0/4];
  r10.y = t0[r4.x].val[0/4+1];
  r10.z = t0[r4.x].val[0/4+2];
  r11.x = t0[r4.w].val[0/4];
  r11.y = t0[r4.w].val[0/4+1];
  r11.z = t0[r4.w].val[0/4+2];
  r6.w = r10.x;
  r3.w = 1;
  r6.x = dot(r3.xyzw, r6.xyzw);
  r7.x = r5.z;
  r5.y = r7.z;
  r5.z = r4.y;
  r7.z = r4.z;
  r5.w = r10.y;
  r7.w = r10.z;
  r6.z = dot(r3.xyzw, r7.xyzw);
  r6.y = dot(r3.xyzw, r5.xyzw);
  r0.x = dot(r6.xyz, r0.xyz);
  r8.y = r2.w;
  r2.x = r8.z;
  r2.w = r9.y;
  r0.y = dot(r6.xyz, r2.xzw);
  r8.z = r9.z;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r0.z = dot(r6.xyz, r8.xyz);
  r0.xyz = r0.xyz / r0.www;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.00100000005 * r11.y;
  r2.y = cb2[1].x * 0.800000012 + r2.x;
  r2.x = r11.x * 0.00100000005 + cb2[1].x;
  r2.z = cb5[15].z + r11.z;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r4.xy = abs(r2.xy) * abs(r2.xy);
  r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = r4.xy * r2.xy + float2(-0.5,-0.5);
  r2.xy = r2.xy + r2.xy;
  r2.x = r2.y * r2.y + r2.x;
  r2.y = cmp(cb2[1].z != 0.000000);
  r2.w = cb2[6].x / cb2[1].z;
  r2.y = r2.y ? r2.w : cb2[6].x;
  r2.x = cb2[1].y * r2.x + r2.y;
  r2.y = 1 / cb2[1].z;
  r2.y = -r2.y * 0.25 + r0.z;
  r2.y = max(0, r2.y);
  r2.y = cb2[1].z * r2.y;
  r2.w = log2(r2.y);
  r2.w = cb2[1].w * r2.w;
  r2.w = exp2(r2.w);
  r3.w = cmp(r2.y != 0.000000);
  r2.y = r3.w ? r2.w : r2.y;
  r2.x = r2.x * r2.y;
  r4.xy = cb2[0].xy * r2.xx + r0.xy;
  r4.z = r0.z;
  r2.x = dot(r4.xyz, r4.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyw = r4.xyz * r2.xxx;
  r0.xyz = r2.xyw * r1.www + -r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xyw = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r2.xyw = floor(r2.xyw);
  r2.xyw = r2.xyw * float3(500,500,500) + float3(250,-4750,-4750);
  r2.xyzw = r3.zxzy + -r2.xyzw;
  r2.yw = float2(9.99999975e-005,9.99999975e-005) * r2.yw;
  r0.w = r2.x * 9.99999975e-005 + 0.200000003;
  r3.xyz = t3.SampleLevel(s0_s, r2.yw, -1).xyz;
  r1.w = r3.x + -r3.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.x = cb5[29].y + r3.y;
  r3.x = -r2.x + r0.w;
  r0.w = -r3.z + r0.w;
  r2.x = r2.x + -r3.z;
  r2.x = max(9.99999975e-005, r2.x);
  r3.x = max(0, r3.x);
  r1.w = r3.x / r1.w;
  r1.w = min(1, r1.w);
  r3.x = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.x = min(0.200000003, r3.x);
  r1.w = r3.x * r1.w;
  r3.x = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(r0.w, r2.z);
  r0.w = cb5[30].x * r0.w;
  r2.x = r3.x / r2.x;
  r2.x = min(1, r2.x);
  r2.z = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r2.z = min(0.200000003, r2.z);
  r2.x = r2.x * r2.z;
  r2.x = 5 * r2.x;
  r2.z = r1.w * 5 + -r2.x;
  r1.w = 5 * r1.w;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r3.x = cmp(r1.w >= r2.x);
  r1.w = max(r1.w, r2.x);
  r3.yz = t4.SampleLevel(s1_s, r2.yw, -1).xy;
  r2.xy = t5.SampleLevel(s2_s, r2.yw, -1).xy;
  r2.xy = float2(-1,-1) + r2.xy;
  r2.w = r3.x ? r3.z : r3.y;
  r2.z = r2.z ? r2.w : r3.y;
  r2.z = cb5[29].z * r2.z;
  r2.z = r2.z * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.z * r0.w;
  r2.xy = r0.ww * r2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r2.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb5[28].www + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o4.xyz = r0.xyz;
  r0.w = asuint(cb0[1].w) << 2;
  r1.xyzw = cb3[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = cb3[r0.w+32].xyzw + r1.xyzw;
  o5.xyzw = r0.xyzw;
  o7.xyzw = r0.xyzw;
  p3.x = cb0[1].w;
  return;
}