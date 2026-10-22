// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : HIT_PROXY_ID0,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x + asint(cb0[8].x);
  r2.yz = mad(int2(3,3), (int2)r2.xx, int2(1,2));
  r3.xyzw = t1.Load(r2.y).yxzw;
  r4.xyzw = t1.Load(r2.z).xyzw;
  r2.yzw = cb2[1].xyz * r3.xxx;
  r2.yzw = r3.yyy * cb2[0].xyz + r2.yzw;
  r2.yzw = r3.zzz * cb2[2].xyz + r2.yzw;
  r5.x = dot(r2.yzw, r2.yzw);
  r5.x = rsqrt(r5.x);
  r2.yzw = r5.xxx * r2.yzw;
  r5.xyz = r2.yzw * r0.zzz;
  r2.yzw = r2.yzw * r1.yyy;
  r0.z = (int)r2.x * 3;
  r6.xyzw = t0.Load(r2.x).xyzw;
  r7.xyzw = t1.Load(r0.z).zxyw;
  r8.xyz = cb2[1].xyz * r7.zzz;
  r8.xyz = r7.yyy * cb2[0].xyz + r8.xyz;
  r8.xyz = r7.xxx * cb2[2].xyz + r8.xyz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = rsqrt(r0.z);
  r8.xyz = r8.xyz * r0.zzz;
  r5.xyz = r0.yyy * r8.xyz + r5.xyz;
  r2.xyz = r1.xxx * r8.xyz + r2.yzw;
  r8.xyz = cb2[1].xyz * r4.yyy;
  r8.xyz = r4.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r4.zzz * cb2[2].xyz + r8.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = rsqrt(r0.y);
  r8.xyz = r8.xyz * r0.yyy;
  o0.xyz = r0.www * r8.xyz + r5.xyz;
  o1.xyz = r1.zzz * r8.xyz + r2.xyz;
  o1.w = cb2[4].w * r1.w;
  r0.yzw = cb0[6].xyz + r6.xyz;
  r1.xyz = cb2[1].xyz * r0.zzz;
  r1.xyz = cb2[0].xyz * r0.yyy + r1.xyz;
  r0.yzw = cb2[2].xyz * r0.www + r1.xyz;
  r0.yzw = cb2[3].xyz + r0.yzw;
  r1.xyz = -cb0[5].xyz + r0.yzw;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = cb0[1].w * r6.w + r1.x;
  r1.xyz = cmp(cb0[2].xyz < r1.xxx);
  r1.xyz = r1.xyz ? float3(1,1,1) : 0;
  r1.x = dot(r1.xyz, cb0[3].xyz);
  r1.x = cb0[5].w * r1.x;
  r1.yzw = -cb0[4].xyz + r0.yzw;
  r0.yzw = cb1[70].xyz + r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = -cb0[7].x + r0.y;
  r0.y = saturate(cb0[7].y * r0.y);
  o2.y = 1 + -r0.y;
  r0.y = dot(r1.yzw, r1.yzw);
  r0.y = sqrt(r0.y);
  r0.y = cb0[1].w * r6.w + r0.y;
  r0.yzw = cmp(cb0[1].xyz < r0.yyy);
  r0.yzw = r0.yzw ? float3(1,1,1) : 0;
  r0.y = dot(r0.yzw, cb0[3].xyz);
  r0.w = r0.y * cb0[4].w + r1.x;
  r0.y = cmp(abs(r0.w) < 0.999000013);
  r0.y = r0.y ? 1.000000 : 0;
  r1.x = 0.00390625 * r7.w;
  r1.x = trunc(r1.x);
  r1.y = 1 + -r1.x;
  r1.y = cb0[7].w * r1.y;
  r1.y = cb0[7].z * r1.x + r1.y;
  r1.x = -r1.x * 256 + r7.w;
  o4.x = 0.00392156886 * r1.x;
  r0.z = r1.y * r0.y;
  o2.zw = r0.zw;
  o2.x = r6.w;
  r0.y = asint(cb3[0].y) + -1;
  r0.y = min(1, (uint)r0.y);
  r0.y = mad(asint(cb3[0].y), (int)r0.x, (int)r0.y);
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xw = t2.Load(r0.x).xy;
  o3.xy = r0.xw;
  r0.xy = t2.Load(r0.y).xy;
  o3.zw = r0.xy;
  o4.w = 0;
  o4.y = 0.00392156886 * r3.w;
  o4.z = 0.00392156886 * r4.w;
  r1.x = r7.z;
  r1.y = r3.x;
  r1.z = r4.y;
  r1.w = r6.y;
  r0.x = dot(v0.xyzw, r1.xyzw);
  r0.xyw = cb2[1].xyz * r0.xxx;
  r3.x = r7.y;
  r7.y = r3.z;
  r3.z = r4.x;
  r7.z = r4.z;
  r3.w = r6.x;
  r7.w = r6.z;
  r1.x = dot(v0.xyzw, r7.xyzw);
  r1.y = dot(v0.xyzw, r3.xyzw);
  r0.xyw = cb2[0].xyz * r1.yyy + r0.xyw;
  r0.xyw = cb2[2].xyz * r1.xxx + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r1.xyz + r0.xyw;
  r1.w = 1;
  r0.xyzw = r1.xyzw * r0.zzzz;
  o5.xyzw = r0.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  return;
}