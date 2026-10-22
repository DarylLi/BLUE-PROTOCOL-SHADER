// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
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
  out float4 o5 : TEXCOORD15,
  out float4 o6 : TEXCOORD0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 1;
  r1.x = (int)v1.x * 36;
  r1.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r1.y = t0[r1.z].val[0/4];
  r1.z = t0[r1.z].val[0/4+1];
  r1.w = t0[r1.z].val[0/4+2];
  r3.xyz = v0.yyy * r2.xyz;
  r4.x = t0[r1.x].val[0/4];
  r4.y = t0[r1.x].val[0/4+1];
  r4.z = t0[r1.x].val[0/4+2];
  r1.x = mad((int)v1.x, 36, 2);
  r5.x = t0[r1.x].val[0/4];
  r5.y = t0[r1.x].val[0/4+1];
  r5.z = t0[r1.x].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r6.xyz = cb0[70].xyz + r1.yzw;
  r3.xyz = r6.xyz + r3.xyz;
  r0.xyz = -cb0[70].xyz + r3.xyz;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r7.w = t0[r6.y].val[8/4];
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,21,6,7));
  r7.x = t0[r8.z].val[8/4];
  r7.y = t0[r8.w].val[8/4];
  r7.z = t0[r6.x].val[8/4];
  r0.w = dot(r0.xyzw, r7.xyzw);
  r1.x = t0[r6.z].val[8/4];
  r2.w = t0[r6.w].val[8/4];
  r2.w = r2.w + -r1.x;
  r0.w = -r1.x + r0.w;
  r0.w = r0.w / r2.w;
  r0.w = -cb2[7].w + r0.w;
  r0.w = saturate(r0.w / cb2[8].x);
  r0.w = r0.w * r0.w;
  r3.w = cb2[8].y * r0.w;
  r3.w = cb0[142].z * cb2[7].z + -r3.w;
  r6.xy = float2(-1,0) * r3.ww;
  r6.xy = r1.yz * cb2[7].yy + r6.xy;
  r6.xyz = t3.SampleLevel(s0_s, r6.xy, -1).xyz;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r6.xy = r6.xy + r6.xy;
  r3.w = r6.z * 2 + 1;
  r3.w = cb2[8].z * r3.w;
  r4.w = -9.99999997e-007 + cb2[6].w;
  r4.w = cmp(9.99999975e-006 < abs(r4.w));
  r5.w = cmp(cb2[6].w >= 9.99999997e-007);
  r9.xyz = r5.www ? cb2[5].xyz : float3(1,0,0);
  r9.xyz = r4.www ? r9.xyz : float3(1,0,0);
  r10.xyz = float3(0,1,0) * r9.zxy;
  r10.xyz = r9.yzx * float3(1,0,0) + -r10.xyz;
  r10.xyz = cb2[8].www * r10.xyz;
  r6.yzw = r10.xyz * r6.yyy;
  r6.xyz = r9.xyz * r6.xxx + r6.yzw;
  r6.xyz = cb2[9].xxx * r6.xyz;
  r6.xyz = r9.xyz * r3.www + r6.xyz;
  r11.xyz = r0.xyz + -r1.yzw;
  r6.xyz = r6.xyz * r0.www + r11.xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = sqrt(r0.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r4.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r4.www;
  r4.w = cmp(r3.w >= 9.99999997e-007);
  r3.w = -9.99999997e-007 + r3.w;
  r3.w = cmp(9.99999975e-006 < abs(r3.w));
  r6.xyz = r4.www ? r6.xyz : 0;
  r6.xyz = r3.www ? r6.xyz : 0;
  r6.xyz = r0.www * r6.xyz + r1.yzw;
  r1.yzw = -cb0[67].xyz + r1.yzw;
  r6.xyz = r6.xyz + -r0.xyz;
  r0.w = dot(-r5.xyz, -r5.xyz);
  r11.z = sqrt(r0.w);
  r0.w = dot(-r4.xyz, -r4.xyz);
  r11.x = sqrt(r0.w);
  r0.w = dot(-r2.xyz, -r2.xyz);
  r11.y = sqrt(r0.w);
  r6.xyz = r11.xyz * r6.xyz;
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = sqrt(r0.w);
  r1.yzw = r1.yzw / r0.www;
  r8.y = t0[r8.y].val[0/4];
  r8.z = t0[r8.y].val[0/4+1];
  r8.w = t0[r8.y].val[0/4+2];
  r11.x = t0[r8.x].val[0/4];
  r11.y = t0[r8.x].val[0/4+1];
  r11.z = t0[r8.x].val[0/4+2];
  r11.w = t0[r8.x].val[0/4+3];
  r0.w = dot(r8.yzw, r1.yzw);
  r1.yzw = -r8.yzw * r0.www + r1.yzw;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r5.xyz = r11.zzz * r5.xyz;
  r4.xyz = r11.xxx * r4.xyz;
  r2.xyz = r11.yyy * r2.xyz;
  r3.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r12.xyzw = t2.Load(r4.w).xyzw;
  r11.xyz = r12.yyy * r2.xyz;
  r11.xyz = r12.xxx * r4.xyz + r11.xyz;
  r13.xyz = r12.zzz * r5.xyz + r11.xyz;
  r4.w = dot(r13.xyz, r7.xyz);
  r5.w = dot(r1.yzw, r1.yzw);
  r5.w = sqrt(r5.w);
  r1.yzw = r1.yzw / r5.www;
  r1.y = dot(r1.yzw, r13.xyz);
  r1.y = r1.y * r1.y;
  r1.z = -r1.y * cb2[6].z + r4.w;
  r1.y = cb2[6].z * r1.y;
  r0.w = r0.w * r1.z + r1.y;
  r0.w = 0.0199999996 + r0.w;
  r1.yz = saturate(r0.ww);
  r0.w = cmp(r1.z >= 0.100000001);
  o6.zw = r1.yz;
  r0.xyz = r0.www ? r6.xyz : -r0.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r6.xyzw = cb0[1].xyzw * r0.yyyy;
  r6.xyzw = r0.xxxx * cb0[0].xyzw + r6.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r6.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.y = 0.00100000005 * r0.w;
  r1.z = cmp(1 < asint(cb0[135].x));
  r1.y = r1.z ? r1.y : 0;
  o0.z = r1.y + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.w = 1;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r7.x = t0[r6.x].val[0/4+2];
  r7.y = t0[r6.x].val[0/4];
  r7.z = t0[r6.x].val[0/4+1];
  r14.x = r7.y;
  r1.y = t0[r6.y].val[0/4];
  r1.z = t0[r6.y].val[0/4+1];
  r1.w = t0[r6.y].val[0/4+2];
  r14.y = r1.y;
  r3.x = t0[r6.z].val[0/4];
  r3.y = t0[r6.z].val[0/4+1];
  r3.z = t0[r6.z].val[0/4+2];
  r6.x = t0[r6.w].val[0/4];
  r6.y = t0[r6.w].val[0/4+1];
  r6.z = t0[r6.w].val[0/4+2];
  r14.z = r3.x;
  r11.xyz = cb0[113].xyz + r6.xyz;
  r14.w = r11.x;
  r14.x = dot(v0.xyzw, r14.xyzw);
  r15.x = r7.z;
  r15.y = r1.z;
  r15.z = r3.y;
  r15.w = r11.y;
  r7.w = r11.z;
  r14.y = dot(v0.xyzw, r15.xyzw);
  r4.w = dot(-r7.xyz, -r7.xyz);
  r11.x = sqrt(r4.w);
  r7.y = r1.w;
  r1.y = dot(-r1.yzw, -r1.yzw);
  r11.y = sqrt(r1.y);
  r7.z = r3.z;
  r1.y = dot(-r3.xyz, -r3.xyz);
  r11.z = sqrt(r1.y);
  r14.z = dot(v0.xyzw, r7.xyzw);
  r0.xyz = -cb0[113].xyz + r14.xyz;
  r7.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(14,15,16,17));
  r15.w = t0[r7.w].val[8/4];
  r15.x = t0[r7.x].val[8/4];
  r15.y = t0[r7.y].val[8/4];
  r15.z = t0[r7.z].val[8/4];
  r0.w = dot(r0.xyzw, r15.xyzw);
  r1.y = dot(r13.xyz, r15.xyz);
  r0.w = r0.w + -r1.x;
  r0.w = r0.w / r2.w;
  r0.w = -cb2[7].w + r0.w;
  r0.w = saturate(r0.w / cb2[8].x);
  r0.w = r0.w * r0.w;
  r1.x = cb2[8].y * r0.w;
  r1.x = cb0[139].z * cb2[7].z + -r1.x;
  r1.xz = float2(-1,0) * r1.xx;
  r1.xz = r6.xy * cb2[7].yy + r1.xz;
  r1.xzw = t3.SampleLevel(s0_s, r1.xz, -1).xyz;
  r1.xzw = float3(-0.5,-0.5,-0.5) + r1.xzw;
  r1.xz = r1.xz + r1.xz;
  r1.w = r1.w * 2 + 1;
  r1.w = cb2[8].z * r1.w;
  r3.xyz = r1.zzz * r10.xyz;
  r3.xyz = r9.xyz * r1.xxx + r3.xyz;
  r3.xyz = cb2[9].xxx * r3.xyz;
  r1.xzw = r9.xyz * r1.www + r3.xyz;
  r3.xyz = r0.xyz + -r6.xyz;
  r1.xzw = r1.xzw * r0.www + r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r2.w = dot(r1.xzw, r1.xzw);
  r3.x = sqrt(r2.w);
  r1.xzw = r1.xzw / r3.xxx;
  r3.x = cmp(r2.w >= 9.99999997e-007);
  r2.w = -9.99999997e-007 + r2.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r1.xzw = r3.xxx ? r1.xzw : 0;
  r1.xzw = r2.www ? r1.xzw : 0;
  r1.xzw = r0.www * r1.xzw + r6.xyz;
  r3.xyz = -cb0[111].xyz + r6.xyz;
  r1.xzw = r1.xzw + -r0.xyz;
  r1.xzw = r1.xzw * r11.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r3.xyz = r3.xyz / r0.www;
  r0.w = dot(r8.yzw, r3.xyz);
  r3.xyz = -r8.yzw * r0.www + r3.xyz;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = sqrt(r2.w);
  r3.xyz = r3.xyz / r2.www;
  r2.w = dot(r3.xyz, r13.xyz);
  r2.w = r2.w * r2.w;
  r1.y = -r2.w * cb2[6].z + r1.y;
  r2.w = cb2[6].z * r2.w;
  r0.w = r0.w * r1.y + r2.w;
  r0.w = saturate(0.0199999996 + r0.w);
  r0.w = cmp(r0.w >= 0.100000001);
  r0.xyz = r0.www ? r1.xzw : -r0.xyz;
  r0.xyz = r14.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (uint)r3.w << 1;
  r0.y = (int)r3.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyz = t2.Load(r0.x).xyz;
  r1.xyz = r12.yzx * r0.xyz;
  r0.xyz = r12.xyz * r0.yzx + -r1.xyz;
  r0.xyz = r0.xyz * r12.www;
  r1.xyz = r0.xyz * r12.yzx;
  r0.xyz = r0.zxy * r12.zxy + -r1.xyz;
  r0.xyz = r0.xyz * r12.www;
  r13.w = r12.w * r11.w;
  r1.xyz = r0.yyy * r2.xyz;
  r0.xyw = r0.xxx * r4.xyz + r1.xyz;
  o3.xyz = r0.zzz * r5.xyz + r0.xyw;
  o3.w = 0;
  o4.xyzw = r13.xyzw;
  o5.xyzw = r13.xyzw;
  o7.x = v1.x;
  return;
}