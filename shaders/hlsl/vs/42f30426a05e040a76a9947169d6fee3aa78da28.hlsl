// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD4,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : LIGHTMAP_ID0,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t5.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t5.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t1[r2.x].val[0/4];
  r2.y = t1[r2.x].val[0/4+1];
  r2.z = t1[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t1[r3.x].val[0/4];
  r3.z = t1[r3.x].val[0/4+1];
  r3.w = t1[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t1[r2.w].val[0/4];
  r4.y = t1[r2.w].val[0/4+1];
  r4.z = t1[r2.w].val[0/4+2];
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(4,24));
  r6.x = t1[r5.x].val[0/4];
  r6.y = t1[r5.x].val[0/4+1];
  r6.z = t1[r5.x].val[0/4+2];
  r6.w = t1[r5.x].val[0/4+3];
  r5.xzw = r6.xxx * r2.xyz;
  r7.xyz = r6.yyy * r3.xzw;
  r6.xyz = r6.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.zzz;
  r8.xyz = r0.yyy * r5.xzw + r8.xyz;
  o0.xyz = r0.www * r6.xyz + r8.xyz;
  r0.yzw = r7.xyz * r1.yyy;
  r0.yzw = r1.xxx * r5.xzw + r0.yzw;
  o1.xyz = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r0.y = t1[r3.y].val[0/4];
  r0.z = t1[r3.y].val[0/4+1];
  r0.w = t1[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.yzw = r1.xyz + r0.yzw;
  r1.x = (int)r0.x * asint(cb2[0].y);
  r1.xy = t4.Load(r1.x).xy;
  r1.z = asint(cb2[0].y) + -1;
  r1.z = min(1, (uint)r1.z);
  r1.z = mad(asint(cb2[0].y), (int)r0.x, (int)r1.z);
  r1.zw = t4.Load(r1.z).xy;
  r2.xyzw = cb1[1].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r0.x = mad(asint(cb2[0].y), (int)r0.x, asint(cb2[0].z));
  r3.xy = t4.Load(r0.x).xy;
  r0.x = t1[r5.y].val[12/4];
  r0.x = (int)r0.x + asint(cb2[1].y);
  r3.z = mad((int)r0.x, 15, 2);
  r4.x = t2[r3.z].val[0/4];
  r4.y = t2[r3.z].val[0/4+1];
  r4.z = t2[r3.z].val[0/4+2];
  r4.w = t2[r3.z].val[0/4+3];
  o3.xy = r3.xy * r4.xy + r4.zw;
  r3.xyz = -cb1[68].xyz + r0.yzw;
  r4.x = dot(r3.xyz, r3.xyz);
  r4.x = sqrt(r4.x);
  r4.y = dot(r3.xyz, cb1[60].xyz);
  r4.x = r4.x / r4.y;
  r4.x = cb1[210].z * r4.x;
  r4.x = max(0, r4.x);
  r4.y = min(cb1[67].z, cb0[143].z);
  r4.z = cb1[67].z + -r4.y;
  r3.w = r4.z + r3.z;
  r3.z = dot(r3.xyw, r3.xyw);
  r4.z = rsqrt(r3.z);
  r3.z = r4.z * r3.z;
  r4.x = max(cb0[143].w, r4.x);
  r4.w = cmp(0 < r4.x);
  r5.x = r4.x * r4.z;
  r4.y = r5.x * r3.w + r4.y;
  r5.x = -r5.x * r3.w + r3.w;
  r4.x = -r4.x * r4.z + 1;
  r4.x = r4.x * r3.z;
  r5.y = -cb0[146].y + r4.y;
  r5.y = cb0[143].y * r5.y;
  r5.y = max(-127, r5.y);
  r5.y = exp2(-r5.y);
  r5.y = cb0[146].x * r5.y;
  r4.y = -cb0[144].w + r4.y;
  r4.y = cb0[144].y * r4.y;
  r4.y = max(-127, r4.y);
  r4.y = exp2(-r4.y);
  r4.y = cb0[144].z * r4.y;
  r5.y = r4.w ? r5.y : cb0[143].x;
  r4.y = r4.w ? r4.y : cb0[144].x;
  r4.x = r4.w ? r4.x : r3.z;
  r4.w = r4.w ? r5.x : r3.w;
  r5.x = cb0[143].y * r4.w;
  r5.x = max(-127, r5.x);
  r5.z = exp2(-r5.x);
  r5.z = 1 + -r5.z;
  r5.z = r5.z / r5.x;
  r5.w = -r5.x * 0.240226507 + 0.693147182;
  r5.x = cmp(0.00999999978 < abs(r5.x));
  r5.x = r5.x ? r5.z : r5.w;
  r4.w = cb0[144].y * r4.w;
  r4.w = max(-127, r4.w);
  r5.z = exp2(-r4.w);
  r5.z = 1 + -r5.z;
  r5.z = r5.z / r4.w;
  r5.w = -r4.w * 0.240226507 + 0.693147182;
  r4.w = cmp(0.00999999978 < abs(r4.w));
  r4.w = r4.w ? r5.z : r5.w;
  r4.y = r4.y * r4.w;
  r4.y = r5.y * r5.x + r4.y;
  r4.w = r4.y * r4.x;
  r5.xy = cmp(float2(0,0) < cb0[146].zw);
  if (r5.x != 0) {
    r5.x = saturate(r3.z * cb0[150].x + cb0[150].y);
    r5.zw = float2(1,-1) * cb0[149].yx;
    r6.x = dot(r3.xy, r5.zw);
    r6.y = dot(r3.xy, cb0[149].xy);
    r6.z = r3.w;
    r7.xyz = t0.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = t0.SampleLevel(s0_s, r6.xyz, cb0[150].z).xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r5.xzw = r5.xxx * r7.xyz + r6.xyz;
    r5.xzw = cb0[145].xyz * r5.xzw;
  } else {
    r5.xzw = cb0[145].xyz;
  }
  r6.x = cmp(cb0[147].w >= 0);
  r6.y = cmp(cb0[146].z == 0.000000);
  r6.x = r6.y ? r6.x : 0;
  if (r6.x != 0) {
    r3.xyw = r4.zzz * r3.xyw;
    r3.x = saturate(dot(r3.xyw, cb0[147].xyz));
    r3.x = log2(r3.x);
    r3.x = cb0[148].w * r3.x;
    r3.x = exp2(r3.x);
    r3.xyw = cb0[148].xyz * r3.xxx;
    r4.x = -cb0[147].w + r4.x;
    r4.x = max(0, r4.x);
    r4.x = r4.y * r4.x;
    r4.x = exp2(-r4.x);
    r4.x = min(1, r4.x);
    r4.x = 1 + -r4.x;
    r6.xyz = r4.xxx * r3.xyw;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r3.x = exp2(-r4.w);
  r3.x = min(1, r3.x);
  r6.w = max(cb0[145].w, r3.x);
  r3.x = cmp(cb0[146].w < r3.z);
  r3.x = r3.x ? r5.y : 0;
  r3.xyzw = r3.xxxx ? float4(0,0,0,1) : r6.xyzw;
  r4.x = 1 + -r3.w;
  r3.xyz = r5.xzw * r4.xxx + r3.xyz;
  r4.x = cmp(0 < cb1[182].y);
  if (r4.x != 0) {
    r4.x = cmp(0 != cb1[184].x);
    r4.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r5.xy = r2.xy / r2.ww;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yzw = r0.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.yzw;
    r4.y = dot(r0.yzw, r0.yzw);
    r4.z = sqrt(r4.y);
    r4.z = -cb1[181].x + r4.z;
    r4.z = max(0, r4.z);
    r4.z = cb1[182].x * r4.z;
    r4.z = cb1[181].z * r4.z;
    r6.z = sqrt(r4.z);
    r4.z = cb1[181].y * r6.z;
    r4.w = cmp(r4.z < 0.707106769);
    r4.z = dot(r4.zz, r4.zz);
    r4.z = min(1, r4.z);
    r4.z = r4.w ? r4.z : 1;
    r4.y = rsqrt(r4.y);
    r0.yzw = r4.yyy * r0.yzw;
    r4.y = -r0.w * r0.w + 1;
    r4.y = sqrt(r4.y);
    r7.y = r0.w * 0.5 + 0.5;
    r0.yz = r0.yz / r4.yy;
    r0.w = 1 + -abs(r0.y);
    r0.w = sqrt(r0.w);
    r4.y = abs(r0.y) * -0.0187292993 + 0.0742610022;
    r4.y = r4.y * abs(r0.y) + -0.212114394;
    r4.y = r4.y * abs(r0.y) + 1.57072878;
    r4.w = r4.y * r0.w;
    r4.w = r4.w * -2 + 3.14159274;
    r0.y = cmp(r0.y < -r0.y);
    r0.y = r0.y ? r4.w : 0;
    r0.y = r4.y * r0.w + r0.y;
    r0.z = cmp(r0.z < 0);
    r0.w = 6.28318548 + -r0.y;
    r0.y = r0.z ? r0.w : r0.y;
    r7.x = 0.159154937 * r0.y;
    r0.yz = cb1[180].zw * float2(0.5,0.5) + r7.xy;
    r4.yw = float2(1,1) + cb1[180].xy;
    r4.yw = cb1[180].xy / r4.yw;
    r0.yz = r4.yw * r0.yz;
    r6.xy = r4.xx ? r0.yz : r5.xy;
    r5.xyzw = t3.SampleLevel(s1_s, r6.xyz, 0).xyzw;
    r0.yzw = r5.xyz * r4.zzz;
    r4.x = 1 + -r5.w;
    r4.x = -r4.z * r4.x + 1;
    r0.yzw = cb1[135].zzz * r0.yzw;
    o5.xyz = r0.yzw * r3.www + r3.xyz;
    o5.w = r4.x * r3.w;
  } else {
    o5.xyzw = r3.xyzw;
  }
  o0.w = 0;
  o2.xyzw = r1.xyzw;
  o3.zw = float2(0,0);
  o6.xyzw = r2.xyzw;
  o4.x = v1.x;
  p4.x = r0.x;
  return;
}