// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
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
  float4 cb0[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyzw = t1.Load(r0.y).xyzw;
  r3.xyzw = t1.Load(r0.z).xyzw;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r4.x = (int)v2.x + asint(cb4[0].w);
  r4.y = (uint)r4.x << 1;
  r4.yzw = t3.Load(r4.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r4.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.xyzw = t3.Load(r5.x).xyzw;
  r6.xyz = r5.yzx * r4.yzw;
  r4.yzw = r5.xyz * r4.zwy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = r4.yzw * r5.yzx;
  r4.yzw = r4.wyz * r5.zxy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r6.w = dot(r6.xyz, r6.xyz);
  r6.w = rsqrt(r6.w);
  r9.xyz = r6.xyz * r6.www;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = rsqrt(r6.w);
  r10.xyz = r7.xyz * r6.www;
  r6.w = dot(r8.xyz, r8.xyz);
  r7.w = rsqrt(r6.w);
  r11.xyz = r8.xyz * r7.www;
  r12.xyz = r10.xyz * r4.zzz;
  r12.xyz = r4.yyy * r9.xyz + r12.xyz;
  o0.xyz = r4.www * r11.xyz + r12.xyz;
  r4.yzw = r10.xyz * r5.yyy;
  r4.yzw = r5.xxx * r9.xyz + r4.yzw;
  r4.yzw = r5.zzz * r11.xyz + r4.yzw;
  o1.w = cb2[4].w * r5.w;
  r5.x = 0.00390625 * r1.w;
  r5.x = trunc(r5.x);
  r5.yzw = cb0[7].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r5.zzz;
  r9.xyz = cb2[0].xyz * r5.yyy + r9.xyz;
  r5.yzw = cb2[2].xyz * r5.www + r9.xyz;
  r5.yzw = cb2[3].xyz + r5.yzw;
  r9.xyz = cb1[70].xyz + r5.yzw;
  r7.w = dot(r9.xyz, r9.xyz);
  r7.w = sqrt(r7.w);
  r7.w = -cb0[8].x + r7.w;
  r7.w = saturate(cb0[8].y * r7.w);
  o2.y = 1 + -r7.w;
  r7.w = 1 + -r5.x;
  r7.w = cb0[8].w * r7.w;
  r7.w = cb0[8].z * r5.x + r7.w;
  r9.xyz = -cb0[5].xyz + r5.yzw;
  r8.w = dot(r9.xyz, r9.xyz);
  r8.w = sqrt(r8.w);
  r8.w = cb0[2].w * r0.w + r8.w;
  r5.yzw = -cb0[6].xyz + r5.yzw;
  r5.y = dot(r5.yzw, r5.yzw);
  r5.y = sqrt(r5.y);
  r5.y = cb0[2].w * r0.w + r5.y;
  r9.xyz = cmp(cb0[2].xyz < r8.www);
  r9.xyz = r9.xyz ? float3(1,1,1) : 0;
  r5.z = dot(r9.xyz, cb0[4].xyz);
  r9.xyz = cmp(cb0[3].xyz < r5.yyy);
  r9.xyz = r9.xyz ? float3(1,1,1) : 0;
  r5.y = dot(r9.xyz, cb0[4].xyz);
  r5.y = cb0[6].w * r5.y;
  r5.w = r5.z * cb0[5].w + r5.y;
  r5.y = cmp(abs(r5.w) < 0.999000013);
  r5.y = r5.y ? 1.000000 : 0;
  r5.z = r7.w * r5.y;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r1.x = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.y;
  r9.y = r2.y;
  r9.z = r3.y;
  r9.w = r0.y;
  r1.y = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.z;
  r9.y = r2.z;
  r9.z = r3.z;
  r9.w = r0.z;
  r1.z = dot(v0.xyzw, r9.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.x = 1;
  r2.x = r2.x * r5.z;
  r2.y = (int)r4.x * asint(cb4[0].y);
  r2.yz = t2.Load(r2.y).xy;
  r3.x = cmp(r5.z >= 1);
  if (r3.x != 0) {
    r3.xy = cb2[1].xy * r0.yy;
    r0.xy = r0.xx * cb2[0].xy + r3.xy;
    r0.xy = r0.zz * cb2[2].xy + r0.xy;
    r0.xy = cb2[3].xy + r0.xy;
    r0.y = 0.00100000005 * r0.y;
    r0.z = sqrt(r6.w);
    r3.xyz = v0.yyy * r7.xyz;
    r3.xyz = v0.xxx * r6.xyz + r3.xyz;
    r3.xyz = v0.zzz * r8.xyz + r3.xyz;
    r3.xyz = r3.xyz / r0.zzz;
    r4.x = dot(cb1[60].xy, cb1[60].xy);
    r4.x = rsqrt(r4.x);
    r6.xy = cb1[60].xy * r4.xx;
    r4.x = dot(r4.yz, r4.yz);
    r4.x = rsqrt(r4.x);
    r6.zw = r4.yz * r4.xx;
    r4.x = dot(r6.xy, r6.zw);
    r4.x = cmp(-0.774999976 < r4.x);
    r6.xyz = r4.xxx ? float3(0,0,0) : r3.xyz;
    r4.x = dot(r6.xyz, r6.xyz);
    r4.x = sqrt(r4.x);
    r5.y = 1 / cb3[1].z;
    r5.y = -r5.y * 0.25 + r6.z;
    r5.y = max(0, r5.y);
    r5.y = cb3[1].z * r5.y;
    r6.w = cmp(r5.y != 0.000000);
    r7.x = log2(r5.y);
    r7.x = cb3[1].w * r7.x;
    r7.x = exp2(r7.x);
    r5.y = r6.w ? r7.x : r5.y;
    r7.x = r0.x * 0.00100000005 + cb3[1].x;
    r7.y = cb3[1].x * 0.800000012 + r0.y;
    r0.xy = float2(0.5,0.5) + r7.xy;
    r0.xy = frac(r0.xy);
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r7.xy = abs(r0.xy) * abs(r0.xy);
    r0.xy = -abs(r0.xy) * float2(2,2) + float2(3,3);
    r0.xy = r7.xy * r0.xy + float2(-0.5,-0.5);
    r0.xy = r0.xy + r0.xy;
    r0.x = r0.y * r0.y + r0.x;
    r0.y = cmp(cb3[1].z != 0.000000);
    r6.w = cb3[6].x / cb3[1].z;
    r0.y = r0.y ? r6.w : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r0.y;
    r0.x = r0.x * r5.y;
    r6.xy = cb3[0].xy * r0.xx + r6.xy;
    r0.x = dot(r6.xyz, r6.xyz);
    r0.x = rsqrt(r0.x);
    r6.xyz = r6.xyz * r0.xxx;
    r3.xyz = r6.xyz * r4.xxx + -r3.xyz;
    r0.xyz = r3.xyz * r0.zzz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r1.x = -r5.x * 256 + r1.w;
  o4.x = 0.00392156886 * r1.x;
  o4.y = 0.00392156886 * r2.w;
  o4.z = 0.00392156886 * r3.w;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = r2.xxxx * cb1[3].xyzw + r1.xyzw;
  o0.w = 0;
  o1.xyz = r4.yzw;
  o2.x = r0.w;
  o2.zw = r5.zw;
  o3.xy = r2.yz;
  o3.zw = float2(0,0);
  o4.w = 0;
  o5.w = r2.x;
  o5.xyz = r0.xyz;
  return;
}