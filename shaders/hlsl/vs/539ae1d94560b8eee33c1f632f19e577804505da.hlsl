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

cbuffer cb3 : register(b3)
{
  float4 cb3[37];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[29];
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
  out float o4 : TEXCOORD6,
  out float p4 : TEXCOORD8,
  out float3 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
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
  r1.x = cb3[14].z + r1.x;
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
  o2.xy = r1.yz;
  r0.w = 1 + -r1.z;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r1.yzw = -cb0[70].xyz + r3.xyz;
  r1.yzw = r1.yzw / cb3[24].zzz;
  r2.x = cb3[23].y * cb0[142].z;
  r1.yzw = r2.xxx * float3(-0.5,-0.5,-0.5) + r1.yzw;
  r1.yzw = float3(0.5,0.5,0.5) + r1.yzw;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r2.yzw = -abs(r1.yzw) * float3(2,2,2) + float3(3,3,3);
  r1.yzw = abs(r1.yzw) * abs(r1.yzw);
  r1.yzw = r1.yzw * r2.yzw;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r2.yzw = -cb0[70].zxy + r3.zxy;
  r1.zw = r2.zw / cb3[23].ww;
  r1.zw = r2.xx * float2(0.353553385,-0.353553385) + r1.zw;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r1.zw = frac(r1.zw);
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r4.xy = -abs(r1.zw) * float2(2,2) + float2(3,3);
  r1.zw = abs(r1.zw) * abs(r1.zw);
  r1.zw = r1.zw * r4.xy;
  r1.z = dot(float2(-0.707106769,0.707106769), r1.zw);
  r1.y = r1.z + r1.y;
  r1.y = 6.28318548 * r1.y;
  sincos(r1.y, r2.x, r4.x);
  r1.yzw = float3(7.07106781,-7.07106781,0) * r2.xxx;
  r1.yzw = r4.xxx * float3(0,0,10) + r1.yzw;
  r1.yzw = float3(0,0,-10) + r1.yzw;
  r1.yzw = cb3[24].www * r1.yzw;
  r4.xy = r2.zw / cb3[26].yy;
  r5.z = cb3[26].x * cb0[142].z;
  r5.xy = cb3[25].xw * cb0[142].zz;
  r4.xy = r5.yz + r4.xy;
  r2.x = 6.28318548 * r5.x;
  r2.x = sin(r2.x);
  r2.x = r2.x * 0.5 + 0.75;
  r3.w = t3.SampleLevel(s0_s, r4.xy, -1).x;
  r3.w = cb3[26].z * r3.w;
  r4.x = log2(r3.w);
  r3.w = cmp(0 >= r3.w);
  r4.x = cb3[26].w * r4.x;
  r4.x = exp2(r4.x);
  r3.w = r3.w ? 0 : r4.x;
  r3.w = saturate(cb3[27].x + r3.w);
  r4.x = 0.5 + cb0[142].z;
  r4.x = cb3[25].x * r4.x;
  r4.x = 6.28318548 * r4.x;
  r4.x = sin(r4.x);
  r4.x = r4.x * 0.5 + 0.75;
  r2.x = -r4.x + r2.x;
  r2.x = r3.w * r2.x + r4.x;
  r2.x = cb3[27].y * r2.x;
  r2.x = cb3[27].z * r2.x;
  r1.yzw = r1.yzw * r2.xxx + float3(1,1,1);
  r1.yzw = r1.yzw * r0.www;
  r4.z = cb3[36].x * r1.z;
  r4.xy = cb3[35].zw * r1.wy;
  r4.w = cb3[36].y * r4.x;
  r1.yzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.yzw = floor(r1.yzw);
  r1.yzw = r1.yzw * float3(500,500,500) + float3(250,-4750,-4750);
  r1.yzw = r2.yzw + -r1.yzw;
  r0.w = r2.y + -r1.x;
  r1.xz = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r1.y = r1.y * 9.99999975e-005 + 0.200000003;
  r2.xyz = t4.SampleLevel(s1_s, r1.xz, -1).xyz;
  r1.w = r2.x + -r2.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.x = cb3[34].z + r2.y;
  r2.y = -r2.x + r1.y;
  r1.y = -r2.z + r1.y;
  r2.x = r2.x + -r2.z;
  r2.xy = max(float2(9.99999975e-005,0), r2.xy);
  r1.w = r2.y / r1.w;
  r1.w = min(1, r1.w);
  r2.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.y = min(0.200000003, r2.y);
  r1.w = r2.y * r1.w;
  r2.y = max(0, r1.y);
  r1.y = 10000 * r1.y;
  r1.y = max(0, r1.y);
  r0.w = min(r1.y, r0.w);
  r0.w = cb3[35].y * r0.w;
  r1.y = r2.y / r2.x;
  r1.y = min(1, r1.y);
  r2.x = 1 + -r1.y;
  r1.y = ceil(r1.y);
  r2.x = min(0.200000003, r2.x);
  r1.y = r2.x * r1.y;
  r1.y = 5 * r1.y;
  r2.x = r1.w * 5 + -r1.y;
  r1.w = 5 * r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.y = cmp(r1.w >= r1.y);
  r1.y = max(r1.w, r1.y);
  r2.zw = t5.SampleLevel(s2_s, r1.xz, -1).xy;
  r1.xz = t6.SampleLevel(s3_s, r1.xz, -1).xy;
  r1.xz = float2(-1,-1) + r1.xz;
  r1.w = r2.y ? r2.w : r2.z;
  r1.w = r2.x ? r1.w : r2.z;
  r1.w = cb3[34].w * r1.w;
  r1.w = r1.w * r1.y;
  r0.w = r1.y * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = r0.ww * r1.xz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r1.xyz = r1.xyz + r4.yzw;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyzw = cb1[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb1[21].xyzw + r2.xyzw;
  o5.xyz = r1.xyz;
  r1.xyzw = cb1[22].xyzw + r2.xyzw;
  r0.w = cmp(r1.z < 0);
  r2.x = cmp(0 < cb1[28].x);
  r0.w = r0.w ? r2.x : 0;
  r1.zw = r0.ww ? float2(9.99999997e-007,1) : r1.zw;
  o4.x = r1.z;
  o6.xyzw = r1.xyzw;
  r1.x = cb1[23].z;
  r1.y = cb1[24].z;
  r1.z = cb1[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  p4.x = cb1[27].y * r0.x + cb1[27].x;
  return;
}