// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE2,
  uint v2 : SV_InstanceID0,
  uint v3 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float o3 : TEXCOORD6,
  out float p3 : TEXCOORD8,
  out float3 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  r0.xyz = cb2[4].zzz * cb2[2].xyz;
  r1.xyz = cb2[4].xxx * cb2[0].xyz;
  r2.xyz = cb2[4].yyy * cb2[1].xyz;
  r0.w = (int)v2.x + asint(cb0[8].x);
  r1.w = (int)r0.w * 3;
  r3.xyz = t1.Load(r1.w).zxy;
  r4.x = r3.z;
  r5.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  r6.xyz = t0.Load(r0.w).xyz;
  r7.xyz = t1.Load(r5.x).yxz;
  r5.xyz = t1.Load(r5.y).xyz;
  r4.y = r7.x;
  r4.z = r5.y;
  r0.w = dot(v1.xyz, r4.xyz);
  r2.xyz = r2.xyz * r0.www;
  r7.x = r3.y;
  r3.y = r7.z;
  r7.z = r5.x;
  r3.z = r5.z;
  r0.w = dot(v1.xyz, r7.xyz);
  r1.xyz = r1.xyz * r0.www + r2.xyz;
  r0.w = dot(v1.xyz, r3.xyz);
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r1.x = cb3[23].z;
  r1.y = cb3[24].z;
  r1.z = cb3[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  p3.x = cb3[27].y * r0.x + cb3[27].x;
  r7.w = r6.x;
  r0.x = dot(v0.xyzw, r7.xyzw);
  r4.w = r6.y;
  r3.w = r6.z;
  r0.y = dot(v0.xyzw, r3.xyzw);
  r0.z = dot(v0.xyzw, r4.xyzw);
  r1.xyz = cb2[1].xyz * r0.zzz;
  r0.xzw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.yyy + r0.xzw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb3[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb3[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb3[21].xyzw + r1.xyzw;
  o4.xyz = r0.xyz;
  r0.xyzw = cb3[22].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb3[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o3.x = r0.z;
  o5.xyzw = r0.xyzw;
  return;
}