// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.x = min(2, (uint)r0.x);
  r0.y = (int)v2.x + asint(cb1[0].w);
  r0.x = mad(asint(cb1[0].y), (int)r0.y, (int)r0.x);
  r0.xz = t1.Load(r0.x).xy;
  r0.w = (int)r0.y * asint(cb1[0].y);
  r1.xy = t1.Load(r0.w).xy;
  r0.xz = -r1.xy + r0.xz;
  r0.xz = cb3[10].zz * r0.xz + r1.xy;
  o5.xy = r1.xy;
  r0.xz = cb3[10].ww * r0.xz;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,18,10,11));
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r0.w = r2.x + r2.y;
  r0.w = r0.w + r2.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r0.w = cb3[9].y * r0.w;
  r3.xy = r0.ww * cb3[10].xy + r0.xz;
  r3.xy = t4.SampleLevel(s0_s, r3.xy, -1).xy;
  r3.zw = r3.xy * float2(2,2) + float2(-1,-1);
  r4.xy = r3.xy + r3.xy;
  r0.w = dot(r3.zw, r3.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r3.xyz = float3(-1,-1,-1) + r4.xyz;
  r0.w = (int)r0.y & asint(cb1[0].x);
  r0.w = t3.Load(r0.w).z;
  r3.xyz = r0.www * r3.xyz + float3(0,0,1);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[11].xxx * r4.xyz + r3.xyz;
  r3.xyz = cb3[11].yzw * r3.xyz;
  r1.y = (int)v1.x * 36;
  r4.x = t0[r1.y].val[0/4];
  r4.y = t0[r1.y].val[0/4+1];
  r4.z = t0[r1.y].val[0/4+2];
  r1.y = dot(-r4.xyz, -r4.xyz);
  r1.y = sqrt(r1.y);
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.w = mad((int)v1.x, 36, 2);
  r6.x = t0[r3.w].val[0/4];
  r6.y = t0[r3.w].val[0/4+1];
  r6.z = t0[r3.w].val[0/4+2];
  r5.x = t0[r5.x].val[0/4];
  r5.z = t0[r5.x].val[0/4+1];
  r5.w = t0[r5.x].val[0/4+2];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r7.xyz = cb0[70].xyz + r7.xyz;
  r3.w = dot(-r5.xzw, -r5.xzw);
  r3.w = sqrt(r3.w);
  r1.y = r3.w + r1.y;
  r3.w = dot(-r6.xyz, -r6.xyz);
  r3.w = sqrt(r3.w);
  r1.y = r3.w + r1.y;
  r1.y = r1.y * 0.333333343 + -1;
  r1.y = cb3[12].x * r1.y + 1;
  r3.xyz = r3.xyz * r1.yyy;
  r3.xyz = cb3[12].yyy * r3.xyz;
  r8.xyz = v0.yyy * r5.xzw;
  r8.xyz = r4.xyz * v0.xxx + r8.xyz;
  r8.xyz = r6.xyz * v0.zzz + r8.xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r3.xyz = r3.xyz * r0.www + r7.xyz;
  r7.xyzw = cb0[1].xyzw * r3.yyyy;
  r7.xyzw = r3.xxxx * cb0[0].xyzw + r7.xyzw;
  r3.xyzw = r3.zzzz * cb0[2].xyzw + r7.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r1.y = 0.00100000005 * r3.w;
  r4.w = cmp(1 < asint(cb0[135].x));
  r1.y = r4.w ? r1.y : 0;
  o0.z = r3.z + r1.y;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r3.x = t0[r1.z].val[0/4+2];
  r3.y = t0[r1.z].val[0/4];
  r3.z = t0[r1.z].val[0/4+1];
  r7.x = r3.y;
  r1.y = t0[r1.w].val[0/4];
  r1.z = t0[r1.w].val[0/4+1];
  r1.w = t0[r1.w].val[0/4+2];
  r8.x = t0[r1.x].val[0/4];
  r8.y = t0[r1.x].val[0/4+1];
  r8.z = t0[r1.x].val[0/4+2];
  r8.w = t0[r1.x].val[0/4+3];
  r7.y = r1.y;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(12,13,6,7));
  r10.x = t0[r9.x].val[0/4];
  r10.y = t0[r9.x].val[0/4+1];
  r10.z = t0[r9.x].val[0/4+2];
  r7.z = r10.x;
  r11.x = t0[r9.z].val[0/4];
  r11.y = t0[r9.z].val[0/4+1];
  r11.z = t0[r9.z].val[0/4+2];
  r11.w = t0[r9.z].val[0/4+3];
  r12.x = r11.x;
  r13.x = t0[r9.w].val[0/4];
  r13.y = t0[r9.w].val[0/4+2];
  r13.z = t0[r9.w].val[0/4+1];
  r13.w = t0[r9.w].val[0/4+3];
  r9.x = t0[r9.y].val[0/4];
  r9.y = t0[r9.y].val[0/4+1];
  r9.z = t0[r9.y].val[0/4+2];
  r12.y = r13.x;
  r14.xy = mad((int2)v1.xx, int2(36,36), int2(8,9));
  r15.x = t0[r14.x].val[0/4];
  r15.y = t0[r14.x].val[0/4+1];
  r15.z = t0[r14.x].val[0/4+3];
  r15.w = t0[r14.x].val[0/4+2];
  r14.x = t0[r14.y].val[0/4];
  r14.y = t0[r14.y].val[0/4+1];
  r14.z = t0[r14.y].val[0/4+2];
  r14.w = t0[r14.y].val[0/4+3];
  r12.z = r15.x;
  r12.w = r14.x;
  r2.w = 1;
  r12.x = dot(r2.xyzw, r12.xyzw);
  r16.x = r11.y;
  r16.y = r13.z;
  r16.z = r15.y;
  r16.w = r14.y;
  r12.y = dot(r2.xyzw, r16.xyzw);
  r13.x = r11.z;
  r15.x = r11.w;
  r15.y = r13.w;
  r13.z = r15.w;
  r13.w = r14.z;
  r15.w = r14.w;
  r12.w = dot(r2.xyzw, r15.xyzw);
  r12.z = dot(r2.xyzw, r13.xyzw);
  r7.w = r9.x;
  r1.x = dot(r12.xyzw, r7.xyzw);
  r2.w = r9.y;
  r2.x = r3.z;
  r2.y = r1.z;
  r2.z = r10.y;
  r4.w = dot(r12.xyzw, r2.xyzw);
  r1.x = r4.w + r1.x;
  r3.w = r9.z;
  r9.xyz = cb0[113].xyz + r9.xyz;
  r4.w = dot(-r3.xyz, -r3.xyz);
  r4.w = sqrt(r4.w);
  r3.y = r1.w;
  r1.y = dot(-r1.yzw, -r1.yzw);
  r1.y = sqrt(r1.y);
  r1.y = r4.w + r1.y;
  r3.z = r10.z;
  r1.z = dot(-r10.xyz, -r10.xyz);
  r1.z = sqrt(r1.z);
  r1.y = r1.y + r1.z;
  r1.y = r1.y * 0.333333343 + -1;
  r1.y = cb3[12].x * r1.y + 1;
  r1.z = dot(r12.xyzw, r3.xyzw);
  r1.x = r1.x + r1.z;
  r1.x = frac(r1.x);
  r1.x = cb0[139].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.x = cb3[9].y * r1.x;
  r0.xz = r1.xx * cb3[10].xy + r0.xz;
  r0.xz = t4.SampleLevel(s0_s, r0.xz, -1).xy;
  r1.xz = r0.xz * float2(2,2) + float2(-1,-1);
  r10.xy = r0.xz + r0.xz;
  r0.x = dot(r1.xz, r1.xz);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r10.z = sqrt(r0.x);
  r1.xzw = float3(-1,-1,-1) + r10.xyz;
  r1.xzw = r0.www * r1.xzw + float3(0,0,1);
  r10.xyz = float3(0,0,1) + -r1.xzw;
  r1.xzw = cb3[11].xxx * r10.xyz + r1.xzw;
  r1.xzw = cb3[11].yzw * r1.xzw;
  r1.xyz = r1.xzw * r1.yyy;
  r1.xyz = cb3[12].yyy * r1.xyz;
  r7.w = r9.x;
  r7.x = dot(v0.xyzw, r7.xyzw);
  r2.w = r9.y;
  r3.w = r9.z;
  r7.z = dot(v0.xyzw, r3.xyzw);
  r7.y = dot(v0.xyzw, r2.xyzw);
  r0.xzw = r1.xyz * r0.www + r7.xyz;
  r1.xyzw = cb0[92].xyzw * r0.zzzz;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.x = (uint)r0.y << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r1.xyzw = t2.Load(r0.y).xyzw;
  r0.xyz = t2.Load(r0.x).xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r8.yyy * r5.xzw;
  r3.xyz = r2.xyz * r0.yyy;
  r2.xyz = r2.xyz * r1.yyy;
  r4.xyz = r8.xxx * r4.xyz;
  r0.xyw = r0.xxx * r4.xyz + r3.xyz;
  r2.xyz = r1.xxx * r4.xyz + r2.xyz;
  r3.xyz = r8.zzz * r6.xyz;
  o4.w = r1.w * r8.w;
  o4.xyz = r1.zzz * r3.xyz + r2.xyz;
  o3.xyz = r0.zzz * r3.xyz + r0.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}