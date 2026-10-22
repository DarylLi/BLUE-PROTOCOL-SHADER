// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[1].z != 0.000000);
  r0.y = cb1[6].x / cb1[1].z;
  r0.x = r0.x ? r0.y : cb1[6].x;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r0.y = t0[r1.x].val[0/4];
  r0.z = t0[r1.x].val[0/4+1];
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
  r0.zw = t1.Load(r0.z).xy;
  r2.x = r0.y + r0.w;
  r2.y = r0.y * cb1[3].y + r0.w;
  r0.y = cb1[3].y * r2.x;
  r2.z = 0.5 * r0.y;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r3.xyz = abs(r2.xyz) * abs(r2.xyz);
  r2.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
  r2.xyz = r3.xyz * r2.xyz + float3(-0.5,-0.5,-0.5);
  r2.xyz = r2.xyz + r2.xyz;
  r3.w = r2.y * r2.z;
  r0.y = cmp(r3.w < 0);
  r3.y = abs(r3.w);
  r3.xz = float2(-1,1);
  r3.xy = r0.yy ? r3.xy : r3.zw;
  r0.y = -r2.y * r2.z + r3.x;
  r0.y = r3.y * r0.y + r3.w;
  r1.x = r3.x + -r0.y;
  r0.y = r3.y * r1.x + r0.y;
  r0.y = cb1[3].x * r0.y;
  r1.x = 1 + -cb1[3].x;
  r1.x = r2.x * r1.x;
  r2.x = 1 + -cb1[0].w;
  r0.y = r0.y * r2.x + r1.x;
  r2.xyz = float3(0.0625,1,16) * r0.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r2.xyz * r0.zzz;
  r0.yzw = r2.xyz * r0.yyy;
  r1.x = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.y = t0[r2.y].val[0/4];
  r2.z = t0[r2.y].val[0/4+1];
  r2.w = t0[r2.y].val[0/4+2];
  r3.x = t0[r2.x].val[0/4];
  r3.y = t0[r2.x].val[0/4+1];
  r3.z = t0[r2.x].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.yzw;
  r4.xyz = v0.yyy * r3.xyz;
  r5.x = t0[r1.x].val[0/4+2];
  r5.y = t0[r1.x].val[0/4];
  r5.z = t0[r1.x].val[0/4+1];
  r1.x = mad((int)v1.x, 36, 2);
  r6.x = t0[r1.x].val[0/4];
  r6.y = t0[r1.x].val[0/4+1];
  r6.z = t0[r1.x].val[0/4+2];
  r4.xyz = r5.yzx * v0.xxx + r4.xyz;
  r4.xyz = r6.xyz * v0.zzz + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + r2.xyz;
  r4.w = 1;
  r7.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r8.x = t0[r7.x].val[0/4+1];
  r8.y = t0[r7.x].val[0/4];
  r8.z = t0[r7.x].val[0/4+2];
  r9.x = r8.y;
  r10.x = t0[r7.y].val[0/4];
  r10.y = t0[r7.y].val[0/4+2];
  r10.z = t0[r7.y].val[0/4+1];
  r9.y = r10.x;
  r7.x = t0[r7.z].val[0/4];
  r7.y = t0[r7.z].val[0/4+1];
  r7.z = t0[r7.z].val[0/4+2];
  r11.x = t0[r7.w].val[0/4];
  r11.y = t0[r7.w].val[0/4+1];
  r11.z = t0[r7.w].val[0/4+2];
  r9.z = r7.x;
  r9.w = r11.x;
  r12.x = dot(r4.xyzw, r9.xyzw);
  r10.x = r8.z;
  r8.y = r10.z;
  r8.z = r7.y;
  r10.z = r7.z;
  r8.w = r11.y;
  r10.w = r11.z;
  r12.y = dot(r4.xyzw, r8.xyzw);
  r12.z = dot(r4.xyzw, r10.xyzw);
  r4.y = r3.x;
  r4.z = r6.x;
  r4.x = r5.y;
  r7.x = dot(r12.xyz, r4.xyz);
  r5.y = r3.z;
  r3.x = r5.z;
  r3.z = r6.y;
  r7.y = dot(r12.xyz, r3.xyz);
  r5.z = r6.z;
  r1.x = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r1.x);
  r7.z = dot(r12.xyz, r5.xyz);
  r6.xyz = r7.xyz / r1.xxx;
  r7.xyz = r0.yzw * cb1[2].yyy + r6.xyz;
  r2.w = 1 / cb1[1].z;
  r3.w = -r2.w * 0.25 + r7.z;
  r3.w = max(0, r3.w);
  r3.w = cb1[1].z * r3.w;
  r4.w = log2(r3.w);
  r4.w = cb1[1].w * r4.w;
  r4.w = exp2(r4.w);
  r5.w = cmp(r3.w != 0.000000);
  r3.w = r5.w ? r4.w : r3.w;
  r3.w = r3.w * r0.x;
  r11.xy = cb1[0].xy * r3.ww + r7.xy;
  r11.z = r7.z;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r4.w = dot(r11.xyz, r11.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = r11.xyz * r4.www;
  r6.xyz = r7.xyz * r3.www + -r6.xyz;
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
  r2.x = mad((int)v1.x, 36, 13);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r6.w = r2.x;
  r7.x = t0[r1.y].val[0/4+1];
  r7.y = t0[r1.y].val[0/4];
  r7.z = t0[r1.y].val[0/4+2];
  r6.x = r7.y;
  r11.x = t0[r1.z].val[0/4];
  r11.y = t0[r1.z].val[0/4+2];
  r11.z = t0[r1.z].val[0/4+1];
  r1.y = t0[r1.w].val[0/4];
  r1.z = t0[r1.w].val[0/4+1];
  r1.w = t0[r1.w].val[0/4+2];
  r6.y = r11.x;
  r6.z = r1.y;
  r6.x = dot(v0.xyzw, r6.xyzw);
  r7.w = r2.y;
  r11.w = r2.z;
  r11.x = r7.z;
  r7.y = r11.z;
  r7.z = r1.z;
  r11.z = r1.w;
  r6.z = dot(v0.xyzw, r11.xyzw);
  r6.y = dot(v0.xyzw, r7.xyzw);
  r7.xyz = -cb0[70].xyz + r6.xyz;
  r7.w = 1;
  r2.x = dot(r7.xyzw, r9.xyzw);
  r2.y = dot(r7.xyzw, r8.xyzw);
  r2.z = dot(r7.xyzw, r10.xyzw);
  r4.x = dot(r2.xyz, r4.xyz);
  r4.y = dot(r2.xyz, r3.xyz);
  r4.z = dot(r2.xyz, r5.xyz);
  r1.yzw = r4.xyz / r1.xxx;
  r0.yzw = r0.yzw * cb1[2].yyy + r1.yzw;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = sqrt(r2.x);
  r2.y = -r2.w * 0.25 + r0.w;
  r2.y = max(0, r2.y);
  r2.y = cb1[1].z * r2.y;
  r2.z = log2(r2.y);
  r2.z = cb1[1].w * r2.z;
  r2.z = exp2(r2.z);
  r2.w = cmp(r2.y != 0.000000);
  r2.y = r2.w ? r2.z : r2.y;
  r0.x = r2.y * r0.x;
  r0.yz = cb1[0].xy * r0.xx + r0.yz;
  r0.x = dot(r0.yzw, r0.yzw);
  r0.x = rsqrt(r0.x);
  r0.xyz = r0.yzw * r0.xxx;
  r0.xyz = r0.xyz * r2.xxx + -r1.yzw;
  r0.xyz = r0.xyz * r1.xxx + r6.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}