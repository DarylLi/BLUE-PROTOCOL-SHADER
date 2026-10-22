// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  out float4 o3 : COLOR1)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[7].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[8].x + r1.w;
  r1.w = saturate(cb0[8].y * r1.w);
  o3.y = 1 + -r1.w;
  r1.w = 1 + -r0.x;
  r1.w = cb0[8].w * r1.w;
  r0.x = cb0[8].z * r0.x + r1.w;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[2].w * r3.w + r1.w;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[2].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[4].xyz);
  r4.xyz = cmp(cb0[3].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[4].xyz);
  r2.w = cb0[6].w * r2.w;
  r4.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r4.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r4.z = r1.w * r0.x;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r6.x = dot(v0.xyzw, r5.xyzw);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r0.z;
  r7.w = r3.y;
  r6.y = dot(v0.xyzw, r7.xyzw);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r0.w;
  r8.w = r3.z;
  r6.z = dot(v0.xyzw, r8.xyzw);
  r5.yzw = cb2[1].xyz * r6.yyy;
  r5.yzw = cb2[0].xyz * r6.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r6.zzz + r5.yzw;
  r7.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r7.xzw + r5.yzw;
  r1.xyw = cb2[1].xyz * r1.yyy;
  r1.xyw = r5.xxx * cb2[0].xyz + r1.xyw;
  r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
  r7.xyz = cb2[1].xyz * r7.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r7.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.xzw = cb2[1].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb2[0].xyz + r0.xzw;
  r0.xyz = r8.zzz * cb2[2].xyz + r0.xyz;
  r4.xy = cb2[1].xy * r3.yy;
  r3.xy = r3.xx * cb2[0].xy + r4.xy;
  r3.xy = r3.zz * cb2[2].xy + r3.xy;
  r3.xy = cb2[3].xy + r3.xy;
  r0.w = asint(cb4[0].y) + -1;
  r0.w = min(2, (uint)r0.w);
  r1.w = (int)v2.x + asint(cb4[0].w);
  r0.w = mad(asint(cb4[0].y), (int)r1.w, (int)r0.w);
  r4.xy = t2.Load(r0.w).xy;
  r0.w = cmp(r4.z >= 1);
  if (r0.w != 0) {
    r7.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r1.w = dot(r0.xyz, r0.xyz);
    r1.w = sqrt(r1.w);
    r8.xyz = v0.yyy * r2.xyz;
    r8.xyz = v0.xxx * r1.xyz + r8.xyz;
    r8.xyz = v0.zzz * r0.xyz + r8.xyz;
    r8.xyz = r8.xyz / r1.www;
    r9.xyz = float3(0.0625,1,16) * r4.yyy;
    r9.xyz = frac(r9.xyz);
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyz = r9.xyz * r4.xxx;
    r2.w = r7.x + r7.y;
    r2.w = cb3[2].x + r2.w;
    r10.x = r2.w + r4.y;
    r10.y = r2.w * cb3[3].y + r4.y;
    r2.w = cb3[3].y * r10.x;
    r10.z = 0.5 * r2.w;
    r7.xzw = float3(0.5,0.5,0.5) + r10.xyz;
    r7.xzw = frac(r7.xzw);
    r7.xzw = r7.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyz = abs(r7.xzw) * abs(r7.xzw);
    r7.xzw = -abs(r7.xzw) * float3(2,2,2) + float3(3,3,3);
    r7.xzw = r10.xyz * r7.xzw + float3(-0.5,-0.5,-0.5);
    r7.xzw = r7.xzw + r7.xzw;
    r10.w = r7.z * r7.w;
    r2.w = cmp(r10.w < 0);
    r10.y = abs(r10.w);
    r10.xz = float2(-1,1);
    r10.xy = r2.ww ? r10.xy : r10.zw;
    r2.w = -r7.z * r7.w + r10.x;
    r2.w = r10.y * r2.w + r10.w;
    r3.z = r10.x + -r2.w;
    r2.w = r10.y * r3.z + r2.w;
    r2.w = cb3[3].x * r2.w;
    r3.z = 1 + -cb3[0].w;
    r5.x = 1 + -cb3[3].x;
    r5.x = r7.x * r5.x;
    r2.w = r2.w * r3.z + r5.x;
    r7.xzw = r9.xyz * r2.www;
    r7.xzw = r7.xzw * cb3[2].yyy + r8.xyz;
    r2.w = dot(r7.xzw, r7.xzw);
    r2.w = sqrt(r2.w);
    r3.z = 1 / cb3[1].z;
    r3.z = -r3.z * 0.25 + r7.w;
    r3.z = max(0, r3.z);
    r3.z = cb3[1].z * r3.z;
    r5.x = cmp(r3.z != 0.000000);
    r8.w = log2(r3.z);
    r8.w = cb3[1].w * r8.w;
    r8.w = exp2(r8.w);
    r3.z = r5.x ? r8.w : r3.z;
    r9.x = r3.x * 0.00100000005 + cb3[1].x;
    r9.y = cb3[1].x * 0.800000012 + r7.y;
    r9.xy = float2(0.5,0.5) + r9.xy;
    r9.xy = frac(r9.xy);
    r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
    r9.zw = abs(r9.xy) * abs(r9.xy);
    r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
    r9.xy = r9.zw * r9.xy + float2(-0.5,-0.5);
    r9.xy = r9.xy + r9.xy;
    r5.x = r9.y * r9.y + r9.x;
    r7.y = cmp(cb3[1].z != 0.000000);
    r8.w = cb3[6].x / cb3[1].z;
    r7.y = r7.y ? r8.w : cb3[6].x;
    r5.x = cb3[1].y * r5.x + r7.y;
    r3.z = r5.x * r3.z;
    r7.xz = cb3[0].xy * r3.zz + r7.xz;
    r3.z = dot(r7.xzw, r7.xzw);
    r3.z = rsqrt(r3.z);
    r7.xyz = r7.xzw * r3.zzz;
    r7.xyz = r7.xyz * r2.www + -r8.xyz;
    r7.xyz = r7.xyz * r1.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r5.xyz = r5.yzw * r4.zzz + r7.xyz;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r6.w = v0.w;
  r8.x = cb2[10].x;
  r8.y = cb2[11].x;
  r8.z = cb2[12].x;
  r8.w = r7.x;
  r8.x = dot(r6.xyzw, r8.xyzw);
  r9.x = cb2[10].y;
  r9.y = cb2[11].y;
  r9.z = cb2[12].y;
  r9.w = r7.y;
  r8.y = dot(r6.xyzw, r9.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r8.z = dot(r6.xyzw, r7.xyzw);
  if (r0.w != 0) {
    r3.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    r2.xyz = v0.yyy * r2.xyz;
    r1.xyz = v0.xxx * r1.xyz + r2.xyz;
    r0.xyz = v0.zzz * r0.xyz + r1.xyz;
    r0.xyz = r0.xyz / r0.www;
    r1.xyz = float3(0.0625,1,16) * r4.yyy;
    r1.xyz = frac(r1.xyz);
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.xyz = r1.xyz * r4.xxx;
    r1.w = r3.y + r3.z;
    r1.w = cb3[2].x + r1.w;
    r2.x = r1.w + r4.y;
    r2.y = r1.w * cb3[3].y + r4.y;
    r1.w = cb3[3].y * r2.x;
    r2.z = 0.5 * r1.w;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = frac(r2.xyz);
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = abs(r2.xyz) * abs(r2.xyz);
    r2.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
    r2.xyz = r6.xyz * r2.xyz + float3(-0.5,-0.5,-0.5);
    r2.xyz = r2.xyz + r2.xyz;
    r6.w = r2.y * r2.z;
    r1.w = cmp(r6.w < 0);
    r6.y = abs(r6.w);
    r6.xz = float2(-1,1);
    r4.xy = r1.ww ? r6.xy : r6.zw;
    r1.w = -r2.y * r2.z + r4.x;
    r1.w = r4.y * r1.w + r6.w;
    r2.y = r4.x + -r1.w;
    r1.w = r4.y * r2.y + r1.w;
    r1.w = cb3[3].x * r1.w;
    r2.y = 1 + -cb3[0].w;
    r2.z = 1 + -cb3[3].x;
    r2.x = r2.x * r2.z;
    r1.w = r1.w * r2.y + r2.x;
    r1.xyz = r1.xyz * r1.www;
    r1.xyz = r1.xyz * cb3[2].yyy + r0.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r1.w);
    r2.x = 1 / cb3[1].z;
    r2.x = -r2.x * 0.25 + r1.z;
    r2.x = max(0, r2.x);
    r2.x = cb3[1].z * r2.x;
    r2.y = cmp(r2.x != 0.000000);
    r2.z = log2(r2.x);
    r2.z = cb3[1].w * r2.z;
    r2.z = exp2(r2.z);
    r2.x = r2.y ? r2.z : r2.x;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r3.z;
    r2.yz = float2(0.5,0.5) + r3.xy;
    r2.yz = frac(r2.yz);
    r2.yz = r2.yz * float2(2,2) + float2(-1,-1);
    r3.xy = abs(r2.yz) * abs(r2.yz);
    r2.yz = -abs(r2.yz) * float2(2,2) + float2(3,3);
    r2.yz = r3.xy * r2.yz + float2(-0.5,-0.5);
    r2.yz = r2.yz + r2.yz;
    r2.y = r2.z * r2.z + r2.y;
    r2.z = cmp(cb3[1].z != 0.000000);
    r2.w = cb3[6].x / cb3[1].z;
    r2.z = r2.z ? r2.w : cb3[6].x;
    r2.y = cb3[1].y * r2.y + r2.z;
    r2.x = r2.y * r2.x;
    r1.xy = cb3[0].xy * r2.xx + r1.xy;
    r2.x = dot(r1.xyz, r1.xyz);
    r2.x = rsqrt(r2.x);
    r1.xyz = r2.xxx * r1.xyz;
    r0.xyz = r1.xyz * r1.www + -r0.xyz;
    r0.xyz = r0.xyz * r0.www;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r8.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r5.yyyy;
  r0.xyzw = r5.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r5.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.x = r3.w;
  o3.zw = r4.zw;
  return;
}