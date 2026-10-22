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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb2[0].y) + -1;
  r0.x = min(2, (uint)r0.x);
  r0.y = (int)v2.x + asint(cb2[0].w);
  r0.x = mad(asint(cb2[0].y), (int)r0.y, (int)r0.x);
  r0.xy = t1.Load(r0.x).xy;
  r0.z = mad((int)v1.x, 36, 5);
  r0.z = t0[r0.z].val[0/4];
  r0.w = t0[r0.z].val[0/4+1];
  r1.xy = float2(0.00100000005,0.00100000005) * r0.zw;
  r2.x = r0.z * 0.00100000005 + cb1[1].x;
  r0.z = r1.x + r1.y;
  r2.y = cb1[1].x * 0.800000012 + r1.y;
  r1.xy = float2(0.5,0.5) + r2.xy;
  r1.xy = frac(r1.xy);
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.z = cb1[2].x + r0.z;
  r2.x = r0.z + r0.y;
  r2.y = r0.z * cb1[3].y + r0.y;
  r0.z = cb1[3].y * r2.x;
  r2.z = 0.5 * r0.z;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r3.xyz = abs(r2.xyz) * abs(r2.xyz);
  r2.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
  r2.xyz = r3.xyz * r2.xyz + float3(-0.5,-0.5,-0.5);
  r2.xyz = r2.xyz + r2.xyz;
  r3.w = r2.y * r2.z;
  r0.z = cmp(r3.w < 0);
  r3.y = abs(r3.w);
  r3.xz = float2(-1,1);
  r0.zw = r0.zz ? r3.xy : r3.zw;
  r1.z = -r2.y * r2.z + r0.z;
  r1.z = r0.w * r1.z + r3.w;
  r0.z = -r1.z + r0.z;
  r0.z = r0.w * r0.z + r1.z;
  r0.z = cb1[3].x * r0.z;
  r0.w = 1 + -cb1[3].x;
  r0.w = r2.x * r0.w;
  r1.z = 1 + -cb1[0].w;
  r0.z = r0.z * r1.z + r0.w;
  r2.xyz = float3(0.0625,1,16) * r0.yyy;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.xyw = r2.xyz * r0.xxx;
  r0.xyz = r0.xyw * r0.zzz;
  r0.w = (int)v1.x * 36;
  r1.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r3.x = t0[r1.z].val[0/4];
  r3.y = t0[r1.z].val[0/4+1];
  r3.z = t0[r1.z].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r4.xyz = v0.yyy * r3.xyz;
  r5.x = t0[r0.w].val[0/4+2];
  r5.y = t0[r0.w].val[0/4];
  r5.z = t0[r0.w].val[0/4+1];
  r0.w = mad((int)v1.x, 36, 2);
  r6.x = t0[r0.w].val[0/4];
  r6.y = t0[r0.w].val[0/4+1];
  r6.z = t0[r0.w].val[0/4+2];
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
  r9.x = dot(r4.xyzw, r9.xyzw);
  r10.x = r8.z;
  r8.y = r10.z;
  r8.z = r7.y;
  r10.z = r7.z;
  r8.w = r11.y;
  r10.w = r11.z;
  r9.z = dot(r4.xyzw, r10.xyzw);
  r9.y = dot(r4.xyzw, r8.xyzw);
  r4.y = r3.x;
  r4.z = r6.x;
  r4.x = r5.y;
  r4.x = dot(r9.xyz, r4.xyz);
  r5.y = r3.z;
  r3.x = r5.z;
  r3.z = r6.y;
  r4.y = dot(r9.xyz, r3.xyz);
  r5.z = r6.z;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r4.z = dot(r9.xyz, r5.xyz);
  r3.xyz = r4.xyz / r0.www;
  r0.xyz = r0.xyz * cb1[2].yyy + r3.xyz;
  r1.z = 1 / cb1[1].z;
  r1.z = -r1.z * 0.25 + r0.z;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.w = log2(r1.z);
  r1.w = cb1[1].w * r1.w;
  r1.w = exp2(r1.w);
  r2.w = cmp(r1.z != 0.000000);
  r1.z = r2.w ? r1.w : r1.z;
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
  r1.z = r0.z;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyz = r1.xyz * r0.xxx + -r3.xyz;
  r0.xyz = r0.xyz * r0.www + r2.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}