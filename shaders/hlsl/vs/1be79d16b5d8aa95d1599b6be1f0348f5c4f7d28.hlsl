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
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r1.x = t0[r0.x].val[0/4];
  r1.y = t0[r0.x].val[0/4+1];
  r1.z = t0[r0.x].val[0/4+2];
  r0.xz = float2(0.00100000005,0.00100000005) * r0.yz;
  r2.x = r0.y * 0.00100000005 + cb1[1].x;
  r0.x = r0.x + r0.z;
  r2.y = cb1[1].x * 0.800000012 + r0.z;
  r0.yz = float2(0.5,0.5) + r2.xy;
  r0.yz = frac(r0.yz);
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r0.x = cb1[2].x + r0.x;
  r0.w = asint(cb2[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.w = (int)v2.x + asint(cb2[0].w);
  r0.w = mad(asint(cb2[0].y), (int)r1.w, (int)r0.w);
  r2.xy = t1.Load(r0.w).xy;
  r3.x = r2.y + r0.x;
  r3.y = r0.x * cb1[3].y + r2.y;
  r0.x = cb1[3].y * r3.x;
  r3.z = 0.5 * r0.x;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r4.xyz = abs(r3.xyz) * abs(r3.xyz);
  r3.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
  r3.xyz = r4.xyz * r3.xyz + float3(-0.5,-0.5,-0.5);
  r3.xyz = r3.xyz + r3.xyz;
  r4.w = r3.y * r3.z;
  r0.x = cmp(r4.w < 0);
  r4.y = abs(r4.w);
  r4.xz = float2(-1,1);
  r0.xw = r0.xx ? r4.xy : r4.zw;
  r2.z = -r3.y * r3.z + r0.x;
  r2.z = r0.w * r2.z + r4.w;
  r0.x = -r2.z + r0.x;
  r0.x = r0.w * r0.x + r2.z;
  r0.x = cb1[3].x * r0.x;
  r0.w = 1 + -cb1[3].x;
  r0.w = r3.x * r0.w;
  r2.z = 1 + -cb1[0].w;
  r0.x = r0.x * r2.z + r0.w;
  r2.yzw = float3(0.0625,1,16) * r2.yyy;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r2.yzw * r2.xxx;
  r2.xyz = r2.xyz * r0.xxx;
  r3.w = r1.x;
  r0.x = (int)v1.x * 36;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.y = t0[r4.y].val[0/4];
  r4.z = t0[r4.y].val[0/4+1];
  r4.w = t0[r4.y].val[0/4+2];
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+2];
  r5.z = t0[r4.x].val[0/4+1];
  r4.xyz = cb0[70].xyz + r4.yzw;
  r6.xyz = v0.yyy * r5.xzy;
  r7.x = t0[r0.x].val[0/4];
  r7.y = t0[r0.x].val[0/4+1];
  r7.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.x].val[0/4];
  r8.y = t0[r0.x].val[0/4+1];
  r8.z = t0[r0.x].val[0/4+2];
  r6.xyz = r7.xyz * v0.xxx + r6.xyz;
  r6.xyz = r8.xyz * v0.zzz + r6.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r6.xyz = -cb0[70].xyz + r4.xyz;
  r6.w = 1;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r10.x = t0[r9.y].val[0/4+1];
  r10.y = t0[r9.y].val[0/4];
  r10.z = t0[r9.y].val[0/4+2];
  r3.x = r10.y;
  r11.x = t0[r9.z].val[0/4];
  r11.y = t0[r9.z].val[0/4+2];
  r11.z = t0[r9.z].val[0/4+1];
  r3.y = r11.x;
  r9.y = t0[r9.w].val[0/4];
  r9.z = t0[r9.w].val[0/4+1];
  r9.w = t0[r9.w].val[0/4+2];
  r12.x = t0[r9.x].val[0/4];
  r12.y = t0[r9.x].val[0/4+1];
  r12.z = t0[r9.x].val[0/4+2];
  r12.w = t0[r9.x].val[0/4+3];
  r3.z = r9.y;
  r3.x = dot(r6.xyzw, r3.xyzw);
  r11.x = r10.z;
  r10.y = r11.z;
  r10.z = r9.z;
  r11.z = r9.w;
  r10.w = r1.y;
  r11.w = r1.z;
  r3.z = dot(r6.xyzw, r11.xyzw);
  r3.y = dot(r6.xyzw, r10.xyzw);
  r1.y = r5.x;
  r1.z = r8.x;
  r1.x = r7.x;
  r1.x = dot(r3.xyz, r1.xyz);
  r6.y = r5.z;
  r6.x = r7.y;
  r6.z = r8.y;
  r1.y = dot(r3.xyz, r6.xyz);
  r6.xyz = r12.yyy * r5.xzy;
  r5.x = r7.z;
  r7.xyz = r12.xxx * r7.xyz;
  r5.z = r8.z;
  r1.z = dot(r3.xyz, r5.xyz);
  r0.x = dot(r8.xyz, r8.xyz);
  r3.xyz = r12.zzz * r8.xyz;
  r0.x = sqrt(r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r2.xyz = r2.xyz * cb1[2].yyy + r1.xyz;
  r0.w = 1 / cb1[1].z;
  r0.w = -r0.w * 0.25 + r2.z;
  r0.w = max(0, r0.w);
  r0.w = cb1[1].z * r0.w;
  r2.w = log2(r0.w);
  r2.w = cb1[1].w * r2.w;
  r2.w = exp2(r2.w);
  r3.w = cmp(r0.w != 0.000000);
  r0.w = r3.w ? r2.w : r0.w;
  r5.xy = abs(r0.yz) * abs(r0.yz);
  r0.yz = -abs(r0.yz) * float2(2,2) + float2(3,3);
  r0.yz = r5.xy * r0.yz + float2(-0.5,-0.5);
  r0.yz = r0.yz + r0.yz;
  r0.y = r0.z * r0.z + r0.y;
  r0.z = cmp(cb1[1].z != 0.000000);
  r2.w = cb1[6].x / cb1[1].z;
  r0.z = r0.z ? r2.w : cb1[6].x;
  r0.y = cb1[1].y * r0.y + r0.z;
  r0.y = r0.y * r0.w;
  r5.xy = cb1[0].xy * r0.yy + r2.xy;
  r5.z = r2.z;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r5.xyz * r0.zzz;
  r0.yzw = r2.xyz * r0.yyy + -r1.xyz;
  r0.xyz = r0.yzw * r0.xxx + r4.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = (uint)r1.w << 1;
  r0.xyz = t2.Load(r0.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.x = (int)r1.w * asint(cb2[0].y);
  r1.xy = t1.Load(r1.x).xy;
  o3.xy = r1.xy;
  r1.xyzw = t2.Load(r0.w).xyzw;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.yyy * r6.xyz;
  r4.xyz = r1.yyy * r6.xyz;
  r4.xyz = r1.xxx * r7.xyz + r4.xyz;
  r0.xyw = r0.xxx * r7.xyz + r2.xyz;
  o1.xyz = r0.zzz * r3.xyz + r0.xyw;
  o2.xyz = r1.zzz * r3.xyz + r4.xyz;
  o2.w = r1.w * r12.w;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}