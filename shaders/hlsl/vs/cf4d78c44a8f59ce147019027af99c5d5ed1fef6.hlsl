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
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r0.y = (int)v1.x * 36;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r3.x = t0[r0.z].val[0/4];
  r3.y = t0[r0.z].val[0/4+2];
  r3.z = t0[r0.z].val[0/4+1];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r4.xyz = v0.yyy * r3.xzy;
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.y = mad((int)v1.x, 36, 2);
  r5.x = t0[r1.y].val[0/4];
  r5.y = t0[r1.y].val[0/4+1];
  r5.z = t0[r1.y].val[0/4+2];
  r4.xyz = r0.yzw * v0.xxx + r4.xyz;
  r4.xyz = r5.xyz * v0.zzz + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + r2.xyz;
  r6.x = t0[r1.x].val[0/4];
  r6.y = t0[r1.x].val[0/4+1];
  r6.z = t0[r1.x].val[0/4+2];
  r7.w = r6.x;
  r4.w = 1;
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r9.x = t0[r8.y].val[0/4+1];
  r9.y = t0[r8.y].val[0/4];
  r9.z = t0[r8.y].val[0/4+2];
  r7.x = r9.y;
  r10.x = t0[r8.z].val[0/4];
  r10.y = t0[r8.z].val[0/4+2];
  r10.z = t0[r8.z].val[0/4+1];
  r7.y = r10.x;
  r8.y = t0[r8.w].val[0/4];
  r8.z = t0[r8.w].val[0/4+1];
  r8.w = t0[r8.w].val[0/4+2];
  r11.x = t0[r8.x].val[0/4];
  r11.y = t0[r8.x].val[0/4+1];
  r11.z = t0[r8.x].val[0/4+2];
  r11.w = t0[r8.x].val[0/4+3];
  r7.z = r8.y;
  r12.x = dot(r4.xyzw, r7.xyzw);
  r10.x = r9.z;
  r9.y = r10.z;
  r9.z = r8.z;
  r10.z = r8.w;
  r9.w = r6.y;
  r10.w = r6.z;
  r12.y = dot(r4.xyzw, r9.xyzw);
  r12.z = dot(r4.xyzw, r10.xyzw);
  r4.y = r3.x;
  r4.z = r5.x;
  r4.x = r0.y;
  r6.x = dot(r12.xyz, r4.xyz);
  r8.y = r3.z;
  r8.x = r0.z;
  r8.z = r5.y;
  r6.y = dot(r12.xyz, r8.xyz);
  r13.xyz = r11.yyy * r3.xzy;
  r3.x = r0.w;
  r0.yzw = r11.xxx * r0.yzw;
  r3.z = r5.z;
  r6.z = dot(r12.xyz, r3.xyz);
  r1.x = dot(r5.xyz, r5.xyz);
  r5.xyz = r11.zzz * r5.xyz;
  r1.x = sqrt(r1.x);
  r6.xyz = r6.xyz / r1.xxx;
  r1.y = dot(cb0[60].xy, cb0[60].xy);
  r1.y = rsqrt(r1.y);
  r11.xy = cb0[60].xy * r1.yy;
  r1.y = (int)v2.x + asint(cb2[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r12.xyzw = t2.Load(r2.w).xyzw;
  r14.xyz = r12.yyy * r13.xyz;
  r14.xyz = r12.xxx * r0.yzw + r14.xyz;
  r14.xyz = r12.zzz * r5.xyz + r14.xyz;
  r2.w = dot(r14.xy, r14.xy);
  r2.w = rsqrt(r2.w);
  r15.xy = r14.xy * r2.ww;
  o4.xyz = r14.xyz;
  r2.w = dot(r11.xy, r15.xy);
  r2.w = cmp(-0.774999976 < r2.w);
  r11.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r3.w = 1 / cb1[1].z;
  r4.w = -r3.w * 0.25 + r11.z;
  r4.w = max(0, r4.w);
  r4.w = cb1[1].z * r4.w;
  r5.w = log2(r4.w);
  r5.w = cb1[1].w * r5.w;
  r5.w = exp2(r5.w);
  r6.w = cmp(r4.w != 0.000000);
  r4.w = r6.w ? r5.w : r4.w;
  r4.w = r4.w * r0.x;
  r14.xy = cb1[0].xy * r4.ww + r11.xy;
  r14.z = r11.z;
  r4.w = dot(r11.xyz, r11.xyz);
  r4.w = sqrt(r4.w);
  r5.w = dot(r14.xyz, r14.xyz);
  r5.w = rsqrt(r5.w);
  r11.xyz = r14.xyz * r5.www;
  r6.xyz = r11.xyz * r4.www + -r6.xyz;
  r2.xyz = r6.xyz * r1.xxx + r2.xyz;
  r6.xyzw = cb0[1].xyzw * r2.yyyy;
  r6.xyzw = r2.xxxx * cb0[0].xyzw + r6.xyzw;
  r6.xyzw = r2.zzzz * cb0[2].xyzw + r6.xyzw;
  r6.xyzw = cb0[3].xyzw + r6.xyzw;
  r2.x = 0.00100000005 * r6.w;
  r2.y = cmp(1 < asint(cb0[135].x));
  r2.x = r2.y ? r2.x : 0;
  o0.z = r6.z + r2.x;
  o0.xyw = r6.xyw;
  o1.xyzw = r6.xyzw;
  r6.x = t0[r1.z].val[0/4+1];
  r6.y = t0[r1.z].val[0/4];
  r6.z = t0[r1.z].val[0/4+2];
  r14.x = t0[r1.w].val[0/4];
  r14.y = t0[r1.w].val[0/4+2];
  r14.z = t0[r1.w].val[0/4+1];
  r15.x = r6.y;
  r15.y = r14.x;
  r1.zw = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r11.x = t0[r1.z].val[0/4];
  r11.y = t0[r1.z].val[0/4+1];
  r11.z = t0[r1.z].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r15.w = r2.x;
  r15.z = r11.x;
  r15.x = dot(v0.xyzw, r15.xyzw);
  r6.w = r2.y;
  r14.w = r2.z;
  r14.x = r6.z;
  r6.y = r14.z;
  r6.z = r11.y;
  r14.z = r11.z;
  r15.z = dot(v0.xyzw, r14.xyzw);
  r15.y = dot(v0.xyzw, r6.xyzw);
  r6.xyz = -cb0[70].xyz + r15.xyz;
  r6.w = 1;
  r2.x = dot(r6.xyzw, r7.xyzw);
  r2.y = dot(r6.xyzw, r9.xyzw);
  r2.z = dot(r6.xyzw, r10.xyzw);
  r4.x = dot(r2.xyz, r4.xyz);
  r4.y = dot(r2.xyz, r8.xyz);
  r4.z = dot(r2.xyz, r3.xyz);
  r2.xyz = r4.xyz / r1.xxx;
  r3.xyz = r2.www ? float3(0,0,0) : r2.xyz;
  r1.z = -r3.w * 0.25 + r3.z;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.w = log2(r1.z);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r1.z != 0.000000);
  r1.z = r2.w ? r1.w : r1.z;
  r0.x = r1.z * r0.x;
  r4.xy = cb1[0].xy * r0.xx + r3.xy;
  r4.z = r3.z;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r4.xyz * r1.zzz;
  r2.xyz = r3.xyz * r0.xxx + -r2.xyz;
  r1.xzw = r2.xyz * r1.xxx + r15.xyz;
  r2.xyzw = cb0[92].xyzw * r1.zzzz;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r2.xyzw = r1.wwww * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r0.x = (uint)r1.y << 1;
  r1.x = (int)r1.y * asint(cb2[0].y);
  r1.xy = t1.Load(r1.x).xy;
  o5.xy = r1.xy;
  r1.xyz = t2.Load(r0.x).xyz;
  r2.xyz = r12.yzx * r1.xyz;
  r1.xyz = r12.xyz * r1.yzx + -r2.xyz;
  r1.xyz = r1.xyz * r12.www;
  r2.xyz = r1.xyz * r12.yzx;
  r1.xyz = r1.zxy * r12.zxy + -r2.xyz;
  r1.xyz = r1.xyz * r12.www;
  o4.w = r12.w * r11.w;
  r2.xyz = r1.yyy * r13.xyz;
  r0.xyz = r1.xxx * r0.yzw + r2.xyz;
  o3.xyz = r1.zzz * r5.xyz + r0.xyz;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}