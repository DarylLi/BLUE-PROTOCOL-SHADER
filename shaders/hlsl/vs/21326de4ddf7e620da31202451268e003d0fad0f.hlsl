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
  r0.zw = float2(0.00100000005,0.00100000005) * r0.yz;
  r2.x = r0.y * 0.00100000005 + cb1[1].x;
  r2.y = cb1[1].x * 0.800000012 + r0.w;
  r0.y = r0.z + r0.w;
  r0.y = cb1[2].x + r0.y;
  r0.zw = float2(0.5,0.5) + r2.xy;
  r0.zw = frac(r0.zw);
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r2.xy = abs(r0.zw) * abs(r0.zw);
  r0.zw = -abs(r0.zw) * float2(2,2) + float2(3,3);
  r0.zw = r2.xy * r0.zw + float2(-0.5,-0.5);
  r0.zw = r0.zw + r0.zw;
  r0.z = r0.w * r0.w + r0.z;
  r0.x = cb1[1].y * r0.z + r0.x;
  r0.z = asint(cb2[0].y) + -1;
  r0.z = min(2, (uint)r0.z);
  r0.w = (int)v2.x + asint(cb2[0].w);
  r0.z = mad(asint(cb2[0].y), (int)r0.w, (int)r0.z);
  r2.xy = t1.Load(r0.z).xy;
  r3.x = r2.y + r0.y;
  r3.y = r0.y * cb1[3].y + r2.y;
  r0.y = cb1[3].y * r3.x;
  r3.z = 0.5 * r0.y;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r4.xyz = abs(r3.xyz) * abs(r3.xyz);
  r3.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
  r3.xyz = r4.xyz * r3.xyz + float3(-0.5,-0.5,-0.5);
  r3.xyz = r3.xyz + r3.xyz;
  r4.xz = float2(-1,1);
  r4.w = r3.y * r3.z;
  r0.y = cmp(r4.w < 0);
  r4.y = abs(r4.w);
  r0.yz = r0.yy ? r4.xy : r4.zw;
  r1.y = -r3.y * r3.z + r0.y;
  r1.y = r0.z * r1.y + r4.w;
  r0.y = -r1.y + r0.y;
  r0.y = r0.z * r0.y + r1.y;
  r0.y = cb1[3].x * r0.y;
  r0.z = 1 + -cb1[3].x;
  r0.z = r3.x * r0.z;
  r1.y = 1 + -cb1[0].w;
  r0.y = r0.y * r1.y + r0.z;
  r2.yzw = float3(0.0625,1,16) * r2.yyy;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r2.yzw * r2.xxx;
  r2.xyz = r2.xyz * r0.yyy;
  r0.y = (int)v1.x * 36;
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.y = t0[r3.y].val[0/4];
  r3.z = t0[r3.y].val[0/4+1];
  r3.w = t0[r3.y].val[0/4+2];
  r4.x = t0[r3.x].val[0/4];
  r4.y = t0[r3.x].val[0/4+2];
  r4.z = t0[r3.x].val[0/4+1];
  r3.xyz = cb0[70].xyz + r3.yzw;
  r5.xyz = v0.yyy * r4.xzy;
  r6.x = t0[r0.y].val[0/4];
  r6.y = t0[r0.y].val[0/4+1];
  r6.z = t0[r0.y].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r7.x = t0[r0.y].val[0/4];
  r7.y = t0[r0.y].val[0/4+1];
  r7.z = t0[r0.y].val[0/4+2];
  r5.xyz = r6.xyz * v0.xxx + r5.xyz;
  r5.xyz = r7.xyz * v0.zzz + r5.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r8.x = t0[r1.x].val[0/4];
  r8.y = t0[r1.x].val[0/4+1];
  r8.z = t0[r1.x].val[0/4+2];
  r9.w = r8.x;
  r5.w = 1;
  r10.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r11.x = t0[r10.y].val[0/4+1];
  r11.y = t0[r10.y].val[0/4];
  r11.z = t0[r10.y].val[0/4+2];
  r9.x = r11.y;
  r12.x = t0[r10.z].val[0/4];
  r12.y = t0[r10.z].val[0/4+2];
  r12.z = t0[r10.z].val[0/4+1];
  r9.y = r12.x;
  r10.y = t0[r10.w].val[0/4];
  r10.z = t0[r10.w].val[0/4+1];
  r10.w = t0[r10.w].val[0/4+2];
  r13.x = t0[r10.x].val[0/4];
  r13.y = t0[r10.x].val[0/4+1];
  r13.z = t0[r10.x].val[0/4+2];
  r13.w = t0[r10.x].val[0/4+3];
  r9.z = r10.y;
  r14.x = dot(r5.xyzw, r9.xyzw);
  r12.x = r11.z;
  r11.y = r12.z;
  r11.z = r10.z;
  r12.z = r10.w;
  r11.w = r8.y;
  r12.w = r8.z;
  r14.y = dot(r5.xyzw, r11.xyzw);
  r14.z = dot(r5.xyzw, r12.xyzw);
  r5.y = r4.x;
  r5.z = r7.x;
  r5.x = r6.x;
  r8.x = dot(r14.xyz, r5.xyz);
  r10.y = r4.z;
  r10.x = r6.y;
  r10.z = r7.y;
  r8.y = dot(r14.xyz, r10.xyz);
  r15.xyz = r13.yyy * r4.xzy;
  r4.x = r6.z;
  r6.xyz = r13.xxx * r6.xyz;
  r4.z = r7.z;
  r8.z = dot(r14.xyz, r4.xyz);
  r0.y = dot(r7.xyz, r7.xyz);
  r7.xyz = r13.zzz * r7.xyz;
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r13.xyz = r2.xyz * cb1[2].yyy + r8.xyz;
  r0.z = 1 / cb1[1].z;
  r1.x = -r0.z * 0.25 + r13.z;
  r1.x = max(0, r1.x);
  r1.x = cb1[1].z * r1.x;
  r1.y = log2(r1.x);
  r1.y = cb1[1].w * r1.y;
  r1.y = exp2(r1.y);
  r2.w = cmp(r1.x != 0.000000);
  r1.x = r2.w ? r1.y : r1.x;
  r1.x = r1.x * r0.x;
  r14.xy = cb1[0].xy * r1.xx + r13.xy;
  r14.z = r13.z;
  r1.x = dot(r13.xyz, r13.xyz);
  r1.x = sqrt(r1.x);
  r1.y = dot(r14.xyz, r14.xyz);
  r1.y = rsqrt(r1.y);
  r13.xyz = r14.xyz * r1.yyy;
  r8.xyz = r13.xyz * r1.xxx + -r8.xyz;
  r3.xyz = r8.xyz * r0.yyy + r3.xyz;
  r8.xyzw = cb0[1].xyzw * r3.yyyy;
  r8.xyzw = r3.xxxx * cb0[0].xyzw + r8.xyzw;
  r3.xyzw = r3.zzzz * cb0[2].xyzw + r8.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r1.x = 0.00100000005 * r3.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r3.z + r1.x;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r3.x = t0[r1.z].val[0/4+1];
  r3.y = t0[r1.z].val[0/4];
  r3.z = t0[r1.z].val[0/4+2];
  r1.x = t0[r1.w].val[0/4];
  r1.y = t0[r1.w].val[0/4+2];
  r1.z = t0[r1.w].val[0/4+1];
  r8.x = r3.y;
  r8.y = r1.x;
  r13.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r14.x = t0[r13.y].val[0/4];
  r14.y = t0[r13.y].val[0/4+1];
  r14.z = t0[r13.y].val[0/4+2];
  r13.x = t0[r13.x].val[0/4];
  r13.y = t0[r13.x].val[0/4+1];
  r13.z = t0[r13.x].val[0/4+2];
  r14.xyz = cb0[113].xyz + r14.xyz;
  r8.w = r14.x;
  r8.z = r13.x;
  r8.x = dot(v0.xyzw, r8.xyzw);
  r3.w = r14.y;
  r1.w = r14.z;
  r1.x = r3.z;
  r3.y = r1.z;
  r3.z = r13.y;
  r1.z = r13.z;
  r8.z = dot(v0.xyzw, r1.xyzw);
  r8.y = dot(v0.xyzw, r3.xyzw);
  r1.xyz = -cb0[70].xyz + r8.xyz;
  r1.w = 1;
  r3.x = dot(r1.xyzw, r9.xyzw);
  r3.y = dot(r1.xyzw, r11.xyzw);
  r3.z = dot(r1.xyzw, r12.xyzw);
  r1.x = dot(r3.xyz, r5.xyz);
  r1.y = dot(r3.xyz, r10.xyz);
  r1.z = dot(r3.xyz, r4.xyz);
  r1.xyz = r1.xyz / r0.yyy;
  r2.xyz = r2.xyz * cb1[2].yyy + r1.xyz;
  r0.z = -r0.z * 0.25 + r2.z;
  r0.z = max(0, r0.z);
  r0.z = cb1[1].z * r0.z;
  r1.w = log2(r0.z);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r0.z != 0.000000);
  r0.z = r2.w ? r1.w : r0.z;
  r0.x = r0.x * r0.z;
  r3.xy = cb1[0].xy * r0.xx + r2.xy;
  r3.z = r2.z;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r3.xyz * r0.zzz;
  r1.xyz = r2.xyz * r0.xxx + -r1.xyz;
  r0.xyz = r1.xyz * r0.yyy + r8.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.x = (uint)r0.w << 1;
  r0.xyz = t2.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.w = (int)r0.w * asint(cb2[0].y);
  r1.yz = t1.Load(r0.w).xy;
  o5.xy = r1.yz;
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.yyy * r15.xyz;
  r3.xyz = r1.yyy * r15.xyz;
  r3.xyz = r1.xxx * r6.xyz + r3.xyz;
  r0.xyw = r0.xxx * r6.xyz + r2.xyz;
  o3.xyz = r0.zzz * r7.xyz + r0.xyw;
  o4.xyz = r1.zzz * r7.xyz + r3.xyz;
  o4.w = r1.w * r13.w;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}