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
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.x = (((uint)r2.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r4.xyz = t3.Load(r4.x).xyz;
  r5.xyz = cb2[1].xyz * r1.yyy;
  r5.xyz = r1.xxx * cb2[0].xyz + r5.xyz;
  r5.xyz = r1.zzz * cb2[2].xyz + r5.xyz;
  r6.xyz = cb2[1].xyz * r2.yyy;
  r6.xyz = r2.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r2.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r3.yyy;
  r7.xyz = r3.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r3.zzz * cb2[2].xyz + r7.xyz;
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = rsqrt(r4.w);
  r8.xy = r5.xy * r4.ww;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r8.zw = r6.xy * r4.ww;
  r4.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r4.w);
  r9.xy = r7.xy * r5.ww;
  r8.zw = r8.zw * r4.yy;
  r4.xy = r4.xx * r8.xy + r8.zw;
  r4.xy = r4.zz * r9.xy + r4.xy;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r8.xyz = cb0[7].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r8.yyy;
  r8.xyw = cb2[0].xyz * r8.xxx + r9.xyz;
  r8.xyz = cb2[2].xyz * r8.zzz + r8.xyw;
  r8.xyz = cb2[3].xyz + r8.xyz;
  r9.xyz = cb1[70].xyz + r8.xyz;
  r4.z = dot(r9.xyz, r9.xyz);
  r4.z = sqrt(r4.z);
  r4.z = -cb0[8].x + r4.z;
  r4.z = saturate(cb0[8].y * r4.z);
  o3.y = 1 + -r4.z;
  r4.z = 1 + -r1.w;
  r4.z = cb0[8].w * r4.z;
  r1.w = cb0[8].z * r1.w + r4.z;
  r9.xyz = -cb0[5].xyz + r8.xyz;
  r4.z = dot(r9.xyz, r9.xyz);
  r4.z = sqrt(r4.z);
  r4.z = cb0[2].w * r0.w + r4.z;
  r8.xyz = -cb0[6].xyz + r8.xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[2].w * r0.w + r5.w;
  r8.xyz = cmp(cb0[2].xyz < r4.zzz);
  r8.xyz = r8.xyz ? float3(1,1,1) : 0;
  r4.z = dot(r8.xyz, cb0[4].xyz);
  r8.xyz = cmp(cb0[3].xyz < r5.www);
  r8.xyz = r8.xyz ? float3(1,1,1) : 0;
  r5.w = dot(r8.xyz, cb0[4].xyz);
  r5.w = cb0[6].w * r5.w;
  r8.w = r4.z * cb0[5].w + r5.w;
  r4.z = cmp(abs(r8.w) < 0.999000013);
  r4.z = r4.z ? 1.000000 : 0;
  r8.z = r4.z * r1.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r9.x = dot(v0.xyzw, r9.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r0.y;
  r9.y = dot(v0.xyzw, r10.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r9.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb2[1].xyz * r9.yyy;
  r1.xyz = cb2[0].xyz * r9.xxx + r1.xyz;
  r1.xyz = cb2[2].xyz * r9.zzz + r1.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xy = cb2[1].xy * r0.yy;
  r0.xy = r0.xx * cb2[0].xy + r2.xy;
  r0.xy = r0.zz * cb2[2].xy + r0.xy;
  r0.xy = cb2[3].xy + r0.xy;
  r0.z = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r0.z).xy;
  r0.z = cmp(r8.z >= 1);
  if (r0.z != 0) {
    r1.w = 0.00100000005 * r0.y;
    r2.z = sqrt(r4.w);
    r3.xyz = v0.yyy * r6.xyz;
    r3.xyz = v0.xxx * r5.xyz + r3.xyz;
    r3.xyz = v0.zzz * r7.xyz + r3.xyz;
    r3.xyz = r3.xyz / r2.zzz;
    r2.w = dot(cb1[60].xy, cb1[60].xy);
    r2.w = rsqrt(r2.w);
    r8.xy = cb1[60].xy * r2.ww;
    r2.w = dot(r4.xy, r4.xy);
    r2.w = rsqrt(r2.w);
    r10.xy = r4.xy * r2.ww;
    r2.w = dot(r8.xy, r10.xy);
    r2.w = cmp(-0.774999976 < r2.w);
    r10.xyz = r2.www ? float3(0,0,0) : r3.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = sqrt(r2.w);
    r3.w = 1 / cb3[1].z;
    r3.w = -r3.w * 0.25 + r10.z;
    r3.w = max(0, r3.w);
    r3.w = cb3[1].z * r3.w;
    r4.z = cmp(r3.w != 0.000000);
    r5.w = log2(r3.w);
    r5.w = cb3[1].w * r5.w;
    r5.w = exp2(r5.w);
    r3.w = r4.z ? r5.w : r3.w;
    r8.x = r0.x * 0.00100000005 + cb3[1].x;
    r8.y = cb3[1].x * 0.800000012 + r1.w;
    r8.xy = float2(0.5,0.5) + r8.xy;
    r8.xy = frac(r8.xy);
    r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
    r11.xy = abs(r8.xy) * abs(r8.xy);
    r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
    r8.xy = r11.xy * r8.xy + float2(-0.5,-0.5);
    r8.xy = r8.xy + r8.xy;
    r1.w = r8.y * r8.y + r8.x;
    r4.z = cmp(cb3[1].z != 0.000000);
    r5.w = cb3[6].x / cb3[1].z;
    r4.z = r4.z ? r5.w : cb3[6].x;
    r1.w = cb3[1].y * r1.w + r4.z;
    r1.w = r1.w * r3.w;
    r10.xy = cb3[0].xy * r1.ww + r10.xy;
    r1.w = dot(r10.xyz, r10.xyz);
    r1.w = rsqrt(r1.w);
    r10.xyz = r10.xyz * r1.www;
    r3.xyz = r10.xyz * r2.www + -r3.xyz;
    r3.xyz = r3.xyz * r2.zzz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r8.zzz + r3.xyz;
  r3.xyw = cb2[13].xyz + cb1[113].xyz;
  r9.w = v0.w;
  r10.x = cb2[10].x;
  r10.y = cb2[11].x;
  r10.z = cb2[12].x;
  r10.w = r3.x;
  r10.x = dot(r9.xyzw, r10.xyzw);
  r11.x = cb2[10].y;
  r11.y = cb2[11].y;
  r11.z = cb2[12].y;
  r11.w = r3.y;
  r10.y = dot(r9.xyzw, r11.xyzw);
  r3.x = cb2[10].z;
  r3.y = cb2[11].z;
  r3.z = cb2[12].z;
  r10.z = dot(r9.xyzw, r3.xyzw);
  if (r0.z != 0) {
    r0.y = 0.00100000005 * r0.y;
    r0.z = sqrt(r4.w);
    r3.xyz = v0.yyy * r6.xyz;
    r3.xyz = v0.xxx * r5.xyz + r3.xyz;
    r3.xyz = v0.zzz * r7.xyz + r3.xyz;
    r3.xyz = r3.xyz / r0.zzz;
    r1.w = dot(cb1[60].xy, cb1[60].xy);
    r1.w = rsqrt(r1.w);
    r2.zw = cb1[60].xy * r1.ww;
    r1.w = dot(r4.xy, r4.xy);
    r1.w = rsqrt(r1.w);
    r4.xy = r4.xy * r1.ww;
    r1.w = dot(r2.zw, r4.xy);
    r1.w = cmp(-0.774999976 < r1.w);
    r4.xyz = r1.www ? float3(0,0,0) : r3.xyz;
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r1.w);
    r2.z = 1 / cb3[1].z;
    r2.z = -r2.z * 0.25 + r4.z;
    r2.z = max(0, r2.z);
    r2.z = cb3[1].z * r2.z;
    r2.w = cmp(r2.z != 0.000000);
    r3.w = log2(r2.z);
    r3.w = cb3[1].w * r3.w;
    r3.w = exp2(r3.w);
    r2.z = r2.w ? r3.w : r2.z;
    r5.x = r0.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r0.y;
    r0.xy = float2(0.5,0.5) + r5.xy;
    r0.xy = frac(r0.xy);
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r0.xy) * abs(r0.xy);
    r0.xy = -abs(r0.xy) * float2(2,2) + float2(3,3);
    r0.xy = r5.xy * r0.xy + float2(-0.5,-0.5);
    r0.xy = r0.xy + r0.xy;
    r0.x = r0.y * r0.y + r0.x;
    r0.y = cmp(cb3[1].z != 0.000000);
    r2.w = cb3[6].x / cb3[1].z;
    r0.y = r0.y ? r2.w : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r0.y;
    r0.x = r0.x * r2.z;
    r4.xy = cb3[0].xy * r0.xx + r4.xy;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = rsqrt(r0.x);
    r4.xyz = r4.xyz * r0.xxx;
    r3.xyz = r4.xyz * r1.www + -r3.xyz;
    r0.xyz = r3.xyz * r0.zzz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r10.xyz + r0.xyz;
  r3.xyzw = cb1[92].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb1[91].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r3.xyzw;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r1.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.x = r0.w;
  o3.zw = r8.zw;
  o4.xy = r2.xy;
  o4.zw = float2(0,0);
  return;
}