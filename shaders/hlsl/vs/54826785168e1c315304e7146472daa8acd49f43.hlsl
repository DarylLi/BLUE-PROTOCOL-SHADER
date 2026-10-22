// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[37];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r1.yz = t1.Load(r0.x).xy;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.xyz = r2.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.w = (int)v1.x * 36;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r1.x].val[0/4];
  r3.y = t0[r1.x].val[0/4+1];
  r3.z = t0[r1.x].val[0/4+2];
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r5.x = t0[r1.x].val[0/4];
  r5.y = t0[r1.x].val[0/4+1];
  r5.z = t0[r1.x].val[0/4+2];
  r5.w = t0[r1.x].val[0/4+3];
  r1.x = t0[r1.w].val[8/4];
  r1.x = cb2[14].z + r1.x;
  r6.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.yyy;
  r6.xyz = r6.xyz * r2.yyy;
  r8.x = t0[r0.w].val[0/4];
  r8.y = t0[r0.w].val[0/4+1];
  r8.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.y].val[0/4];
  r9.y = t0[r0.y].val[0/4+1];
  r9.z = t0[r0.y].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r3.xyz = r8.xyz * v0.xxx + r3.xyz;
  r3.xyz = r9.xyz * v0.zzz + r3.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r2.w;
  r3.xyz = r3.xyz + r4.xyz;
  r0.xyw = r0.xxx * r10.xyz + r7.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r2.xxx * r10.xyz + r6.xyz;
  r0.xyz = r2.zzz * r5.xyz + r0.xyz;
  o1.xyz = r0.xyz;
  o6.xyz = r0.xyz;
  o2.xy = r1.yz;
  r0.x = 1 + -r1.z;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.yzw = -cb0[70].xyz + r3.xyz;
  r0.yzw = r0.yzw / cb2[24].zzz;
  r1.y = cb2[23].y * cb0[142].z;
  r0.yzw = r1.yyy * float3(-0.5,-0.5,-0.5) + r0.yzw;
  r0.yzw = float3(0.5,0.5,0.5) + r0.yzw;
  r0.yzw = frac(r0.yzw);
  r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = -abs(r0.yzw) * float3(2,2,2) + float3(3,3,3);
  r0.yzw = abs(r0.yzw) * abs(r0.yzw);
  r0.yzw = r0.yzw * r2.xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r2.xyz = -cb0[70].zxy + r3.zxy;
  r0.zw = r2.yz / cb2[23].ww;
  r0.zw = r1.yy * float2(0.353553385,-0.353553385) + r0.zw;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.zw = frac(r0.zw);
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r1.yz = -abs(r0.zw) * float2(2,2) + float2(3,3);
  r0.zw = abs(r0.zw) * abs(r0.zw);
  r0.zw = r0.zw * r1.yz;
  r0.z = dot(float2(-0.707106769,0.707106769), r0.zw);
  r0.y = r0.z + r0.y;
  r0.y = 6.28318548 * r0.y;
  sincos(r0.y, r4.x, r5.x);
  r0.yzw = float3(7.07106781,-7.07106781,0) * r4.xxx;
  r0.yzw = r5.xxx * float3(0,0,10) + r0.yzw;
  r0.yzw = float3(0,0,-10) + r0.yzw;
  r0.yzw = cb2[24].www * r0.yzw;
  r1.yz = r2.yz / cb2[26].yy;
  r4.z = cb2[26].x * cb0[142].z;
  r4.xy = cb2[25].xw * cb0[142].zz;
  r1.yz = r4.yz + r1.yz;
  r1.w = 6.28318548 * r4.x;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.75;
  r1.y = t3.SampleLevel(s0_s, r1.yz, -1).x;
  r1.y = cb2[26].z * r1.y;
  r1.z = log2(r1.y);
  r1.y = cmp(0 >= r1.y);
  r1.z = cb2[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.y = r1.y ? 0 : r1.z;
  r1.y = saturate(cb2[27].x + r1.y);
  r1.z = 0.5 + cb0[142].z;
  r1.z = cb2[25].x * r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.75;
  r1.w = r1.w + -r1.z;
  r1.y = r1.y * r1.w + r1.z;
  r1.y = cb2[27].y * r1.y;
  r1.y = cb2[27].z * r1.y;
  r0.yzw = r0.yzw * r1.yyy + float3(1,1,1);
  r0.xyz = r0.yzw * r0.xxx;
  r4.z = cb2[36].x * r0.y;
  r4.xy = cb2[35].zw * r0.zx;
  r4.w = cb2[36].y * r4.x;
  r0.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r0.xyz = floor(r0.xyz);
  r0.xyz = r0.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r0.xyz = r2.xyz + -r0.xyz;
  r0.w = r2.x + -r1.x;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r1.xyz = t4.SampleLevel(s1_s, r0.yz, -1).xyz;
  r1.x = r1.x + -r1.y;
  r1.y = cb2[34].z + r1.y;
  r1.w = -r1.y + r0.x;
  r0.x = -r1.z + r0.x;
  r1.y = r1.y + -r1.z;
  r1.xyz = max(float3(9.99999975e-005,9.99999975e-005,0), r1.xyw);
  r1.x = r1.z / r1.x;
  r1.x = min(1, r1.x);
  r1.z = 1 + -r1.x;
  r1.x = ceil(r1.x);
  r1.z = min(0.200000003, r1.z);
  r1.x = r1.x * r1.z;
  r1.z = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r0.x = min(r0.x, r0.w);
  r0.x = cb2[35].y * r0.x;
  r0.w = r1.z / r1.y;
  r0.w = min(1, r0.w);
  r1.y = 1 + -r0.w;
  r0.w = ceil(r0.w);
  r1.y = min(0.200000003, r1.y);
  r0.w = r1.y * r0.w;
  r0.w = 5 * r0.w;
  r1.y = r1.x * 5 + -r0.w;
  r1.x = 5 * r1.x;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r1.z = cmp(r1.x >= r0.w);
  r0.w = max(r1.x, r0.w);
  r1.xw = t5.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = t6.SampleLevel(s3_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r1.z = r1.z ? r1.w : r1.x;
  r1.x = r1.y ? r1.z : r1.x;
  r1.x = cb2[34].w * r1.x;
  r1.x = r1.x * r0.w;
  r0.x = r0.w * r0.x;
  r0.x = r1.x * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz + r4.yzw;
  r0.xyz = r3.xyz + r0.xyz;
  o4.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o5.w = 1;
  return;
}