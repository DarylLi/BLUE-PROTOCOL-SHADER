// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

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
  float4 cb3[83];
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
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (int)r0.x & asint(cb2[0].x);
  r1.xyzw = t5.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t4.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t4.Load(r2.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.yzw = r2.xyz * r0.zwy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.xyz = r0.yzw * r2.yzx;
  r0.yzw = r0.wyz * r2.zxy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.x = (int)v1.x * 36;
  r3.x = t1[r3.x].val[0/4];
  r3.y = t1[r3.x].val[0/4+1];
  r3.z = t1[r3.x].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t1[r4.x].val[0/4];
  r4.z = t1[r4.x].val[0/4+1];
  r4.w = t1[r4.x].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 2);
  r5.x = t1[r3.w].val[0/4];
  r5.y = t1[r3.w].val[0/4+1];
  r5.z = t1[r3.w].val[0/4+2];
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r7.x = t1[r6.x].val[0/4];
  r7.y = t1[r6.x].val[0/4+1];
  r7.z = t1[r6.x].val[0/4+2];
  r7.w = t1[r6.x].val[0/4+3];
  r8.xyz = r7.xxx * r3.xyz;
  r9.xyz = r7.yyy * r4.xzw;
  r7.xyz = r7.zzz * r5.xyz;
  r10.xyz = r9.xyz * r0.zzz;
  r10.xyz = r0.yyy * r8.xyz + r10.xyz;
  o0.xyz = r0.www * r7.xyz + r10.xyz;
  r0.yzw = r9.xyz * r2.yyy;
  r0.yzw = r2.xxx * r8.xyz + r0.yzw;
  r0.yzw = r2.zzz * r7.xyz + r0.yzw;
  o1.w = r7.w * r2.w;
  r2.x = t1[r4.y].val[0/4];
  r2.y = t1[r4.y].val[0/4+1];
  r2.z = t1[r4.y].val[0/4+2];
  r7.xyz = v0.yyy * r4.xzw;
  r3.xyz = r3.xyz * v0.xxx + r7.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = cb1[70].xyz + r2.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.w = (int)r0.x * asint(cb2[0].y);
  r3.xy = t3.Load(r2.w).xy;
  r2.w = asint(cb2[0].y) + -1;
  r2.w = min(1, (uint)r2.w);
  r0.x = mad(asint(cb2[0].y), (int)r0.x, (int)r2.w);
  r3.zw = t3.Load(r0.x).xy;
  r5.xyz = -cb1[70].xyz + r2.xyz;
  r7.xyz = -cb3[46].xyz + r5.xyz;
  r8.x = t1[r6.y].val[8/4];
  r8.y = t1[r6.z].val[8/4];
  r8.z = t1[r6.w].val[8/4];
  r0.x = saturate(dot(r7.xyz, r8.xyz));
  r0.x = ceil(r0.x);
  r6.xyz = cb3[46].xyz + -r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[82].y;
  r2.w = cb3[82].z * r2.w;
  r0.x = r2.w * r0.x;
  r0.x = 6.28318548 * r0.x;
  r2.w = dot(r4.xzw, r7.xyz);
  r6.xyz = r4.xzw * r2.www + cb3[46].xyz;
  r7.xyz = -r6.xyz + r5.xyz;
  r8.xyz = r7.yzx * r4.wxz;
  r4.xyz = r4.zwx * r7.zxy + -r8.xyz;
  sincos(r0.x, r0.x, r8.x);
  r4.xyz = r4.xyz * r0.xxx;
  r4.xyz = r7.xyz * r8.xxx + r4.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r5.xyz;
  r2.xyz = r4.xyz * cb3[82].www + r2.xyz;
  r4.xyzw = cb1[1].xyzw * r2.yyyy;
  r4.xyzw = r2.xxxx * cb1[0].xyzw + r4.xyzw;
  r4.xyzw = r2.zzzz * cb1[2].xyzw + r4.xyzw;
  r4.xyzw = cb1[3].xyzw + r4.xyzw;
  r5.xyz = cb1[21].xyz * r0.zzz;
  r5.xyz = r0.yyy * cb1[20].xyz + r5.xyz;
  r5.xyz = r0.www * cb1[22].xyz + r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r5.xy = r5.xy / r0.xx;
  o4.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyz = -cb1[68].xyz + r2.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r2.w = dot(r5.xyz, cb1[60].xyz);
  r0.x = r0.x / r2.w;
  r0.x = cb1[210].z * r0.x;
  r0.x = max(0, r0.x);
  r2.w = min(cb1[67].z, cb0[143].z);
  r6.x = cb1[67].z + -r2.w;
  r5.w = r6.x + r5.z;
  r5.z = dot(r5.xyw, r5.xyw);
  r6.x = rsqrt(r5.z);
  r5.z = r6.x * r5.z;
  r0.x = max(cb0[143].w, r0.x);
  r6.y = cmp(0 < r0.x);
  r6.z = r0.x * r6.x;
  r2.w = r6.z * r5.w + r2.w;
  r6.z = -r6.z * r5.w + r5.w;
  r0.x = -r0.x * r6.x + 1;
  r0.x = r0.x * r5.z;
  r6.w = -cb0[146].y + r2.w;
  r6.w = cb0[143].y * r6.w;
  r6.w = max(-127, r6.w);
  r6.w = exp2(-r6.w);
  r6.w = cb0[146].x * r6.w;
  r2.w = -cb0[144].w + r2.w;
  r2.w = cb0[144].y * r2.w;
  r2.w = max(-127, r2.w);
  r2.w = exp2(-r2.w);
  r2.w = cb0[144].z * r2.w;
  r6.w = r6.y ? r6.w : cb0[143].x;
  r2.w = r6.y ? r2.w : cb0[144].x;
  r0.x = r6.y ? r0.x : r5.z;
  r6.y = r6.y ? r6.z : r5.w;
  r6.z = cb0[143].y * r6.y;
  r6.z = max(-127, r6.z);
  r7.x = exp2(-r6.z);
  r7.x = 1 + -r7.x;
  r7.x = r7.x / r6.z;
  r7.y = -r6.z * 0.240226507 + 0.693147182;
  r6.z = cmp(0.00999999978 < abs(r6.z));
  r6.z = r6.z ? r7.x : r7.y;
  r6.y = cb0[144].y * r6.y;
  r6.y = max(-127, r6.y);
  r7.x = exp2(-r6.y);
  r7.x = 1 + -r7.x;
  r7.x = r7.x / r6.y;
  r7.y = -r6.y * 0.240226507 + 0.693147182;
  r6.y = cmp(0.00999999978 < abs(r6.y));
  r6.y = r6.y ? r7.x : r7.y;
  r2.w = r6.y * r2.w;
  r2.w = r6.w * r6.z + r2.w;
  r6.y = r2.w * r0.x;
  r6.zw = cmp(float2(0,0) < cb0[146].zw);
  if (r6.z != 0) {
    r6.z = saturate(r5.z * cb0[150].x + cb0[150].y);
    r7.xy = float2(1,-1) * cb0[149].yx;
    r7.x = dot(r5.xy, r7.xy);
    r7.y = dot(r5.xy, cb0[149].xy);
    r7.z = r5.w;
    r8.xyz = t0.SampleLevel(s0_s, r7.xyz, 0).xyz;
    r7.xyz = t0.SampleLevel(s0_s, r7.xyz, cb0[150].z).xyz;
    r8.xyz = r8.xyz + -r7.xyz;
    r7.xyz = r6.zzz * r8.xyz + r7.xyz;
    r7.xyz = cb0[145].xyz * r7.xyz;
  } else {
    r7.xyz = cb0[145].xyz;
  }
  r6.z = cmp(cb0[147].w >= 0);
  r7.w = cmp(cb0[146].z == 0.000000);
  r6.z = r6.z ? r7.w : 0;
  if (r6.z != 0) {
    r5.xyw = r6.xxx * r5.xyw;
    r5.x = saturate(dot(r5.xyw, cb0[147].xyz));
    r5.x = log2(r5.x);
    r5.x = cb0[148].w * r5.x;
    r5.x = exp2(r5.x);
    r5.xyw = cb0[148].xyz * r5.xxx;
    r0.x = -cb0[147].w + r0.x;
    r0.x = max(0, r0.x);
    r0.x = r2.w * r0.x;
    r0.x = exp2(-r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r8.xyz = r5.xyw * r0.xxx;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r0.x = exp2(-r6.y);
  r0.x = min(1, r0.x);
  r8.w = max(cb0[145].w, r0.x);
  r0.x = cmp(cb0[146].w < r5.z);
  r0.x = r0.x ? r6.w : 0;
  r5.xyzw = r0.xxxx ? float4(0,0,0,1) : r8.xyzw;
  r0.x = 1 + -r5.w;
  r5.xyz = r7.xyz * r0.xxx + r5.xyz;
  r0.x = cmp(0 < cb1[182].y);
  if (r0.x != 0) {
    r0.x = cmp(0 != cb1[184].x);
    r6.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r7.xy = r4.xy / r4.ww;
    r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r6.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r6.x = sqrt(r2.w);
    r6.x = -cb1[181].x + r6.x;
    r6.x = max(0, r6.x);
    r6.x = cb1[182].x * r6.x;
    r6.x = cb1[181].z * r6.x;
    r6.z = sqrt(r6.x);
    r6.w = cb1[181].y * r6.z;
    r7.z = cmp(r6.w < 0.707106769);
    r6.w = dot(r6.ww, r6.ww);
    r6.w = min(1, r6.w);
    r6.w = r7.z ? r6.w : 1;
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r2.w = -r2.z * r2.z + 1;
    r2.w = sqrt(r2.w);
    r8.y = r2.z * 0.5 + 0.5;
    r2.xy = r2.xy / r2.ww;
    r2.z = 1 + -abs(r2.x);
    r2.z = sqrt(r2.z);
    r2.w = abs(r2.x) * -0.0187292993 + 0.0742610022;
    r2.w = r2.w * abs(r2.x) + -0.212114394;
    r2.w = r2.w * abs(r2.x) + 1.57072878;
    r7.z = r2.w * r2.z;
    r7.z = r7.z * -2 + 3.14159274;
    r2.x = cmp(r2.x < -r2.x);
    r2.x = r2.x ? r7.z : 0;
    r2.x = r2.w * r2.z + r2.x;
    r2.y = cmp(r2.y < 0);
    r2.z = 6.28318548 + -r2.x;
    r2.x = r2.y ? r2.z : r2.x;
    r8.x = 0.159154937 * r2.x;
    r2.xy = cb1[180].zw * float2(0.5,0.5) + r8.xy;
    r2.zw = float2(1,1) + cb1[180].xy;
    r2.zw = cb1[180].xy / r2.zw;
    r2.xy = r2.xy * r2.zw;
    r6.xy = r0.xx ? r2.xy : r7.xy;
    r2.xyzw = t2.SampleLevel(s1_s, r6.xyz, 0).xyzw;
    r2.xyz = r2.xyz * r6.www;
    r0.x = 1 + -r2.w;
    r0.x = -r6.w * r0.x + 1;
    r2.xyz = cb1[135].zzz * r2.xyz;
    o6.xyz = r2.xyz * r5.www + r5.xyz;
    o6.w = r5.w * r0.x;
  } else {
    o6.xyzw = r5.xyzw;
  }
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xyzw = r1.zyxw;
  o3.xyzw = r3.xyzw;
  o4.zw = float2(0,0);
  o7.xyzw = r4.xyzw;
  o5.x = v1.x;
  return;
}