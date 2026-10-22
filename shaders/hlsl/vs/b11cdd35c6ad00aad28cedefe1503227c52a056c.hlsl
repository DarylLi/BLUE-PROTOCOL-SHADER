// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 cb3[30];
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
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = mad((int)v1.x, 36, 5);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.y = 0.00100000005 * r0.y;
  r1.y = cb1[1].x * 0.800000012 + r0.y;
  r1.x = r0.x * 0.00100000005 + cb1[1].x;
  r0.x = cb3[15].z + r0.z;
  r0.yz = float2(0.5,0.5) + r1.xy;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r1.xy = abs(r0.yz) * abs(r0.yz);
  r0.yz = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = r1.xy * r0.yz + float2(-0.5,-0.5);
  r0.yz = r0.yz + r0.yz;
  r0.y = r0.z * r0.z + r0.y;
  r0.z = cmp(cb1[1].z != 0.000000);
  r0.w = cb1[6].x / cb1[1].z;
  r0.z = r0.z ? r0.w : cb1[6].x;
  r0.y = cb1[1].y * r0.y + r0.z;
  r0.z = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.y = t0[r1.y].val[0/4];
  r1.z = t0[r1.y].val[0/4+1];
  r1.w = t0[r1.y].val[0/4+2];
  r2.x = t0[r1.x].val[0/4];
  r2.y = t0[r1.x].val[0/4+1];
  r2.z = t0[r1.x].val[0/4+2];
  r1.xyz = cb0[70].xyz + r1.yzw;
  r3.xyz = v0.yyy * r2.xyz;
  r4.x = t0[r0.z].val[0/4+2];
  r4.y = t0[r0.z].val[0/4];
  r4.z = t0[r0.z].val[0/4+1];
  r0.z = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r3.xyz = r4.yzx * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + r1.xyz;
  r3.w = 1;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r7.x = t0[r6.x].val[0/4+1];
  r7.y = t0[r6.x].val[0/4];
  r7.z = t0[r6.x].val[0/4+2];
  r8.x = r7.y;
  r9.x = t0[r6.y].val[0/4];
  r9.y = t0[r6.y].val[0/4+2];
  r9.z = t0[r6.y].val[0/4+1];
  r8.y = r9.x;
  r6.x = t0[r6.z].val[0/4];
  r6.y = t0[r6.z].val[0/4+1];
  r6.z = t0[r6.z].val[0/4+2];
  r10.x = t0[r6.w].val[0/4];
  r10.y = t0[r6.w].val[0/4+1];
  r10.z = t0[r6.w].val[0/4+2];
  r8.z = r6.x;
  r8.w = r10.x;
  r8.x = dot(r3.xyzw, r8.xyzw);
  r9.x = r7.z;
  r7.y = r9.z;
  r7.z = r6.y;
  r9.z = r6.z;
  r7.w = r10.y;
  r9.w = r10.z;
  r8.z = dot(r3.xyzw, r9.xyzw);
  r8.y = dot(r3.xyzw, r7.xyzw);
  r6.y = r2.x;
  r6.z = r5.x;
  r6.x = r4.y;
  r6.x = dot(r8.xyz, r6.xyz);
  r4.y = r2.z;
  r2.x = r4.z;
  r2.z = r5.y;
  r6.y = dot(r8.xyz, r2.xyz);
  r4.z = r5.z;
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = sqrt(r0.z);
  r6.z = dot(r8.xyz, r4.xyz);
  r2.xyz = r6.xyz / r0.zzz;
  r0.w = 1 / cb1[1].z;
  r0.w = -r0.w * 0.25 + r2.z;
  r0.w = max(0, r0.w);
  r0.w = cb1[1].z * r0.w;
  r1.w = log2(r0.w);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r0.w != 0.000000);
  r0.w = r2.w ? r1.w : r0.w;
  r0.y = r0.y * r0.w;
  r4.xy = cb1[0].xy * r0.yy + r2.xy;
  r4.z = r2.z;
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = r4.xyz * r0.yyy;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r2.xyz = r4.xyz * r0.yyy + -r2.xyz;
  r0.yzw = r2.xyz * r0.zzz;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.xyz = r3.zxy + -r2.xyz;
  r0.x = r3.z + -r0.x;
  r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
  r1.w = r2.x * 9.99999975e-005 + 0.200000003;
  r3.xyz = t2.SampleLevel(s0_s, r2.yz, -1).xyz;
  r2.x = r3.x + -r3.y;
  r2.w = cb3[29].x + r3.y;
  r3.x = -r2.w + r1.w;
  r1.w = -r3.z + r1.w;
  r2.w = r2.w + -r3.z;
  r2.xw = max(float2(9.99999975e-005,9.99999975e-005), r2.xw);
  r3.x = max(0, r3.x);
  r2.x = r3.x / r2.x;
  r2.x = min(1, r2.x);
  r3.x = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r3.x = min(0.200000003, r3.x);
  r2.x = r3.x * r2.x;
  r3.x = max(0, r1.w);
  r1.w = 10000 * r1.w;
  r1.w = max(0, r1.w);
  r0.x = min(r1.w, r0.x);
  r0.x = cb3[29].w * r0.x;
  r1.w = r3.x / r2.w;
  r1.w = min(1, r1.w);
  r2.w = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.w = min(0.200000003, r2.w);
  r1.w = r2.w * r1.w;
  r1.w = 5 * r1.w;
  r2.w = r2.x * 5 + -r1.w;
  r2.x = 5 * r2.x;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.x = cmp(r2.x >= r1.w);
  r1.w = max(r2.x, r1.w);
  r3.yz = t3.SampleLevel(s1_s, r2.yz, -1).xy;
  r2.xy = t4.SampleLevel(s2_s, r2.yz, -1).xy;
  r2.xy = float2(-1,-1) + r2.xy;
  r2.z = r3.x ? r3.z : r3.y;
  r2.z = r2.w ? r2.z : r3.y;
  r2.z = cb3[29].y * r2.z;
  r2.z = r2.z * r1.w;
  r0.x = r1.w * r0.x;
  r0.x = r2.z * r0.x;
  r2.xy = r0.xx * r2.xy;
  r0.x = dot(r2.xy, r2.xy);
  r0.x = sqrt(r0.x);
  r2.z = -1.20000005 * r0.x;
  r0.xyz = r0.yzw * cb3[28].zzz + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r0.xy = t1.Load(r0.x).xy;
  o1.xy = r0.xy;
  o1.zw = float2(0,0);
  return;
}