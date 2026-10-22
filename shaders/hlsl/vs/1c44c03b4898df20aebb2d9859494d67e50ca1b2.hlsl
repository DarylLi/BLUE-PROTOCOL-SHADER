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
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
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
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r2.w].val[0/4];
  r4.y = t0[r2.w].val[0/4+1];
  r4.z = t0[r2.w].val[0/4+2];
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r7.xyz = r6.xxx * r2.xyz;
  r8.xyz = r6.yyy * r3.xzw;
  r6.xyz = r6.zzz * r4.xyz;
  r9.xyz = r8.xyz * r0.zzz;
  r9.xyz = r0.yyy * r7.xyz + r9.xyz;
  o0.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r1.yyy;
  r0.yzw = r1.xxx * r7.xyz + r0.yzw;
  o1.xyz = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r0.y = t0[r3.y].val[0/4];
  r0.z = t0[r3.y].val[0/4+1];
  r0.w = t0[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.yzw = cb0[70].xyz + r0.yzw;
  r0.yzw = r1.xyz + r0.yzw;
  r1.x = (int)r0.x * asint(cb2[0].y);
  r1.xy = t1.Load(r1.x).xy;
  r1.z = (int)cb3[9].w;
  r6.xyz = -cb0[70].xyz + r0.yzw;
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r8.x = t0[r5.w].val[0/4];
  r8.y = t0[r5.w].val[0/4+1];
  r8.z = t0[r5.w].val[0/4+2];
  r9.xy = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r10.x = t0[r9.x].val[0/4];
  r10.y = t0[r9.x].val[0/4+1];
  r10.w = t0[r9.x].val[0/4+2];
  r6.w = 1;
  r11.x = r7.x;
  r11.y = r5.x;
  r11.z = r8.x;
  r11.w = r10.x;
  r11.x = dot(r6.xyzw, r11.xyzw);
  r12.x = r7.y;
  r12.y = r5.y;
  r12.z = r8.y;
  r12.w = r10.y;
  r11.y = dot(r6.xyzw, r12.xyzw);
  r10.x = r7.z;
  r10.y = r5.z;
  r10.z = r8.z;
  r11.z = dot(r6.xyzw, r10.xyzw);
  r5.x = t0[r9.y].val[0/4];
  r5.y = t0[r9.y].val[0/4+1];
  r5.z = t0[r9.y].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r7.x = r2.x;
  r7.y = r3.x;
  r7.z = r4.x;
  r7.x = dot(r11.xyz, r7.xyz);
  r8.x = r2.y;
  r8.y = r3.z;
  r8.z = r4.y;
  r7.y = dot(r11.xyz, r8.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r7.z = dot(r11.xyz, r4.xyz);
  r2.xyz = r7.xyz / r1.www;
  r2.w = cmp(2 < (int)r1.z);
  if (r2.w != 0) {
    r2.w = asint(cb2[0].y) + -1;
    r2.w = min(2, (uint)r2.w);
    r0.x = mad(asint(cb2[0].y), (int)r0.x, (int)r2.w);
    r3.xy = t1.Load(r0.x).xy;
    r0.x = cmp((int)r1.z == 5);
    if (r0.x != 0) {
      r4.xyz = float3(0.0625,1,16) * r3.yyy;
      r4.xyz = frac(r4.xyz);
      r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.xyz = r4.xyz * r3.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r7.x = r0.x + r3.y;
      r7.y = r0.x * cb1[3].y + r3.y;
      r2.w = cb1[3].y * r7.x;
      r7.z = 0.5 * r2.w;
      r7.w = r7.x + -r3.x;
      r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
      r7.xyzw = frac(r7.xyzw);
      r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r8.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
      r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r7.xyzw = r8.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r7.xyzw = r7.xyzw + r7.xyzw;
      r8.w = r7.y * r7.z;
      r2.w = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r3.zw = r2.ww ? r8.xy : r8.zw;
      r2.w = -r7.y * r7.z + r3.z;
      r2.w = r3.w * r2.w + r8.w;
      r3.z = r3.z + -r2.w;
      r2.w = r3.w * r3.z + r2.w;
      r2.w = cb1[3].x * r2.w;
      r3.z = 1 + -cb1[0].w;
      r3.w = 1 + -cb1[3].x;
      r3.w = r7.x * r3.w;
      r2.w = r2.w * r3.z + r3.w;
      r3.z = r7.w * cb1[4].x + 1;
      r2.w = r3.z * r2.w;
      r4.xyz = r4.xyz * r2.www;
      r4.xyz = r4.xyz * cb1[2].yyy + r2.xyz;
      r7.x = r0.x * 0.100000001 + r3.y;
      r0.x = cb1[18].x * cb1[7].x;
      r7.y = r0.x * 0.100000001 + r3.y;
      r3.zw = float2(0.5,0.5) + r7.xy;
      r3.zw = frac(r3.zw);
      r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
      r7.xy = abs(r3.zw) * abs(r3.zw);
      r3.zw = -abs(r3.zw) * float2(2,2) + float2(3,3);
      r3.zw = r7.xy * r3.zw + float2(-0.5,-0.5);
      r3.zw = r3.zw + r3.zw;
      r3.zw = r3.zw * r3.zw;
      r0.x = r3.w * r3.z;
      r0.x = -r0.x * cb1[7].x + 1;
      r2.w = cb1[0].w * r7.w;
      r0.x = r2.w * cb1[4].x + r0.x;
      r7.xyz = cb1[5].xyz + -r4.xyz;
      r7.xyz = cb1[6].yyy * r7.xyz;
      r7.xyz = r7.xyz * r0.xxx;
      r4.xyz = r7.xyz * r3.xxx + r4.xyz;
    } else {
      r7.xyz = float3(0.0625,1,16) * r3.yyy;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.xzw = r7.xyz * r3.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r7.x = r0.x + r3.y;
      r7.y = r0.x * cb1[3].y + r3.y;
      r0.x = cb1[3].y * r7.x;
      r7.z = 0.5 * r0.x;
      r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = abs(r7.xyz) * abs(r7.xyz);
      r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
      r7.xyz = r8.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
      r7.xyz = r7.xyz + r7.xyz;
      r8.w = r7.y * r7.z;
      r0.x = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r8.xy = r0.xx ? r8.xy : r8.zw;
      r0.x = -r7.y * r7.z + r8.x;
      r0.x = r8.y * r0.x + r8.w;
      r2.w = r8.x + -r0.x;
      r0.x = r8.y * r2.w + r0.x;
      r0.x = cb1[3].x * r0.x;
      r2.w = 1 + -cb1[0].w;
      r3.y = 1 + -cb1[3].x;
      r3.y = r7.x * r3.y;
      r0.x = r0.x * r2.w + r3.y;
      r3.xyz = r3.xzw * r0.xxx;
      r4.xyz = r3.xyz * cb1[2].yyy + r2.xyz;
    }
  } else {
    r4.xyz = r2.xyz;
  }
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r2.w = 1 / cb1[1].z;
  r2.w = -r2.w * 0.25 + r4.z;
  r2.w = max(0, r2.w);
  r2.w = cb1[1].z * r2.w;
  r3.x = cmp(r2.w != 0.000000);
  r3.y = log2(r2.w);
  r3.y = cb1[1].w * r3.y;
  r3.y = exp2(r3.y);
  r2.w = r3.x ? r3.y : r2.w;
  r3.x = r5.x * 0.00100000005 + cb1[1].x;
  r3.y = cb1[1].x * 0.800000012 + r5.w;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = frac(r3.xy);
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.zw = abs(r3.xy) * abs(r3.xy);
  r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
  r3.xy = r3.zw * r3.xy + float2(-0.5,-0.5);
  r3.xy = r3.xy + r3.xy;
  r3.x = r3.y * r3.y + r3.x;
  r3.y = cmp(cb1[1].z != 0.000000);
  r3.z = cb1[6].x / cb1[1].z;
  r3.y = r3.y ? r3.z : cb1[6].x;
  r3.x = cb1[1].y * r3.x + r3.y;
  r2.w = r3.x * r2.w;
  r3.xy = cb1[0].xy * r2.ww + r4.xy;
  r3.xy = r1.zz ? r3.xy : r4.xy;
  r3.z = r4.z;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r3.xyz = r3.xyz * r0.xxx;
  r3.xyz = r1.zzz ? r3.xyz : r4.xyz;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz * r1.www;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = r6.zxy + -r3.xyz;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r0.x = r3.x * 9.99999975e-005 + 0.200000003;
  r3.xyz = t3.SampleLevel(s0_s, r1.zw, -1).xyz;
  r2.w = cb3[10].z + r3.y;
  r3.w = -r2.w + r0.x;
  r3.x = r3.x + -r3.y;
  r3.xw = max(float2(9.99999975e-005,0), r3.xw);
  r3.x = r3.w / r3.x;
  r3.x = min(1, r3.x);
  r3.y = ceil(r3.x);
  r3.x = 1 + -r3.x;
  r3.x = min(0.200000003, r3.x);
  r3.x = r3.y * r3.x;
  r3.y = 5 * r3.x;
  r0.x = -r3.z + r0.x;
  r3.w = max(0, r0.x);
  r2.w = r2.w + -r3.z;
  r2.w = max(9.99999975e-005, r2.w);
  r2.w = r3.w / r2.w;
  r2.w = min(1, r2.w);
  r3.z = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r3.z * r2.w;
  r2.w = 5 * r2.w;
  r3.zw = t4.SampleLevel(s1_s, r1.zw, -1).xy;
  r3.x = r3.x * 5 + -r2.w;
  r3.x = cmp(9.99999975e-006 < abs(r3.x));
  r4.x = cmp(r3.y >= r2.w);
  r3.w = r4.x ? r3.w : r3.z;
  r3.x = r3.x ? r3.w : r3.z;
  r3.x = cb3[10].w * r3.x;
  r2.w = max(r3.y, r2.w);
  r3.x = r3.x * r2.w;
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r3.y = cb3[6].z + r5.z;
  r3.y = r6.z + -r3.y;
  r0.x = min(r3.y, r0.x);
  r0.x = cb3[11].y * r0.x;
  r0.x = r2.w * r0.x;
  r0.x = r3.x * r0.x;
  r1.zw = t5.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r3.xy = r1.zw * r0.xx;
  r0.x = dot(r3.xy, r3.xy);
  r0.x = sqrt(r0.x);
  r3.z = -1.20000005 * r0.x;
  r2.xyz = r2.xyz * cb3[10].xxx + r3.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o4.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.w = 0;
  o2.xy = r1.xy;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  return;
}