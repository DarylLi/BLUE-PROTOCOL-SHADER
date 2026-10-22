// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  out float4 o3 : COLOR1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r1.xyzw = t0.Load(r0.x).xyzw;
  r0.yzw = cb0[6].xyz + r1.xyz;
  r2.xyz = cb2[1].xyz * r0.zzz;
  r2.xyz = cb2[0].xyz * r0.yyy + r2.xyz;
  r0.yzw = cb2[2].xyz * r0.www + r2.xyz;
  r0.yzw = cb2[3].xyz + r0.yzw;
  r2.xyz = -cb0[5].xyz + r0.yzw;
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r2.x);
  r2.x = cb0[1].w * r1.w + r2.x;
  r2.xyz = cmp(cb0[2].xyz < r2.xxx);
  r2.xyz = r2.xyz ? float3(1,1,1) : 0;
  r2.x = dot(r2.xyz, cb0[3].xyz);
  r2.x = cb0[5].w * r2.x;
  r2.yzw = -cb0[4].xyz + r0.yzw;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = -cb0[7].x + r0.y;
  r0.y = saturate(cb0[7].y * r0.y);
  o3.y = 1 + -r0.y;
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = sqrt(r0.y);
  r0.y = cb0[1].w * r1.w + r0.y;
  r0.yzw = cmp(cb0[1].xyz < r0.yyy);
  r0.yzw = r0.yzw ? float3(1,1,1) : 0;
  r0.y = dot(r0.yzw, cb0[3].xyz);
  r0.w = r0.y * cb0[4].w + r2.x;
  r0.y = cmp(abs(r0.w) < 0.999000013);
  r0.y = r0.y ? 1.000000 : 0;
  r2.x = (int)r0.x * 3;
  r2.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r3.xyzw = t1.Load(r2.x).zxyw;
  r0.x = 0.00390625 * r3.w;
  r0.x = trunc(r0.x);
  r2.x = 1 + -r0.x;
  r2.x = cb0[7].w * r2.x;
  r0.x = cb0[7].z * r0.x + r2.x;
  r0.z = r0.x * r0.y;
  r4.x = r3.z;
  r5.xyz = t1.Load(r2.y).yxz;
  r2.xyz = t1.Load(r2.z).xyz;
  r4.y = r5.x;
  r4.z = r2.y;
  r4.w = r1.y;
  r4.y = dot(v0.xyzw, r4.xyzw);
  r6.xyz = cb2[1].xyz * r4.yyy;
  r5.x = r3.y;
  r3.y = r5.z;
  r5.z = r2.x;
  r3.z = r2.z;
  r5.w = r1.x;
  r4.x = dot(v0.xyzw, r5.xyzw);
  r2.xyz = cb2[0].xyz * r4.xxx + r6.xyz;
  r3.w = r1.z;
  o3.x = r1.w;
  r4.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb2[2].xyz * r4.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r1.xyz * r0.zzz;
  o3.zw = r0.zw;
  r0.xyzw = cb1[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = 0.00100000005 * r0.w;
  r1.y = cmp(1 < asint(cb1[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = cb2[10].y;
  r0.y = cb2[11].y;
  r0.z = cb2[12].y;
  r1.xyw = cb2[13].xyz + cb1[113].xyz;
  r0.w = r1.y;
  r4.w = v0.w;
  r0.x = dot(r4.xyzw, r0.xyzw);
  r0.xyzw = cb1[92].xyzw * r0.xxxx;
  r2.w = r1.x;
  r2.x = cb2[10].x;
  r2.y = cb2[11].x;
  r2.z = cb2[12].x;
  r2.x = dot(r4.xyzw, r2.xyzw);
  r0.xyzw = r2.xxxx * cb1[91].xyzw + r0.xyzw;
  r1.x = cb2[10].z;
  r1.y = cb2[11].z;
  r1.z = cb2[12].z;
  r1.x = dot(r4.xyzw, r1.xyzw);
  r0.xyzw = r1.xxxx * cb1[93].xyzw + r0.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  return;
}