// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[6].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r1.w = 1 + -r0.x;
  r1.w = cb0[7].w * r1.w;
  r0.x = cb0[7].z * r0.x + r1.w;
  r5.xyz = -cb0[4].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r3.w + r1.w;
  r4.xyz = -cb0[5].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[1].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[3].xyz);
  r4.xyz = cmp(cb0[2].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[3].xyz);
  r2.w = cb0[5].w * r2.w;
  r1.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r1.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.x = r1.w * r0.x;
  r4.x = r1.x;
  r4.y = r2.x;
  r4.z = r0.y;
  r4.w = r3.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r0.z;
  r5.w = r3.y;
  r1.w = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.z;
  r6.y = r2.z;
  r6.z = r0.w;
  r6.w = r3.z;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r4.yzw = cb2[1].xyz * r1.www;
  r4.yzw = cb2[0].xyz * r1.xxx + r4.yzw;
  r4.yzw = cb2[2].xyz * r0.www + r4.yzw;
  r5.xzw = cb2[3].xyz + cb1[70].xyz;
  r4.yzw = r5.xzw + r4.yzw;
  r0.w = 1;
  r0.w = r0.w * r0.x;
  r1.x = cmp(r0.x >= 1);
  if (r1.x != 0) {
    r1.x = (int)v2.x + asint(cb3[0].w);
    r1.x = (int)r1.x & asint(cb3[0].x);
    r1.xw = t2.Load(r1.x).zw;
    r5.xzw = cb2[1].zxy * r1.yyy;
    r5.xzw = r4.xxx * cb2[0].zxy + r5.xzw;
    r5.xzw = r1.zzz * cb2[2].zxy + r5.xzw;
    r6.xyw = cb2[1].zxy * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].zxy + r6.xyw;
    r2.xyz = r2.zzz * cb2[2].zxy + r2.xyw;
    r6.xyw = cb2[1].zxy * r0.zzz;
    r6.xyw = r0.yyy * cb2[0].zxy + r6.xyw;
    r6.xyz = r6.zzz * cb2[2].zxy + r6.xyw;
    r7.xyz = cb2[1].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb2[0].xyz + r7.xyz;
    r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r0.y = cb1[142].z * cb4[8].x + r1.w;
    r0.z = abs(r3.x) + abs(r3.y);
    r0.z = r0.z + abs(r3.z);
    r0.z = frac(r0.z);
    r0.y = r0.z * 0.5 + r0.y;
    r0.y = 6.28318548 * r0.y;
    r0.y = sin(r0.y);
    r0.z = cb4[8].z * r1.x;
    r0.y = r0.y * r0.z;
    r0.y = 6.28318548 * r0.y;
    r1.xyz = cb4[2].yyy * r2.xyz;
    r1.xyz = cb4[2].xxx * r5.xzw + r1.xyz;
    r1.xyz = cb4[2].zzz * r6.xyz + r1.xyz;
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = sqrt(r0.z);
    r1.xyz = r1.xyz / r0.zzz;
    r2.xyz = r4.yzw * r0.xxx + -cb1[70].xyz;
    r5.xyz = r2.xyz + -r3.xyz;
    r0.z = dot(r1.yzx, r5.xyz);
    r3.xyz = r1.yzx * r0.zzz + r3.xyz;
    r5.xyz = -r3.xyz + r2.xyz;
    r6.xyz = r5.yzx * r1.xyz;
    r1.xyz = r1.zxy * r5.zxy + -r6.xyz;
    sincos(r0.y, r4.x, r6.x);
    r1.xyz = r4.xxx * r1.xyz;
    r1.xyz = r5.xyz * r6.xxx + r1.xyz;
    r1.xyz = r3.xyz + r1.xyz;
    r1.xyz = r1.xyz + -r2.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = r4.yzw * r0.xxx + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}