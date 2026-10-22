// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
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
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR0,
  out float4 o4 : COLOR1,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r1.xyzw = t0.Load(r0.x).xywz;
  r0.yzw = cb0[6].xyz + r1.xyw;
  r2.xyz = cb2[1].xyz * r0.zzz;
  r2.xyz = cb2[0].xyz * r0.yyy + r2.xyz;
  r0.yzw = cb2[2].xyz * r0.www + r2.xyz;
  r0.yzw = cb2[3].xyz + r0.yzw;
  r2.xyz = -cb0[5].xyz + r0.yzw;
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r2.x);
  r2.x = cb0[1].w * r1.z + r2.x;
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
  o4.y = 1 + -r0.y;
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = sqrt(r0.y);
  r0.y = cb0[1].w * r1.z + r0.y;
  r0.yzw = cmp(cb0[1].xyz < r0.yyy);
  r0.yzw = r0.yzw ? float3(1,1,1) : 0;
  r0.y = dot(r0.yzw, cb0[3].xyz);
  r0.w = r0.y * cb0[4].w + r2.x;
  r0.y = cmp(abs(r0.w) < 0.999000013);
  r0.y = r0.y ? 1.000000 : 0;
  r2.x = (int)r0.x * 3;
  r2.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r3.xyzw = t1.Load(r2.x).xyzw;
  r0.x = 0.00390625 * r3.w;
  r0.x = trunc(r0.x);
  r2.x = 1 + -r0.x;
  r2.x = cb0[7].w * r2.x;
  r0.x = cb0[7].z * r0.x + r2.x;
  r0.z = r0.x * r0.y;
  r4.w = 1;
  r5.w = r1.y;
  r5.x = r3.y;
  r2.xyw = t1.Load(r2.y).xyz;
  r6.xyz = t1.Load(r2.z).xyz;
  r5.y = r2.y;
  r5.z = r6.y;
  r0.x = dot(v0.xyzw, r5.xyzw);
  r5.xzw = cb2[1].xyz * r0.xxx;
  r7.w = r1.x;
  r7.x = r3.x;
  r7.y = r2.x;
  r7.z = r6.x;
  r0.x = dot(v0.xyzw, r7.xyzw);
  r5.xzw = cb2[0].xyz * r0.xxx + r5.xzw;
  o4.x = r1.z;
  r1.x = r3.z;
  r1.y = r2.w;
  r1.z = r6.z;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r1.xyw = cb2[2].xyz * r0.xxx + r5.xzw;
  r5.xzw = cb2[3].xyz + cb1[70].xyz;
  r4.xyz = r5.xzw + r1.xyw;
  r4.xyzw = r4.xyzw * r0.zzzz;
  o4.zw = r0.zw;
  r0.xyzw = cb1[1].xyzw * r4.yyyy;
  r0.xyzw = r4.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r4.zzzz * cb1[2].xyzw + r0.xyzw;
  o0.xyzw = r4.wwww * cb1[3].xyzw + r0.xyzw;
  r0.xyz = cb2[1].xyz * r6.yyy;
  r0.xyz = r6.xxx * cb2[0].xyz + r0.xyz;
  r0.xyz = r1.zzz * cb2[2].xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb2[1].xyz * r3.yyy;
  r1.xyz = r7.xxx * cb2[0].xyz + r1.xyz;
  r1.xyz = r3.zzz * cb2[2].xyz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r3.xyz = cb2[1].xyz * r5.yyy;
  r2.xyz = r2.xxx * cb2[0].xyz + r3.xyz;
  r2.xyz = r2.www * cb2[2].xyz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.w = (int)v2.x + asint(cb3[0].w);
  r1.w = (uint)r0.w << 1;
  r3.xyz = t3.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t3.Load(r1.w).xyzw;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.xyz * r4.yzx;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.yyy * r2.xyz;
  r2.xyz = r4.yyy * r2.xyz;
  r2.xyz = r4.xxx * r1.xyz + r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r5.xyz;
  o1.xyz = r3.zzz * r0.xyz + r1.xyz;
  o2.xyz = r4.zzz * r0.xyz + r2.xyz;
  o2.w = cb2[4].w * r4.w;
  o1.w = 0;
  r0.x = (int)r0.w & asint(cb3[0].x);
  r0.y = (int)r0.w * asint(cb3[0].y);
  r0.yz = t2.Load(r0.y).xy;
  o5.xy = r0.yz;
  r0.xyzw = t4.Load(r0.x).xyzw;
  o3.xyzw = r0.zyxw;
  o5.zw = float2(0,0);
  return;
}