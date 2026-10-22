// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
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
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : COLOR1,
  out float4 o7 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (int)r0.x & asint(cb3[0].x);
  r1.xyzw = t4.Load(r0.y).xyzw;
  r0.y = (int)v1.x + asint(cb0[8].x);
  r0.z = (int)r0.y * 3;
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.zw = mad(int2(3,3), (int2)r0.yy, int2(1,2));
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyz = t1.Load(r0.w).xyz;
  r5.xyzw = t0.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t3.Load(r3.w).xyzw;
  r7.xyz = r6.yzx * r0.yzw;
  r0.yzw = r6.xyz * r0.zwy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = r0.yzw * r6.yzx;
  r0.yzw = r0.wyz * r6.zxy + -r7.xyz;
  r0.yzw = r0.yzw * r6.www;
  r7.xyz = cb2[1].zxy * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].zxy + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].zxy + r7.xyz;
  r8.xyz = cb2[1].zxy * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].zxy + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].zxy + r8.xyz;
  r9.xyz = cb2[1].zxy * r4.yyy;
  r9.xyz = r4.xxx * cb2[0].zxy + r9.xyz;
  r9.xyz = r4.zzz * cb2[2].zxy + r9.xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = rsqrt(r3.w);
  r10.xyz = r7.yzx * r3.www;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = rsqrt(r3.w);
  r11.xyz = r8.yzx * r3.www;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = rsqrt(r3.w);
  r12.xyz = r9.yzx * r3.www;
  r13.xyz = r11.xyz * r0.zzz;
  r13.xyz = r0.yyy * r10.xyz + r13.xyz;
  o3.xyz = r0.www * r12.xyz + r13.xyz;
  r0.yzw = r11.xyz * r6.yyy;
  r0.yzw = r6.xxx * r10.xyz + r0.yzw;
  o4.xyz = r6.zzz * r12.xyz + r0.yzw;
  o4.w = cb2[4].w * r6.w;
  r0.y = 0.00390625 * r2.w;
  r0.y = trunc(r0.y);
  r6.xyz = cb0[6].xyz + r5.xyz;
  r10.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = cb2[0].xyz * r6.xxx + r10.xyz;
  r6.xyz = cb2[2].xyz * r6.zzz + r6.xyw;
  r6.xyz = cb2[3].xyz + r6.xyz;
  r10.xyz = cb1[70].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = -cb0[7].x + r0.z;
  r0.z = saturate(cb0[7].y * r0.z);
  o6.y = 1 + -r0.z;
  r0.z = 1 + -r0.y;
  r0.z = cb0[7].w * r0.z;
  r0.y = cb0[7].z * r0.y + r0.z;
  r10.xyz = -cb0[4].xyz + r6.xyz;
  r0.z = dot(r10.xyz, r10.xyz);
  r0.z = sqrt(r0.z);
  r0.z = cb0[1].w * r5.w + r0.z;
  r6.xyz = -cb0[5].xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r0.w = cb0[1].w * r5.w + r0.w;
  r6.xyz = cmp(cb0[1].xyz < r0.zzz);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.z = dot(r6.xyz, cb0[3].xyz);
  r6.xyz = cmp(cb0[2].xyz < r0.www);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r0.w = dot(r6.xyz, cb0[3].xyz);
  r0.w = cb0[5].w * r0.w;
  r0.w = r0.z * cb0[4].w + r0.w;
  r2.w = cmp(abs(r0.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r0.z = r2.w * r0.y;
  r6.x = r2.x;
  r6.y = r3.x;
  r6.z = r4.x;
  r6.w = r5.x;
  r10.x = dot(v0.xyzw, r6.xyzw);
  r11.x = r2.y;
  r11.y = r3.y;
  r11.z = r4.y;
  r11.w = r5.y;
  r10.y = dot(v0.xyzw, r11.xyzw);
  r12.x = r2.z;
  r12.y = r3.z;
  r12.z = r4.z;
  r12.w = r5.z;
  r10.z = dot(v0.xyzw, r12.xyzw);
  r6.yzw = cb2[1].xyz * r10.yyy;
  r6.yzw = cb2[0].xyz * r10.xxx + r6.yzw;
  r6.yzw = cb2[2].xyz * r10.zzz + r6.yzw;
  r11.xzw = cb2[3].xyz + cb1[70].xyz;
  r6.yzw = r11.xzw + r6.yzw;
  r11.xzw = cb2[1].xyz * r5.yyy;
  r11.xzw = r5.xxx * cb2[0].xyz + r11.xzw;
  r11.xzw = r5.zzz * cb2[2].xyz + r11.xzw;
  r11.xzw = cb2[3].xyz + r11.xzw;
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xy = t2.Load(r0.x).xy;
  r2.x = cmp(r0.z >= 1);
  if (r2.x != 0) {
    r2.w = cb1[142].z * cb4[8].x + r1.w;
    r3.y = abs(r11.x) + abs(r11.z);
    r3.y = r3.y + abs(r11.w);
    r3.y = frac(r3.y);
    r2.w = r3.y * 0.5 + r2.w;
    r2.w = 6.28318548 * r2.w;
    r2.w = sin(r2.w);
    r3.y = cb4[8].z * r1.z;
    r2.w = r3.y * r2.w;
    r2.w = 6.28318548 * r2.w;
    r8.xyz = cb4[2].yyy * r8.xyz;
    r7.xyz = cb4[2].xxx * r7.xyz + r8.xyz;
    r7.xyz = cb4[2].zzz * r9.xyz + r7.xyz;
    r3.y = dot(r7.xyz, r7.xyz);
    r3.y = sqrt(r3.y);
    r7.xyz = r7.xyz / r3.yyy;
    r8.xyz = r6.yzw * r0.zzz + -cb1[70].xyz;
    r9.xyz = r8.xyz + -r11.xzw;
    r3.y = dot(r7.yzx, r9.xyz);
    r9.xyz = r7.yzx * r3.yyy + r11.xzw;
    r12.xyw = -r9.xyz + r8.xyz;
    r13.xyz = r12.ywx * r7.xyz;
    r7.xyz = r7.zxy * r12.wxy + -r13.xyz;
    sincos(r2.w, r13.x, r14.x);
    r7.xyz = r13.xxx * r7.xyz;
    r7.xyz = r12.xyw * r14.xxx + r7.xyz;
    r7.xyz = r9.xyz + r7.xyz;
    r7.xyz = r7.xyz + -r8.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r6.yzw = r6.yzw * r0.zzz + r7.xyz;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r10.w = v0.w;
  r8.x = cb2[10].x;
  r8.y = cb2[11].x;
  r8.z = cb2[12].x;
  r8.w = r7.x;
  r8.x = dot(r10.xyzw, r8.xyzw);
  r9.x = cb2[10].y;
  r9.y = cb2[11].y;
  r9.z = cb2[12].y;
  r9.w = r7.y;
  r8.y = dot(r10.xyzw, r9.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r8.z = dot(r10.xyzw, r7.xyzw);
  if (r2.x != 0) {
    r2.xyw = cb2[11].zxy * r2.yyy;
    r2.xyw = r6.xxx * cb2[10].zxy + r2.xyw;
    r2.xyz = r2.zzz * cb2[12].zxy + r2.xyw;
    r7.xyz = cb2[11].zxy * r11.yyy;
    r3.xyw = r3.xxx * cb2[10].zxy + r7.xyz;
    r3.xyz = r3.zzz * cb2[12].zxy + r3.xyw;
    r4.yzw = cb2[11].zxy * r4.yyy;
    r4.xyz = r4.xxx * cb2[10].zxy + r4.yzw;
    r4.xyz = r12.zzz * cb2[12].zxy + r4.xyz;
    r7.xyz = cb2[11].xyz * r5.yyy;
    r7.xyz = r5.xxx * cb2[10].xyz + r7.xyz;
    r5.xyz = r5.zzz * cb2[12].xyz + r7.xyz;
    r5.xyz = cb2[13].xyz + r5.xyz;
    r2.w = abs(r11.x) + abs(r11.z);
    r2.w = r2.w + abs(r11.w);
    r2.w = frac(r2.w);
    r3.w = cb4[8].z * r1.z;
    r4.w = cb1[139].z * cb4[8].x + r1.w;
    r2.w = r2.w * 0.5 + r4.w;
    r2.w = 6.28318548 * r2.w;
    r2.w = sin(r2.w);
    r2.w = r2.w * r3.w;
    r2.w = 6.28318548 * r2.w;
    r3.xyz = cb4[2].yyy * r3.xyz;
    r2.xyz = cb4[2].xxx * r2.xyz + r3.xyz;
    r2.xyz = cb4[2].zzz * r4.xyz + r2.xyz;
    r3.x = dot(r2.xyz, r2.xyz);
    r3.x = sqrt(r3.x);
    r2.xyz = r2.xyz / r3.xxx;
    r3.xyz = -cb1[113].xyz + r8.xyz;
    r4.xyz = r3.xyz + -r5.xyz;
    r3.w = dot(r2.yzx, r4.xyz);
    r4.xyz = r2.yzx * r3.www + r5.xyz;
    r5.xyz = -r4.xyz + r3.xyz;
    r7.xyz = r5.yzx * r2.xyz;
    r2.xyz = r2.zxy * r5.zxy + -r7.xyz;
    sincos(r2.w, r6.x, r7.x);
    r2.xyz = r6.xxx * r2.xyz;
    r2.xyz = r5.xyz * r7.xxx + r2.xyz;
    r2.xyz = r4.xyz + r2.xyz;
    r2.xyz = r2.xyz + -r3.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r2.xyz = r8.xyz + r2.xyz;
  r3.xyzw = cb1[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r2.xyzw;
  r2.xyzw = cb1[1].xyzw * r6.zzzz;
  r2.xyzw = r6.yyyy * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r6.wwww * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r3.x = cmp(1 < asint(cb1[135].x));
  r3.y = 0.00100000005 * r2.w;
  r3.x = r3.x ? r3.y : 0;
  o0.z = r3.x + r2.z;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  o3.w = 0;
  o5.xyzw = r1.zyxw;
  o6.x = r5.w;
  o6.zw = r0.zw;
  o7.xy = r0.xy;
  o7.zw = float2(0,0);
  return;
}