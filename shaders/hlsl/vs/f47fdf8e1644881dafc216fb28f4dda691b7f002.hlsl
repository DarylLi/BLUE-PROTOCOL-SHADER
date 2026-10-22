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
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r4.xyz = v0.yyy * r1.xzw;
  r4.xyz = r0.xyz * v0.xxx + r4.xyz;
  r4.xyz = r2.xyz * v0.zzz + r4.xyz;
  r3.xyz = cb0[70].xyz + r3.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.w = asint(cb2[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.y = (int)v2.x + asint(cb2[0].w);
  r0.w = mad(asint(cb2[0].y), (int)r1.y, (int)r0.w);
  r4.xy = t1.Load(r0.w).xy;
  r0.w = (int)cb3[10].x;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r8.x = t0[r6.y].val[0/4];
  r8.y = t0[r6.y].val[0/4+1];
  r8.z = t0[r6.y].val[0/4+2];
  r6.x = t0[r6.z].val[0/4];
  r6.y = t0[r6.z].val[0/4+1];
  r6.z = t0[r6.z].val[0/4+2];
  r9.x = t0[r6.w].val[0/4];
  r9.y = t0[r6.w].val[0/4+1];
  r9.w = t0[r6.w].val[0/4+2];
  r5.w = 1;
  r10.x = r7.x;
  r10.y = r8.x;
  r10.z = r6.x;
  r10.w = r9.x;
  r11.x = dot(r5.xyzw, r10.xyzw);
  r12.x = r7.y;
  r12.y = r8.y;
  r12.z = r6.y;
  r12.w = r9.y;
  r11.y = dot(r5.xyzw, r12.xyzw);
  r9.x = r7.z;
  r9.y = r8.z;
  r9.z = r6.z;
  r11.z = dot(r5.xyzw, r9.xyzw);
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r4.zw = float2(0.00100000005,0.00100000005) * r7.xy;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = sqrt(r1.y);
  r8.x = r0.x;
  r8.y = r1.x;
  r8.z = r2.x;
  r13.x = dot(r11.xyz, r8.xyz);
  r14.x = r0.y;
  r14.y = r1.z;
  r14.z = r2.y;
  r13.y = dot(r11.xyz, r14.xyz);
  r2.x = r0.z;
  r2.y = r1.w;
  r13.z = dot(r11.xyz, r2.xyz);
  r0.xyz = r13.xyz / r1.yyy;
  r1.x = cmp(2 < (int)r0.w);
  if (r1.x != 0) {
    r1.z = cmp((int)r0.w == 5);
    if (r1.z != 0) {
      r11.xyz = float3(0.0625,1,16) * r4.yyy;
      r11.xyz = frac(r11.xyz);
      r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r11.xyz = r11.xyz * r4.xxx;
      r1.z = r4.z + r4.w;
      r1.z = cb1[2].x + r1.z;
      r13.x = r1.z + r4.y;
      r13.y = r1.z * cb1[3].y + r4.y;
      r1.w = cb1[3].y * r13.x;
      r13.z = 0.5 * r1.w;
      r13.w = r13.x + -r4.x;
      r13.xyzw = float4(0.5,0.5,0.5,1.5) + r13.xyzw;
      r13.xyzw = frac(r13.xyzw);
      r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r15.xyzw = abs(r13.xyzw) * abs(r13.xyzw);
      r13.xyzw = -abs(r13.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r13.xyzw = r15.xyzw * r13.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r13.xyzw = r13.xyzw + r13.xyzw;
      r15.w = r13.y * r13.z;
      r1.w = cmp(r15.w < 0);
      r15.y = abs(r15.w);
      r15.xz = float2(-1,1);
      r7.yw = r1.ww ? r15.xy : r15.zw;
      r1.w = -r13.y * r13.z + r7.y;
      r1.w = r7.w * r1.w + r15.w;
      r2.w = r7.y + -r1.w;
      r1.w = r7.w * r2.w + r1.w;
      r1.w = cb1[3].x * r1.w;
      r2.w = 1 + -cb1[0].w;
      r3.w = 1 + -cb1[3].x;
      r3.w = r13.x * r3.w;
      r1.w = r1.w * r2.w + r3.w;
      r2.w = r13.w * cb1[4].x + 1;
      r1.w = r2.w * r1.w;
      r11.xyz = r11.xyz * r1.www;
      r11.xyz = r11.xyz * cb1[2].yyy + r0.xyz;
      r13.x = r1.z * 0.100000001 + r4.y;
      r1.z = cb1[18].x * cb1[7].x;
      r13.y = r1.z * 0.100000001 + r4.y;
      r1.zw = float2(0.5,0.5) + r13.xy;
      r1.zw = frac(r1.zw);
      r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
      r7.yw = abs(r1.zw) * abs(r1.zw);
      r1.zw = -abs(r1.zw) * float2(2,2) + float2(3,3);
      r1.zw = r7.yw * r1.zw + float2(-0.5,-0.5);
      r1.zw = r1.zw + r1.zw;
      r1.zw = r1.zw * r1.zw;
      r1.z = r1.w * r1.z;
      r1.z = -r1.z * cb1[7].x + 1;
      r1.w = cb1[0].w * r13.w;
      r1.z = r1.w * cb1[4].x + r1.z;
      r13.xyz = cb1[5].xyz + -r11.xyz;
      r13.xyz = cb1[6].yyy * r13.xyz;
      r13.xyz = r13.xyz * r1.zzz;
      r11.xyz = r13.xyz * r4.xxx + r11.xyz;
    } else {
      r13.xyz = float3(0.0625,1,16) * r4.yyy;
      r13.xyz = frac(r13.xyz);
      r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r13.xyz = r13.xyz * r4.xxx;
      r1.z = r4.z + r4.w;
      r1.z = cb1[2].x + r1.z;
      r15.x = r1.z + r4.y;
      r15.y = r1.z * cb1[3].y + r4.y;
      r1.z = cb1[3].y * r15.x;
      r15.z = 0.5 * r1.z;
      r15.xyz = float3(0.5,0.5,0.5) + r15.xyz;
      r15.xyz = frac(r15.xyz);
      r15.xyz = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r16.xyz = abs(r15.xyz) * abs(r15.xyz);
      r15.xyz = -abs(r15.xyz) * float3(2,2,2) + float3(3,3,3);
      r15.xyz = r16.xyz * r15.xyz + float3(-0.5,-0.5,-0.5);
      r15.xyz = r15.xyz + r15.xyz;
      r16.w = r15.y * r15.z;
      r1.z = cmp(r16.w < 0);
      r16.y = abs(r16.w);
      r16.xz = float2(-1,1);
      r1.zw = r1.zz ? r16.xy : r16.zw;
      r2.w = -r15.y * r15.z + r1.z;
      r2.w = r1.w * r2.w + r16.w;
      r1.z = -r2.w + r1.z;
      r1.z = r1.w * r1.z + r2.w;
      r1.z = cb1[3].x * r1.z;
      r1.w = 1 + -cb1[0].w;
      r2.w = 1 + -cb1[3].x;
      r2.w = r15.x * r2.w;
      r1.z = r1.z * r1.w + r2.w;
      r13.xyz = r13.xyz * r1.zzz;
      r11.xyz = r13.xyz * cb1[2].yyy + r0.xyz;
    }
  } else {
    r11.xyz = r0.xyz;
  }
  r1.z = dot(r11.xyz, r11.xyz);
  r1.z = sqrt(r1.z);
  r1.w = 1 / cb1[1].z;
  r2.w = -r1.w * 0.25 + r11.z;
  r2.w = max(0, r2.w);
  r2.w = cb1[1].z * r2.w;
  r3.w = cmp(r2.w != 0.000000);
  r5.w = log2(r2.w);
  r5.w = cb1[1].w * r5.w;
  r5.w = exp2(r5.w);
  r2.w = r3.w ? r5.w : r2.w;
  r7.x = r7.x * 0.00100000005 + cb1[1].x;
  r7.y = cb1[1].x * 0.800000012 + r4.w;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r7.xy = frac(r7.xy);
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r13.xy = abs(r7.xy) * abs(r7.xy);
  r7.xy = -abs(r7.xy) * float2(2,2) + float2(3,3);
  r7.xy = r13.xy * r7.xy + float2(-0.5,-0.5);
  r7.xy = r7.xy + r7.xy;
  r3.w = r7.y * r7.y + r7.x;
  r5.w = cmp(cb1[1].z != 0.000000);
  r6.x = cb1[6].x / cb1[1].z;
  r5.w = r5.w ? r6.x : cb1[6].x;
  r3.w = cb1[1].y * r3.w + r5.w;
  r2.w = r3.w * r2.w;
  r7.xy = cb1[0].xy * r2.ww + r11.xy;
  r13.xy = r0.ww ? r7.xy : r11.xy;
  r13.z = r11.z;
  r2.w = dot(r13.xyz, r13.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyw = r13.xyz * r2.www;
  r7.xyw = r7.xyw * r1.zzz;
  r7.xyw = r0.www ? r7.xyw : r11.xyz;
  r0.xyz = r7.xyw + -r0.xyz;
  r0.xyz = r0.xyz * r1.yyy;
  r7.xyw = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r7.xyw = floor(r7.xyw);
  r7.xyw = r7.xyw * float3(500,500,500) + float3(250,-4750,-4750);
  r5.xyw = -r7.xyw + r5.zxy;
  r5.yw = float2(9.99999975e-005,9.99999975e-005) * r5.yw;
  r1.z = r5.x * 9.99999975e-005 + 0.200000003;
  r7.xyw = t2.SampleLevel(s0_s, r5.yw, -1).xyz;
  r2.w = cb3[10].w + r7.y;
  r5.x = -r2.w + r1.z;
  r5.x = max(0, r5.x);
  r6.x = r7.x + -r7.y;
  r6.x = max(9.99999975e-005, r6.x);
  r5.x = r5.x / r6.x;
  r5.x = min(1, r5.x);
  r6.x = ceil(r5.x);
  r5.x = 1 + -r5.x;
  r5.x = min(0.200000003, r5.x);
  r5.x = r6.x * r5.x;
  r6.x = 5 * r5.x;
  r1.z = -r7.w + r1.z;
  r7.x = max(0, r1.z);
  r2.w = r2.w + -r7.w;
  r2.w = max(9.99999975e-005, r2.w);
  r2.w = r7.x / r2.w;
  r2.w = min(1, r2.w);
  r7.x = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r7.x * r2.w;
  r2.w = 5 * r2.w;
  r7.xy = t3.SampleLevel(s1_s, r5.yw, -1).xy;
  r5.x = r5.x * 5 + -r2.w;
  r5.x = cmp(9.99999975e-006 < abs(r5.x));
  r7.w = cmp(r6.x >= r2.w);
  r7.y = r7.w ? r7.y : r7.x;
  r5.x = r5.x ? r7.y : r7.x;
  r5.x = cb3[11].x * r5.x;
  r2.w = max(r6.x, r2.w);
  r5.x = r5.x * r2.w;
  r1.z = 10000 * r1.z;
  r1.z = max(0, r1.z);
  r6.x = cb3[6].z + r7.z;
  r5.z = -r6.x + r5.z;
  r1.z = min(r5.z, r1.z);
  r1.z = cb3[11].z * r1.z;
  r1.z = r2.w * r1.z;
  r1.z = r5.x * r1.z;
  r5.xy = t4.SampleLevel(s2_s, r5.yw, -1).xy;
  r5.xy = float2(-1,-1) + r5.xy;
  r5.xy = r5.xy * r1.zz;
  r1.z = dot(r5.xy, r5.xy);
  r1.z = sqrt(r1.z);
  r5.z = -1.20000005 * r1.z;
  r0.xyz = r0.xyz * cb3[10].yyy + r5.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r3.x = t0[r6.y].val[0/4];
  r3.y = t0[r6.y].val[0/4+1];
  r3.z = t0[r6.y].val[0/4+2];
  r5.x = t0[r6.z].val[0/4];
  r5.y = t0[r6.z].val[0/4+1];
  r5.z = t0[r6.z].val[0/4+2];
  r6.y = t0[r6.w].val[0/4];
  r6.z = t0[r6.w].val[0/4+1];
  r6.w = t0[r6.w].val[0/4+2];
  r1.z = mad((int)v1.x, 36, 13);
  r7.x = t0[r1.z].val[0/4];
  r7.y = t0[r1.z].val[0/4+1];
  r7.z = t0[r1.z].val[0/4+2];
  r7.xyw = cb0[113].xyz + r7.xyz;
  r11.x = r3.x;
  r11.y = r5.x;
  r11.z = r6.y;
  r11.w = r7.x;
  r11.x = dot(v0.xyzw, r11.xyzw);
  r13.x = r3.y;
  r13.y = r5.y;
  r13.z = r6.z;
  r13.w = r7.y;
  r11.y = dot(v0.xyzw, r13.xyzw);
  r7.x = r3.z;
  r7.y = r5.z;
  r7.z = r6.w;
  r11.z = dot(v0.xyzw, r7.xyzw);
  r5.xyz = -cb0[70].xyz + r11.xyz;
  r5.w = 1;
  r3.x = dot(r5.xyzw, r10.xyzw);
  r3.y = dot(r5.xyzw, r12.xyzw);
  r3.z = dot(r5.xyzw, r9.xyzw);
  r5.x = dot(r3.xyz, r8.xyz);
  r5.y = dot(r3.xyz, r14.xyz);
  r5.z = dot(r3.xyz, r2.xyz);
  r2.xyz = r5.xyz / r1.yyy;
  if (r1.x != 0) {
    r1.x = cmp((int)r0.w == 5);
    if (r1.x != 0) {
      r3.xyz = float3(0.0625,1,16) * r4.yyy;
      r3.xyz = frac(r3.xyz);
      r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r3.xyz = r3.xyz * r4.xxx;
      r1.x = r4.z + r4.w;
      r1.x = cb1[2].x + r1.x;
      r5.x = r1.x + r4.y;
      r5.y = r1.x * cb1[3].y + r4.y;
      r1.z = cb1[3].y * r5.x;
      r5.z = 0.5 * r1.z;
      r5.w = r5.x + -r4.x;
      r5.xyzw = float4(0.5,0.5,0.5,1.5) + r5.xyzw;
      r5.xyzw = frac(r5.xyzw);
      r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r7.xyzw = abs(r5.xyzw) * abs(r5.xyzw);
      r5.xyzw = -abs(r5.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r5.xyzw = r7.xyzw * r5.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r5.xyzw = r5.xyzw + r5.xyzw;
      r7.w = r5.y * r5.z;
      r1.z = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r6.yz = r1.zz ? r7.xy : r7.zw;
      r1.z = -r5.y * r5.z + r6.y;
      r1.z = r6.z * r1.z + r7.w;
      r2.w = r6.y + -r1.z;
      r1.z = r6.z * r2.w + r1.z;
      r1.z = cb1[3].x * r1.z;
      r2.w = 1 + -cb1[0].w;
      r5.y = 1 + -cb1[3].x;
      r5.x = r5.x * r5.y;
      r1.z = r1.z * r2.w + r5.x;
      r2.w = r5.w * cb1[4].x + 1;
      r1.z = r2.w * r1.z;
      r3.xyz = r3.xyz * r1.zzz;
      r3.xyz = r3.xyz * cb1[2].yyy + r2.xyz;
      r5.x = r1.x * 0.100000001 + r4.y;
      r1.x = cb1[18].x * cb1[7].x;
      r5.y = r1.x * 0.100000001 + r4.y;
      r1.xz = float2(0.5,0.5) + r5.xy;
      r1.xz = frac(r1.xz);
      r1.xz = r1.xz * float2(2,2) + float2(-1,-1);
      r5.xy = abs(r1.xz) * abs(r1.xz);
      r1.xz = -abs(r1.xz) * float2(2,2) + float2(3,3);
      r1.xz = r5.xy * r1.xz + float2(-0.5,-0.5);
      r1.xz = r1.xz + r1.xz;
      r1.xz = r1.xz * r1.xz;
      r1.x = r1.z * r1.x;
      r1.x = -r1.x * cb1[7].x + 1;
      r1.z = cb1[0].w * r5.w;
      r1.x = r1.z * cb1[4].x + r1.x;
      r5.xyz = cb1[5].xyz + -r3.xyz;
      r5.xyz = cb1[6].yyy * r5.xyz;
      r5.xyz = r5.xyz * r1.xxx;
      r3.xyz = r5.xyz * r4.xxx + r3.xyz;
    } else {
      r5.xyz = float3(0.0625,1,16) * r4.yyy;
      r5.xyz = frac(r5.xyz);
      r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r5.xyz = r5.xyz * r4.xxx;
      r1.x = r4.z + r4.w;
      r1.x = cb1[2].x + r1.x;
      r7.x = r1.x + r4.y;
      r7.y = r1.x * cb1[3].y + r4.y;
      r1.x = cb1[3].y * r7.x;
      r7.z = 0.5 * r1.x;
      r4.xyz = float3(0.5,0.5,0.5) + r7.xyz;
      r4.xyz = frac(r4.xyz);
      r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r6.yzw = abs(r4.xyz) * abs(r4.xyz);
      r4.xyz = -abs(r4.xyz) * float3(2,2,2) + float3(3,3,3);
      r4.xyz = r6.yzw * r4.xyz + float3(-0.5,-0.5,-0.5);
      r4.xyz = r4.xyz + r4.xyz;
      r7.w = r4.y * r4.z;
      r1.x = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r1.xz = r1.xx ? r7.xy : r7.zw;
      r2.w = -r4.y * r4.z + r1.x;
      r2.w = r1.z * r2.w + r7.w;
      r1.x = -r2.w + r1.x;
      r1.x = r1.z * r1.x + r2.w;
      r1.x = cb1[3].x * r1.x;
      r1.z = 1 + -cb1[0].w;
      r2.w = 1 + -cb1[3].x;
      r2.w = r4.x * r2.w;
      r1.x = r1.x * r1.z + r2.w;
      r4.xyz = r5.xyz * r1.xxx;
      r3.xyz = r4.xyz * cb1[2].yyy + r2.xyz;
    }
  } else {
    r3.xyz = r2.xyz;
  }
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r1.x);
  r1.z = -r1.w * 0.25 + r3.z;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.w = cmp(r1.z != 0.000000);
  r2.w = log2(r1.z);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r1.z = r1.w ? r2.w : r1.z;
  r1.z = r3.w * r1.z;
  r1.zw = cb1[0].xy * r1.zz + r3.xy;
  r4.xy = r0.ww ? r1.zw : r3.xy;
  r4.z = r3.z;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r1.xzw = r4.xyz * r1.xxx;
  r1.xzw = r0.www ? r1.xzw : r3.xyz;
  r1.xzw = r1.xzw + -r2.xyz;
  r1.xyz = r1.xzw * r1.yyy;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[111].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = -cb0[113].zxy + r11.zxy;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
  r0.w = r2.x * 9.99999975e-005 + 0.200000003;
  r3.yzw = t2.SampleLevel(s0_s, r2.yz, -1).xyz;
  r1.w = cb3[10].w + r3.z;
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
  r3.yz = t3.SampleLevel(s1_s, r2.yz, -1).xy;
  r2.x = r2.x * 5 + -r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r3.w = cmp(r2.w >= r1.w);
  r3.z = r3.w ? r3.z : r3.y;
  r2.x = r2.x ? r3.z : r3.y;
  r2.x = cb3[11].x * r2.x;
  r1.w = max(r2.w, r1.w);
  r2.x = r2.x * r1.w;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.w = r3.x + -r6.x;
  r0.w = min(r2.w, r0.w);
  r0.w = cb3[11].z * r0.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.x * r0.w;
  r2.xy = t4.SampleLevel(s2_s, r2.yz, -1).xy;
  r2.xy = float2(-1,-1) + r2.xy;
  r2.xy = r2.xy * r0.ww;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r2.z = -1.20000005 * r0.w;
  r1.xyz = r1.xyz * cb3[10].yyy + r2.xyz;
  r1.xyz = r11.xyz + r1.xyz;
  r2.xyzw = cb0[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb0[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}