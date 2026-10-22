// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
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
  r1.xyz = v0.yyy * r1.xyz;
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r3.xyz * v0.zzz + r1.xyz;
  r0.xyz = r1.xyz + r0.yzw;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r1.xyz = r1.xyz / cb2[24].zzz;
  r0.w = cb2[23].y * cb0[142].z;
  r1.xyz = r0.www * float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = -abs(r1.xyz) * float3(2,2,2) + float3(3,3,3);
  r1.xyz = abs(r1.xyz) * abs(r1.xyz);
  r1.xyz = r1.xyz * r2.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.yzw = -cb0[70].zxy + r0.zxy;
  r2.xy = r1.zw / cb2[23].ww;
  r2.xy = r0.ww * float2(0.353553385,-0.353553385) + r2.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = abs(r2.xy) * abs(r2.xy);
  r2.xy = r2.xy * r2.zw;
  r0.w = dot(float2(-0.707106769,0.707106769), r2.xy);
  r0.w = r0.w + r1.x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r2.yzw = float3(7.07106781,-7.07106781,0) * r1.xxx;
  r2.xyz = r2.xxx * float3(0,0,10) + r2.yzw;
  r2.xyz = float3(0,0,-10) + r2.xyz;
  r2.xyz = cb2[24].www * r2.xyz;
  r3.xy = r1.zw / cb2[26].yy;
  r4.z = cb2[26].x * cb0[142].z;
  r4.xy = cb2[25].xw * cb0[142].zz;
  r3.xy = r4.yz + r3.xy;
  r0.w = 6.28318548 * r4.x;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.5 + 0.75;
  r1.x = t2.SampleLevel(s0_s, r3.xy, -1).x;
  r1.x = cb2[26].z * r1.x;
  r2.w = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r2.w = cb2[26].w * r2.w;
  r2.w = exp2(r2.w);
  r1.x = r1.x ? 0 : r2.w;
  r1.x = saturate(cb2[27].x + r1.x);
  r2.w = 0.5 + cb0[142].z;
  r2.w = cb2[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r0.w = -r2.w + r0.w;
  r0.w = r1.x * r0.w + r2.w;
  r0.w = cb2[27].y * r0.w;
  r0.w = cb2[27].z * r0.w;
  r2.xyz = r2.xyz * r0.www + float3(1,1,1);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r0.w = (int)r0.w * asint(cb1[0].y);
  r3.xy = t1.Load(r0.w).xy;
  r0.w = 1 + -r3.y;
  o3.xy = r3.xy;
  r2.xyz = r2.xyz * r0.www;
  r3.z = cb2[36].x * r2.y;
  r3.xy = cb2[35].zw * r2.zx;
  r3.w = cb2[36].y * r3.x;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xzw = -r2.xyz + r1.yzw;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r1.x = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t3.SampleLevel(s1_s, r1.zw, -1).xyz;
  r2.x = r2.x + -r2.y;
  r2.y = cb2[34].z + r2.y;
  r2.w = -r2.y + r1.x;
  r1.x = -r2.z + r1.x;
  r2.y = r2.y + -r2.z;
  r2.xyz = max(float3(9.99999975e-005,9.99999975e-005,0), r2.xyw);
  r2.x = r2.z / r2.x;
  r2.x = min(1, r2.x);
  r2.z = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r2.z = min(0.200000003, r2.z);
  r2.x = r2.x * r2.z;
  r2.z = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.x = max(0, r1.x);
  r2.y = r2.z / r2.y;
  r2.y = min(1, r2.y);
  r2.z = 1 + -r2.y;
  r2.y = ceil(r2.y);
  r2.z = min(0.200000003, r2.z);
  r2.y = r2.y * r2.z;
  r2.y = 5 * r2.y;
  r2.z = r2.x * 5 + -r2.y;
  r2.x = 5 * r2.x;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r2.w = cmp(r2.x >= r2.y);
  r2.x = max(r2.x, r2.y);
  r4.xy = t4.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = t5.SampleLevel(s3_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r2.y = r2.w ? r4.y : r4.x;
  r2.y = r2.z ? r2.y : r4.x;
  r2.y = cb2[34].w * r2.y;
  r2.y = r2.y * r2.x;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r2.z = t0[r4.x].val[8/4];
  r2.z = cb2[14].z + r2.z;
  r1.y = -r2.z + r1.y;
  r1.x = min(r1.x, r1.y);
  r1.x = cb2[35].y * r1.x;
  r1.x = r2.x * r1.x;
  r1.x = r2.y * r1.x;
  r1.xy = r1.xx * r1.zw;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = sqrt(r1.w);
  r1.z = -1.20000005 * r1.w;
  r1.xyz = r1.xyz + r3.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r0.y = cmp(1 < asint(cb0[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.xyz = cb0[113].xyz + r0.xyz;
  r1.w = r0.x;
  r3.x = t0[r4.y].val[0/4+1];
  r3.y = t0[r4.y].val[0/4];
  r3.z = t0[r4.y].val[0/4+2];
  r1.x = r3.y;
  r5.x = t0[r4.z].val[0/4];
  r5.y = t0[r4.z].val[0/4+2];
  r5.z = t0[r4.z].val[0/4+1];
  r2.x = t0[r4.w].val[0/4];
  r2.y = t0[r4.w].val[0/4+1];
  r2.w = t0[r4.w].val[0/4+2];
  r1.y = r5.x;
  r1.z = r2.x;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r3.w = r0.y;
  r5.w = r0.z;
  r5.x = r3.z;
  r3.y = r5.z;
  r3.z = r2.y;
  r5.z = r2.w;
  r1.z = dot(v0.xyzw, r5.xyzw);
  r1.y = dot(v0.xyzw, r3.xyzw);
  r0.xyz = -cb0[113].xyz + r1.xyz;
  r0.xyz = r0.xyz / cb2[24].zzz;
  r1.w = cb2[23].y * cb0[139].z;
  r0.xyz = r1.www * float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyw = -abs(r0.xyz) * float3(2,2,2) + float3(3,3,3);
  r0.xyz = abs(r0.xyz) * abs(r0.xyz);
  r0.xyz = r0.xyz * r2.xyw;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r2.xyw = -cb0[113].zxy + r1.zxy;
  r0.yz = r2.yw / cb2[23].ww;
  r0.yz = r1.ww * float2(0.353553385,-0.353553385) + r0.yz;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r3.xy = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = abs(r0.yz) * abs(r0.yz);
  r0.yz = r0.yz * r3.xy;
  r0.y = dot(float2(-0.707106769,0.707106769), r0.yz);
  r0.x = r0.y + r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r3.x);
  r0.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
  r0.xyz = r3.xxx * float3(0,0,10) + r0.xyz;
  r0.xyz = float3(0,0,-10) + r0.xyz;
  r0.xyz = cb2[24].www * r0.xyz;
  r3.xy = r2.yw / cb2[26].yy;
  r4.z = cb2[26].x * cb0[139].z;
  r4.xy = cb2[25].xw * cb0[139].zz;
  r3.xy = r4.yz + r3.xy;
  r1.w = 6.28318548 * r4.x;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.75;
  r3.x = t2.SampleLevel(s0_s, r3.xy, -1).x;
  r3.x = cb2[26].z * r3.x;
  r3.y = log2(r3.x);
  r3.x = cmp(0 >= r3.x);
  r3.y = cb2[26].w * r3.y;
  r3.y = exp2(r3.y);
  r3.x = r3.x ? 0 : r3.y;
  r3.x = saturate(cb2[27].x + r3.x);
  r3.y = 0.5 + cb0[139].z;
  r3.y = cb2[25].x * r3.y;
  r3.y = 6.28318548 * r3.y;
  r3.y = sin(r3.y);
  r3.y = r3.y * 0.5 + 0.75;
  r1.w = -r3.y + r1.w;
  r1.w = r3.x * r1.w + r3.y;
  r1.w = cb2[27].y * r1.w;
  r1.w = cb2[27].z * r1.w;
  r0.xyz = r0.xyz * r1.www + float3(1,1,1);
  r0.xyz = r0.xyz * r0.www;
  r3.z = cb2[36].x * r0.y;
  r3.xy = cb2[35].zw * r0.zx;
  r3.w = cb2[36].y * r3.x;
  r0.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r0.xyz = floor(r0.xyz);
  r0.xyz = r0.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r0.xyz = r2.xyw + -r0.xyz;
  r0.w = r2.x + -r2.z;
  r0.yz = float2(9.99999975e-005,9.99999975e-005) * r0.yz;
  r0.x = r0.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t3.SampleLevel(s1_s, r0.yz, -1).xyz;
  r1.w = r2.x + -r2.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.x = cb2[34].z + r2.y;
  r2.y = -r2.x + r0.x;
  r0.x = -r2.z + r0.x;
  r2.x = r2.x + -r2.z;
  r2.xy = max(float2(9.99999975e-005,0), r2.xy);
  r1.w = r2.y / r1.w;
  r1.w = min(1, r1.w);
  r2.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r2.y = min(0.200000003, r2.y);
  r1.w = r2.y * r1.w;
  r2.y = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r0.x = min(r0.x, r0.w);
  r0.x = cb2[35].y * r0.x;
  r0.w = r2.y / r2.x;
  r0.w = min(1, r0.w);
  r2.x = 1 + -r0.w;
  r0.w = ceil(r0.w);
  r2.x = min(0.200000003, r2.x);
  r0.w = r2.x * r0.w;
  r0.w = 5 * r0.w;
  r2.x = r1.w * 5 + -r0.w;
  r1.w = 5 * r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.y = cmp(r1.w >= r0.w);
  r0.w = max(r1.w, r0.w);
  r2.zw = t4.SampleLevel(s2_s, r0.yz, -1).xy;
  r0.yz = t5.SampleLevel(s3_s, r0.yz, -1).xy;
  r0.yz = float2(-1,-1) + r0.yz;
  r1.w = r2.y ? r2.w : r2.z;
  r1.w = r2.x ? r1.w : r2.z;
  r1.w = cb2[34].w * r1.w;
  r1.w = r1.w * r0.w;
  r0.x = r0.w * r0.x;
  r0.x = r1.w * r0.x;
  r0.xy = r0.xx * r0.yz;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = sqrt(r0.w);
  r0.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz + r3.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.zw = float2(0,0);
  return;
}