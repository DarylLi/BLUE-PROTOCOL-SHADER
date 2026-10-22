// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[4];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[211];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[151];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t3.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t3.Load(r0.y).xyz;
  r3.xyz = t3.Load(r0.z).xyz;
  r4.xyzw = t2.Load(r0.x).xyzw;
  r0.xyzw = t4.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r5.x = (uint)r2.w << 1;
  r5.xyz = t6.Load(r5.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t6.Load(r5.w).xyzw;
  r7.xyz = r6.yzx * r5.xyz;
  r5.xyz = r6.xyz * r5.yzx + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = r5.xyz * r6.yzx;
  r5.xyz = r5.zxy * r6.zxy + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = cb3[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb3[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb3[2].xyz + r7.xyz;
  r8.xyz = cb3[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb3[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb3[2].xyz + r8.xyz;
  r9.xyz = cb3[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb3[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb3[2].xyz + r9.xyz;
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r5.w);
  r7.xyz = r7.xyz * r5.www;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = rsqrt(r5.w);
  r8.xyz = r8.xyz * r5.www;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = rsqrt(r5.w);
  r9.xyz = r9.xyz * r5.www;
  r10.xyz = r8.xyz * r5.yyy;
  r5.xyw = r5.xxx * r7.xyz + r10.xyz;
  o0.xyz = r5.zzz * r9.xyz + r5.xyw;
  r5.xyz = r8.xyz * r6.yyy;
  r5.xyz = r6.xxx * r7.xyz + r5.xyz;
  o1.xyz = r6.zzz * r9.xyz + r5.xyz;
  o1.w = cb3[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb3[1].xyz * r5.yyy;
  r5.xyw = cb3[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb3[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb3[3].xyz + r5.xyz;
  r6.xyz = cb2[70].xyz + r5.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r5.w = -cb0[7].x + r5.w;
  r5.w = saturate(cb0[7].y * r5.w);
  o2.y = 1 + -r5.w;
  r5.w = 1 + -r1.w;
  r5.w = cb0[7].w * r5.w;
  r1.w = cb0[7].z * r1.w + r5.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[1].w * r4.w + r5.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[1].w * r4.w + r5.x;
  r5.yzw = cmp(cb0[1].xyz < r5.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r5.y = dot(r5.yzw, cb0[3].xyz);
  r5.xzw = cmp(cb0[2].xyz < r5.xxx);
  r5.xzw = r5.xzw ? float3(1,1,1) : 0;
  r5.x = dot(r5.xzw, cb0[3].xyz);
  r5.x = cb0[5].w * r5.x;
  r5.w = r5.y * cb0[4].w + r5.x;
  r5.x = cmp(abs(r5.w) < 0.999000013);
  r5.x = r5.x ? 1.000000 : 0;
  r5.z = r5.x * r1.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb3[1].xyz * r1.yyy;
  r1.xyw = cb3[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb3[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb3[3].xyz + cb2[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r3.xyzw = r1.xyzw * r5.zzzz;
  r1.w = (int)r2.w * asint(cb4[0].y);
  r2.xy = t5.Load(r1.w).xy;
  r6.xyzw = cb2[1].xyzw * r3.yyyy;
  r6.xyzw = r3.xxxx * cb2[0].xyzw + r6.xyzw;
  r6.xyzw = r3.zzzz * cb2[2].xyzw + r6.xyzw;
  r6.xyzw = r3.wwww * cb2[3].xyzw + r6.xyzw;
  r1.w = mad(asint(cb4[0].y), (int)r2.w, asint(cb4[0].z));
  r2.zw = t5.Load(r1.w).xy;
  o4.xy = r2.zw * cb5[2].xy + r0.xy;
  o4.zw = r2.zw * cb5[3].xy + r0.zw;
  r0.xyz = r1.xyz * r5.zzz + -cb2[68].xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r1.y = dot(r0.xyz, cb2[60].xyz);
  r1.x = r1.x / r1.y;
  r1.x = cb2[210].z * r1.x;
  r1.x = max(0, r1.x);
  r1.y = min(cb2[67].z, cb1[143].z);
  r1.z = cb2[67].z + -r1.y;
  r0.w = r1.z + r0.z;
  r0.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r0.z);
  r0.z = r1.z * r0.z;
  r1.x = max(cb1[143].w, r1.x);
  r1.w = cmp(0 < r1.x);
  r2.z = r1.x * r1.z;
  r1.y = r2.z * r0.w + r1.y;
  r2.z = -r2.z * r0.w + r0.w;
  r1.x = -r1.x * r1.z + 1;
  r1.x = r1.x * r0.z;
  r2.w = -cb1[146].y + r1.y;
  r2.w = cb1[143].y * r2.w;
  r2.w = max(-127, r2.w);
  r2.w = exp2(-r2.w);
  r2.w = cb1[146].x * r2.w;
  r1.y = -cb1[144].w + r1.y;
  r1.y = cb1[144].y * r1.y;
  r1.y = max(-127, r1.y);
  r1.y = exp2(-r1.y);
  r1.y = cb1[144].z * r1.y;
  r2.w = r1.w ? r2.w : cb1[143].x;
  r1.y = r1.w ? r1.y : cb1[144].x;
  r1.x = r1.w ? r1.x : r0.z;
  r1.w = r1.w ? r2.z : r0.w;
  r2.z = cb1[143].y * r1.w;
  r2.z = max(-127, r2.z);
  r3.w = exp2(-r2.z);
  r3.w = 1 + -r3.w;
  r3.w = r3.w / r2.z;
  r4.x = -r2.z * 0.240226507 + 0.693147182;
  r2.z = cmp(0.00999999978 < abs(r2.z));
  r2.z = r2.z ? r3.w : r4.x;
  r1.w = cb1[144].y * r1.w;
  r1.w = max(-127, r1.w);
  r3.w = exp2(-r1.w);
  r3.w = 1 + -r3.w;
  r3.w = r3.w / r1.w;
  r4.x = -r1.w * 0.240226507 + 0.693147182;
  r1.w = cmp(0.00999999978 < abs(r1.w));
  r1.w = r1.w ? r3.w : r4.x;
  r1.y = r1.y * r1.w;
  r1.y = r2.w * r2.z + r1.y;
  r1.w = r1.y * r1.x;
  r2.zw = cmp(float2(0,0) < cb1[146].zw);
  if (r2.z != 0) {
    r2.z = saturate(r0.z * cb1[150].x + cb1[150].y);
    r4.xy = float2(1,-1) * cb1[149].yx;
    r4.x = dot(r0.xy, r4.xy);
    r4.y = dot(r0.xy, cb1[149].xy);
    r4.z = r0.w;
    r7.xyz = t0.SampleLevel(s0_s, r4.xyz, 0).xyz;
    r4.xyz = t0.SampleLevel(s0_s, r4.xyz, cb1[150].z).xyz;
    r7.xyz = r7.xyz + -r4.xyz;
    r4.xyz = r2.zzz * r7.xyz + r4.xyz;
    r4.xyz = cb1[145].xyz * r4.xyz;
  } else {
    r4.xyz = cb1[145].xyz;
  }
  r2.z = cmp(cb1[147].w >= 0);
  r3.w = cmp(cb1[146].z == 0.000000);
  r2.z = r2.z ? r3.w : 0;
  if (r2.z != 0) {
    r0.xyw = r1.zzz * r0.xyw;
    r0.x = saturate(dot(r0.xyw, cb1[147].xyz));
    r0.x = log2(r0.x);
    r0.x = cb1[148].w * r0.x;
    r0.x = exp2(r0.x);
    r0.xyw = cb1[148].xyz * r0.xxx;
    r1.x = -cb1[147].w + r1.x;
    r1.x = max(0, r1.x);
    r1.x = r1.y * r1.x;
    r1.x = exp2(-r1.x);
    r1.x = min(1, r1.x);
    r1.x = 1 + -r1.x;
    r7.xyz = r1.xxx * r0.xyw;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.x = exp2(-r1.w);
  r0.x = min(1, r0.x);
  r7.w = max(cb1[145].w, r0.x);
  r0.x = cmp(cb1[146].w < r0.z);
  r0.x = r0.x ? r2.w : 0;
  r0.xyzw = r0.xxxx ? float4(0,0,0,1) : r7.xyzw;
  r1.x = 1 + -r0.w;
  r0.xyz = r4.xyz * r1.xxx + r0.xyz;
  r1.x = cmp(0 < cb2[182].y);
  if (r1.x != 0) {
    r1.x = cmp(0 != cb2[184].x);
    r1.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb2[68].xyz;
    r2.zw = r6.xy / r6.ww;
    r2.zw = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.yzw = r3.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r1.yzw;
    r3.x = dot(r1.yzw, r1.yzw);
    r3.y = sqrt(r3.x);
    r3.y = -cb2[181].x + r3.y;
    r3.y = max(0, r3.y);
    r3.y = cb2[182].x * r3.y;
    r3.y = cb2[181].z * r3.y;
    r4.z = sqrt(r3.y);
    r3.y = cb2[181].y * r4.z;
    r3.z = cmp(r3.y < 0.707106769);
    r3.y = dot(r3.yy, r3.yy);
    r3.y = min(1, r3.y);
    r3.y = r3.z ? r3.y : 1;
    r3.x = rsqrt(r3.x);
    r1.yzw = r3.xxx * r1.yzw;
    r3.x = -r1.w * r1.w + 1;
    r3.x = sqrt(r3.x);
    r5.y = r1.w * 0.5 + 0.5;
    r1.yz = r1.yz / r3.xx;
    r1.w = 1 + -abs(r1.y);
    r1.w = sqrt(r1.w);
    r3.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
    r3.x = r3.x * abs(r1.y) + -0.212114394;
    r3.x = r3.x * abs(r1.y) + 1.57072878;
    r3.z = r3.x * r1.w;
    r3.z = r3.z * -2 + 3.14159274;
    r1.y = cmp(r1.y < -r1.y);
    r1.y = r1.y ? r3.z : 0;
    r1.y = r3.x * r1.w + r1.y;
    r1.z = cmp(r1.z < 0);
    r1.w = 6.28318548 + -r1.y;
    r1.y = r1.z ? r1.w : r1.y;
    r5.x = 0.159154937 * r1.y;
    r1.yz = cb2[180].zw * float2(0.5,0.5) + r5.xy;
    r3.xz = float2(1,1) + cb2[180].xy;
    r3.xz = cb2[180].xy / r3.xz;
    r1.yz = r3.xz * r1.yz;
    r4.xy = r1.xx ? r1.yz : r2.zw;
    r1.xyzw = t1.SampleLevel(s1_s, r4.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r3.yyy;
    r1.w = 1 + -r1.w;
    r1.w = -r3.y * r1.w + 1;
    r1.xyz = cb2[135].zzz * r1.xyz;
    o5.xyz = r1.xyz * r0.www + r0.xyz;
    o5.w = r1.w * r0.w;
  } else {
    o5.xyzw = r0.xyzw;
  }
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o6.xyzw = r6.xyzw;
  return;
}