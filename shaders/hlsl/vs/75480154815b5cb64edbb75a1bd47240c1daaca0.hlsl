// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb3[24].x + -cb3[24].y;
  r0.y = (int)v2.x + asint(cb1[0].w);
  r0.z = (int)r0.y * asint(cb1[0].y);
  r0.zw = t1.Load(r0.z).xy;
  r0.zw = cb3[12].xy * r0.zw;
  r0.zw = cb0[142].zz * cb3[18].xy + r0.zw;
  r0.z = t3.SampleLevel(s0_s, r0.zw, -1).x;
  r0.x = r0.z * r0.x + cb3[24].y;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.xyz = t2.Load(r0.w).xyz;
  r0.w = mad((int)v1.x, 36, 4);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r0.w = (int)v1.x * 36;
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+2];
  r3.w = t0[r3.x].val[0/4+1];
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+1];
  r4.z = t0[r3.y].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r5.xyz = r3.xwz * r2.yyy;
  r5.xyz = r5.xyz * r1.yyy;
  r6.x = t0[r0.w].val[0/4];
  r6.y = t0[r0.w].val[0/4+1];
  r6.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r7.x = t0[r0.w].val[0/4];
  r7.y = t0[r0.w].val[0/4+1];
  r7.z = t0[r0.w].val[0/4+2];
  r2.xyw = r6.xyz * r2.xxx;
  r8.xyz = r7.xyz * r2.zzz;
  r1.xyw = r1.xxx * r2.xyw + r5.xyz;
  r1.xyz = r1.zzz * r8.xyz + r1.xyw;
  r1.xyz = r1.xyz * r0.xxx;
  r0.x = asint(cb1[0].y) + -1;
  r2.xyz = min(uint3(1,2,3), (uint3)r0.xxx);
  r0.xyw = mad(asint(cb1[0].yyy), (int3)r0.yyy, (int3)r2.xyz);
  r2.xy = t1.Load(r0.x).xy;
  r0.xy = t1.Load(r0.y).xy;
  r5.yz = t1.Load(r0.w).xy;
  r2.z = r0.x;
  r5.x = r0.y;
  r8.y = r3.x;
  r8.z = r7.x;
  r8.x = r6.x;
  r9.x = dot(r2.xyz, r8.xyz);
  r8.x = dot(r5.xyz, r8.xyz);
  r10.y = r3.w;
  r10.z = r7.y;
  r10.x = r6.y;
  r9.y = dot(r2.xyz, r10.xyz);
  r8.y = dot(r5.xyz, r10.xyz);
  r0.xyw = v0.yyy * r3.xwz;
  r0.xyw = r6.xyz * v0.xxx + r0.xyw;
  r3.x = r6.z;
  r0.xyw = r7.xyz * v0.zzz + r0.xyw;
  r3.w = r7.z;
  r0.xyw = r0.xyw + r4.xyz;
  r9.z = dot(r2.xyz, r3.xzw);
  r8.z = dot(r5.xyz, r3.xzw);
  r2.xyz = r9.xyz * cb3[24].zzz + -r1.xyz;
  r1.xyz = r0.zzz * r2.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r8.xyz;
  r2.xyz = -cb0[70].xyz + r0.xyw;
  r3.xyz = cb2[9].xyz + -r2.xyz;
  r2.xyz = cb2[10].xyz + -r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = r0.z * 0.333333343 + -50;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r2.x = -r1.w * 0.00666666683 + 1;
  r1.w = r1.w * 0.333333343 + -50;
  r2.x = max(0, r2.x);
  r2.x = r2.x * 50 + -50;
  r2.x = saturate(cb2[2].y * 51.5099983 + r2.x);
  r2.yz = float2(1,1) + -cb2[0].yz;
  r1.w = saturate(r2.y * 51.5099983 + r1.w);
  r0.z = saturate(r2.z * 51 + r0.z);
  r1.w = r1.w * r2.x;
  r0.z = r1.w * r0.z;
  r1.xyz = r0.zzz * r1.xyz + r8.xyz;
  r2.xyz = r8.xyz + -r1.xyz;
  r1.xyz = cb3[24].www * r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}