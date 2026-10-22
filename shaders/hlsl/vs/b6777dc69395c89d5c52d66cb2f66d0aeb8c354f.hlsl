// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out float o4 : TEXCOORD6,
  out float p4 : TEXCOORD8,
  out float3 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb3[0].w);
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
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4+2];
  r8.y = t0[r2.x].val[0/4];
  r8.z = t0[r2.x].val[0/4+1];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.yzx * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  r1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  o1.xyz = r1.xyz;
  r0.y = (int)r0.x * asint(cb3[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r5.y = r3.x;
  r5.x = r8.y;
  r0.yzw = v0.yyy * r3.xyz;
  r0.yzw = r8.yzx * v0.xxx + r0.yzw;
  r0.yzw = r9.xyz * v0.zzz + r0.yzw;
  r0.yzw = r0.yzw + r2.yzw;
  r2.xyz = -cb0[70].xyz + r0.yzw;
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
  r2.w = 1;
  r7.x = dot(r2.xyzw, r7.xyzw);
  r10.x = r6.z;
  r6.y = r10.z;
  r6.z = r4.y;
  r10.z = r4.z;
  r6.w = r11.y;
  r10.w = r11.z;
  r7.z = dot(r2.xyzw, r10.xyzw);
  r7.y = dot(r2.xyzw, r6.xyzw);
  r5.z = r9.x;
  r2.x = dot(r7.xyz, r5.xyz);
  r8.y = r3.z;
  r3.x = r8.z;
  r3.z = r9.y;
  r2.y = dot(r7.xyz, r3.xyz);
  r8.z = r9.z;
  r1.w = dot(r9.xyz, r9.xyz);
  r1.w = sqrt(r1.w);
  r2.z = dot(r7.xyz, r8.xyz);
  r2.xyz = r2.xyz / r1.www;
  r3.x = r4.x * 0.00100000005 + cb1[1].x;
  r3.zw = float2(0.00100000005,0.00100000005) * r4.xw;
  r3.y = cb1[1].x * 0.800000012 + r3.w;
  r2.w = r3.z + r3.w;
  r2.w = cb1[2].x + r2.w;
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
  r3.y = asint(cb3[0].y) + -1;
  r3.y = min(2, (uint)r3.y);
  r0.x = mad(asint(cb3[0].y), (int)r0.x, (int)r3.y);
  r3.yz = t1.Load(r0.x).xy;
  r4.y = r2.w * cb1[3].y + r3.z;
  r4.x = r3.z + r2.w;
  r0.x = cb1[3].y * r4.x;
  r4.z = 0.5 * r0.x;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.xyz = abs(r4.xyz) * abs(r4.xyz);
  r4.xyz = -abs(r4.xyz) * float3(2,2,2) + float3(3,3,3);
  r4.xyz = r5.xyz * r4.xyz + float3(-0.5,-0.5,-0.5);
  r4.xyz = r4.xyz + r4.xyz;
  r5.w = r4.y * r4.z;
  r0.x = cmp(r5.w < 0);
  r5.y = abs(r5.w);
  r5.xz = float2(-1,1);
  r5.xy = r0.xx ? r5.xy : r5.zw;
  r0.x = -r4.y * r4.z + r5.x;
  r0.x = r5.y * r0.x + r5.w;
  r2.w = r5.x + -r0.x;
  r0.x = r5.y * r2.w + r0.x;
  r0.x = cb1[3].x * r0.x;
  r2.w = 1 + -cb1[3].x;
  r2.w = r4.x * r2.w;
  r3.w = 1 + -cb1[0].w;
  r0.x = r0.x * r3.w + r2.w;
  r4.xyz = float3(0.0625,1,16) * r3.zzz;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r3.yzw = r4.xyz * r3.yyy;
  r3.yzw = r3.yzw * r0.xxx;
  r3.yzw = r3.yzw * cb1[2].yyy + r2.xyz;
  r0.x = 1 / cb1[1].z;
  r0.x = -r0.x * 0.25 + r3.w;
  r0.x = max(0, r0.x);
  r0.x = cb1[1].z * r0.x;
  r2.w = log2(r0.x);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r4.x = cmp(r0.x != 0.000000);
  r0.x = r4.x ? r2.w : r0.x;
  r0.x = r3.x * r0.x;
  r4.xy = cb1[0].xy * r0.xx + r3.yz;
  r4.z = r3.w;
  r0.x = dot(r3.yzw, r3.yzw);
  r0.x = sqrt(r0.x);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r4.xyz * r2.www;
  r2.xyz = r3.xyz * r0.xxx + -r2.xyz;
  r0.xyz = r2.xyz * r1.www + r0.yzw;
  r2.xyzw = cb2[20].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb2[19].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb2[21].xyzw + r2.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb2[22].xyzw + r2.xyzw;
  r1.w = cmp(r0.z < 0);
  r2.x = cmp(0 < cb2[28].x);
  r1.w = r1.w ? r2.x : 0;
  r0.zw = r1.ww ? float2(9.99999997e-007,1) : r0.zw;
  o4.x = r0.z;
  o6.xyzw = r0.xyzw;
  r0.x = cb2[23].z;
  r0.y = cb2[24].z;
  r0.z = cb2[25].z;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  p4.x = cb2[27].y * r0.x + cb2[27].x;
  return;
}