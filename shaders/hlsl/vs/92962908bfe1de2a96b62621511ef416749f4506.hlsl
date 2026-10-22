// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[21];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR1,
  out float4 o6 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb3[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t3.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r4.w).xyzw;
  r6.xyz = r5.yzx * r4.xyz;
  r4.xyz = r5.xyz * r4.yzx + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = r4.xyz * r5.yzx;
  r4.xyz = r4.zxy * r5.zxy + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = r7.xyz * r4.www;
  r4.w = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = r8.xyz * r4.www;
  r9.xyz = r7.xyz * r4.yyy;
  r4.xyw = r4.xxx * r6.xyz + r9.xyz;
  o3.xyz = r4.zzz * r8.xyz + r4.xyw;
  r4.xyz = r7.xyz * r5.yyy;
  r4.xyz = r5.xxx * r6.xyz + r4.xyz;
  o4.xyz = r5.zzz * r8.xyz + r4.xyz;
  o4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[6].xyz + r0.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = -cb0[7].x + r4.w;
  r4.w = saturate(cb0[7].y * r4.w);
  o5.y = 1 + -r4.w;
  r4.w = 1 + -r1.w;
  r4.w = cb0[7].w * r4.w;
  r1.w = cb0[7].z * r1.w + r4.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[1].w * r0.w + r4.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[1].w * r0.w + r4.x;
  r4.yzw = cmp(cb0[1].xyz < r4.www);
  r4.yzw = r4.yzw ? float3(1,1,1) : 0;
  r4.y = dot(r4.yzw, cb0[3].xyz);
  r4.xzw = cmp(cb0[2].xyz < r4.xxx);
  r4.xzw = r4.xzw ? float3(1,1,1) : 0;
  r4.x = dot(r4.xzw, cb0[3].xyz);
  r4.x = cb0[5].w * r4.x;
  r4.w = r4.y * cb0[4].w + r4.x;
  r4.x = cmp(abs(r4.w) < 0.999000013);
  r4.x = r4.x ? 1.000000 : 0;
  r4.z = r4.x * r1.w;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r0.x;
  r5.x = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r0.y;
  r5.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r5.z = dot(v0.xyzw, r3.xyzw);
  r0.xyz = cb2[1].xyz * r5.yyy;
  r0.xyz = cb2[0].xyz * r5.xxx + r0.xyz;
  r0.xyz = cb2[2].xyz * r5.zzz + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = (int)r2.w * asint(cb3[0].y);
  r1.xy = t2.Load(r1.x).xy;
  r1.z = cmp(r4.z >= 1);
  r2.xyz = r0.xyz * r4.zzz + -cb1[70].xyz;
  r3.xyz = -cb4[9].xyz + r2.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb4[19].y;
  r1.w = r1.w * 2 + cb4[20].x;
  r1.w = saturate(-2 + r1.w);
  r4.xy = float2(3.14159274,6.28318548) * r1.ww;
  r6.xy = sin(r4.xy);
  r7.z = 50 * r6.x;
  r6.xzw = cb4[11].xyz + -r2.xyz;
  r2.w = dot(cb4[13].xyz, r3.xyz);
  r3.xyz = cb4[13].xyz * r2.www + cb4[9].xyz;
  r8.xyz = -r3.xyz + r2.xyz;
  r9.xyz = cb4[13].zxy * r8.yzx;
  r9.xyz = cb4[13].yzx * r8.zxy + -r9.xyz;
  r2.w = cos(r4.y);
  r9.xyz = r9.xyz * r6.yyy;
  r8.xyz = r8.xyz * r2.www + r9.xyz;
  r3.xyz = r8.xyz + r3.xyz;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz + -r6.xzw;
  r2.xyz = r1.www * r2.xyz + r6.xzw;
  r7.xy = float2(0,0);
  r2.xyz = r7.xyz + r2.xyz;
  r2.xyz = r1.zzz ? r2.xyz : 0;
  r0.xyz = r0.xyz * r4.zzz + r2.xyz;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  r5.w = v0.w;
  r3.x = cb2[10].x;
  r3.y = cb2[11].x;
  r3.z = cb2[12].x;
  r3.w = r2.x;
  r3.x = dot(r5.xyzw, r3.xyzw);
  r6.x = cb2[10].y;
  r6.y = cb2[11].y;
  r6.z = cb2[12].y;
  r6.w = r2.y;
  r3.y = dot(r5.xyzw, r6.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r3.z = dot(r5.xyzw, r2.xyzw);
  if (r1.z != 0) {
    r2.xyz = -cb1[113].xyz + r3.xyz;
    r5.xyz = -cb4[9].xyz + r2.xyz;
    r1.z = dot(r5.xyz, r5.xyz);
    r1.z = sqrt(r1.z);
    r1.z = r1.z / cb4[19].y;
    r1.z = r1.z * 2 + cb4[20].x;
    r1.z = saturate(-2 + r1.z);
    r4.xy = float2(3.14159274,6.28318548) * r1.zz;
    r6.xy = sin(r4.xy);
    r7.z = 50 * r6.x;
    r6.xzw = cb4[11].xyz + -r2.xyz;
    r1.w = dot(cb4[13].xyz, r5.xyz);
    r5.xyz = cb4[13].xyz * r1.www + cb4[9].xyz;
    r8.xyz = -r5.xyz + r2.xyz;
    r9.xyz = cb4[13].zxy * r8.yzx;
    r9.xyz = cb4[13].yzx * r8.zxy + -r9.xyz;
    r1.w = cos(r4.y);
    r9.xyz = r9.xyz * r6.yyy;
    r8.xyz = r8.xyz * r1.www + r9.xyz;
    r5.xyz = r8.xyz + r5.xyz;
    r2.xyz = r5.xyz + -r2.xyz;
    r2.xyz = r2.xyz + -r6.xzw;
    r2.xyz = r1.zzz * r2.xyz + r6.xzw;
    r7.xy = float2(0,0);
    r2.xyz = r7.xyz + r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyzw = cb1[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r2.xyzw;
  r2.xyzw = cb1[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r2.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  o3.w = 0;
  o5.x = r0.w;
  o5.zw = r4.zw;
  o6.xy = r1.xy;
  o6.zw = float2(0,0);
  return;
}