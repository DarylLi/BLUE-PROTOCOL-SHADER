// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[211];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[151];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r0.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.x = t1[r0.w].val[0/4];
  r2.y = t1[r0.w].val[0/4+1];
  r2.z = t1[r0.w].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t1[r3.x].val[0/4];
  r3.z = t1[r3.x].val[0/4+1];
  r3.w = t1[r3.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r4.x = t1[r0.w].val[0/4];
  r4.y = t1[r0.w].val[0/4+1];
  r4.z = t1[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 4);
  r5.x = t1[r0.w].val[0/4];
  r5.y = t1[r0.w].val[0/4+1];
  r5.z = t1[r0.w].val[0/4+2];
  r5.w = t1[r0.w].val[0/4+3];
  r6.xyz = r5.xxx * r2.xyz;
  r7.xyz = r5.yyy * r3.xzw;
  r5.xyz = r5.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.yyy;
  r0.xyw = r0.xxx * r6.xyz + r8.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r7.xyz * r1.yyy;
  r0.xyz = r1.xxx * r6.xyz + r0.xyz;
  r0.xyz = r1.zzz * r5.xyz + r0.xyz;
  o1.w = r5.w * r1.w;
  r1.x = t1[r3.y].val[0/4];
  r1.y = t1[r3.y].val[0/4+1];
  r1.z = t1[r3.y].val[0/4+2];
  r3.xyz = v0.yyy * r3.xzw;
  r2.xyz = r2.xyz * v0.xxx + r3.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r0.xyz * cb3[4].zzz + r1.xyz;
  r2.xyzw = cb1[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r3.xyz = -cb1[68].xyz + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r1.w = dot(r3.xyz, cb1[60].xyz);
  r0.w = r0.w / r1.w;
  r0.w = cb1[210].z * r0.w;
  r0.w = max(0, r0.w);
  r1.w = min(cb1[67].z, cb0[143].z);
  r4.x = cb1[67].z + -r1.w;
  r3.w = r4.x + r3.z;
  r3.z = dot(r3.xyw, r3.xyw);
  r4.x = rsqrt(r3.z);
  r3.z = r4.x * r3.z;
  r0.w = max(cb0[143].w, r0.w);
  r4.y = cmp(0 < r0.w);
  r4.z = r0.w * r4.x;
  r1.w = r4.z * r3.w + r1.w;
  r4.z = -r4.z * r3.w + r3.w;
  r0.w = -r0.w * r4.x + 1;
  r0.w = r0.w * r3.z;
  r4.w = -cb0[146].y + r1.w;
  r4.w = cb0[143].y * r4.w;
  r4.w = max(-127, r4.w);
  r4.w = exp2(-r4.w);
  r4.w = cb0[146].x * r4.w;
  r1.w = -cb0[144].w + r1.w;
  r1.w = cb0[144].y * r1.w;
  r1.w = max(-127, r1.w);
  r1.w = exp2(-r1.w);
  r1.w = cb0[144].z * r1.w;
  r4.w = r4.y ? r4.w : cb0[143].x;
  r1.w = r4.y ? r1.w : cb0[144].x;
  r0.w = r4.y ? r0.w : r3.z;
  r4.y = r4.y ? r4.z : r3.w;
  r4.z = cb0[143].y * r4.y;
  r4.z = max(-127, r4.z);
  r5.x = exp2(-r4.z);
  r5.x = 1 + -r5.x;
  r5.x = r5.x / r4.z;
  r5.y = -r4.z * 0.240226507 + 0.693147182;
  r4.z = cmp(0.00999999978 < abs(r4.z));
  r4.z = r4.z ? r5.x : r5.y;
  r4.y = cb0[144].y * r4.y;
  r4.y = max(-127, r4.y);
  r5.x = exp2(-r4.y);
  r5.x = 1 + -r5.x;
  r5.x = r5.x / r4.y;
  r5.y = -r4.y * 0.240226507 + 0.693147182;
  r4.y = cmp(0.00999999978 < abs(r4.y));
  r4.y = r4.y ? r5.x : r5.y;
  r1.w = r4.y * r1.w;
  r1.w = r4.w * r4.z + r1.w;
  r4.y = r1.w * r0.w;
  r4.zw = cmp(float2(0,0) < cb0[146].zw);
  if (r4.z != 0) {
    r4.z = saturate(r3.z * cb0[150].x + cb0[150].y);
    r5.xy = float2(1,-1) * cb0[149].yx;
    r5.x = dot(r3.xy, r5.xy);
    r5.y = dot(r3.xy, cb0[149].xy);
    r5.z = r3.w;
    r6.xyz = t0.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = t0.SampleLevel(s0_s, r5.xyz, cb0[150].z).xyz;
    r6.xyz = r6.xyz + -r5.xyz;
    r5.xyz = r4.zzz * r6.xyz + r5.xyz;
    r5.xyz = cb0[145].xyz * r5.xyz;
  } else {
    r5.xyz = cb0[145].xyz;
  }
  r4.z = cmp(cb0[147].w >= 0);
  r5.w = cmp(cb0[146].z == 0.000000);
  r4.z = r4.z ? r5.w : 0;
  if (r4.z != 0) {
    r3.xyw = r4.xxx * r3.xyw;
    r3.x = saturate(dot(r3.xyw, cb0[147].xyz));
    r3.x = log2(r3.x);
    r3.x = cb0[148].w * r3.x;
    r3.x = exp2(r3.x);
    r3.xyw = cb0[148].xyz * r3.xxx;
    r0.w = -cb0[147].w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = r1.w * r0.w;
    r0.w = exp2(-r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r6.xyz = r3.xyw * r0.www;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r0.w = exp2(-r4.y);
  r0.w = min(1, r0.w);
  r6.w = max(cb0[145].w, r0.w);
  r0.w = cmp(cb0[146].w < r3.z);
  r0.w = r0.w ? r4.w : 0;
  r3.xyzw = r0.wwww ? float4(0,0,0,1) : r6.xyzw;
  r0.w = 1 + -r3.w;
  r3.xyz = r5.xyz * r0.www + r3.xyz;
  r0.w = cmp(0 < cb1[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb1[184].x);
    r4.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r5.xy = r2.xy / r2.ww;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r4.x = sqrt(r1.w);
    r4.x = -cb1[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb1[182].x * r4.x;
    r4.x = cb1[181].z * r4.x;
    r4.z = sqrt(r4.x);
    r4.w = cb1[181].y * r4.z;
    r5.z = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.z ? r4.w : 1;
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
    r1.w = -r1.z * r1.z + 1;
    r1.w = sqrt(r1.w);
    r6.y = r1.z * 0.5 + 0.5;
    r1.xy = r1.xy / r1.ww;
    r1.z = 1 + -abs(r1.x);
    r1.z = sqrt(r1.z);
    r1.w = abs(r1.x) * -0.0187292993 + 0.0742610022;
    r1.w = r1.w * abs(r1.x) + -0.212114394;
    r1.w = r1.w * abs(r1.x) + 1.57072878;
    r5.z = r1.w * r1.z;
    r5.z = r5.z * -2 + 3.14159274;
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? r5.z : 0;
    r1.x = r1.w * r1.z + r1.x;
    r1.y = cmp(r1.y < 0);
    r1.z = 6.28318548 + -r1.x;
    r1.x = r1.y ? r1.z : r1.x;
    r6.x = 0.159154937 * r1.x;
    r1.xy = cb1[180].zw * float2(0.5,0.5) + r6.xy;
    r1.zw = float2(1,1) + cb1[180].xy;
    r1.zw = cb1[180].xy / r1.zw;
    r1.xy = r1.xy * r1.zw;
    r4.xy = r0.ww ? r1.xy : r5.xy;
    r1.xyzw = t2.SampleLevel(s1_s, r4.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r4.www;
    r0.w = 1 + -r1.w;
    r0.w = -r4.w * r0.w + 1;
    r1.xyz = cb1[135].zzz * r1.xyz;
    o3.xyz = r1.xyz * r3.www + r3.xyz;
    o3.w = r3.w * r0.w;
  } else {
    o3.xyzw = r3.xyzw;
  }
  o0.w = 0;
  o1.xyz = r0.xyz;
  o4.xyzw = r2.xyzw;
  o2.x = v1.x;
  return;
}