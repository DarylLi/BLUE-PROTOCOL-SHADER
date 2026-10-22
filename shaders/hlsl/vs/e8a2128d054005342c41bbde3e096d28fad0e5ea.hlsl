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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r2.xyz = v0.yyy * r1.xyz;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = r2.xyz / cb2[24].zzz;
  r0.w = cb2[23].y * cb0[142].z;
  r2.xyz = r0.www * float3(-0.5,-0.5,-0.5) + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
  r2.xyz = abs(r2.xyz) * abs(r2.xyz);
  r2.xyz = r2.xyz * r5.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r2.xyz = -cb0[70].zxy + r0.zxy;
  r5.xy = r2.yz / cb2[23].ww;
  r5.xy = r0.ww * float2(0.353553385,-0.353553385) + r5.xy;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r5.xy = frac(r5.xy);
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.zw = -abs(r5.xy) * float2(2,2) + float2(3,3);
  r5.xy = abs(r5.xy) * abs(r5.xy);
  r5.xy = r5.xy * r5.zw;
  r0.w = dot(float2(-0.707106769,0.707106769), r5.xy);
  r0.w = r0.w + r1.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r5.x, r6.x);
  r5.xyz = float3(7.07106781,-7.07106781,0) * r5.xxx;
  r5.xyz = r6.xxx * float3(0,0,10) + r5.xyz;
  r5.xyz = float3(0,0,-10) + r5.xyz;
  r5.xyz = cb2[24].www * r5.xyz;
  r6.xy = r2.yz / cb2[26].yy;
  r7.z = cb2[26].x * cb0[142].z;
  r7.xy = cb2[25].xw * cb0[142].zz;
  r6.xy = r7.yz + r6.xy;
  r0.w = 6.28318548 * r7.x;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.5 + 0.75;
  r1.w = t3.SampleLevel(s0_s, r6.xy, -1).x;
  r1.w = cb2[26].z * r1.w;
  r2.w = log2(r1.w);
  r1.w = cmp(0 >= r1.w);
  r2.w = cb2[26].w * r2.w;
  r2.w = exp2(r2.w);
  r1.w = r1.w ? 0 : r2.w;
  r1.w = saturate(cb2[27].x + r1.w);
  r2.w = 0.5 + cb0[142].z;
  r2.w = cb2[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r0.w = -r2.w + r0.w;
  r0.w = r1.w * r0.w + r2.w;
  r0.w = cb2[27].y * r0.w;
  r0.w = cb2[27].z * r0.w;
  r5.xyz = r5.xyz * r0.www + float3(1,1,1);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (int)r0.w * asint(cb1[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = 1 + -r6.y;
  o5.xy = r6.xy;
  r5.xyz = r5.xyz * r1.www;
  r6.z = cb2[36].x * r5.y;
  r6.xy = cb2[35].zw * r5.zx;
  r6.w = cb2[36].y * r6.x;
  r5.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r5.xyz = floor(r5.xyz);
  r5.xyz = r5.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.yzw = -r5.xyz + r2.xyz;
  r2.y = r2.y * 9.99999975e-005 + 0.200000003;
  r2.zw = float2(9.99999975e-005,9.99999975e-005) * r2.zw;
  r5.xyz = t4.SampleLevel(s1_s, r2.zw, -1).xyz;
  r3.w = cb2[34].z + r5.y;
  r4.w = -r3.w + r2.y;
  r2.y = -r5.z + r2.y;
  r3.w = r3.w + -r5.z;
  r5.x = r5.x + -r5.y;
  r5.x = max(9.99999975e-005, r5.x);
  r3.w = max(9.99999975e-005, r3.w);
  r4.w = max(0, r4.w);
  r4.w = r4.w / r5.x;
  r4.w = min(1, r4.w);
  r5.x = 1 + -r4.w;
  r4.w = ceil(r4.w);
  r5.x = min(0.200000003, r5.x);
  r4.w = r5.x * r4.w;
  r5.x = max(0, r2.y);
  r2.y = 10000 * r2.y;
  r2.y = max(0, r2.y);
  r3.w = r5.x / r3.w;
  r3.w = min(1, r3.w);
  r5.x = 1 + -r3.w;
  r3.w = ceil(r3.w);
  r5.x = min(0.200000003, r5.x);
  r3.w = r5.x * r3.w;
  r3.w = 5 * r3.w;
  r5.x = r4.w * 5 + -r3.w;
  r4.w = 5 * r4.w;
  r5.x = cmp(9.99999975e-006 < abs(r5.x));
  r5.y = cmp(r4.w >= r3.w);
  r3.w = max(r4.w, r3.w);
  r5.zw = t5.SampleLevel(s2_s, r2.zw, -1).xy;
  r2.zw = t6.SampleLevel(s3_s, r2.zw, -1).xy;
  r2.zw = float2(-1,-1) + r2.zw;
  r4.w = r5.y ? r5.w : r5.z;
  r4.w = r5.x ? r4.w : r5.z;
  r4.w = cb2[34].w * r4.w;
  r4.w = r4.w * r3.w;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,10,11));
  r5.y = t0[r5.y].val[8/4];
  r5.y = cb2[14].z + r5.y;
  r2.x = -r5.y + r2.x;
  r2.x = min(r2.y, r2.x);
  r2.x = cb2[35].y * r2.x;
  r2.x = r3.w * r2.x;
  r2.x = r4.w * r2.x;
  r2.xy = r2.xx * r2.zw;
  r2.w = dot(r2.xy, r2.xy);
  r2.w = sqrt(r2.w);
  r2.z = -1.20000005 * r2.w;
  r2.xyz = r2.xyz + r6.yzw;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r0.x = 0.00100000005 * r2.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r0.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r2.x = t0[r0.y].val[0/4];
  r2.y = t0[r0.y].val[0/4+1];
  r2.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r6.w = r2.x;
  r7.x = t0[r5.z].val[0/4+1];
  r7.y = t0[r5.z].val[0/4];
  r7.z = t0[r5.z].val[0/4+2];
  r6.x = r7.y;
  r8.x = t0[r5.w].val[0/4];
  r8.y = t0[r5.w].val[0/4+2];
  r8.z = t0[r5.w].val[0/4+1];
  r9.x = t0[r5.x].val[0/4];
  r9.y = t0[r5.x].val[0/4+1];
  r9.z = t0[r5.x].val[0/4+2];
  r9.w = t0[r5.x].val[0/4+3];
  r6.y = r8.x;
  r6.z = r0.x;
  r6.x = dot(v0.xyzw, r6.xyzw);
  r7.w = r2.y;
  r8.w = r2.z;
  r8.x = r7.z;
  r7.y = r8.z;
  r7.z = r0.y;
  r8.z = r0.z;
  r6.z = dot(v0.xyzw, r8.xyzw);
  r6.y = dot(v0.xyzw, r7.xyzw);
  r0.xyz = -cb0[113].xyz + r6.xyz;
  r0.xyz = r0.xyz / cb2[24].zzz;
  r2.x = cb2[23].y * cb0[139].z;
  r0.xyz = r2.xxx * float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.yzw = -abs(r0.xyz) * float3(2,2,2) + float3(3,3,3);
  r0.xyz = abs(r0.xyz) * abs(r0.xyz);
  r0.xyz = r0.xyz * r2.yzw;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r2.yzw = -cb0[113].zxy + r6.zxy;
  r0.yz = r2.zw / cb2[23].ww;
  r0.yz = r2.xx * float2(0.353553385,-0.353553385) + r0.yz;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r5.xz = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = abs(r0.yz) * abs(r0.yz);
  r0.yz = r0.yz * r5.xz;
  r0.y = dot(float2(-0.707106769,0.707106769), r0.yz);
  r0.x = r0.y + r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r0.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
  r0.xyz = r2.xxx * float3(0,0,10) + r0.xyz;
  r0.xyz = float3(0,0,-10) + r0.xyz;
  r0.xyz = cb2[24].www * r0.xyz;
  r5.xz = r2.zw / cb2[26].yy;
  r7.z = cb2[26].x * cb0[139].z;
  r7.xy = cb2[25].xw * cb0[139].zz;
  r5.xz = r7.yz + r5.xz;
  r2.x = 6.28318548 * r7.x;
  r2.x = sin(r2.x);
  r2.x = r2.x * 0.5 + 0.75;
  r3.w = t3.SampleLevel(s0_s, r5.xz, -1).x;
  r3.w = cb2[26].z * r3.w;
  r4.w = log2(r3.w);
  r3.w = cmp(0 >= r3.w);
  r4.w = cb2[26].w * r4.w;
  r4.w = exp2(r4.w);
  r3.w = r3.w ? 0 : r4.w;
  r3.w = saturate(cb2[27].x + r3.w);
  r4.w = 0.5 + cb0[139].z;
  r4.w = cb2[25].x * r4.w;
  r4.w = 6.28318548 * r4.w;
  r4.w = sin(r4.w);
  r4.w = r4.w * 0.5 + 0.75;
  r2.x = -r4.w + r2.x;
  r2.x = r3.w * r2.x + r4.w;
  r2.x = cb2[27].y * r2.x;
  r2.x = cb2[27].z * r2.x;
  r0.xyz = r0.xyz * r2.xxx + float3(1,1,1);
  r0.xyz = r0.xyz * r1.www;
  r7.z = cb2[36].x * r0.y;
  r7.xy = cb2[35].zw * r0.zx;
  r7.w = cb2[36].y * r7.x;
  r0.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r0.xyz = floor(r0.xyz);
  r0.xyz = r0.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r0.xyz = r2.yzw + -r0.xyz;
  r1.w = r2.y + -r5.y;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t4.SampleLevel(s1_s, r0.yz, -1).xyz;
  r2.x = r2.x + -r2.y;
  r2.y = cb2[34].z + r2.y;
  r2.w = -r2.y + r0.x;
  r0.x = -r2.z + r0.x;
  r2.y = r2.y + -r2.z;
  r2.xyz = max(float3(9.99999975e-005,9.99999975e-005,0), r2.xyw);
  r2.x = r2.z / r2.x;
  r2.x = min(1, r2.x);
  r2.z = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r2.z = min(0.200000003, r2.z);
  r2.x = r2.x * r2.z;
  r2.z = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r0.x = min(r0.x, r1.w);
  r0.x = cb2[35].y * r0.x;
  r1.w = r2.z / r2.y;
  r1.w = min(1, r1.w);
  r2.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.y = min(0.200000003, r2.y);
  r1.w = r2.y * r1.w;
  r1.w = 5 * r1.w;
  r2.y = r2.x * 5 + -r1.w;
  r2.x = 5 * r2.x;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r2.z = cmp(r2.x >= r1.w);
  r1.w = max(r2.x, r1.w);
  r2.xw = t5.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = t6.SampleLevel(s3_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r2.z = r2.z ? r2.w : r2.x;
  r2.x = r2.y ? r2.z : r2.x;
  r2.x = cb2[34].w * r2.x;
  r2.x = r2.x * r1.w;
  r0.x = r1.w * r0.x;
  r0.x = r2.x * r0.x;
  r0.xy = r0.xx * r0.yz;
  r1.w = dot(r0.xy, r0.xy);
  r1.w = sqrt(r1.w);
  r0.z = -1.20000005 * r1.w;
  r0.xyz = r0.xyz + r7.yzw;
  r0.xyz = r6.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r0.x = (uint)r0.w << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.w << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r2.xyzw = t2.Load(r0.y).xyzw;
  r0.xyz = t2.Load(r0.x).xyz;
  r5.xyz = r2.yzx * r0.xyz;
  r0.xyz = r2.xyz * r0.yzx + -r5.xyz;
  r0.xyz = r0.xyz * r2.www;
  r5.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r5.xyz;
  r0.xyz = r0.xyz * r2.www;
  r1.xyz = r9.yyy * r1.xyz;
  r5.xyz = r1.xyz * r0.yyy;
  r1.xyz = r2.yyy * r1.xyz;
  r3.xyz = r9.xxx * r3.xyz;
  r0.xyw = r0.xxx * r3.xyz + r5.xyz;
  r1.xyz = r2.xxx * r3.xyz + r1.xyz;
  r3.xyz = r9.zzz * r4.xyz;
  o4.w = r2.w * r9.w;
  o4.xyz = r2.zzz * r3.xyz + r1.xyz;
  o3.xyz = r0.zzz * r3.xyz + r0.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}