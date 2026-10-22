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
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR1,
  out float4 o2 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = (int)v2.x + asint(cb4[0].w);
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[7].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[8].x + r2.w;
  r2.w = saturate(cb0[8].y * r2.w);
  o1.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[8].w * r2.w;
  r1.w = cb0[8].z * r1.w + r2.w;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r3.w + r2.w;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[2].w * r3.w + r4.x;
  r4.yzw = cmp(cb0[2].xyz < r2.www);
  r4.yzw = r4.yzw ? float3(1,1,1) : 0;
  r2.w = dot(r4.yzw, cb0[4].xyz);
  r4.xyz = cmp(cb0[3].xyz < r4.xxx);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r4.x = dot(r4.xyz, cb0[4].xyz);
  r4.x = cb0[6].w * r4.x;
  r4.w = r2.w * cb0[5].w + r4.x;
  r2.w = cmp(abs(r4.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r4.z = r2.w * r1.w;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r1.x = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r0.z;
  r6.w = r3.y;
  r1.w = dot(v0.xyzw, r6.xyzw);
  r7.x = r1.z;
  r7.y = r2.z;
  r7.z = r0.w;
  r7.w = r3.z;
  r0.w = dot(v0.xyzw, r7.xyzw);
  r5.yzw = cb2[1].xyz * r1.www;
  r5.yzw = cb2[0].xyz * r1.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r0.www + r5.yzw;
  r6.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r6.xzw + r5.yzw;
  r0.w = 1;
  r0.w = r0.w * r4.z;
  r1.x = (int)r0.x * asint(cb4[0].y);
  r1.xw = t2.Load(r1.x).xy;
  r2.y = cmp(r4.z >= 1);
  if (r2.y != 0) {
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    r6.xzw = t3.Load(r0.x).xyz;
    r7.xyw = cb2[1].xyz * r1.yyy;
    r7.xyw = r5.xxx * cb2[0].xyz + r7.xyw;
    r7.xyw = r1.zzz * cb2[2].xyz + r7.xyw;
    r8.xyz = cb2[1].xyz * r6.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r8.xyz;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r8.xyz = cb2[1].xyz * r0.zzz;
    r0.xyz = r0.yyy * cb2[0].xyz + r8.xyz;
    r0.xyz = r7.zzz * cb2[2].xyz + r0.xyz;
    r1.y = dot(r7.xyw, r7.xyw);
    r1.y = rsqrt(r1.y);
    r1.yz = r7.xy * r1.yy;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r4.xy = r2.xy * r2.ww;
    r2.w = dot(r0.xyz, r0.xyz);
    r5.x = rsqrt(r2.w);
    r8.xy = r5.xx * r0.xy;
    r4.xy = r6.zz * r4.xy;
    r1.yz = r6.xx * r1.yz + r4.xy;
    r1.yz = r6.ww * r8.xy + r1.yz;
    r4.xy = cb2[1].xy * r3.yy;
    r3.xy = r3.xx * cb2[0].xy + r4.xy;
    r3.xy = r3.zz * cb2[2].xy + r3.xy;
    r3.xy = cb2[3].xy + r3.xy;
    r3.y = 0.00100000005 * r3.y;
    r2.w = sqrt(r2.w);
    r2.xyz = v0.yyy * r2.xyz;
    r2.xyz = v0.xxx * r7.xyw + r2.xyz;
    r0.xyz = v0.zzz * r0.xyz + r2.xyz;
    r0.xyz = r0.xyz / r2.www;
    r2.x = dot(cb1[60].xy, cb1[60].xy);
    r2.x = rsqrt(r2.x);
    r2.xy = cb1[60].xy * r2.xx;
    r2.z = dot(r1.yz, r1.yz);
    r2.z = rsqrt(r2.z);
    r1.yz = r2.zz * r1.yz;
    r1.y = dot(r2.xy, r1.yz);
    r1.y = cmp(-0.774999976 < r1.y);
    r2.xyz = r1.yyy ? float3(0,0,0) : r0.xyz;
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.z = 1 / cb3[1].z;
    r1.z = -r1.z * 0.25 + r2.z;
    r1.z = max(0, r1.z);
    r1.z = cb3[1].z * r1.z;
    r3.z = cmp(r1.z != 0.000000);
    r4.x = log2(r1.z);
    r4.x = cb3[1].w * r4.x;
    r4.x = exp2(r4.x);
    r1.z = r3.z ? r4.x : r1.z;
    r4.x = r3.x * 0.00100000005 + cb3[1].x;
    r4.y = cb3[1].x * 0.800000012 + r3.y;
    r3.xy = float2(0.5,0.5) + r4.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r4.xy = abs(r3.xy) * abs(r3.xy);
    r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = r4.xy * r3.xy + float2(-0.5,-0.5);
    r3.xy = r3.xy + r3.xy;
    r3.x = r3.y * r3.y + r3.x;
    r3.y = cmp(cb3[1].z != 0.000000);
    r3.z = cb3[6].x / cb3[1].z;
    r3.y = r3.y ? r3.z : cb3[6].x;
    r3.x = cb3[1].y * r3.x + r3.y;
    r1.z = r3.x * r1.z;
    r2.xy = cb3[0].xy * r1.zz + r2.xy;
    r1.z = dot(r2.xyz, r2.xyz);
    r1.z = rsqrt(r1.z);
    r2.xyz = r2.xyz * r1.zzz;
    r0.xyz = r2.xyz * r1.yyy + -r0.xyz;
    r0.xyz = r0.xyz * r2.www;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r5.yzw * r4.zzz + r0.xyz;
  r2.xyzw = cb1[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb1[2].xyzw + r2.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r2.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.x = r3.w;
  o1.zw = r4.zw;
  o2.xy = r1.xw;
  o2.zw = float2(0,0);
  return;
}