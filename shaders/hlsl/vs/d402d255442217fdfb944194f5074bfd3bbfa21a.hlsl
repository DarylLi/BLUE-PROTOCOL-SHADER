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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.x = t0[r0.x].val[0/4];
  r1.y = t0[r0.x].val[0/4+1];
  r1.z = t0[r0.x].val[0/4+2];
  r0.x = 0.00100000005 * r0.z;
  r2.y = cb1[1].x * 0.800000012 + r0.x;
  r2.x = r0.y * 0.00100000005 + cb1[1].x;
  r0.x = cb3[15].z + r0.w;
  r0.yz = float2(0.5,0.5) + r2.xy;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r2.xy = abs(r0.yz) * abs(r0.yz);
  r0.yz = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = r2.xy * r0.yz + float2(-0.5,-0.5);
  r0.yz = r0.yz + r0.yz;
  r0.y = r0.z * r0.z + r0.y;
  r0.z = cmp(cb1[1].z != 0.000000);
  r0.w = cb1[6].x / cb1[1].z;
  r0.z = r0.z ? r0.w : cb1[6].x;
  r0.y = cb1[1].y * r0.y + r0.z;
  r2.w = r1.x;
  r0.z = (int)v1.x * 36;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r1.w].val[0/4];
  r3.y = t0[r1.w].val[0/4+1];
  r3.z = t0[r1.w].val[0/4+2];
  r4.x = t0[r1.x].val[0/4];
  r4.y = t0[r1.x].val[0/4+2];
  r4.z = t0[r1.x].val[0/4+1];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r5.xyz = v0.yyy * r4.xzy;
  r6.x = t0[r0.z].val[0/4];
  r6.y = t0[r0.z].val[0/4+1];
  r6.z = t0[r0.z].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r7.x = t0[r0.z].val[0/4];
  r7.y = t0[r0.z].val[0/4+1];
  r7.z = t0[r0.z].val[0/4+2];
  r5.xyz = r6.xyz * v0.xxx + r5.xyz;
  r5.xyz = r7.xyz * v0.zzz + r5.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r5.w = 1;
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r9.x = t0[r8.y].val[0/4+1];
  r9.y = t0[r8.y].val[0/4];
  r9.z = t0[r8.y].val[0/4+2];
  r2.x = r9.y;
  r10.x = t0[r8.z].val[0/4];
  r10.y = t0[r8.z].val[0/4+2];
  r10.z = t0[r8.z].val[0/4+1];
  r2.y = r10.x;
  r8.y = t0[r8.w].val[0/4];
  r8.z = t0[r8.w].val[0/4+1];
  r8.w = t0[r8.w].val[0/4+2];
  r11.x = t0[r8.x].val[0/4];
  r11.y = t0[r8.x].val[0/4+1];
  r11.z = t0[r8.x].val[0/4+2];
  r11.w = t0[r8.x].val[0/4+3];
  r2.z = r8.y;
  r2.x = dot(r5.xyzw, r2.xyzw);
  r10.x = r9.z;
  r9.y = r10.z;
  r9.z = r8.z;
  r10.z = r8.w;
  r9.w = r1.y;
  r10.w = r1.z;
  r2.z = dot(r5.xyzw, r10.xyzw);
  r2.y = dot(r5.xyzw, r9.xyzw);
  r1.y = r4.x;
  r1.z = r7.x;
  r1.x = r6.x;
  r1.x = dot(r2.xyz, r1.xyz);
  r8.y = r4.z;
  r8.x = r6.y;
  r8.z = r7.y;
  r1.y = dot(r2.xyz, r8.xyz);
  r8.xyz = r11.yyy * r4.xzy;
  r4.x = r6.z;
  r6.xyz = r11.xxx * r6.xyz;
  r4.z = r7.z;
  r1.z = dot(r2.xyz, r4.xyz);
  r0.z = dot(r7.xyz, r7.xyz);
  r2.xyz = r11.zzz * r7.xyz;
  r0.z = sqrt(r0.z);
  r1.xyz = r1.xyz / r0.zzz;
  r0.w = 1 / cb1[1].z;
  r0.w = -r0.w * 0.25 + r1.z;
  r0.w = max(0, r0.w);
  r0.w = cb1[1].z * r0.w;
  r1.w = log2(r0.w);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r0.w != 0.000000);
  r0.w = r2.w ? r1.w : r0.w;
  r0.y = r0.y * r0.w;
  r4.xy = cb1[0].xy * r0.yy + r1.xy;
  r4.z = r1.z;
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = r4.xyz * r0.yyy;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r1.xyz = r4.xyz * r0.yyy + -r1.xyz;
  r0.yzw = r1.xyz * r0.zzz;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xyz = r5.zxy + -r1.xyz;
  r0.x = r5.z + -r0.x;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r1.x = r1.x * 9.99999975e-005 + 0.200000003;
  r4.xyz = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.w = r4.x + -r4.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.w = cb3[29].y + r4.y;
  r3.w = -r2.w + r1.x;
  r1.x = -r4.z + r1.x;
  r2.w = r2.w + -r4.z;
  r2.w = max(9.99999975e-005, r2.w);
  r3.w = max(0, r3.w);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.w = min(0.200000003, r3.w);
  r1.w = r3.w * r1.w;
  r3.w = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.x = max(0, r1.x);
  r0.x = min(r1.x, r0.x);
  r0.x = cb3[30].x * r0.x;
  r1.x = r3.w / r2.w;
  r1.x = min(1, r1.x);
  r2.w = 1 + -r1.x;
  r1.x = ceil(r1.x);
  r2.w = min(0.200000003, r2.w);
  r1.x = r2.w * r1.x;
  r1.x = 5 * r1.x;
  r2.w = r1.w * 5 + -r1.x;
  r1.w = 5 * r1.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.w = cmp(r1.w >= r1.x);
  r1.x = max(r1.w, r1.x);
  r4.xy = t4.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.yz = t5.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.yz = float2(-1,-1) + r1.yz;
  r1.w = r3.w ? r4.y : r4.x;
  r1.w = r2.w ? r1.w : r4.x;
  r1.w = cb3[29].z * r1.w;
  r1.w = r1.w * r1.x;
  r0.x = r1.x * r0.x;
  r0.x = r1.w * r0.x;
  r1.xy = r0.xx * r1.yz;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = sqrt(r0.x);
  r1.z = -1.20000005 * r0.x;
  r0.xyz = r0.yzw * cb3[28].www + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r1.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o3.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r3.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r1.www;
  r3.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r1.www;
  r3.xyz = r0.yyy * r8.xyz;
  r4.xyz = r1.yyy * r8.xyz;
  r4.xyz = r1.xxx * r6.xyz + r4.xyz;
  r0.xyw = r0.xxx * r6.xyz + r3.xyz;
  o1.xyz = r0.zzz * r2.xyz + r0.xyw;
  o2.xyz = r1.zzz * r2.xyz + r4.xyz;
  o2.w = r1.w * r11.w;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}