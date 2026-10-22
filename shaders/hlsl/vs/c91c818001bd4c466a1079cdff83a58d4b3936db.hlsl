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
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.yzw = t2.Load(r0.y).xyz;
  r1.x = (int)v1.x * 36;
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r3.x = t0[r1.w].val[0/4];
  r3.y = t0[r1.w].val[0/4+1];
  r3.z = t0[r1.w].val[0/4+2];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r6.xyz = r5.xxx * r1.xyz;
  r5.xyw = r5.yyy * r2.xzw;
  r7.xyz = r5.zzz * r3.xyz;
  r5.xyz = r5.xyw * r0.zzz;
  r5.xyz = r0.yyy * r6.xyz + r5.xyz;
  r0.yzw = r0.www * r7.xyz + r5.xyz;
  r5.x = t0[r2.y].val[0/4];
  r5.y = t0[r2.y].val[0/4+1];
  r5.z = t0[r2.y].val[0/4+2];
  r6.xyz = v0.yyy * r2.xzw;
  r6.xyz = r1.xyz * v0.xxx + r6.xyz;
  r6.xyz = r3.xyz * v0.zzz + r6.xyz;
  r5.xyz = cb0[70].xyz + r5.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r1.w = (int)r0.x * asint(cb2[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb2[0].y) + -1;
  r6.zw = min(uint2(0,0), (uint2)r1.ww);
  r6.zw = mad(asint(cb2[0].yy), (int2)r0.xx, (int2)r6.zw);
  r7.xy = t1.Load(r6.z).xy;
  r0.x = t1.Load(r6.w).y;
  r1.w = (int)cb3[7].y;
  r8.xyz = -cb0[70].xyz + r5.xyz;
  r9.x = t0[r4.y].val[0/4];
  r9.y = t0[r4.y].val[0/4+1];
  r9.z = t0[r4.y].val[0/4+2];
  r4.x = t0[r4.z].val[0/4];
  r4.y = t0[r4.z].val[0/4+1];
  r4.z = t0[r4.z].val[0/4+2];
  r10.x = t0[r4.w].val[0/4];
  r10.y = t0[r4.w].val[0/4+1];
  r10.z = t0[r4.w].val[0/4+2];
  r11.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(9,5,10,11));
  r12.x = t0[r11.x].val[0/4];
  r12.y = t0[r11.x].val[0/4+1];
  r12.w = t0[r11.x].val[0/4+2];
  r8.w = 1;
  r13.x = r9.x;
  r13.y = r4.x;
  r13.z = r10.x;
  r13.w = r12.x;
  r14.x = dot(r8.xyzw, r13.xyzw);
  r15.x = r9.y;
  r15.y = r4.y;
  r15.z = r10.y;
  r15.w = r12.y;
  r14.y = dot(r8.xyzw, r15.xyzw);
  r12.x = r9.z;
  r12.y = r4.z;
  r12.z = r10.z;
  r14.z = dot(r8.xyzw, r12.xyzw);
  r4.x = t0[r11.y].val[0/4];
  r4.y = t0[r11.y].val[0/4+1];
  r4.z = t0[r11.y].val[0/4+2];
  r4.yw = float2(0.00100000005,0.00100000005) * r4.xy;
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = sqrt(r2.y);
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r10.x = dot(r14.xyz, r9.xyz);
  r16.x = r1.y;
  r16.y = r2.z;
  r16.z = r3.y;
  r10.y = dot(r14.xyz, r16.xyz);
  r3.x = r1.z;
  r3.y = r2.w;
  r10.z = dot(r14.xyz, r3.xyz);
  r1.xyz = r10.xyz / r2.yyy;
  r2.x = cmp((int)r1.w == 5);
  r2.z = cmp(r6.x < 0.5);
  r2.z = r2.z ? 0.750000 : 0;
  r2.w = cb1[14].x + r6.y;
  r2.z = r2.w * cb1[14].z + r2.z;
  r2.z = 0.5 + r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 2 + -1;
  r2.w = abs(r2.z) * abs(r2.z);
  r2.z = -abs(r2.z) * 2 + 3;
  r2.z = r2.w * r2.z + -0.5;
  r0.x = r2.z * r0.x;
  r0.x = dot(cb1[14].yy, r0.xx);
  r10.xyz = r0.xxx * r0.yzw + r1.xyz;
  r10.xyz = r2.xxx ? r10.xyz : r1.xyz;
  r2.z = cmp(2 < (int)r1.w);
  if (r2.z != 0) {
    if (r2.x != 0) {
      r14.xyz = float3(0.0625,1,16) * r7.yyy;
      r14.xyz = frac(r14.xyz);
      r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r14.xyz = r14.xyz * r7.xxx;
      r2.w = r4.y + r4.w;
      r2.w = cb1[2].x + r2.w;
      r17.x = r2.w + r7.y;
      r17.y = r2.w * cb1[3].y + r7.y;
      r3.w = cb1[3].y * r17.x;
      r17.z = 0.5 * r3.w;
      r17.w = r17.x + -r7.x;
      r17.xyzw = float4(0.5,0.5,0.5,1.5) + r17.xyzw;
      r17.xyzw = frac(r17.xyzw);
      r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r18.xyzw = abs(r17.xyzw) * abs(r17.xyzw);
      r17.xyzw = -abs(r17.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r17.xyzw = r18.xyzw * r17.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r17.xyzw = r17.xyzw + r17.xyzw;
      r18.w = r17.y * r17.z;
      r3.w = cmp(r18.w < 0);
      r18.y = abs(r18.w);
      r18.xz = float2(-1,1);
      r6.zw = r3.ww ? r18.xy : r18.zw;
      r3.w = -r17.y * r17.z + r6.z;
      r3.w = r6.w * r3.w + r18.w;
      r5.w = r6.z + -r3.w;
      r3.w = r6.w * r5.w + r3.w;
      r3.w = cb1[3].x * r3.w;
      r5.w = 1 + -cb1[0].w;
      r6.z = 1 + -cb1[3].x;
      r6.z = r17.x * r6.z;
      r3.w = r3.w * r5.w + r6.z;
      r5.w = r17.w * cb1[4].x + 1;
      r3.w = r5.w * r3.w;
      r14.xyz = r14.xyz * r3.www;
      r14.xyz = r14.xyz * cb1[2].yyy + r10.xyz;
      r11.x = r2.w * 0.100000001 + r7.y;
      r2.w = cb1[18].x * cb1[7].x;
      r11.y = r2.w * 0.100000001 + r7.y;
      r6.zw = float2(0.5,0.5) + r11.xy;
      r6.zw = frac(r6.zw);
      r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
      r7.zw = abs(r6.zw) * abs(r6.zw);
      r6.zw = -abs(r6.zw) * float2(2,2) + float2(3,3);
      r6.zw = r7.zw * r6.zw + float2(-0.5,-0.5);
      r6.zw = r6.zw + r6.zw;
      r6.zw = r6.zw * r6.zw;
      r2.w = r6.w * r6.z;
      r2.w = -r2.w * cb1[7].x + 1;
      r3.w = cb1[0].w * r17.w;
      r2.w = r3.w * cb1[4].x + r2.w;
      r17.xyz = cb1[5].xyz + -r14.xyz;
      r17.xyz = cb1[6].yyy * r17.xyz;
      r17.xyz = r17.xyz * r2.www;
      r10.xyz = r17.xyz * r7.xxx + r14.xyz;
    } else {
      r14.xyz = float3(0.0625,1,16) * r7.yyy;
      r14.xyz = frac(r14.xyz);
      r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r14.xyz = r14.xyz * r7.xxx;
      r2.w = r4.y + r4.w;
      r2.w = cb1[2].x + r2.w;
      r17.x = r2.w + r7.y;
      r17.y = r2.w * cb1[3].y + r7.y;
      r2.w = cb1[3].y * r17.x;
      r17.z = 0.5 * r2.w;
      r17.xyz = float3(0.5,0.5,0.5) + r17.xyz;
      r17.xyz = frac(r17.xyz);
      r17.xyz = r17.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r18.xyz = abs(r17.xyz) * abs(r17.xyz);
      r17.xyz = -abs(r17.xyz) * float3(2,2,2) + float3(3,3,3);
      r17.xyz = r18.xyz * r17.xyz + float3(-0.5,-0.5,-0.5);
      r17.xyz = r17.xyz + r17.xyz;
      r18.w = r17.y * r17.z;
      r2.w = cmp(r18.w < 0);
      r18.y = abs(r18.w);
      r18.xz = float2(-1,1);
      r6.zw = r2.ww ? r18.xy : r18.zw;
      r2.w = -r17.y * r17.z + r6.z;
      r2.w = r6.w * r2.w + r18.w;
      r3.w = r6.z + -r2.w;
      r2.w = r6.w * r3.w + r2.w;
      r2.w = cb1[3].x * r2.w;
      r3.w = 1 + -cb1[0].w;
      r5.w = 1 + -cb1[3].x;
      r5.w = r17.x * r5.w;
      r2.w = r2.w * r3.w + r5.w;
      r14.xyz = r14.xyz * r2.www;
      r10.xyz = r14.xyz * cb1[2].yyy + r10.xyz;
    }
  }
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r3.w = 1 / cb1[1].z;
  r5.w = -r3.w * 0.25 + r10.z;
  r5.w = max(0, r5.w);
  r5.w = cb1[1].z * r5.w;
  r6.z = cmp(r5.w != 0.000000);
  r6.w = log2(r5.w);
  r6.w = cb1[1].w * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r6.z ? r6.w : r5.w;
  r11.x = r4.x * 0.00100000005 + cb1[1].x;
  r11.y = cb1[1].x * 0.800000012 + r4.w;
  r6.zw = float2(0.5,0.5) + r11.xy;
  r6.zw = frac(r6.zw);
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r7.zw = abs(r6.zw) * abs(r6.zw);
  r6.zw = -abs(r6.zw) * float2(2,2) + float2(3,3);
  r6.zw = r7.zw * r6.zw + float2(-0.5,-0.5);
  r6.zw = r6.zw + r6.zw;
  r4.x = r6.w * r6.w + r6.z;
  r6.z = cmp(cb1[1].z != 0.000000);
  r6.w = cb1[6].x / cb1[1].z;
  r6.z = r6.z ? r6.w : cb1[6].x;
  r4.x = cb1[1].y * r4.x + r6.z;
  r5.w = r4.x * r5.w;
  r6.zw = cb1[0].xy * r5.ww + r10.xy;
  r14.xy = r1.ww ? r6.zw : r10.xy;
  r14.z = r10.z;
  r5.w = dot(r14.xyz, r14.xyz);
  r5.w = rsqrt(r5.w);
  r14.xyz = r14.xyz * r5.www;
  r14.xyz = r14.xyz * r2.www;
  r10.xyz = r1.www ? r14.xyz : r10.xyz;
  r1.xyz = r10.xyz + -r1.xyz;
  r1.xyz = r1.xyz * r2.yyy;
  r10.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r10.xyz = floor(r10.xyz);
  r10.xyz = r10.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r8.xyw = -r10.xyz + r8.zxy;
  r6.zw = float2(9.99999975e-005,9.99999975e-005) * r8.yw;
  r2.w = r8.x * 9.99999975e-005 + 0.200000003;
  r8.xyw = t3.SampleLevel(s0_s, r6.zw, -1).xyz;
  r5.w = cb3[8].x + r8.y;
  r7.z = -r5.w + r2.w;
  r7.w = r8.x + -r8.y;
  r7.zw = max(float2(0,9.99999975e-005), r7.zw);
  r7.z = r7.z / r7.w;
  r7.z = min(1, r7.z);
  r7.w = ceil(r7.z);
  r7.z = 1 + -r7.z;
  r7.z = min(0.200000003, r7.z);
  r7.z = r7.w * r7.z;
  r7.w = 5 * r7.z;
  r2.w = -r8.w + r2.w;
  r8.x = max(0, r2.w);
  r5.w = r5.w + -r8.w;
  r5.w = max(9.99999975e-005, r5.w);
  r5.w = r8.x / r5.w;
  r5.w = min(1, r5.w);
  r8.x = ceil(r5.w);
  r5.w = 1 + -r5.w;
  r5.w = min(0.200000003, r5.w);
  r5.w = r8.x * r5.w;
  r5.w = 5 * r5.w;
  r8.xy = t4.SampleLevel(s1_s, r6.zw, -1).xy;
  r7.z = r7.z * 5 + -r5.w;
  r7.z = cmp(9.99999975e-006 < abs(r7.z));
  r8.w = cmp(r7.w >= r5.w);
  r8.y = r8.w ? r8.y : r8.x;
  r7.z = r7.z ? r8.y : r8.x;
  r7.z = cb3[8].y * r7.z;
  r5.w = max(r7.w, r5.w);
  r7.z = r7.z * r5.w;
  r2.w = 10000 * r2.w;
  r2.w = max(0, r2.w);
  r4.z = cb3[4].z + r4.z;
  r7.w = r8.z + -r4.z;
  r2.w = min(r7.w, r2.w);
  r2.w = cb3[8].w * r2.w;
  r2.w = r5.w * r2.w;
  r2.w = r7.z * r2.w;
  r6.zw = t5.SampleLevel(s2_s, r6.zw, -1).xy;
  r6.zw = float2(-1,-1) + r6.zw;
  r8.xy = r6.zw * r2.ww;
  r2.w = dot(r8.xy, r8.xy);
  r2.w = sqrt(r2.w);
  r8.z = -1.20000005 * r2.w;
  r1.xyz = r1.xyz * cb3[7].zzz + r8.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r5.x = t0[r11.z].val[0/4];
  r5.y = t0[r11.z].val[0/4+1];
  r5.z = t0[r11.z].val[0/4+2];
  r8.x = t0[r11.w].val[0/4];
  r8.y = t0[r11.w].val[0/4+1];
  r8.z = t0[r11.w].val[0/4+2];
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r10.x = t0[r6.z].val[0/4];
  r10.y = t0[r6.z].val[0/4+1];
  r10.z = t0[r6.z].val[0/4+2];
  r11.x = t0[r6.w].val[0/4];
  r11.y = t0[r6.w].val[0/4+1];
  r11.z = t0[r6.w].val[0/4+2];
  r11.xyw = cb0[113].xyz + r11.xyz;
  r14.x = r5.x;
  r14.y = r8.x;
  r14.z = r10.x;
  r14.w = r11.x;
  r14.x = dot(v0.xyzw, r14.xyzw);
  r17.x = r5.y;
  r17.y = r8.y;
  r17.z = r10.y;
  r17.w = r11.y;
  r14.y = dot(v0.xyzw, r17.xyzw);
  r11.x = r5.z;
  r11.y = r8.z;
  r11.z = r10.z;
  r14.z = dot(v0.xyzw, r11.xyzw);
  r5.xyz = -cb0[70].xyz + r14.xyz;
  r5.w = 1;
  r8.x = dot(r5.xyzw, r13.xyzw);
  r8.y = dot(r5.xyzw, r15.xyzw);
  r8.z = dot(r5.xyzw, r12.xyzw);
  r5.x = dot(r8.xyz, r9.xyz);
  r5.y = dot(r8.xyz, r16.xyz);
  r5.z = dot(r8.xyz, r3.xyz);
  r3.xyz = r5.xyz / r2.yyy;
  r0.xyz = r0.xxx * r0.yzw + r3.xyz;
  r0.xyz = r2.xxx ? r0.xyz : r3.xyz;
  if (r2.z != 0) {
    if (r2.x != 0) {
      r2.xzw = float3(0.0625,1,16) * r7.yyy;
      r2.xzw = frac(r2.xzw);
      r2.xzw = r2.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r2.xzw = r2.xzw * r7.xxx;
      r0.w = r4.y + r4.w;
      r0.w = cb1[2].x + r0.w;
      r5.x = r0.w + r7.y;
      r5.y = r0.w * cb1[3].y + r7.y;
      r6.z = cb1[3].y * r5.x;
      r5.z = 0.5 * r6.z;
      r5.w = r5.x + -r7.x;
      r5.xyzw = float4(0.5,0.5,0.5,1.5) + r5.xyzw;
      r5.xyzw = frac(r5.xyzw);
      r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r8.xyzw = abs(r5.xyzw) * abs(r5.xyzw);
      r5.xyzw = -abs(r5.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r5.xyzw = r8.xyzw * r5.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r5.xyzw = r5.xyzw + r5.xyzw;
      r8.w = r5.y * r5.z;
      r6.z = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r6.zw = r6.zz ? r8.xy : r8.zw;
      r5.y = -r5.y * r5.z + r6.z;
      r5.y = r6.w * r5.y + r8.w;
      r5.z = r6.z + -r5.y;
      r5.y = r6.w * r5.z + r5.y;
      r5.y = cb1[3].x * r5.y;
      r5.z = 1 + -cb1[0].w;
      r6.z = 1 + -cb1[3].x;
      r5.x = r6.z * r5.x;
      r5.x = r5.y * r5.z + r5.x;
      r5.y = r5.w * cb1[4].x + 1;
      r5.x = r5.x * r5.y;
      r2.xzw = r5.xxx * r2.xzw;
      r2.xzw = r2.xzw * cb1[2].yyy + r0.xyz;
      r5.x = r0.w * 0.100000001 + r7.y;
      r0.w = cb1[18].x * cb1[7].x;
      r5.y = r0.w * 0.100000001 + r7.y;
      r5.xy = float2(0.5,0.5) + r5.xy;
      r5.xy = frac(r5.xy);
      r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
      r6.zw = abs(r5.xy) * abs(r5.xy);
      r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
      r5.xy = r6.zw * r5.xy + float2(-0.5,-0.5);
      r5.xy = r5.xy + r5.xy;
      r5.xy = r5.xy * r5.xy;
      r0.w = r5.y * r5.x;
      r0.w = -r0.w * cb1[7].x + 1;
      r5.x = cb1[0].w * r5.w;
      r0.w = r5.x * cb1[4].x + r0.w;
      r5.xyz = cb1[5].xyz + -r2.xzw;
      r5.xyz = cb1[6].yyy * r5.xyz;
      r5.xyz = r5.xyz * r0.www;
      r0.xyz = r5.xyz * r7.xxx + r2.xzw;
    } else {
      r2.xzw = float3(0.0625,1,16) * r7.yyy;
      r2.xzw = frac(r2.xzw);
      r2.xzw = r2.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r2.xzw = r2.xzw * r7.xxx;
      r0.w = r4.y + r4.w;
      r0.w = cb1[2].x + r0.w;
      r5.x = r0.w + r7.y;
      r5.y = r0.w * cb1[3].y + r7.y;
      r0.w = cb1[3].y * r5.x;
      r5.z = 0.5 * r0.w;
      r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
      r5.xyz = frac(r5.xyz);
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r7.xyz = abs(r5.xyz) * abs(r5.xyz);
      r5.xyz = -abs(r5.xyz) * float3(2,2,2) + float3(3,3,3);
      r5.xyz = r7.xyz * r5.xyz + float3(-0.5,-0.5,-0.5);
      r5.xyz = r5.xyz + r5.xyz;
      r7.w = r5.y * r5.z;
      r0.w = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r4.yw = r0.ww ? r7.xy : r7.zw;
      r0.w = -r5.y * r5.z + r4.y;
      r0.w = r4.w * r0.w + r7.w;
      r4.y = r4.y + -r0.w;
      r0.w = r4.w * r4.y + r0.w;
      r0.w = cb1[3].x * r0.w;
      r4.y = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r5.x * r4.w;
      r0.w = r0.w * r4.y + r4.w;
      r2.xzw = r2.xzw * r0.www;
      r0.xyz = r2.xzw * cb1[2].yyy + r0.xyz;
    }
  }
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r2.x = -r3.w * 0.25 + r0.z;
  r2.x = max(0, r2.x);
  r2.x = cb1[1].z * r2.x;
  r2.z = cmp(r2.x != 0.000000);
  r2.w = log2(r2.x);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r2.x = r2.z ? r2.w : r2.x;
  r2.x = r4.x * r2.x;
  r2.xz = cb1[0].xy * r2.xx + r0.xy;
  r5.xy = r1.ww ? r2.xz : r0.xy;
  r5.z = r0.z;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xzw = r5.xyz * r2.xxx;
  r2.xzw = r2.xzw * r0.www;
  r0.xyz = r1.www ? r2.xzw : r0.xyz;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = r0.xyz * r2.yyy;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = -cb0[113].zxy + r14.zxy;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
  r0.w = r2.x * 9.99999975e-005 + 0.200000003;
  r3.yzw = t3.SampleLevel(s0_s, r2.yz, -1).xyz;
  r1.w = cb3[8].x + r3.z;
  r2.x = -r1.w + r0.w;
  r2.w = r3.y + -r3.z;
  r2.xw = max(float2(0,9.99999975e-005), r2.xw);
  r2.x = r2.x / r2.w;
  r2.x = min(1, r2.x);
  r2.w = ceil(r2.x);
  r2.x = 1 + -r2.x;
  r2.x = min(0.200000003, r2.x);
  r2.x = r2.w * r2.x;
  r2.w = 5 * r2.x;
  r0.w = -r3.w + r0.w;
  r3.y = max(0, r0.w);
  r1.w = r1.w + -r3.w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = r3.y / r1.w;
  r1.w = min(1, r1.w);
  r3.y = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r3.y * r1.w;
  r1.w = 5 * r1.w;
  r3.yz = t4.SampleLevel(s1_s, r2.yz, -1).xy;
  r2.x = r2.x * 5 + -r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r3.w = cmp(r2.w >= r1.w);
  r3.z = r3.w ? r3.z : r3.y;
  r2.x = r2.x ? r3.z : r3.y;
  r2.x = cb3[8].y * r2.x;
  r1.w = max(r2.w, r1.w);
  r2.x = r2.x * r1.w;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.w = r3.x + -r4.z;
  r0.w = min(r2.w, r0.w);
  r0.w = cb3[8].w * r0.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.x * r0.w;
  r2.xy = t5.SampleLevel(s2_s, r2.yz, -1).xy;
  r2.xy = float2(-1,-1) + r2.xy;
  r2.xy = r2.xy * r0.ww;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r2.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[7].zzz + r2.xyz;
  r0.xyz = r14.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyzw = cb0[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb0[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb0[2].xyzw + r0.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.xy = r6.xy;
  o3.zw = float2(0,0);
  return;
}