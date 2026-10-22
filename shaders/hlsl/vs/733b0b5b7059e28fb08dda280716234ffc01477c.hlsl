// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[10];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r8.xyz = r5.xyz * r4.www;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r9.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r4.w);
  r10.xyz = r7.xyz * r5.www;
  r9.xyz = r9.xyz * r4.yyy;
  r8.xyz = r4.xxx * r8.xyz + r9.xyz;
  r4.xyz = r4.zzz * r10.xyz + r8.xyz;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r8.xyz = cb0[7].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r8.yyy;
  r8.xyw = cb2[0].xyz * r8.xxx + r9.xyz;
  r8.xyz = cb2[2].xyz * r8.zzz + r8.xyw;
  r8.xyz = cb2[3].xyz + r8.xyz;
  r9.xyz = cb1[70].xyz + r8.xyz;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r5.w = -cb0[8].x + r5.w;
  r5.w = saturate(cb0[8].y * r5.w);
  o3.y = 1 + -r5.w;
  r5.w = 1 + -r1.w;
  r5.w = cb0[8].w * r5.w;
  r1.w = cb0[8].z * r1.w + r5.w;
  r9.xyz = -cb0[5].xyz + r8.xyz;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb0[2].w * r0.w + r5.w;
  r8.xyz = -cb0[6].xyz + r8.xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = sqrt(r6.w);
  r6.w = cb0[2].w * r0.w + r6.w;
  r8.xyz = cmp(cb0[2].xyz < r5.www);
  r8.xyz = r8.xyz ? float3(1,1,1) : 0;
  r5.w = dot(r8.xyz, cb0[4].xyz);
  r8.xyz = cmp(cb0[3].xyz < r6.www);
  r8.xyz = r8.xyz ? float3(1,1,1) : 0;
  r6.w = dot(r8.xyz, cb0[4].xyz);
  r6.w = cb0[6].w * r6.w;
  r8.w = r5.w * cb0[5].w + r6.w;
  r5.w = cmp(abs(r8.w) < 0.999000013);
  r5.w = r5.w ? 1.000000 : 0;
  r8.z = r5.w * r1.w;
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
  r2.xyz = cb2[1].xyz * r0.yyy;
  r2.xyz = r0.xxx * cb2[0].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb2[2].xyz + r2.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.w = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r1.w).xy;
  r1.w = asint(cb4[0].y) + -1;
  r3.xy = min(uint2(2,5), (uint2)r1.ww);
  r2.zw = mad(asint(cb4[0].yy), (int2)r2.ww, (int2)r3.xy);
  r3.xy = t2.Load(r2.z).xy;
  r1.w = t2.Load(r2.w).y;
  r2.z = cmp(r8.z >= 1);
  if (r2.z != 0) {
    r2.w = (int)cb5[7].z;
    r3.zw = float2(0.00100000005,0.00100000005) * r0.xy;
    r5.w = sqrt(r4.w);
    r10.xyz = v0.yyy * r6.xyz;
    r10.xyz = v0.xxx * r5.xyz + r10.xyz;
    r10.xyz = v0.zzz * r7.xyz + r10.xyz;
    r10.xyz = r10.xyz / r5.www;
    r6.w = cmp((int)r2.w == 5);
    r7.w = cmp(r2.x < 0.5);
    r7.w = r7.w ? 0.750000 : 0;
    r8.x = cb3[14].x + r2.y;
    r7.w = r8.x * cb3[14].z + r7.w;
    r7.w = 0.5 + r7.w;
    r7.w = frac(r7.w);
    r7.w = r7.w * 2 + -1;
    r8.x = abs(r7.w) * abs(r7.w);
    r7.w = -abs(r7.w) * 2 + 3;
    r7.w = r8.x * r7.w + -0.5;
    r7.w = r7.w * r1.w;
    r7.w = dot(cb3[14].yy, r7.ww);
    r11.xyz = r7.www * r4.xyz + r10.xyz;
    r11.xyz = r6.www ? r11.xyz : r10.xyz;
    r7.w = cmp(2 < (int)r2.w);
    if (r7.w != 0) {
      if (r6.w != 0) {
        r12.xyz = float3(0.0625,1,16) * r3.yyy;
        r12.xyz = frac(r12.xyz);
        r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r12.xyz = r12.xyz * r3.xxx;
        r6.w = r3.z + r3.w;
        r6.w = cb3[2].x + r6.w;
        r13.x = r6.w + r3.y;
        r13.y = r6.w * cb3[3].y + r3.y;
        r7.w = cb3[3].y * r13.x;
        r13.z = 0.5 * r7.w;
        r13.w = r13.x + -r3.x;
        r13.xyzw = float4(0.5,0.5,0.5,1.5) + r13.xyzw;
        r13.xyzw = frac(r13.xyzw);
        r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r14.xyzw = abs(r13.xyzw) * abs(r13.xyzw);
        r13.xyzw = -abs(r13.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r13.xyzw = r14.xyzw * r13.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r13.xyzw = r13.xyzw + r13.xyzw;
        r14.w = r13.y * r13.z;
        r7.w = cmp(r14.w < 0);
        r14.y = abs(r14.w);
        r14.xz = float2(-1,1);
        r8.xy = r7.ww ? r14.xy : r14.zw;
        r7.w = -r13.y * r13.z + r8.x;
        r7.w = r8.y * r7.w + r14.w;
        r8.x = r8.x + -r7.w;
        r7.w = r8.y * r8.x + r7.w;
        r7.w = cb3[3].x * r7.w;
        r8.x = 1 + -cb3[0].w;
        r8.y = 1 + -cb3[3].x;
        r8.y = r13.x * r8.y;
        r7.w = r7.w * r8.x + r8.y;
        r8.x = r13.w * cb3[4].x + 1;
        r7.w = r8.x * r7.w;
        r12.xyz = r12.xyz * r7.www;
        r12.xyz = r12.xyz * cb3[2].yyy + r11.xyz;
        r8.x = r6.w * 0.100000001 + r3.y;
        r6.w = cb3[18].x * cb3[7].x;
        r8.y = r6.w * 0.100000001 + r3.y;
        r8.xy = float2(0.5,0.5) + r8.xy;
        r8.xy = frac(r8.xy);
        r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
        r13.xy = abs(r8.xy) * abs(r8.xy);
        r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
        r8.xy = r13.xy * r8.xy + float2(-0.5,-0.5);
        r8.xy = r8.xy + r8.xy;
        r8.xy = r8.xy * r8.xy;
        r6.w = r8.y * r8.x;
        r6.w = -r6.w * cb3[7].x + 1;
        r7.w = cb3[0].w * r13.w;
        r6.w = r7.w * cb3[4].x + r6.w;
        r13.xyz = cb3[5].xyz + -r12.xyz;
        r13.xyz = cb3[6].yyy * r13.xyz;
        r13.xyz = r13.xyz * r6.www;
        r11.xyz = r13.xyz * r3.xxx + r12.xyz;
      } else {
        r12.xyz = float3(0.0625,1,16) * r3.yyy;
        r12.xyz = frac(r12.xyz);
        r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r12.xyz = r12.xyz * r3.xxx;
        r3.z = r3.z + r3.w;
        r3.z = cb3[2].x + r3.z;
        r13.x = r3.z + r3.y;
        r13.y = r3.z * cb3[3].y + r3.y;
        r3.z = cb3[3].y * r13.x;
        r13.z = 0.5 * r3.z;
        r13.xyz = float3(0.5,0.5,0.5) + r13.xyz;
        r13.xyz = frac(r13.xyz);
        r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r14.xyz = abs(r13.xyz) * abs(r13.xyz);
        r13.xyz = -abs(r13.xyz) * float3(2,2,2) + float3(3,3,3);
        r13.xyz = r14.xyz * r13.xyz + float3(-0.5,-0.5,-0.5);
        r13.xyz = r13.xyz + r13.xyz;
        r14.w = r13.y * r13.z;
        r3.z = cmp(r14.w < 0);
        r14.y = abs(r14.w);
        r14.xz = float2(-1,1);
        r8.xy = r3.zz ? r14.xy : r14.zw;
        r3.z = -r13.y * r13.z + r8.x;
        r3.z = r8.y * r3.z + r14.w;
        r6.w = r8.x + -r3.z;
        r3.z = r8.y * r6.w + r3.z;
        r3.z = cb3[3].x * r3.z;
        r6.w = 1 + -cb3[0].w;
        r7.w = 1 + -cb3[3].x;
        r7.w = r13.x * r7.w;
        r3.z = r3.z * r6.w + r7.w;
        r12.xyz = r12.xyz * r3.zzz;
        r11.xyz = r12.xyz * cb3[2].yyy + r11.xyz;
      }
    }
    r3.z = dot(r11.xyz, r11.xyz);
    r3.z = sqrt(r3.z);
    r6.w = 1 / cb3[1].z;
    r6.w = -r6.w * 0.25 + r11.z;
    r6.w = max(0, r6.w);
    r6.w = cb3[1].z * r6.w;
    r7.w = cmp(r6.w != 0.000000);
    r8.x = log2(r6.w);
    r8.x = cb3[1].w * r8.x;
    r8.x = exp2(r8.x);
    r6.w = r7.w ? r8.x : r6.w;
    r8.x = r0.x * 0.00100000005 + cb3[1].x;
    r8.y = cb3[1].x * 0.800000012 + r3.w;
    r8.xy = float2(0.5,0.5) + r8.xy;
    r8.xy = frac(r8.xy);
    r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
    r12.xy = abs(r8.xy) * abs(r8.xy);
    r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
    r8.xy = r12.xy * r8.xy + float2(-0.5,-0.5);
    r8.xy = r8.xy + r8.xy;
    r3.w = r8.y * r8.y + r8.x;
    r7.w = cmp(cb3[1].z != 0.000000);
    r8.x = cb3[6].x / cb3[1].z;
    r7.w = r7.w ? r8.x : cb3[6].x;
    r3.w = cb3[1].y * r3.w + r7.w;
    r3.w = r3.w * r6.w;
    r8.xy = cb3[0].xy * r3.ww + r11.xy;
    r12.xy = r2.ww ? r8.xy : r11.xy;
    r12.z = r11.z;
    r3.w = dot(r12.xyz, r12.xyz);
    r3.w = rsqrt(r3.w);
    r12.xyz = r12.xyz * r3.www;
    r12.xyz = r12.xyz * r3.zzz;
    r11.xyz = r2.www ? r12.xyz : r11.xyz;
    r10.xyz = r11.xyz + -r10.xyz;
    r10.xyz = r10.xyz * r5.www;
    r11.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r11.xyz = floor(r11.xyz);
    r11.xyz = r11.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r12.xyz = r1.zxy * r8.zzz + -cb1[70].zxy;
    r11.xyz = r12.xyz + -r11.xyz;
    r3.zw = float2(9.99999975e-005,9.99999975e-005) * r11.yz;
    r2.w = r11.x * 9.99999975e-005 + 0.200000003;
    r11.xyz = t4.SampleLevel(s0_s, r3.zw, -1).xyz;
    r5.w = cb5[8].y + r11.y;
    r6.w = -r5.w + r2.w;
    r6.w = max(0, r6.w);
    r7.w = r11.x + -r11.y;
    r7.w = max(9.99999975e-005, r7.w);
    r6.w = r6.w / r7.w;
    r6.w = min(1, r6.w);
    r7.w = ceil(r6.w);
    r6.w = 1 + -r6.w;
    r6.w = min(0.200000003, r6.w);
    r6.w = r7.w * r6.w;
    r7.w = 5 * r6.w;
    r2.w = -r11.z + r2.w;
    r8.x = max(0, r2.w);
    r5.w = r5.w + -r11.z;
    r5.w = max(9.99999975e-005, r5.w);
    r5.w = r8.x / r5.w;
    r5.w = min(1, r5.w);
    r8.x = ceil(r5.w);
    r5.w = 1 + -r5.w;
    r5.w = min(0.200000003, r5.w);
    r5.w = r8.x * r5.w;
    r5.w = 5 * r5.w;
    r8.xy = t5.SampleLevel(s1_s, r3.zw, -1).xy;
    r6.w = r6.w * 5 + -r5.w;
    r6.w = cmp(9.99999975e-006 < abs(r6.w));
    r10.w = cmp(r7.w >= r5.w);
    r8.y = r10.w ? r8.y : r8.x;
    r6.w = r6.w ? r8.y : r8.x;
    r6.w = cb5[8].z * r6.w;
    r5.w = max(r7.w, r5.w);
    r6.w = r6.w * r5.w;
    r2.w = 10000 * r2.w;
    r2.w = max(0, r2.w);
    r7.w = cb5[4].z + r0.z;
    r7.w = r12.x + -r7.w;
    r2.w = min(r7.w, r2.w);
    r2.w = cb5[9].x * r2.w;
    r2.w = r5.w * r2.w;
    r2.w = r6.w * r2.w;
    r3.zw = t6.SampleLevel(s2_s, r3.zw, -1).xy;
    r3.zw = float2(-1,-1) + r3.zw;
    r11.xy = r3.zw * r2.ww;
    r2.w = dot(r11.xy, r11.xy);
    r2.w = sqrt(r2.w);
    r11.z = -1.20000005 * r2.w;
    r10.xyz = r10.xyz * cb5[7].www + r11.xyz;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r8.zzz + r10.xyz;
  r10.xyw = cb2[13].xyz + cb1[113].xyz;
  r9.w = v0.w;
  r11.x = cb2[10].x;
  r11.y = cb2[11].x;
  r11.z = cb2[12].x;
  r11.w = r10.x;
  r11.x = dot(r9.xyzw, r11.xyzw);
  r12.x = cb2[10].y;
  r12.y = cb2[11].y;
  r12.z = cb2[12].y;
  r12.w = r10.y;
  r11.y = dot(r9.xyzw, r12.xyzw);
  r10.x = cb2[10].z;
  r10.y = cb2[11].z;
  r10.z = cb2[12].z;
  r11.z = dot(r9.xyzw, r10.xyzw);
  if (r2.z != 0) {
    r2.z = (int)cb5[7].z;
    r3.zw = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r4.w);
    r6.xyz = v0.yyy * r6.xyz;
    r5.xyz = v0.xxx * r5.xyz + r6.xyz;
    r5.xyz = v0.zzz * r7.xyz + r5.xyz;
    r5.xyz = r5.xyz / r0.yyy;
    r2.w = cmp((int)r2.z == 5);
    r4.w = cmp(r2.x < 0.5);
    r4.w = r4.w ? 0.750000 : 0;
    r5.w = cb3[14].x + r2.y;
    r4.w = r5.w * cb3[14].z + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r5.w = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r5.w * r4.w + -0.5;
    r1.w = r4.w * r1.w;
    r1.w = dot(cb3[14].yy, r1.ww);
    r4.xyz = r1.www * r4.xyz + r5.xyz;
    r4.xyz = r2.www ? r4.xyz : r5.xyz;
    r1.w = cmp(2 < (int)r2.z);
    if (r1.w != 0) {
      if (r2.w != 0) {
        r6.xyz = float3(0.0625,1,16) * r3.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r3.xxx;
        r1.w = r3.z + r3.w;
        r1.w = cb3[2].x + r1.w;
        r7.x = r1.w + r3.y;
        r7.y = r1.w * cb3[3].y + r3.y;
        r2.w = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.w;
        r7.w = r7.x + -r3.x;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r9.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r9.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r9.w = r7.y * r7.z;
        r2.w = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r8.xy = r2.ww ? r9.xy : r9.zw;
        r2.w = -r7.y * r7.z + r8.x;
        r2.w = r8.y * r2.w + r9.w;
        r4.w = r8.x + -r2.w;
        r2.w = r8.y * r4.w + r2.w;
        r2.w = cb3[3].x * r2.w;
        r4.w = 1 + -cb3[0].w;
        r5.w = 1 + -cb3[3].x;
        r5.w = r7.x * r5.w;
        r2.w = r2.w * r4.w + r5.w;
        r4.w = r7.w * cb3[4].x + 1;
        r2.w = r4.w * r2.w;
        r6.xyz = r6.xyz * r2.www;
        r6.xyz = r6.xyz * cb3[2].yyy + r4.xyz;
        r7.x = r1.w * 0.100000001 + r3.y;
        r1.w = cb3[18].x * cb3[7].x;
        r7.y = r1.w * 0.100000001 + r3.y;
        r7.xy = float2(0.5,0.5) + r7.xy;
        r7.xy = frac(r7.xy);
        r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
        r8.xy = abs(r7.xy) * abs(r7.xy);
        r7.xy = -abs(r7.xy) * float2(2,2) + float2(3,3);
        r7.xy = r8.xy * r7.xy + float2(-0.5,-0.5);
        r7.xy = r7.xy + r7.xy;
        r7.xy = r7.xy * r7.xy;
        r1.w = r7.y * r7.x;
        r1.w = -r1.w * cb3[7].x + 1;
        r2.w = cb3[0].w * r7.w;
        r1.w = r2.w * cb3[4].x + r1.w;
        r7.xyz = cb3[5].xyz + -r6.xyz;
        r7.xyz = cb3[6].yyy * r7.xyz;
        r7.xyz = r7.xyz * r1.www;
        r4.xyz = r7.xyz * r3.xxx + r6.xyz;
      } else {
        r6.xyz = float3(0.0625,1,16) * r3.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r3.xxx;
        r1.w = r3.z + r3.w;
        r1.w = cb3[2].x + r1.w;
        r7.x = r1.w + r3.y;
        r7.y = r1.w * cb3[3].y + r3.y;
        r1.w = cb3[3].y * r7.x;
        r7.z = 0.5 * r1.w;
        r3.xyz = float3(0.5,0.5,0.5) + r7.xyz;
        r3.xyz = frac(r3.xyz);
        r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = abs(r3.xyz) * abs(r3.xyz);
        r3.xyz = -abs(r3.xyz) * float3(2,2,2) + float3(3,3,3);
        r3.xyz = r7.xyz * r3.xyz + float3(-0.5,-0.5,-0.5);
        r3.xyz = r3.xyz + r3.xyz;
        r7.w = r3.y * r3.z;
        r1.w = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r7.xy = r1.ww ? r7.xy : r7.zw;
        r1.w = -r3.y * r3.z + r7.x;
        r1.w = r7.y * r1.w + r7.w;
        r2.w = r7.x + -r1.w;
        r1.w = r7.y * r2.w + r1.w;
        r1.w = cb3[3].x * r1.w;
        r2.w = 1 + -cb3[0].w;
        r3.y = 1 + -cb3[3].x;
        r3.x = r3.x * r3.y;
        r1.w = r1.w * r2.w + r3.x;
        r3.xyz = r6.xyz * r1.www;
        r4.xyz = r3.xyz * cb3[2].yyy + r4.xyz;
      }
    }
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r1.w);
    r2.w = 1 / cb3[1].z;
    r2.w = -r2.w * 0.25 + r4.z;
    r2.w = max(0, r2.w);
    r2.w = cb3[1].z * r2.w;
    r3.x = cmp(r2.w != 0.000000);
    r3.y = log2(r2.w);
    r3.y = cb3[1].w * r3.y;
    r3.y = exp2(r3.y);
    r2.w = r3.x ? r3.y : r2.w;
    r3.x = r0.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r3.w;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xy = frac(r3.xy);
    r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
    r3.zw = abs(r3.xy) * abs(r3.xy);
    r3.xy = -abs(r3.xy) * float2(2,2) + float2(3,3);
    r3.xy = r3.zw * r3.xy + float2(-0.5,-0.5);
    r3.xy = r3.xy + r3.xy;
    r0.x = r3.y * r3.y + r3.x;
    r3.x = cmp(cb3[1].z != 0.000000);
    r3.y = cb3[6].x / cb3[1].z;
    r3.x = r3.x ? r3.y : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r3.x;
    r0.x = r0.x * r2.w;
    r3.xy = cb3[0].xy * r0.xx + r4.xy;
    r3.xy = r2.zz ? r3.xy : r4.xy;
    r3.z = r4.z;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r3.xyz * r0.xxx;
    r3.xyz = r3.xyz * r1.www;
    r3.xyz = r2.zzz ? r3.xyz : r4.xyz;
    r3.xyz = r3.xyz + -r5.xyz;
    r3.xyz = r3.xyz * r0.yyy;
    r0.x = cb5[4].z + r0.z;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r5.xyz = -cb1[113].zxy + r11.zxy;
    r4.xyz = r5.xyz + -r4.xyz;
    r0.yz = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r1.w = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t4.SampleLevel(s0_s, r0.yz, -1).xyz;
    r2.z = cb5[8].y + r4.y;
    r2.w = -r2.z + r1.w;
    r2.w = max(0, r2.w);
    r3.w = r4.x + -r4.y;
    r3.w = max(9.99999975e-005, r3.w);
    r2.w = r2.w / r3.w;
    r2.w = min(1, r2.w);
    r3.w = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.w * r2.w;
    r3.w = 5 * r2.w;
    r1.w = -r4.z + r1.w;
    r4.x = max(0, r1.w);
    r2.z = r2.z + -r4.z;
    r2.z = max(9.99999975e-005, r2.z);
    r2.z = r4.x / r2.z;
    r2.z = min(1, r2.z);
    r4.x = ceil(r2.z);
    r2.z = 1 + -r2.z;
    r2.z = min(0.200000003, r2.z);
    r2.z = r4.x * r2.z;
    r2.z = 5 * r2.z;
    r4.xy = t5.SampleLevel(s1_s, r0.yz, -1).xy;
    r2.w = r2.w * 5 + -r2.z;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r4.z = cmp(r3.w >= r2.z);
    r4.y = r4.z ? r4.y : r4.x;
    r2.w = r2.w ? r4.y : r4.x;
    r2.w = cb5[8].z * r2.w;
    r2.z = max(r3.w, r2.z);
    r2.w = r2.w * r2.z;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r0.x = r5.x + -r0.x;
    r0.x = min(r1.w, r0.x);
    r0.x = cb5[9].x * r0.x;
    r0.x = r2.z * r0.x;
    r0.x = r2.w * r0.x;
    r0.yz = t6.SampleLevel(s2_s, r0.yz, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r0.xy = r0.xx * r0.yz;
    r1.w = dot(r0.xy, r0.xy);
    r1.w = sqrt(r1.w);
    r0.z = -1.20000005 * r1.w;
    r0.xyz = r3.xyz * cb5[7].www + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r11.xyz + r0.xyz;
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