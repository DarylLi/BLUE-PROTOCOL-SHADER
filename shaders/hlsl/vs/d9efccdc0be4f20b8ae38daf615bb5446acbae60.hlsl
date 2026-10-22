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
  float4 cb3[14];
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
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out float4 o7 : TEXCOORD1,
  out uint o8 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = sqrt(r0.w);
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.z = mad((int)v1.x, 36, 2);
  r2.x = t0[r1.z].val[0/4];
  r2.y = t0[r1.z].val[0/4+1];
  r2.z = t0[r1.z].val[0/4+2];
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r1.y = dot(-r1.xzw, -r1.xzw);
  r1.y = sqrt(r1.y);
  r0.w = r1.y + r0.w;
  r1.y = dot(-r2.xyz, -r2.xyz);
  r1.y = sqrt(r1.y);
  r0.w = r1.y + r0.w;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb3[12].w * r0.w + 1;
  r1.y = asint(cb1[0].y) + -1;
  r4.xy = min(uint2(1,2), (uint2)r1.yy);
  r1.y = (int)v2.x + asint(cb1[0].w);
  r4.xy = mad(asint(cb1[0].yy), (int2)r1.yy, (int2)r4.xy);
  r4.yz = t1.Load(r4.y).xy;
  r4.xw = t1.Load(r4.x).xy;
  o6.zw = r4.xw;
  r2.w = (int)r1.y * asint(cb1[0].y);
  r4.xw = t1.Load(r2.w).xy;
  r5.xy = r4.yz + -r4.xw;
  o7.xy = r4.yz;
  r4.yz = cb3[7].xx * r5.xy + r4.xw;
  o6.xy = r4.xw;
  r4.xy = cb3[7].yy * r4.yz;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,18,10,11));
  r6.x = t0[r5.y].val[0/4];
  r6.y = t0[r5.y].val[0/4+1];
  r6.z = t0[r5.y].val[0/4+2];
  r2.w = r6.x + r6.y;
  r2.w = r2.w + r6.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb2[2].x * r2.w;
  r2.w = cb3[5].w * r2.w;
  r4.zw = r2.ww * cb3[6].zw + r4.xy;
  r4.zw = t4.SampleLevel(s0_s, r4.zw, -1).xy;
  r7.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r8.xy = r4.zw + r4.zw;
  r2.w = dot(r7.xy, r7.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r7.xyz = float3(-1,-1,-1) + r8.xyz;
  r2.w = (int)r1.y & asint(cb1[0].x);
  r8.xyzw = t3.Load(r2.w).xyzw;
  r7.xyz = r8.zzz * r7.xyz + float3(0,0,1);
  r9.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb3[7].zzz * r9.xyz + r7.xyz;
  r7.xyz = cb3[12].xyz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r7.xyz = cb3[13].xxx * r7.xyz;
  r9.xyz = v0.yyy * r1.xzw;
  r9.xyz = r0.xyz * v0.xxx + r9.xyz;
  r9.xyz = r2.xyz * v0.zzz + r9.xyz;
  r3.xyz = r9.xyz + r3.xyz;
  r3.xyz = r7.xyz * r8.zzz + r3.xyz;
  r7.xyzw = cb0[1].xyzw * r3.yyyy;
  r7.xyzw = r3.xxxx * cb0[0].xyzw + r7.xyzw;
  r3.xyzw = r3.zzzz * cb0[2].xyzw + r7.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r0.w = 0.00100000005 * r3.w;
  r2.w = cmp(1 < asint(cb0[135].x));
  r0.w = r2.w ? r0.w : 0;
  o0.z = r3.z + r0.w;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r3.x = t0[r5.z].val[0/4+2];
  r3.y = t0[r5.z].val[0/4];
  r3.z = t0[r5.z].val[0/4+1];
  r7.x = r3.y;
  r5.y = t0[r5.w].val[0/4];
  r5.z = t0[r5.w].val[0/4+1];
  r5.w = t0[r5.w].val[0/4+2];
  r9.x = t0[r5.x].val[0/4];
  r9.y = t0[r5.x].val[0/4+1];
  r9.z = t0[r5.x].val[0/4+2];
  r9.w = t0[r5.x].val[0/4+3];
  r7.y = r5.y;
  r10.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(12,13,6,7));
  r11.x = t0[r10.x].val[0/4];
  r11.y = t0[r10.x].val[0/4+1];
  r11.z = t0[r10.x].val[0/4+2];
  r7.z = r11.x;
  r12.x = t0[r10.z].val[0/4];
  r12.y = t0[r10.z].val[0/4+1];
  r12.z = t0[r10.z].val[0/4+2];
  r12.w = t0[r10.z].val[0/4+3];
  r13.x = r12.x;
  r14.x = t0[r10.w].val[0/4];
  r14.y = t0[r10.w].val[0/4+2];
  r14.z = t0[r10.w].val[0/4+1];
  r14.w = t0[r10.w].val[0/4+3];
  r10.x = t0[r10.y].val[0/4];
  r10.y = t0[r10.y].val[0/4+1];
  r10.z = t0[r10.y].val[0/4+2];
  r13.y = r14.x;
  r4.zw = mad((int2)v1.xx, int2(36,36), int2(8,9));
  r15.x = t0[r4.z].val[0/4];
  r15.y = t0[r4.z].val[0/4+1];
  r15.z = t0[r4.z].val[0/4+3];
  r15.w = t0[r4.z].val[0/4+2];
  r16.x = t0[r4.w].val[0/4];
  r16.y = t0[r4.w].val[0/4+1];
  r16.z = t0[r4.w].val[0/4+2];
  r16.w = t0[r4.w].val[0/4+3];
  r13.z = r15.x;
  r13.w = r16.x;
  r6.w = 1;
  r13.x = dot(r6.xyzw, r13.xyzw);
  r17.x = r12.y;
  r17.y = r14.z;
  r17.z = r15.y;
  r17.w = r16.y;
  r13.y = dot(r6.xyzw, r17.xyzw);
  r14.x = r12.z;
  r15.x = r12.w;
  r15.y = r14.w;
  r14.z = r15.w;
  r14.w = r16.z;
  r15.w = r16.w;
  r13.w = dot(r6.xyzw, r15.xyzw);
  r13.z = dot(r6.xyzw, r14.xyzw);
  r7.w = r10.x;
  r0.w = dot(r13.xyzw, r7.xyzw);
  r6.w = r10.y;
  r6.x = r3.z;
  r6.y = r5.z;
  r6.z = r11.y;
  r2.w = dot(r13.xyzw, r6.xyzw);
  r0.w = r2.w + r0.w;
  r3.w = r10.z;
  r10.xyz = cb0[113].xyz + r10.xyz;
  r2.w = dot(-r3.xyz, -r3.xyz);
  r2.w = sqrt(r2.w);
  r3.y = r5.w;
  r4.z = dot(-r5.yzw, -r5.yzw);
  r4.z = sqrt(r4.z);
  r2.w = r4.z + r2.w;
  r3.z = r11.z;
  r4.z = dot(-r11.xyz, -r11.xyz);
  r4.z = sqrt(r4.z);
  r2.w = r4.z + r2.w;
  r2.w = r2.w * 0.333333343 + -1;
  r2.w = cb3[12].w * r2.w + 1;
  r4.z = dot(r13.xyzw, r3.xyzw);
  r0.w = r4.z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[139].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r0.w = cb3[5].w * r0.w;
  r4.xy = r0.ww * cb3[6].zw + r4.xy;
  r4.xy = t4.SampleLevel(s0_s, r4.xy, -1).xy;
  r4.zw = r4.xy * float2(2,2) + float2(-1,-1);
  r5.xy = r4.xy + r4.xy;
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r4.xyz = float3(-1,-1,-1) + r5.xyz;
  r4.xyz = r8.zzz * r4.xyz + float3(0,0,1);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[7].zzz * r5.xyz + r4.xyz;
  r4.xyz = cb3[12].xyz * r4.xyz;
  r4.xyz = r4.xyz * r2.www;
  r4.xyz = cb3[13].xxx * r4.xyz;
  r7.w = r10.x;
  r5.x = dot(v0.xyzw, r7.xyzw);
  r6.w = r10.y;
  r3.w = r10.z;
  r5.z = dot(v0.xyzw, r3.xyzw);
  r5.y = dot(v0.xyzw, r6.xyzw);
  r3.xyz = r4.xyz * r8.zzz + r5.xyz;
  o5.xyzw = r8.zyxw;
  r4.xyzw = cb0[92].xyzw * r3.yyyy;
  r4.xyzw = r3.xxxx * cb0[91].xyzw + r4.xyzw;
  r3.xyzw = r3.zzzz * cb0[93].xyzw + r4.xyzw;
  o2.xyzw = cb0[94].xyzw + r3.xyzw;
  r0.w = (uint)r1.y << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r1.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r3.xyzw = t2.Load(r1.y).xyzw;
  r4.xyz = t2.Load(r0.w).xyz;
  r5.xyz = r4.xyz * r3.yzx;
  r4.xyz = r3.xyz * r4.yzx + -r5.xyz;
  r4.xyz = r4.xyz * r3.www;
  r5.xyz = r4.xyz * r3.yzx;
  r4.xyz = r4.zxy * r3.zxy + -r5.xyz;
  r4.xyz = r4.xyz * r3.www;
  r1.xyz = r9.yyy * r1.xzw;
  r5.xyz = r4.yyy * r1.xyz;
  r1.xyz = r3.yyy * r1.xyz;
  r0.xyz = r9.xxx * r0.xyz;
  r4.xyw = r4.xxx * r0.xyz + r5.xyz;
  r0.xyz = r3.xxx * r0.xyz + r1.xyz;
  r1.xyz = r9.zzz * r2.xyz;
  o4.w = r3.w * r9.w;
  o4.xyz = r3.zzz * r1.xyz + r0.xyz;
  o3.xyz = r4.zzz * r1.xyz + r4.xyw;
  o3.w = 0;
  o7.zw = float2(0,0);
  o8.x = v1.x;
  return;
}