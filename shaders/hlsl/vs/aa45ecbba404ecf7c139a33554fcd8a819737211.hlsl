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
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  o2.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r2.xzw;
  r7.xyz = r6.xyz * r0.yyy;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r0.w].val[0/4+2];
  r8.y = t0[r0.w].val[0/4];
  r8.z = t0[r0.w].val[0/4+1];
  r0.y = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.y].val[0/4];
  r9.y = t0[r0.y].val[0/4+1];
  r9.z = t0[r0.y].val[0/4+2];
  r10.xyz = r8.yzx * r5.xxx;
  r0.xyw = r0.xxx * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  o1.xyz = r1.xyz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.y = r2.x;
  r0.x = r8.y;
  r5.xyz = v0.yyy * r2.xzw;
  r5.xyz = r8.yzx * v0.xxx + r5.xyz;
  r5.xyz = r9.xyz * v0.zzz + r5.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r6.x = t0[r4.y].val[0/4+1];
  r6.y = t0[r4.y].val[0/4];
  r6.z = t0[r4.y].val[0/4+2];
  r7.x = r6.y;
  r10.x = t0[r4.z].val[0/4];
  r10.y = t0[r4.z].val[0/4+2];
  r10.z = t0[r4.z].val[0/4+1];
  r4.x = t0[r4.w].val[0/4];
  r4.y = t0[r4.w].val[0/4+1];
  r4.z = t0[r4.w].val[0/4+2];
  r7.y = r10.x;
  r7.z = r4.x;
  r4.xw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r11.x = t0[r4.x].val[0/4];
  r11.y = t0[r4.x].val[0/4+1];
  r11.z = t0[r4.x].val[0/4+2];
  r4.x = t0[r4.w].val[0/4];
  r4.w = t0[r4.w].val[0/4+1];
  r7.w = r11.x;
  r5.w = 1;
  r7.x = dot(r5.xyzw, r7.xyzw);
  r10.x = r6.z;
  r6.y = r10.z;
  r6.z = r4.y;
  r10.z = r4.z;
  r6.w = r11.y;
  r10.w = r11.z;
  r7.z = dot(r5.xyzw, r10.xyzw);
  r7.y = dot(r5.xyzw, r6.xyzw);
  r0.z = r9.x;
  r0.x = dot(r7.xyz, r0.xyz);
  r8.y = r2.w;
  r2.x = r8.z;
  r2.w = r9.y;
  r0.y = dot(r7.xyz, r2.xzw);
  r8.z = r9.z;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r0.z = dot(r7.xyz, r8.xyz);
  r0.xyz = r0.xyz / r0.www;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = rsqrt(r1.w);
  r2.xy = r1.xy * r1.ww;
  o6.xyz = r1.xyz;
  r1.x = dot(cb0[60].xy, cb0[60].xy);
  r1.x = rsqrt(r1.x);
  r1.xy = cb0[60].xy * r1.xx;
  r1.x = dot(r1.xy, r2.xy);
  r1.x = cmp(-0.774999976 < r1.x);
  r1.xyz = r1.xxx ? float3(0,0,0) : r0.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.00100000005 * r4.w;
  r4.x = r4.x * 0.00100000005 + cb1[1].x;
  r4.y = cb1[1].x * 0.800000012 + r2.x;
  r2.xy = float2(0.5,0.5) + r4.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = abs(r2.xy) * abs(r2.xy);
  r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = r2.zw * r2.xy + float2(-0.5,-0.5);
  r2.xy = r2.xy + r2.xy;
  r2.x = r2.y * r2.y + r2.x;
  r2.y = cmp(cb1[1].z != 0.000000);
  r2.z = cb1[6].x / cb1[1].z;
  r2.y = r2.y ? r2.z : cb1[6].x;
  r2.x = cb1[1].y * r2.x + r2.y;
  r2.y = 1 / cb1[1].z;
  r2.y = -r2.y * 0.25 + r1.z;
  r2.y = max(0, r2.y);
  r2.y = cb1[1].z * r2.y;
  r2.z = log2(r2.y);
  r2.z = cb1[1].w * r2.z;
  r2.z = exp2(r2.z);
  r2.w = cmp(r2.y != 0.000000);
  r2.y = r2.w ? r2.z : r2.y;
  r2.x = r2.x * r2.y;
  r1.xy = cb1[0].xy * r2.xx + r1.xy;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r1.xyz * r1.www + -r0.xyz;
  r0.xyz = r0.xyz * r0.www + r3.xyz;
  o4.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o7.xyz = r0.xyz;
  o5.w = 1;
  o7.w = 1;
  return;
}