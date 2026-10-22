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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r0.x = t0[r0.x].val[0/4];
  r0.z = t0[r0.x].val[0/4+1];
  r0.w = t0[r0.x].val[0/4+2];
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r2.w = r0.x;
  r0.x = (int)v1.x * 36;
  r1.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r1.w].val[0/4];
  r3.y = t0[r1.w].val[0/4+1];
  r3.z = t0[r1.w].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r4.x = t0[r1.z].val[0/4];
  r4.y = t0[r1.z].val[0/4+1];
  r4.z = t0[r1.z].val[0/4+2];
  r1.z = t0[r1.z].val[0/4];
  r1.w = t0[r1.z].val[0/4+1];
  r5.xyz = v0.yyy * r4.xyz;
  r6.x = t0[r0.x].val[0/4+2];
  r6.y = t0[r0.x].val[0/4];
  r6.z = t0[r0.x].val[0/4+1];
  r5.xyz = r6.yzx * v0.xxx + r5.xyz;
  r0.y = mad((int)v1.x, 36, 2);
  r7.x = t0[r0.x].val[0/4];
  r7.y = t0[r0.x].val[0/4+1];
  r8.x = t0[r0.y].val[0/4];
  r8.y = t0[r0.y].val[0/4+1];
  r8.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.y].val[0/4];
  r0.y = t0[r0.y].val[0/4+1];
  r5.xyz = r8.xyz * v0.zzz + r5.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r5.w = 1;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r10.x = t0[r9.y].val[0/4+1];
  r10.y = t0[r9.y].val[0/4];
  r10.z = t0[r9.y].val[0/4+2];
  r2.x = r10.y;
  r11.x = t0[r9.z].val[0/4];
  r11.y = t0[r9.z].val[0/4+2];
  r11.z = t0[r9.z].val[0/4+1];
  r2.y = r11.x;
  r9.y = t0[r9.w].val[0/4];
  r9.z = t0[r9.w].val[0/4+1];
  r9.w = t0[r9.w].val[0/4+2];
  r12.x = t0[r9.x].val[0/4];
  r12.y = t0[r9.x].val[0/4+1];
  r12.z = t0[r9.x].val[0/4+2];
  r2.z = r9.y;
  r2.x = dot(r5.xyzw, r2.xyzw);
  r11.x = r10.z;
  r10.y = r11.z;
  r10.z = r9.z;
  r11.z = r9.w;
  r10.w = r0.z;
  r11.w = r0.w;
  r2.z = dot(r5.xyzw, r11.xyzw);
  r2.y = dot(r5.xyzw, r10.xyzw);
  r5.x = r6.y;
  r5.y = r4.x;
  r5.z = r8.x;
  r5.x = dot(r2.xyz, r5.xyz);
  r6.y = r4.z;
  r4.x = r6.z;
  r4.z = r8.y;
  r5.y = dot(r2.xyz, r4.xyz);
  r6.z = r8.z;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = sqrt(r0.z);
  r5.z = dot(r2.xyz, r6.xyz);
  r2.xyz = r5.xyz / r0.zzz;
  r4.xy = r12.xx * r7.xy;
  r1.zw = r12.yy * r1.zw;
  r0.xy = r12.zz * r0.xy;
  r0.w = (int)v2.x + asint(cb2[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = (int)r0.w * asint(cb2[0].y);
  r4.zw = t1.Load(r0.w).xy;
  o1.xy = r4.zw;
  r5.xyz = t2.Load(r2.w).xyz;
  r1.zw = r5.yy * r1.zw;
  r1.zw = r5.xx * r4.xy + r1.zw;
  r0.xy = r5.zz * r0.xy + r1.zw;
  r0.w = dot(r0.xy, r0.xy);
  r0.w = rsqrt(r0.w);
  r0.xy = r0.xy * r0.ww;
  r0.w = dot(cb0[60].xy, cb0[60].xy);
  r0.w = rsqrt(r0.w);
  r1.zw = cb0[60].xy * r0.ww;
  r0.x = dot(r1.zw, r0.xy);
  r0.x = cmp(-0.774999976 < r0.x);
  r0.xyw = r0.xxx ? float3(0,0,0) : r2.xyz;
  r1.z = 1 / cb1[1].z;
  r1.z = -r1.z * 0.25 + r0.w;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.w = log2(r1.z);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r1.z != 0.000000);
  r1.z = r2.w ? r1.w : r1.z;
  r1.y = 0.00100000005 * r1.y;
  r4.x = r1.x * 0.00100000005 + cb1[1].x;
  r4.y = cb1[1].x * 0.800000012 + r1.y;
  r1.xy = float2(0.5,0.5) + r4.xy;
  r1.xy = frac(r1.xy);
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r4.xy = abs(r1.xy) * abs(r1.xy);
  r1.xy = -abs(r1.xy) * float2(2,2) + float2(3,3);
  r1.xy = r4.xy * r1.xy + float2(-0.5,-0.5);
  r1.xy = r1.xy + r1.xy;
  r1.x = r1.y * r1.y + r1.x;
  r1.y = cmp(cb1[1].z != 0.000000);
  r1.w = cb1[6].x / cb1[1].z;
  r1.y = r1.y ? r1.w : cb1[6].x;
  r1.x = cb1[1].y * r1.x + r1.y;
  r1.x = r1.x * r1.z;
  r1.xy = cb1[0].xy * r1.xx + r0.xy;
  r1.z = r0.w;
  r0.x = dot(r0.xyw, r0.xyw);
  r0.x = sqrt(r0.x);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r1.xyz * r0.xxx + -r2.xyz;
  r0.xyz = r0.xyw * r0.zzz + r3.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.zw = float2(0,0);
  return;
}