// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

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
  out float4 o2 : COLOR0,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD4,
  out float4 o7 : TEXCOORD6,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r1.xyz = t1.Load(r0.y).yxz;
  r0.yzw = t1.Load(r0.z).xyz;
  r2.xyz = cb2[1].xyz * r1.xxx;
  r2.xyz = r1.yyy * cb2[0].xyz + r2.xyz;
  r2.xyz = r1.zzz * cb2[2].xyz + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = (int)v2.x + asint(cb3[0].w);
  r3.x = (uint)r2.w << 1;
  r3.xyz = t4.Load(r3.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t4.Load(r3.w).xyzw;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r4.xyz * r3.yzx + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.xyz * r4.yzx;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.xyz = r3.yyy * r2.xyz;
  r2.xyz = r4.yyy * r2.xyz;
  r3.y = (int)r0.x * 3;
  r6.xyzw = t1.Load(r3.y).zxyw;
  r7.xyz = cb2[1].xyz * r6.zzz;
  r7.xyz = r6.yyy * cb2[0].xyz + r7.xyz;
  r7.xyz = r6.xxx * cb2[2].xyz + r7.xyz;
  r3.y = dot(r7.xyz, r7.xyz);
  r3.y = rsqrt(r3.y);
  r7.xyz = r7.xyz * r3.yyy;
  r3.xyw = r3.xxx * r7.xyz + r5.xyz;
  r2.xyz = r4.xxx * r7.xyz + r2.xyz;
  r5.xyz = cb2[1].xyz * r0.zzz;
  r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
  r5.xyz = r0.www * cb2[2].xyz + r5.xyz;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = rsqrt(r4.x);
  r5.xyz = r5.xyz * r4.xxx;
  o0.xyz = r3.zzz * r5.xyz + r3.xyw;
  r2.xyz = r4.zzz * r5.xyz + r2.xyz;
  o1.w = cb2[4].w * r4.w;
  o1.xyz = r2.xyz;
  r3.x = (int)r2.w & asint(cb3[0].x);
  r3.xyzw = t5.Load(r3.x).xyzw;
  o2.xyzw = r3.zyxw;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r4.xy = t2.Load(r0.x).xy;
  r5.xyz = cb0[6].xyz + r3.xyz;
  r7.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r7.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r7.xyz = -cb0[5].xyz + r5.xyz;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cb0[1].w * r3.w + r0.x;
  r7.xyz = cmp(cb0[2].xyz < r0.xxx);
  r7.xyz = r7.xyz ? float3(1,1,1) : 0;
  r0.x = dot(r7.xyz, cb0[3].xyz);
  r0.x = cb0[5].w * r0.x;
  r7.xyz = -cb0[4].xyz + r5.xyz;
  r5.xyz = cb1[70].xyz + r5.xyz;
  r4.z = dot(r5.xyz, r5.xyz);
  r4.z = sqrt(r4.z);
  r4.z = -cb0[7].x + r4.z;
  r4.z = saturate(cb0[7].y * r4.z);
  o3.y = 1 + -r4.z;
  r4.z = dot(r7.xyz, r7.xyz);
  r4.z = sqrt(r4.z);
  r4.z = cb0[1].w * r3.w + r4.z;
  r5.xyz = cmp(cb0[1].xyz < r4.zzz);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r4.z = dot(r5.xyz, cb0[3].xyz);
  r4.w = r4.z * cb0[4].w + r0.x;
  r0.x = cmp(abs(r4.w) < 0.999000013);
  r0.x = r0.x ? 1.000000 : 0;
  r5.x = 0.00390625 * r6.w;
  r5.x = trunc(r5.x);
  r5.y = 1 + -r5.x;
  r5.y = cb0[7].w * r5.y;
  r5.x = cb0[7].z * r5.x + r5.y;
  r4.z = r5.x * r0.x;
  o3.zw = r4.zw;
  o3.x = r3.w;
  r0.x = asint(cb3[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.x = mad(asint(cb3[0].y), (int)r2.w, (int)r0.x);
  r5.xy = t3.Load(r0.x).xy;
  o4.zw = r5.xy;
  r0.x = (int)r2.w * asint(cb3[0].y);
  r2.w = mad(asint(cb3[0].y), (int)r2.w, asint(cb3[0].z));
  r5.xy = t3.Load(r2.w).xy;
  o6.xy = r5.xy * cb4[2].xy + r4.xy;
  r4.xy = t3.Load(r0.x).xy;
  o4.xy = r4.xy;
  r4.xyw = cb1[21].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb1[20].xyz + r4.xyw;
  r2.xyz = r2.zzz * cb1[22].xyz + r2.xyw;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r2.xy = r2.xy / r0.xx;
  o5.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  o5.zw = float2(0,0);
  o6.zw = float2(0,0);
  r2.x = r6.z;
  r2.y = r1.x;
  r2.z = r0.z;
  r2.w = r3.y;
  r0.x = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[1].xyz * r0.xxx;
  r1.x = r6.y;
  r6.y = r1.z;
  r1.z = r0.y;
  r6.z = r0.w;
  r1.w = r3.x;
  r6.w = r3.z;
  r0.x = dot(v0.xyzw, r6.xyzw);
  r0.y = dot(v0.xyzw, r1.xyzw);
  r0.yzw = cb2[0].xyz * r0.yyy + r2.xyz;
  r0.xyz = cb2[2].xyz * r0.xxx + r0.yzw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = 1;
  r0.xyzw = r0.xyzw * r4.zzzz;
  o7.xyzw = r0.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o8.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  return;
}