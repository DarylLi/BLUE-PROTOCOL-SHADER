// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[1].z != 0.000000);
  r0.y = cb1[6].x / cb1[1].z;
  r0.x = r0.x ? r0.y : cb1[6].x;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(9,5,10,11));
  r0.y = t0[r1.y].val[0/4];
  r0.z = t0[r1.y].val[0/4+1];
  r0.z = 0.00100000005 * r0.z;
  r2.x = r0.y * 0.00100000005 + cb1[1].x;
  r2.y = cb1[1].x * 0.800000012 + r0.z;
  r0.yz = float2(0.5,0.5) + r2.xy;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r2.xy = abs(r0.yz) * abs(r0.yz);
  r0.yz = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = r2.xy * r0.yz + float2(-0.5,-0.5);
  r0.yz = r0.yz + r0.yz;
  r0.y = r0.z * r0.z + r0.y;
  r0.x = cb1[1].y * r0.y + r0.x;
  r0.y = dot(cb0[60].xy, cb0[60].xy);
  r0.y = rsqrt(r0.y);
  r0.yz = cb0[60].xy * r0.yy;
  r0.w = (int)v2.x + asint(cb2[0].w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r0.w << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.w = (int)r0.w * asint(cb2[0].y);
  r2.xy = t1.Load(r0.w).xy;
  o3.xy = r2.xy;
  r2.xyz = t2.Load(r1.y).xyz;
  r0.w = (int)v1.x * 36;
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.z = t0[r3.x].val[0/4];
  r3.w = t0[r3.x].val[0/4+1];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r3.zw = r5.yy * r3.zw;
  r2.yw = r3.zw * r2.yy;
  r3.z = t0[r0.w].val[0/4];
  r3.w = t0[r0.w].val[0/4+1];
  r3.zw = r3.zw * r5.xx;
  r2.xy = r2.xx * r3.zw + r2.yw;
  r1.y = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.w].val[0/4+2];
  r5.y = t0[r0.w].val[0/4];
  r5.w = t0[r0.w].val[0/4+1];
  r3.z = t0[r1.y].val[0/4];
  r3.w = t0[r1.y].val[0/4+1];
  r6.x = t0[r1.y].val[0/4];
  r6.y = t0[r1.y].val[0/4+1];
  r6.z = t0[r1.y].val[0/4+2];
  r3.zw = r3.zw * r5.zz;
  r2.xy = r2.zz * r3.zw + r2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = rsqrt(r0.w);
  r2.xy = r2.xy * r0.ww;
  r0.y = dot(r0.yz, r2.xy);
  r0.y = cmp(-0.774999976 < r0.y);
  r2.x = t0[r3.y].val[0/4];
  r2.y = t0[r3.y].val[0/4+1];
  r2.z = t0[r3.y].val[0/4+2];
  r3.x = t0[r3.x].val[0/4];
  r3.y = t0[r3.x].val[0/4+1];
  r3.z = t0[r3.x].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r7.xyz = v0.yyy * r3.xyz;
  r7.xyz = r5.ywx * v0.xxx + r7.xyz;
  r7.xyz = r6.xyz * v0.zzz + r7.xyz;
  r2.xyz = r7.xyz + r2.xyz;
  r7.xyz = -cb0[70].xyz + r2.xyz;
  r8.x = t0[r4.y].val[0/4+1];
  r8.y = t0[r4.y].val[0/4];
  r8.z = t0[r4.y].val[0/4+2];
  r9.x = r8.y;
  r10.x = t0[r4.z].val[0/4];
  r10.y = t0[r4.z].val[0/4+2];
  r10.z = t0[r4.z].val[0/4+1];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r9.y = r10.x;
  r9.z = r4.x;
  r11.x = t0[r1.x].val[0/4];
  r11.y = t0[r1.x].val[0/4+1];
  r11.z = t0[r1.x].val[0/4+2];
  r9.w = r11.x;
  r7.w = 1;
  r12.x = dot(r7.xyzw, r9.xyzw);
  r10.x = r8.z;
  r8.y = r10.z;
  r8.z = r4.y;
  r10.z = r4.z;
  r8.w = r11.y;
  r10.w = r11.z;
  r12.y = dot(r7.xyzw, r8.xyzw);
  r12.z = dot(r7.xyzw, r10.xyzw);
  r4.x = r5.y;
  r4.y = r3.x;
  r4.z = r6.x;
  r7.x = dot(r12.xyz, r4.xyz);
  r5.y = r3.z;
  r3.x = r5.w;
  r3.z = r6.y;
  r7.y = dot(r12.xyz, r3.xyz);
  r5.w = r6.z;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r7.z = dot(r12.xyz, r5.xyw);
  r6.xyz = r7.xyz / r0.zzz;
  r7.xyz = r0.yyy ? float3(0,0,0) : r6.xyz;
  r0.w = 1 / cb1[1].z;
  r1.x = -r0.w * 0.25 + r7.z;
  r1.x = max(0, r1.x);
  r1.x = cb1[1].z * r1.x;
  r1.y = log2(r1.x);
  r1.y = cb1[1].w * r1.y;
  r1.y = exp2(r1.y);
  r2.w = cmp(r1.x != 0.000000);
  r1.x = r2.w ? r1.y : r1.x;
  r1.x = r1.x * r0.x;
  r11.xy = cb1[0].xy * r1.xx + r7.xy;
  r11.z = r7.z;
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = sqrt(r1.x);
  r1.y = dot(r11.xyz, r11.xyz);
  r1.y = rsqrt(r1.y);
  r7.xyz = r11.xyz * r1.yyy;
  r6.xyz = r7.xyz * r1.xxx + -r6.xyz;
  r2.xyz = r6.xyz * r0.zzz + r2.xyz;
  r6.xyzw = cb0[1].xyzw * r2.yyyy;
  r6.xyzw = r2.xxxx * cb0[0].xyzw + r6.xyzw;
  r2.xyzw = r2.zzzz * cb0[2].xyzw + r6.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.x = 0.00100000005 * r2.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r2.z + r1.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r2.x = t0[r1.z].val[0/4+1];
  r2.y = t0[r1.z].val[0/4];
  r2.z = t0[r1.z].val[0/4+2];
  r1.x = t0[r1.w].val[0/4];
  r1.y = t0[r1.w].val[0/4+2];
  r1.z = t0[r1.w].val[0/4+1];
  r6.x = r2.y;
  r6.y = r1.x;
  r7.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r7.y = t0[r7.y].val[0/4];
  r7.z = t0[r7.y].val[0/4+1];
  r7.w = t0[r7.y].val[0/4+2];
  r11.x = t0[r7.x].val[0/4];
  r11.y = t0[r7.x].val[0/4+1];
  r11.z = t0[r7.x].val[0/4+2];
  r7.xyz = cb0[113].xyz + r7.yzw;
  r6.w = r7.x;
  r6.z = r11.x;
  r6.x = dot(v0.xyzw, r6.xyzw);
  r2.w = r7.y;
  r1.w = r7.z;
  r1.x = r2.z;
  r2.y = r1.z;
  r2.z = r11.y;
  r1.z = r11.z;
  r6.z = dot(v0.xyzw, r1.xyzw);
  r6.y = dot(v0.xyzw, r2.xyzw);
  r1.xyz = -cb0[70].xyz + r6.xyz;
  r1.w = 1;
  r2.x = dot(r1.xyzw, r9.xyzw);
  r2.y = dot(r1.xyzw, r8.xyzw);
  r2.z = dot(r1.xyzw, r10.xyzw);
  r1.x = dot(r2.xyz, r4.xyz);
  r1.y = dot(r2.xyz, r3.xyz);
  r1.z = dot(r2.xyz, r5.xyw);
  r1.xyz = r1.xyz / r0.zzz;
  r2.xyz = r0.yyy ? float3(0,0,0) : r1.xyz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r0.w = -r0.w * 0.25 + r2.z;
  r0.w = max(0, r0.w);
  r0.w = cb1[1].z * r0.w;
  r1.w = log2(r0.w);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r0.w != 0.000000);
  r0.w = r2.w ? r1.w : r0.w;
  r0.x = r0.x * r0.w;
  r2.xy = cb1[0].xy * r0.xx + r2.xy;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  r0.xyw = r2.xyz * r0.yyy + -r1.xyz;
  r0.xyz = r0.xyw * r0.zzz + r6.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.zw = float2(0,0);
  return;
}