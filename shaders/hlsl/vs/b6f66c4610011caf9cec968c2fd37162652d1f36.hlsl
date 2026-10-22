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
  r3.xyz = -cb0[70].zxy + r2.zxy;
  r0.xyz = r3.xyz + -r0.xyz;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r6.xyz = t4.SampleLevel(s1_s, r0.yz, -1).xyz;
  r0.w = cb2[34].z + r6.y;
  r1.y = r0.x + -r0.w;
  r0.xw = -r6.zz + r0.xw;
  r2.w = r6.x + -r6.y;
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
  r6.xy = t5.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = t6.SampleLevel(s3_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r1.y = r3.w ? r6.y : r6.x;
  r1.y = r2.w ? r1.y : r6.x;
  r1.y = cb2[34].w * r1.y;
  r1.y = r1.y * r0.w;
  r6.xy = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r2.w = t0[r6.y].val[8/4];
  r6.x = t0[r6.x].val[0/4];
  r6.y = t0[r6.x].val[0/4+1];
  r6.z = t0[r6.x].val[0/4+2];
  r6.w = t0[r6.x].val[0/4+3];
  r2.w = cb2[14].z + r2.w;
  r2.w = r3.x + -r2.w;
  r0.x = min(r2.w, r0.x);
  r0.x = cb2[35].y * r0.x;
  r0.x = r0.w * r0.x;
  r0.x = r1.y * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r7.xyz = -cb0[70].xyz + r2.xyz;
  r7.xyz = r7.xyz / cb2[24].zzz;
  r0.w = cb2[23].y * cb0[142].z;
  r7.xyz = r0.www * float3(-0.5,-0.5,-0.5) + r7.xyz;
  r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyz = frac(r7.xyz);
  r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r8.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
  r7.xyz = abs(r7.xyz) * abs(r7.xyz);
  r7.xyz = r7.xyz * r8.xyz;
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = sqrt(r1.y);
  r3.xw = r3.yz / cb2[23].ww;
  r3.yz = r3.yz / cb2[26].yy;
  r3.xw = r0.ww * float2(0.353553385,-0.353553385) + r3.xw;
  r3.xw = float2(0.5,0.5) + r3.xw;
  r3.xw = frac(r3.xw);
  r3.xw = r3.xw * float2(2,2) + float2(-1,-1);
  r7.xy = -abs(r3.xw) * float2(2,2) + float2(3,3);
  r3.xw = abs(r3.xw) * abs(r3.xw);
  r3.xw = r3.xw * r7.xy;
  r0.w = dot(float2(-0.707106769,0.707106769), r3.xw);
  r0.w = r0.w + r1.y;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r3.x, r7.x);
  r7.yzw = float3(7.07106781,-7.07106781,0) * r3.xxx;
  r7.xyz = r7.xxx * float3(0,0,10) + r7.yzw;
  r7.xyz = float3(0,0,-10) + r7.xyz;
  r7.xyz = cb2[24].www * r7.xyz;
  r8.z = cb2[26].x * cb0[142].z;
  r8.xy = cb2[25].xw * cb0[142].zz;
  r3.xy = r8.yz + r3.yz;
  r0.w = 6.28318548 * r8.x;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.5 + 0.75;
  r1.y = t3.SampleLevel(s0_s, r3.xy, -1).x;
  r1.y = cb2[26].z * r1.y;
  r2.w = log2(r1.y);
  r1.y = cmp(0 >= r1.y);
  r2.w = cb2[26].w * r2.w;
  r2.w = exp2(r2.w);
  r1.y = r1.y ? 0 : r2.w;
  r1.y = saturate(cb2[27].x + r1.y);
  r2.w = 0.5 + cb0[142].z;
  r2.w = cb2[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r0.w = -r2.w + r0.w;
  r0.w = r1.y * r0.w + r2.w;
  r0.w = cb2[27].y * r0.w;
  r0.w = cb2[27].z * r0.w;
  r3.xyz = r7.xyz * r0.www + float3(1,1,1);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.y = (int)r0.w * asint(cb1[0].y);
  r7.xy = t1.Load(r1.y).xy;
  r1.y = 1 + -r7.y;
  o3.xy = r7.xy;
  r3.xyz = r3.xyz * r1.yyy;
  r7.z = cb2[36].x * r3.y;
  r7.xy = cb2[35].zw * r3.zx;
  r7.w = cb2[36].y * r7.x;
  r0.xyz = r7.yzw + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o5.xyz = r0.xyz;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  r0.x = (uint)r0.w << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.w << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r2.xyzw = t2.Load(r0.y).xyzw;
  r0.xyz = t2.Load(r0.x).xyz;
  r3.xyz = r2.yzx * r0.xyz;
  r0.xyz = r2.xyz * r0.yzx + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r1.xyz = r6.yyy * r1.xzw;
  r3.xyz = r1.xyz * r0.yyy;
  r1.xyz = r2.yyy * r1.xyz;
  r4.xyz = r6.xxx * r4.xyz;
  r0.xyw = r0.xxx * r4.xyz + r3.xyz;
  r1.xyz = r2.xxx * r4.xyz + r1.xyz;
  r3.xyz = r6.zzz * r5.xyz;
  o2.w = r2.w * r6.w;
  o2.xyz = r2.zzz * r3.xyz + r1.xyz;
  o1.xyz = r0.zzz * r3.xyz + r0.xyw;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}