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
  float4 cb3[9];
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
  float4 cb0[136];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  o3.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r1.yyy;
  r0.yzw = r1.xxx * r7.xyz + r0.yzw;
  r0.yzw = r1.zzz * r6.xyz + r0.yzw;
  o4.w = r6.w * r1.w;
  r1.x = t0[r3.y].val[0/4];
  r1.y = t0[r3.y].val[0/4+1];
  r1.z = t0[r3.y].val[0/4+2];
  r6.xyz = v0.yyy * r3.xzw;
  r6.xyz = r2.xyz * v0.xxx + r6.xyz;
  r6.xyz = r4.xyz * v0.zzz + r6.xyz;
  r1.xyz = cb0[70].xyz + r1.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r1.w = (int)r0.x * asint(cb2[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb2[0].y) + -1;
  r6.zw = min(uint2(0,0), (uint2)r1.ww);
  r6.zw = mad(asint(cb2[0].yy), (int2)r0.xx, (int2)r6.zw);
  r7.xy = t1.Load(r6.z).xy;
  r0.x = t1.Load(r6.w).y;
  r1.w = (int)cb3[7].y;
  r8.xyz = -cb0[70].xyz + r1.xyz;
  r9.x = t0[r5.y].val[0/4];
  r9.y = t0[r5.y].val[0/4+1];
  r9.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r10.x = t0[r5.w].val[0/4];
  r10.y = t0[r5.w].val[0/4+1];
  r10.z = t0[r5.w].val[0/4+2];
  r11.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(9,5,10,11));
  r12.x = t0[r11.x].val[0/4];
  r12.y = t0[r11.x].val[0/4+1];
  r12.w = t0[r11.x].val[0/4+2];
  r8.w = 1;
  r13.x = r9.x;
  r13.y = r5.x;
  r13.z = r10.x;
  r13.w = r12.x;
  r14.x = dot(r8.xyzw, r13.xyzw);
  r15.x = r9.y;
  r15.y = r5.y;
  r15.z = r10.y;
  r15.w = r12.y;
  r14.y = dot(r8.xyzw, r15.xyzw);
  r12.x = r9.z;
  r12.y = r5.z;
  r12.z = r10.z;
  r14.z = dot(r8.xyzw, r12.xyzw);
  r5.x = t0[r11.y].val[0/4];
  r5.y = t0[r11.y].val[0/4+1];
  r5.z = t0[r11.y].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r9.x = r2.x;
  r9.y = r3.x;
  r9.z = r4.x;
  r10.x = dot(r14.xyz, r9.xyz);
  r16.x = r2.y;
  r16.y = r3.z;
  r16.z = r4.y;
  r10.y = dot(r14.xyz, r16.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r10.z = dot(r14.xyz, r4.xyz);
  r2.xyz = r10.xyz / r2.www;
  r3.x = cmp((int)r1.w == 5);
  r3.y = cmp(r6.x < 0.5);
  r3.y = r3.y ? 0.750000 : 0;
  r3.z = cb1[14].x + r6.y;
  r3.y = r3.z * cb1[14].z + r3.y;
  r3.y = 0.5 + r3.y;
  r3.y = frac(r3.y);
  r3.y = r3.y * 2 + -1;
  r3.z = abs(r3.y) * abs(r3.y);
  r3.y = -abs(r3.y) * 2 + 3;
  r3.y = r3.z * r3.y + -0.5;
  r0.x = r3.y * r0.x;
  r0.x = dot(cb1[14].yy, r0.xx);
  r3.yzw = r0.xxx * r0.yzw + r2.xyz;
  r3.yzw = r3.xxx ? r3.yzw : r2.xyz;
  r4.w = cmp(2 < (int)r1.w);
  if (r4.w != 0) {
    if (r3.x != 0) {
      r10.xyz = float3(0.0625,1,16) * r7.yyy;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r7.xxx;
      r6.z = r5.y + r5.w;
      r6.z = cb1[2].x + r6.z;
      r14.x = r6.z + r7.y;
      r14.y = r6.z * cb1[3].y + r7.y;
      r6.w = cb1[3].y * r14.x;
      r14.z = 0.5 * r6.w;
      r14.w = r14.x + -r7.x;
      r14.xyzw = float4(0.5,0.5,0.5,1.5) + r14.xyzw;
      r14.xyzw = frac(r14.xyzw);
      r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r17.xyzw = abs(r14.xyzw) * abs(r14.xyzw);
      r14.xyzw = -abs(r14.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r14.xyzw = r17.xyzw * r14.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r14.xyzw = r14.xyzw + r14.xyzw;
      r17.w = r14.y * r14.z;
      r6.w = cmp(r17.w < 0);
      r17.y = abs(r17.w);
      r17.xz = float2(-1,1);
      r7.zw = r6.ww ? r17.xy : r17.zw;
      r6.w = -r14.y * r14.z + r7.z;
      r6.w = r7.w * r6.w + r17.w;
      r7.z = r7.z + -r6.w;
      r6.w = r7.w * r7.z + r6.w;
      r6.w = cb1[3].x * r6.w;
      r7.z = 1 + -cb1[0].w;
      r7.w = 1 + -cb1[3].x;
      r7.w = r14.x * r7.w;
      r6.w = r6.w * r7.z + r7.w;
      r7.z = r14.w * cb1[4].x + 1;
      r6.w = r7.z * r6.w;
      r10.xyz = r10.xyz * r6.www;
      r10.xyz = r10.xyz * cb1[2].yyy + r3.yzw;
      r11.x = r6.z * 0.100000001 + r7.y;
      r6.z = cb1[18].x * cb1[7].x;
      r11.y = r6.z * 0.100000001 + r7.y;
      r6.zw = float2(0.5,0.5) + r11.xy;
      r6.zw = frac(r6.zw);
      r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
      r7.zw = abs(r6.zw) * abs(r6.zw);
      r6.zw = -abs(r6.zw) * float2(2,2) + float2(3,3);
      r6.zw = r7.zw * r6.zw + float2(-0.5,-0.5);
      r6.zw = r6.zw + r6.zw;
      r6.zw = r6.zw * r6.zw;
      r6.z = r6.w * r6.z;
      r6.z = -r6.z * cb1[7].x + 1;
      r6.w = cb1[0].w * r14.w;
      r6.z = r6.w * cb1[4].x + r6.z;
      r14.xyz = cb1[5].xyz + -r10.xyz;
      r14.xyz = cb1[6].yyy * r14.xyz;
      r14.xyz = r14.xyz * r6.zzz;
      r3.yzw = r14.xyz * r7.xxx + r10.xyz;
    } else {
      r10.xyz = float3(0.0625,1,16) * r7.yyy;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r7.xxx;
      r6.z = r5.y + r5.w;
      r6.z = cb1[2].x + r6.z;
      r14.x = r6.z + r7.y;
      r14.y = r6.z * cb1[3].y + r7.y;
      r6.z = cb1[3].y * r14.x;
      r14.z = 0.5 * r6.z;
      r14.xyz = float3(0.5,0.5,0.5) + r14.xyz;
      r14.xyz = frac(r14.xyz);
      r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r17.xyz = abs(r14.xyz) * abs(r14.xyz);
      r14.xyz = -abs(r14.xyz) * float3(2,2,2) + float3(3,3,3);
      r14.xyz = r17.xyz * r14.xyz + float3(-0.5,-0.5,-0.5);
      r14.xyz = r14.xyz + r14.xyz;
      r17.w = r14.y * r14.z;
      r6.z = cmp(r17.w < 0);
      r17.y = abs(r17.w);
      r17.xz = float2(-1,1);
      r6.zw = r6.zz ? r17.xy : r17.zw;
      r7.z = -r14.y * r14.z + r6.z;
      r7.z = r6.w * r7.z + r17.w;
      r6.z = -r7.z + r6.z;
      r6.z = r6.w * r6.z + r7.z;
      r6.z = cb1[3].x * r6.z;
      r6.w = 1 + -cb1[0].w;
      r7.z = 1 + -cb1[3].x;
      r7.z = r14.x * r7.z;
      r6.z = r6.z * r6.w + r7.z;
      r10.xyz = r10.xyz * r6.zzz;
      r3.yzw = r10.xyz * cb1[2].yyy + r3.yzw;
    }
  }
  r6.z = dot(r3.yzw, r3.yzw);
  r6.z = sqrt(r6.z);
  r6.w = 1 / cb1[1].z;
  r7.z = -r6.w * 0.25 + r3.w;
  r7.z = max(0, r7.z);
  r7.z = cb1[1].z * r7.z;
  r7.w = cmp(r7.z != 0.000000);
  r8.w = log2(r7.z);
  r8.w = cb1[1].w * r8.w;
  r8.w = exp2(r8.w);
  r7.z = r7.w ? r8.w : r7.z;
  r10.x = r5.x * 0.00100000005 + cb1[1].x;
  r10.y = cb1[1].x * 0.800000012 + r5.w;
  r10.xy = float2(0.5,0.5) + r10.xy;
  r10.xy = frac(r10.xy);
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r10.zw = abs(r10.xy) * abs(r10.xy);
  r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
  r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
  r10.xy = r10.xy + r10.xy;
  r5.x = r10.y * r10.y + r10.x;
  r7.w = cmp(cb1[1].z != 0.000000);
  r8.w = cb1[6].x / cb1[1].z;
  r7.w = r7.w ? r8.w : cb1[6].x;
  r5.x = cb1[1].y * r5.x + r7.w;
  r7.z = r5.x * r7.z;
  r7.zw = cb1[0].xy * r7.zz + r3.yz;
  r10.xy = r1.ww ? r7.zw : r3.yz;
  r10.z = r3.w;
  r7.z = dot(r10.xyz, r10.xyz);
  r7.z = rsqrt(r7.z);
  r10.xyz = r10.xyz * r7.zzz;
  r10.xyz = r10.xyz * r6.zzz;
  r3.yzw = r1.www ? r10.xyz : r3.yzw;
  r2.xyz = r3.yzw + -r2.xyz;
  r2.xyz = r2.xyz * r2.www;
  r3.yzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r3.yzw = floor(r3.yzw);
  r3.yzw = r3.yzw * float3(500,500,500) + float3(250,-4750,-4750);
  r3.yzw = r8.zxy + -r3.yzw;
  r3.zw = float2(9.99999975e-005,9.99999975e-005) * r3.zw;
  r3.y = r3.y * 9.99999975e-005 + 0.200000003;
  r8.xyw = t3.SampleLevel(s0_s, r3.zw, -1).xyz;
  r6.z = cb3[8].x + r8.y;
  r7.z = -r6.z + r3.y;
  r7.w = r8.x + -r8.y;
  r7.zw = max(float2(0,9.99999975e-005), r7.zw);
  r7.z = r7.z / r7.w;
  r7.z = min(1, r7.z);
  r7.w = ceil(r7.z);
  r7.z = 1 + -r7.z;
  r7.z = min(0.200000003, r7.z);
  r7.z = r7.w * r7.z;
  r7.w = 5 * r7.z;
  r3.y = -r8.w + r3.y;
  r8.x = max(0, r3.y);
  r6.z = r6.z + -r8.w;
  r6.z = max(9.99999975e-005, r6.z);
  r6.z = r8.x / r6.z;
  r6.z = min(1, r6.z);
  r8.x = ceil(r6.z);
  r6.z = 1 + -r6.z;
  r6.z = min(0.200000003, r6.z);
  r6.z = r8.x * r6.z;
  r6.z = 5 * r6.z;
  r8.xy = t4.SampleLevel(s1_s, r3.zw, -1).xy;
  r7.z = r7.z * 5 + -r6.z;
  r7.z = cmp(9.99999975e-006 < abs(r7.z));
  r8.w = cmp(r7.w >= r6.z);
  r8.y = r8.w ? r8.y : r8.x;
  r7.z = r7.z ? r8.y : r8.x;
  r7.z = cb3[8].y * r7.z;
  r6.z = max(r7.w, r6.z);
  r7.z = r7.z * r6.z;
  r3.y = 10000 * r3.y;
  r3.y = max(0, r3.y);
  r5.z = cb3[4].z + r5.z;
  r7.w = r8.z + -r5.z;
  r3.y = min(r7.w, r3.y);
  r3.y = cb3[8].w * r3.y;
  r3.y = r6.z * r3.y;
  r3.y = r7.z * r3.y;
  r3.zw = t5.SampleLevel(s2_s, r3.zw, -1).xy;
  r3.zw = float2(-1,-1) + r3.zw;
  r8.xy = r3.yy * r3.zw;
  r3.y = dot(r8.xy, r8.xy);
  r3.y = sqrt(r3.y);
  r8.z = -1.20000005 * r3.y;
  r2.xyz = r2.xyz * cb3[7].zzz + r8.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.x = t0[r11.z].val[0/4];
  r2.y = t0[r11.z].val[0/4+1];
  r2.z = t0[r11.z].val[0/4+2];
  r3.y = t0[r11.w].val[0/4];
  r3.z = t0[r11.w].val[0/4+1];
  r3.w = t0[r11.w].val[0/4+2];
  r7.zw = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r8.x = t0[r7.z].val[0/4];
  r8.y = t0[r7.z].val[0/4+1];
  r8.z = t0[r7.z].val[0/4+2];
  r10.x = t0[r7.w].val[0/4];
  r10.y = t0[r7.w].val[0/4+1];
  r10.z = t0[r7.w].val[0/4+2];
  r10.xyw = cb0[113].xyz + r10.xyz;
  r11.x = r2.x;
  r11.y = r3.y;
  r11.z = r8.x;
  r11.w = r10.x;
  r11.x = dot(v0.xyzw, r11.xyzw);
  r14.x = r2.y;
  r14.y = r3.z;
  r14.z = r8.y;
  r14.w = r10.y;
  r11.y = dot(v0.xyzw, r14.xyzw);
  r10.x = r2.z;
  r10.y = r3.w;
  r10.z = r8.z;
  r11.z = dot(v0.xyzw, r10.xyzw);
  r8.xyz = -cb0[70].xyz + r11.xyz;
  r8.w = 1;
  r2.x = dot(r8.xyzw, r13.xyzw);
  r2.y = dot(r8.xyzw, r15.xyzw);
  r2.z = dot(r8.xyzw, r12.xyzw);
  r8.x = dot(r2.xyz, r9.xyz);
  r8.y = dot(r2.xyz, r16.xyz);
  r8.z = dot(r2.xyz, r4.xyz);
  r2.xyz = r8.xyz / r2.www;
  r3.yzw = r0.xxx * r0.yzw + r2.xyz;
  r3.yzw = r3.xxx ? r3.yzw : r2.xyz;
  if (r4.w != 0) {
    if (r3.x != 0) {
      r4.xyz = float3(0.0625,1,16) * r7.yyy;
      r4.xyz = frac(r4.xyz);
      r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.xyz = r4.xyz * r7.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r7.y;
      r8.y = r0.x * cb1[3].y + r7.y;
      r3.x = cb1[3].y * r8.x;
      r8.z = 0.5 * r3.x;
      r8.w = r8.x + -r7.x;
      r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
      r8.xyzw = frac(r8.xyzw);
      r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r9.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
      r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r8.xyzw = r9.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r8.xyzw = r8.xyzw + r8.xyzw;
      r9.w = r8.y * r8.z;
      r3.x = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r7.zw = r3.xx ? r9.xy : r9.zw;
      r3.x = -r8.y * r8.z + r7.z;
      r3.x = r7.w * r3.x + r9.w;
      r4.w = r7.z + -r3.x;
      r3.x = r7.w * r4.w + r3.x;
      r3.x = cb1[3].x * r3.x;
      r4.w = 1 + -cb1[0].w;
      r6.z = 1 + -cb1[3].x;
      r6.z = r8.x * r6.z;
      r3.x = r3.x * r4.w + r6.z;
      r4.w = r8.w * cb1[4].x + 1;
      r3.x = r4.w * r3.x;
      r4.xyz = r4.xyz * r3.xxx;
      r4.xyz = r4.xyz * cb1[2].yyy + r3.yzw;
      r8.x = r0.x * 0.100000001 + r7.y;
      r0.x = cb1[18].x * cb1[7].x;
      r8.y = r0.x * 0.100000001 + r7.y;
      r7.zw = float2(0.5,0.5) + r8.xy;
      r7.zw = frac(r7.zw);
      r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
      r8.xy = abs(r7.zw) * abs(r7.zw);
      r7.zw = -abs(r7.zw) * float2(2,2) + float2(3,3);
      r7.zw = r8.xy * r7.zw + float2(-0.5,-0.5);
      r7.zw = r7.zw + r7.zw;
      r7.zw = r7.zw * r7.zw;
      r0.x = r7.w * r7.z;
      r0.x = -r0.x * cb1[7].x + 1;
      r3.x = cb1[0].w * r8.w;
      r0.x = r3.x * cb1[4].x + r0.x;
      r8.xyz = cb1[5].xyz + -r4.xyz;
      r8.xyz = cb1[6].yyy * r8.xyz;
      r8.xyz = r8.xyz * r0.xxx;
      r3.yzw = r8.xyz * r7.xxx + r4.xyz;
    } else {
      r4.xyz = float3(0.0625,1,16) * r7.yyy;
      r4.xyz = frac(r4.xyz);
      r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.xyz = r4.xyz * r7.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r7.y;
      r8.y = r0.x * cb1[3].y + r7.y;
      r0.x = cb1[3].y * r8.x;
      r8.z = 0.5 * r0.x;
      r7.xyz = float3(0.5,0.5,0.5) + r8.xyz;
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
      r5.yw = r0.xx ? r8.xy : r8.zw;
      r0.x = -r7.y * r7.z + r5.y;
      r0.x = r5.w * r0.x + r8.w;
      r3.x = r5.y + -r0.x;
      r0.x = r5.w * r3.x + r0.x;
      r0.x = cb1[3].x * r0.x;
      r3.x = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r7.x * r4.w;
      r0.x = r0.x * r3.x + r4.w;
      r4.xyz = r4.xyz * r0.xxx;
      r3.yzw = r4.xyz * cb1[2].yyy + r3.yzw;
    }
  }
  r0.x = dot(r3.yzw, r3.yzw);
  r0.x = sqrt(r0.x);
  r3.x = -r6.w * 0.25 + r3.w;
  r3.x = max(0, r3.x);
  r3.x = cb1[1].z * r3.x;
  r4.x = cmp(r3.x != 0.000000);
  r4.y = log2(r3.x);
  r4.y = cb1[1].w * r4.y;
  r4.y = exp2(r4.y);
  r3.x = r4.x ? r4.y : r3.x;
  r3.x = r5.x * r3.x;
  r4.xy = cb1[0].xy * r3.xx + r3.yz;
  r4.xy = r1.ww ? r4.xy : r3.yz;
  r4.z = r3.w;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = rsqrt(r3.x);
  r4.xyz = r4.xyz * r3.xxx;
  r4.xyz = r4.xyz * r0.xxx;
  r3.xyz = r1.www ? r4.xyz : r3.yzw;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz * r2.www;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r4.xyz = -cb0[113].zxy + r11.zxy;
  r3.xyz = r4.xyz + -r3.xyz;
  r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r0.x = r3.x * 9.99999975e-005 + 0.200000003;
  r4.yzw = t3.SampleLevel(s0_s, r3.yz, -1).xyz;
  r1.w = cb3[8].x + r4.z;
  r2.w = -r1.w + r0.x;
  r2.w = max(0, r2.w);
  r3.x = r4.y + -r4.z;
  r3.x = max(9.99999975e-005, r3.x);
  r2.w = r2.w / r3.x;
  r2.w = min(1, r2.w);
  r3.x = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r3.x * r2.w;
  r3.x = 5 * r2.w;
  r0.x = -r4.w + r0.x;
  r3.w = max(0, r0.x);
  r1.w = r1.w + -r4.w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r3.w * r1.w;
  r1.w = 5 * r1.w;
  r4.yz = t4.SampleLevel(s1_s, r3.yz, -1).xy;
  r2.w = r2.w * 5 + -r1.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.w = cmp(r3.x >= r1.w);
  r3.w = r3.w ? r4.z : r4.y;
  r2.w = r2.w ? r3.w : r4.y;
  r2.w = cb3[8].y * r2.w;
  r1.w = max(r3.x, r1.w);
  r2.w = r2.w * r1.w;
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r3.x = r4.x + -r5.z;
  r0.x = min(r3.x, r0.x);
  r0.x = cb3[8].w * r0.x;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r3.xy = t5.SampleLevel(s2_s, r3.yz, -1).xy;
  r3.xy = float2(-1,-1) + r3.xy;
  r3.xy = r3.xy * r0.xx;
  r0.x = dot(r3.xy, r3.xy);
  r0.x = sqrt(r0.x);
  r3.z = -1.20000005 * r0.x;
  r2.xyz = r2.xyz * cb3[7].zzz + r3.xyz;
  r2.xyz = r11.xyz + r2.xyz;
  r3.xyzw = cb0[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[93].xyzw + r3.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb0[135].x));
  r2.x = 0.00100000005 * r1.w;
  r0.x = r0.x ? r2.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.w = 0;
  o4.xyz = r0.yzw;
  o5.xy = r6.xy;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}