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

cbuffer cb2 : register(b2)
{
  float4 cb2[34];
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
  r1.xy = -cb0[70].xy + r0.xy;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.zw = -r2.yz + r1.xy;
  r1.xy = r1.xy / cb2[30].xx;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r2.yzw = t2.SampleLevel(s0_s, r1.zw, -1).xyz;
  r0.w = r2.y + -r2.z;
  r0.w = max(9.99999975e-005, r0.w);
  r3.xyz = -cb0[70].xyz + r0.xyz;
  r2.x = r3.z + -r2.x;
  r2.x = r2.x * 9.99999975e-005 + 0.200000003;
  r2.y = cb2[32].w + r2.z;
  r2.z = r2.x + -r2.y;
  r2.xy = r2.xy + -r2.ww;
  r2.yz = max(float2(9.99999975e-005,0), r2.yz);
  r0.w = r2.z / r0.w;
  r0.w = min(1, r0.w);
  r2.z = 1 + -r0.w;
  r0.w = ceil(r0.w);
  r2.z = min(0.200000003, r2.z);
  r0.w = r2.z * r0.w;
  r2.z = max(0, r2.x);
  r2.x = 10000 * r2.x;
  r2.x = max(0, r2.x);
  r2.y = r2.z / r2.y;
  r2.y = min(1, r2.y);
  r2.z = 1 + -r2.y;
  r2.y = ceil(r2.y);
  r2.z = min(0.200000003, r2.z);
  r2.y = r2.y * r2.z;
  r2.y = 5 * r2.y;
  r2.z = r0.w * 5 + -r2.y;
  r0.w = 5 * r0.w;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r2.w = cmp(r0.w >= r2.y);
  r0.w = max(r0.w, r2.y);
  r4.xy = t3.SampleLevel(s1_s, r1.zw, -1).xy;
  r1.zw = t4.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r2.y = r2.w ? r4.y : r4.x;
  r2.y = r2.z ? r2.y : r4.x;
  r2.y = cb2[33].x * r2.y;
  r2.y = r2.y * r0.w;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r2.z = t0[r4.x].val[8/4];
  r2.z = cb2[17].z + r2.z;
  r2.w = r3.z + -r2.z;
  r3.xyz = r3.xyz / cb2[30].www;
  r2.x = min(r2.x, r2.w);
  r2.x = cb2[33].z * r2.x;
  r0.w = r2.x * r0.w;
  r0.w = r2.y * r0.w;
  r5.xy = r0.ww * r1.zw;
  r0.w = dot(r5.xy, r5.xy);
  r0.w = sqrt(r0.w);
  r5.z = -1.20000005 * r0.w;
  r0.w = cb2[29].z * cb0[142].z;
  r2.xyw = r0.www * float3(-0.5,-0.5,-0.5) + r3.xyz;
  r1.xy = r0.ww * float2(0.353553385,-0.353553385) + r1.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = frac(r1.xy);
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xyw = float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = frac(r2.xyw);
  r2.xyw = r2.xyw * float3(2,2,2) + float3(-1,-1,-1);
  r3.xyz = -abs(r2.xyw) * float3(2,2,2) + float3(3,3,3);
  r2.xyw = abs(r2.xyw) * abs(r2.xyw);
  r2.xyw = r2.xyw * r3.xyz;
  r0.w = dot(r2.xyw, r2.xyw);
  r0.w = sqrt(r0.w);
  r1.zw = -abs(r1.xy) * float2(2,2) + float2(3,3);
  r1.xy = abs(r1.xy) * abs(r1.xy);
  r1.xy = r1.xy * r1.zw;
  r1.x = dot(float2(-0.707106769,0.707106769), r1.xy);
  r0.w = r1.x + r0.w;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r1.xyz = float3(7.07106781,-7.07106781,0) * r1.xxx;
  r1.xyz = r2.xxx * float3(0,0,10) + r1.xyz;
  r1.xyz = float3(0,0,-10) + r1.xyz;
  r1.xyz = cb2[31].xxx * r1.xyz;
  r2.xy = cb2[31].zy * cb0[142].zz;
  r2.xy = float2(6.28318548,6.28318548) * r2.xy;
  r2.xy = sin(r2.xy);
  r2.xy = r2.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r0.w = r2.x * r2.y;
  r0.w = cb2[31].w * r0.w;
  r0.w = cb2[32].x * r0.w;
  r1.xyz = r1.xyz * r0.www + float3(1,1,1);
  r0.w = asint(cb1[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.w = (int)v2.x + asint(cb1[0].w);
  r0.w = mad(asint(cb1[0].y), (int)r1.w, (int)r0.w);
  r1.w = (int)r1.w * asint(cb1[0].y);
  r2.xy = t1.Load(r1.w).xy;
  o3.xy = r2.xy;
  r0.w = t1.Load(r0.w).y;
  r0.w = 1 + -r0.w;
  r1.xyz = r1.xyz * r0.www;
  r1.w = cb2[32].y * r1.z;
  r1.xyz = r1.xyw + r5.xyz;
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
  r1.xyw = cb0[113].yzx + r0.yzx;
  r3.w = r1.y;
  r5.x = t0[r4.y].val[0/4+1];
  r5.y = t0[r4.y].val[0/4];
  r5.z = t0[r4.y].val[0/4+2];
  r3.x = r5.z;
  r0.x = t0[r4.z].val[0/4];
  r0.y = t0[r4.z].val[0/4+1];
  r0.z = t0[r4.z].val[0/4+2];
  r2.x = t0[r4.w].val[0/4];
  r2.y = t0[r4.w].val[0/4+1];
  r2.w = t0[r4.w].val[0/4+2];
  r3.y = r0.z;
  r3.z = r2.w;
  r3.z = dot(v0.xyzw, r3.xyzw);
  r5.w = r1.x;
  r1.x = r5.y;
  r1.y = r0.x;
  r5.y = r0.y;
  r1.z = r2.x;
  r5.z = r2.y;
  r3.y = dot(v0.xyzw, r5.xyzw);
  r3.x = dot(v0.xyzw, r1.xyzw);
  r0.xyz = -cb0[113].xyz + r3.xyz;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.x = -r1.x + r0.z;
  r1.x = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xy = -cb0[113].xy + r3.xy;
  r1.yz = r2.xy + -r1.yz;
  r2.xy = r2.xy / cb2[30].xx;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r4.xyz = t2.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.w = cb2[32].w + r4.y;
  r2.w = r1.x + -r1.w;
  r1.xw = -r4.zz + r1.xw;
  r3.w = r4.x + -r4.y;
  r3.w = max(9.99999975e-005, r3.w);
  r2.w = max(0, r2.w);
  r2.w = r2.w / r3.w;
  r2.w = min(1, r2.w);
  r3.w = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r3.w = min(0.200000003, r3.w);
  r2.w = r3.w * r2.w;
  r3.w = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.xw = max(float2(0,9.99999975e-005), r1.xw);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.w = min(0.200000003, r3.w);
  r1.w = r3.w * r1.w;
  r1.w = 5 * r1.w;
  r3.w = r2.w * 5 + -r1.w;
  r2.w = 5 * r2.w;
  r3.w = cmp(9.99999975e-006 < abs(r3.w));
  r4.x = cmp(r2.w >= r1.w);
  r1.w = max(r2.w, r1.w);
  r4.yz = t3.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.yz = t4.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.yz = float2(-1,-1) + r1.yz;
  r2.w = r4.x ? r4.z : r4.y;
  r2.w = r3.w ? r2.w : r4.y;
  r2.w = cb2[33].x * r2.w;
  r2.w = r2.w * r1.w;
  r2.z = r0.z + -r2.z;
  r0.xyz = r0.xyz / cb2[30].www;
  r1.x = min(r2.z, r1.x);
  r1.x = cb2[33].z * r1.x;
  r1.x = r1.w * r1.x;
  r1.x = r2.w * r1.x;
  r1.xy = r1.xx * r1.yz;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = sqrt(r1.w);
  r1.z = -1.20000005 * r1.w;
  r1.w = cb2[29].z * cb0[139].z;
  r2.xy = r1.ww * float2(0.353553385,-0.353553385) + r2.xy;
  r0.xyz = r1.www * float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = abs(r2.xy) * abs(r2.xy);
  r2.xy = r2.xy * r2.zw;
  r1.w = dot(float2(-0.707106769,0.707106769), r2.xy);
  r2.xyz = -abs(r0.xyz) * float3(2,2,2) + float3(3,3,3);
  r0.xyz = abs(r0.xyz) * abs(r0.xyz);
  r0.xyz = r0.xyz * r2.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r1.w + r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r0.xyz = float3(7.07106781,-7.07106781,0) * r0.xxx;
  r0.xyz = r2.xxx * float3(0,0,10) + r0.xyz;
  r0.xyz = float3(0,0,-10) + r0.xyz;
  r0.xyz = cb2[31].xxx * r0.xyz;
  r2.xy = cb2[31].zy * cb0[139].zz;
  r2.xy = float2(6.28318548,6.28318548) * r2.xy;
  r2.xy = sin(r2.xy);
  r2.xy = r2.xy * float2(0.5,0.5) + float2(0.75,0.75);
  r1.w = r2.x * r2.y;
  r1.w = cb2[31].w * r1.w;
  r1.w = cb2[32].x * r1.w;
  r0.xyz = r0.xyz * r1.www + float3(1,1,1);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb2[32].y * r0.z;
  r0.xyz = r0.xyw + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.zw = float2(0,0);
  return;
}