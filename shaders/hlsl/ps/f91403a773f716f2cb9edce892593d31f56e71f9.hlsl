// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t7_t {
  float val[4];
};
StructuredBuffer<t7_t> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

struct t5_t {
  float val[1];
};
StructuredBuffer<t5_t> t5 : register(t5);

struct t4_t {
  float val[5];
};
StructuredBuffer<t4_t> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[229];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  nointerpolation uint v1 : DISPATCH_NODECOUNT0,
  nointerpolation uint2 w1 : DISPATCH_RESOLUTION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.x = mad((int)r0.y, (int)w1.x, (int)r0.x);
  r0.y = cmp((uint)r0.x >= (uint)v1.x);
  if (r0.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.y = t4[r0.x].val[8/4];
  r0.z = t4[r0.x].val[8/4+1];
  r0.w = t4[r0.x].val[8/4+2];
  if (3 == 0) r1.x = 0; else if (3+8 < 32) {   r1.x = (uint)r0.w << (32-(3 + 8)); r1.x = (uint)r1.x >> (32-3);  } else r1.x = (uint)r0.w >> 8;
  r1.x = (int)r1.x & asint(cb2[2].z);
  if (r1.x == 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r1.x = t5[r0.x].val[0/4];
  r2.x = (int)r1.x & 0x0000ffff;
  r2.y = (uint)r1.x >> 16;
  r1.xy = (uint2)r2.xy;
  r1.zw = float2(0.5,0.5) + r1.xy;
  r1.zw = r1.zw / cb1[132].xy;
  r1.zw = -cb1[66].wz + r1.zw;
  r1.zw = r1.zw / cb1[66].xy;
  r3.x = t4[r0.x].val[0/4];
  r3.y = (uint)r0.y >> 24;
  r3.z = r3.x * cb1[65].x + cb1[65].y;
  r3.x = r3.x * cb1[65].z + -cb1[65].w;
  r3.x = 1 / r3.x;
  r3.x = r3.z + r3.x;
  r1.zw = r3.xx * r1.zw;
  r4.xyz = cb1[49].xyz * r1.www;
  r4.xyz = r1.zzz * cb1[48].xyz + r4.xyz;
  r4.xyz = r3.xxx * cb1[50].xyz + r4.xyz;
  r4.xyz = cb1[51].xyz + r4.xyz;
  r5.xyz = cb2[6].xyz + -r4.xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r6.xyz = r5.xyz * r1.zzz;
  r7.xyz = cb2[6].www * r5.xyz;
  r1.z = dot(r7.xyz, r7.xyz);
  r1.z = min(1, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = log2(r1.z);
  r1.z = cb2[7].w * r1.z;
  r1.z = exp2(r1.z);
  r1.w = dot(r6.xyz, cb2[8].xyz);
  r1.w = -cb2[10].x + r1.w;
  r1.w = saturate(cb2[10].y * r1.w);
  r1.w = r1.w * r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(0 < r1.z);
  if (r1.w != 0) {
    r1.w = cmp((uint)r0.x < asuint(cb0[0].x));
    r7.x = t7[r0.x].val[0/4];
    r7.y = t7[r0.x].val[0/4+1];
    r7.z = t7[r0.x].val[0/4+2];
    r7.w = t7[r0.x].val[0/4+3];
    r0.x = (int)r7.w & 0x00ffffff;
    r0.x = (uint)r0.x;
    r8.x = 0.00100000005 * r0.x;
    r0.x = (uint)r7.w >> 24;
    r0.x = (uint)r0.x;
    r8.y = 0.00392156886 * r0.x;
    r3.zw = r1.ww ? r8.xy : float2(0,1);
    r0.x = cb1[37].y * r3.x;
    if (cb2[2].y != 0) {
      r3.x = cmp(cb2[1].z < 0);
      r2.zw = float2(0,0);
      r2.xy = t6.Load(r2.xyz).zw;
      r2.xy = cb0[0].yy ? r2.xy : float2(1,1);
      r2.xy = min(r2.xy, r3.ww);
      r2.z = dot(cb2[0].xyzw, float4(1,1,1,1));
      r2.w = -1 + r2.z;
      r2.z = r2.z * r2.w + 1;
      r2.xy = r2.xy * r2.zz;
      r2.z = cmp(1 < asuint(cb2[2].y));
      r2.w = cmp(0 < abs(cb2[1].z));
      r2.z = r2.w ? r2.z : 0;
      r2.w = r3.x ? 1 : r0.x;
      r2.w = abs(cb2[1].z) * r2.w;
      r2.z = r2.z ? r2.w : 0;
    } else {
      r2.xyz = float3(1,1,0);
    }
    r2.w = cmp(asuint(cb2[2].y) < 2);
    r0.x = 0.200000003 * r0.x;
    r0.x = r2.w ? r0.x : r2.z;
    r2.z = cmp(0 < r0.x);
    if (r2.z != 0) {
      r2.z = asuint(cb1[144].y);
      r1.xy = r2.zz * float2(32.6650009,11.8149996) + r1.xy;
      r1.x = dot(r1.xy, float2(0.0671105608,0.00583714992));
      r1.x = frac(r1.x);
      r1.x = 52.9829178 * r1.x;
      r1.x = frac(r1.x);
      r1.x = -0.5 + r1.x;
      r8.xyz = cb1[70].xyz + r4.xyz;
      r9.xyzw = cb1[1].xyzw * r8.yyyy;
      r9.xyzw = r8.xxxx * cb1[0].xyzw + r9.xyzw;
      r8.xyzw = r8.zzzz * cb1[2].xyzw + r9.xyzw;
      r8.xyzw = cb1[3].xyzw + r8.xyzw;
      r9.xyz = r6.xyz * r0.xxx;
      r10.xyzw = cb1[1].xyzw * r9.yyyy;
      r10.xyzw = r9.xxxx * cb1[0].xyzw + r10.xyzw;
      r9.xyzw = r9.zzzz * cb1[2].xyzw + r10.xyzw;
      r9.xyzw = r9.xyzw + r8.xyzw;
      r10.xyz = r8.xyz / r8.www;
      r9.xyz = r9.xyz / r9.www;
      r9.xyz = r9.xyz + -r10.xyz;
      r10.xy = r10.xy * cb1[66].xy + cb1[66].wz;
      r9.xy = cb1[66].xy * r9.xy;
      r2.zw = r0.xx * cb1[30].zw + r8.zw;
      r1.y = r2.z / r2.w;
      r1.y = r1.y + -r10.z;
      r2.z = 0.25 * abs(r1.y);
      r8.xyzw = r1.xxxx * float4(0.125,0.125,0.125,0.125) + float4(0.125,0.25,0.375,0.5);
      r11.xyz = r9.xyz * r8.xxx + r10.xyz;
      r2.w = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r2.w = r11.z + -r2.w;
      r2.w = abs(r1.y) * 0.25 + r2.w;
      r2.w = cmp(abs(r2.w) < r2.z);
      r2.w = r2.w ? r8.x : -1;
      r11.xyz = r9.xyz * r8.yyy + r10.xyz;
      r3.x = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r3.x = r11.z + -r3.x;
      r3.x = abs(r1.y) * 0.25 + r3.x;
      r3.x = cmp(abs(r3.x) < r2.z);
      r3.w = cmp(r2.w < 0);
      r3.x = r3.w ? r3.x : 0;
      r2.w = r3.x ? r8.y : r2.w;
      r11.xyz = r9.xyz * r8.zzz + r10.xyz;
      r3.x = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r3.x = r11.z + -r3.x;
      r3.x = abs(r1.y) * 0.25 + r3.x;
      r3.x = cmp(abs(r3.x) < r2.z);
      r3.w = cmp(r2.w < 0);
      r3.x = r3.w ? r3.x : 0;
      r2.w = r3.x ? r8.z : r2.w;
      r8.xyz = r9.xyz * r8.www + r10.xyz;
      r3.x = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r3.x = r8.z + -r3.x;
      r3.x = abs(r1.y) * 0.25 + r3.x;
      r3.x = cmp(abs(r3.x) < r2.z);
      r3.w = cmp(r2.w < 0);
      r3.x = r3.w ? r3.x : 0;
      r2.w = r3.x ? r8.w : r2.w;
      r8.xyzw = r1.xxxx * float4(0.125,0.125,0.125,0.125) + float4(0.625,0.75,0.875,1);
      r11.xyz = r9.xyz * r8.xxx + r10.xyz;
      r1.x = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r1.x = r11.z + -r1.x;
      r1.x = abs(r1.y) * 0.25 + r1.x;
      r1.x = cmp(abs(r1.x) < r2.z);
      r3.x = cmp(r2.w < 0);
      r1.x = r1.x ? r3.x : 0;
      r1.x = r1.x ? r8.x : r2.w;
      r11.xyz = r9.xyz * r8.yyy + r10.xyz;
      r2.w = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r2.w = r11.z + -r2.w;
      r2.w = abs(r1.y) * 0.25 + r2.w;
      r2.w = cmp(abs(r2.w) < r2.z);
      r3.x = cmp(r1.x < 0);
      r2.w = r2.w ? r3.x : 0;
      r1.x = r2.w ? r8.y : r1.x;
      r11.xyz = r9.xyz * r8.zzz + r10.xyz;
      r2.w = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r2.w = r11.z + -r2.w;
      r2.w = abs(r1.y) * 0.25 + r2.w;
      r2.w = cmp(abs(r2.w) < r2.z);
      r3.x = cmp(r1.x < 0);
      r2.w = r2.w ? r3.x : 0;
      r1.x = r2.w ? r8.z : r1.x;
      r8.xyz = r9.xyz * r8.www + r10.xyz;
      r2.w = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r2.w = r8.z + -r2.w;
      r1.y = abs(r1.y) * 0.25 + r2.w;
      r1.y = cmp(abs(r1.y) < r2.z);
      r2.z = cmp(r1.x < 0);
      r1.y = r1.y ? r2.z : 0;
      r1.x = r1.y ? r8.w : r1.x;
      r1.y = cmp(0 < r1.x);
      if (r1.y != 0) {
        r2.zw = r9.xy * r1.xx + r10.xy;
        r1.y = t2.SampleLevel(s1_s, r2.zw, 0).w;
        r3.x = t3.SampleLevel(s1_s, r2.zw, 0).w;
        r3.x = 255 * r3.x;
        r3.x = round(r3.x);
        r3.x = (uint)r3.x;
        r3.x = (int)r3.x & 15;
        r1.y = 3.99900007 * r1.y;
        r1.y = (uint)r1.y;
        r1.y = (int)r1.y & 1;
        r1.y = cmp((int)r1.y != 0);
        r3.x = cmp((int)r3.x != 9);
        r1.y = r1.y ? r3.x : 0;
        r3.xw = cmp(float2(0,0) < r2.zw);
        r2.zw = cmp(r2.zw < float2(1,1));
        r2.zw = r2.zw ? r3.xw : 0;
        r2.z = r2.w ? r2.z : 0;
        r0.x = r1.x * r0.x;
        r0.x = r2.z ? r0.x : -1;
      } else {
        r1.y = 0;
        r0.x = -1;
      }
      r0.x = cmp(0 < r0.x);
      r1.x = 1 + -cb2[1].w;
      r1.x = r1.y ? 0 : r1.x;
      r1.xy = r2.xy * r1.xx;
      r2.xy = r0.xx ? r1.xy : r2.xy;
    }
    r0.x = r2.x + r2.y;
    r0.x = cmp(0 < r0.x);
    if (r0.x != 0) {
      r8.xyz = r0.yzw ? float3(0,0,0) : 0;
      r9.xy = (uint2)r8.xz;
      if (8 == 0) r10.x = 0; else if (8+8 < 32) {       r10.x = (uint)r0.y << (32-(8 + 8)); r10.x = (uint)r10.x >> (32-8);      } else r10.x = (uint)r0.y >> 8;
      if (8 == 0) r10.y = 0; else if (8+16 < 32) {       r10.y = (uint)r0.y << (32-(8 + 16)); r10.y = (uint)r10.y >> (32-8);      } else r10.y = (uint)r0.y >> 16;
      if (8 == 0) r10.z = 0; else if (8+8 < 32) {       r10.z = (uint)r0.z << (32-(8 + 8)); r10.z = (uint)r10.z >> (32-8);      } else r10.z = (uint)r0.z >> 8;
      if (8 == 0) r10.w = 0; else if (8+16 < 32) {       r10.w = (uint)r0.z << (32-(8 + 16)); r10.w = (uint)r10.w >> (32-8);      } else r10.w = (uint)r0.z >> 16;
      r9.zw = (uint2)r10.xy;
      r8.xzw = r9.xzw * float3(0.00784313772,0.00784313772,0.00784313772) + float3(-1,-1,-1);
      r0.x = (uint)r0.z >> 24;
      r11.x = (uint)r8.y;
      r11.yz = (uint2)r10.zw;
      r11.w = (uint)r0.x;
      r10.xyzw = float4(0.00392156886,0.00392156886,0.00392156886,0.00392156886) * r11.xyzw;
      r0.xyz = r10.xyz * r10.xyz;
      if (8 == 0) r0.w = 0; else if (8+16 < 32) {       r0.w = (uint)r0.w << (32-(8 + 16)); r0.w = (uint)r0.w >> (32-8);      } else r0.w = (uint)r0.w >> 16;
      r0.w = (uint)r0.w;
      r1.x = 0.00392156886 * r0.w;
      r4.xyz = -cb1[67].xyz + r4.xyz;
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = rsqrt(r1.y);
      r4.xyz = r4.xyz * r1.yyy;
      r1.y = dot(-r4.xyz, -r4.xyz);
      r1.y = rsqrt(r1.y);
      r9.xzw = -r4.xyz * r1.yyy;
      r7.xyz = r1.www ? r7.xyz : float3(1,1,1);
      r1.y = cmp(0 < cb0[0].w);
      r1.y = r1.y ? cb0[0].w : r10.w;
      r1.w = dot(r6.xyz, r8.xzw);
      r6.x = min(1, abs(r1.w));
      r6.y = min(1, r1.y);
      r6.zw = r10.xy;
      r2.zw = t0.SampleLevel(s0_s, r6.xyz, 0).xy;
      r3.xw = t0.SampleLevel(s0_s, r6.xyw, 0).xy;
      r10.xy = r6.xy;
      r6.xz = t0.SampleLevel(s0_s, r10.xyz, 0).xy;
      r1.yw = max(float2(0.180000007,-1), r1.yw);
      r4.w = dot(r8.xzw, r9.xzw);
      r4.w = max(-1, r4.w);
      r4.w = min(1, r4.w);
      r10.x = r2.z;
      r10.y = r3.x;
      r10.z = r6.x;
      r9.xzw = min(float3(0.99000001,0.99000001,0.99000001), r10.xyz);
      r10.xyz = r9.xzw * r9.xzw;
      r6.x = r2.w;
      r6.y = r3.w;
      r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
      r11.xyz = r6.xyz * r6.xyz;
      r12.xyz = -r9.xzw * r9.xzw + float3(1,1,1);
      r13.xyz = r6.xyz * r10.xyz;
      r13.xyz = r13.xyz / r12.xyz;
      r14.xyz = r11.xyz * r6.xyz;
      r15.xyz = r14.xyz * r10.xyz;
      r16.xyz = r12.xyz * r12.xyz;
      r12.xyz = r16.xyz * r12.xyz;
      r15.xyz = r15.xyz / r12.xyz;
      r13.xyz = r15.xyz + r13.xyz;
      r1.yw = min(float2(0.600000024,1), r1.yw);
      r15.x = r1.y * r1.y;
      r2.z = 0.5 * r1.y;
      r15.y = r2.z * r2.z;
      r1.y = r1.y + r1.y;
      r15.z = r1.y * r1.y;
      r1.y = r9.x + r9.z;
      r1.y = r1.y + r9.w;
      r9.xzw = r9.xzw / r1.yyy;
      r1.y = dot(r15.xyz, r9.xzw);
      r2.z = r1.y * r1.y;
      r2.w = max(1, r3.z);
      r2.w = r2.z * r2.w;
      r3.x = 1 + -abs(r1.w);
      r3.x = sqrt(r3.x);
      r3.w = abs(r1.w) * -0.0187292993 + 0.0742610022;
      r3.w = r3.w * abs(r1.w) + -0.212114394;
      r3.w = r3.w * abs(r1.w) + 1.57072878;
      r5.w = r3.w * r3.x;
      r5.w = r5.w * -2 + 3.14159274;
      r1.w = cmp(r1.w < -r1.w);
      r1.w = r1.w ? r5.w : 0;
      r1.w = r3.w * r3.x + r1.w;
      r1.w = 1.57079637 + -r1.w;
      r3.x = 1 + -abs(r4.w);
      r3.x = sqrt(r3.x);
      r3.w = abs(r4.w) * -0.0187292993 + 0.0742610022;
      r3.w = r3.w * abs(r4.w) + -0.212114394;
      r3.w = r3.w * abs(r4.w) + 1.57072878;
      r5.w = r3.w * r3.x;
      r5.w = r5.w * -2 + 3.14159274;
      r4.w = cmp(r4.w < -r4.w);
      r4.w = r4.w ? r5.w : 0;
      r3.x = r3.w * r3.x + r4.w;
      r1.w = -r3.x + r1.w;
      r1.w = 1.57079637 + r1.w;
      r3.x = 0.5 * r1.w;
      r3.x = r3.x * r3.x;
      r3.x = -0.5 * r3.x;
      r3.x = r3.x / r2.w;
      r3.x = 1.44269502 * r3.x;
      r3.x = exp2(r3.x);
      r3.x = 0.318309873 * r3.x;
      r3.w = dot(float3(-0.0700000003,0.0350000001,0.140000001), r9.xzw);
      r9.xzw = r11.xyz + r11.xyz;
      r9.xzw = r9.xzw / r16.xyz;
      r9.xzw = float3(1,1,1) + -r9.xzw;
      r3.w = r3.w * r3.w;
      r9.xzw = r3.www * r9.xzw;
      r16.xyz = r16.xyz + r16.xyz;
      r11.xyz = r11.xyz * r10.xyz;
      r11.xyz = r11.xyz * float3(4,4,4) + r16.xyz;
      r9.xzw = r11.xyz * r9.xzw;
      r9.xzw = r9.xzw / r12.xyz;
      r3.w = r6.x + r6.y;
      r3.w = r3.w + r6.z;
      r11.xyz = r6.xyz / r3.www;
      r3.w = dot(r15.xyz, r11.xyz);
      r10.xyz = r10.xyz * float3(0.699999988,0.699999988,0.699999988) + float3(1,1,1);
      r2.z = r2.z + r2.z;
      r2.z = r3.w * r3.w + r2.z;
      r2.z = sqrt(r2.z);
      r11.xyz = r14.xyz * r2.zzz;
      r11.xyz = r6.xyz * r2.zzz + r11.xyz;
      r10.xyz = r11.xyz * r10.xyz;
      r1.y = r1.y + r1.y;
      r1.y = r3.w * 3 + r1.y;
      r6.xyz = r14.xyz * r1.yyy + r6.xyz;
      r6.xyz = r10.xyz / r6.xyz;
      r6.xyz = r6.xyz * r6.xyz + r2.www;
      r9.xzw = r1.www * float3(0.5,0.5,0.5) + -r9.xzw;
      r9.xzw = r9.xzw * r9.xzw;
      r9.xzw = float3(-0.5,-0.5,-0.5) * r9.xzw;
      r6.xyz = r9.xzw / r6.xyz;
      r6.xyz = float3(1.44269502,1.44269502,1.44269502) * r6.xyz;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz * r13.xyz;
      r7.xyz = r7.xyz * r3.xxx;
      r1.y = min(1, r3.z);
      r3.xzw = r7.xyz * float3(0.699999988,0.699999988,0.699999988) + float3(-1,-1,-1);
      r3.xzw = r1.yyy * r3.xzw + float3(1,1,1);
      r6.xyz = float3(0.445633829,0.445633829,0.445633829) * r6.xyz;
      r1.yw = asint(cb1[228].zz) & int2(16,8);
      r1.yw = cmp(int2(0,0) < (uint2)r1.yw);
      r3.xzw = r1.yyy ? r3.xzw : float3(1,1,1);
      r6.xyz = r1.www ? r6.xyz : 0;
      r1.y = 0.5 * cb2[10].w;
      r7.xyz = -r1.yyy * cb2[9].xyz + r5.xyz;
      r5.xyz = r1.yyy * cb2[9].xyz + r5.xyz;
      r1.y = cmp(0 < cb2[10].w);
      r1.w = dot(r4.xyz, r8.xzw);
      r1.w = r1.w + r1.w;
      r9.xzw = r8.xzw * -r1.www + r4.xyz;
      r5.xyz = r5.xyz + -r7.xyz;
      r1.w = dot(r9.xzw, r5.xyz);
      r9.xzw = r1.www * r9.xzw + -r5.xyz;
      r2.z = dot(r7.xyz, r9.xzw);
      r1.w = r1.w * r1.w;
      r1.w = cb2[10].w * cb2[10].w + -r1.w;
      r1.w = saturate(r2.z / r1.w);
      r5.xyz = r1.www * r5.xyz + r7.xyz;
      r5.xyz = r1.yyy ? r5.xyz : r7.xyz;
      r1.y = dot(r5.xyz, r5.xyz);
      r1.y = rsqrt(r1.y);
      r5.xyz = r5.xyz * r1.yyy;
      r1.y = max(cb1[226].y, r10.w);
      r1.y = max(0.00392156886, r1.y);
      r1.y = min(1, r1.y);
      r1.w = dot(-r4.xyz, r5.xyz);
      r2.z = dot(r8.xzw, r5.xyz);
      r2.z = max(-1, r2.z);
      r2.w = dot(r8.xzw, -r4.xyz);
      r2.w = max(-1, r2.w);
      r2.zw = min(float2(1,1), r2.zw);
      r4.w = abs(r2.w) * -0.156582996 + 1.57079637;
      r5.w = 1 + -abs(r2.w);
      r5.w = sqrt(r5.w);
      r6.w = r5.w * r4.w;
      r7.xy = cmp(r2.wz >= float2(0,0));
      r4.w = -r4.w * r5.w + 3.14159274;
      r4.w = r7.x ? r6.w : r4.w;
      r4.w = 1.57079637 + -r4.w;
      r5.w = abs(r2.z) * -0.156582996 + 1.57079637;
      r6.w = 1 + -abs(r2.z);
      r6.w = sqrt(r6.w);
      r7.x = r6.w * r5.w;
      r5.w = -r5.w * r6.w + 3.14159274;
      r5.w = r7.y ? r7.x : r5.w;
      r5.w = 1.57079637 + -r5.w;
      r4.w = -r5.w + r4.w;
      r4.w = 0.5 * abs(r4.w);
      r4.w = cos(r4.w);
      r5.xyz = -r2.zzz * r8.xzw + r5.xyz;
      r4.xyz = -r2.www * r8.xzw + -r4.xyz;
      r5.w = dot(r5.xyz, r4.xyz);
      r5.x = dot(r5.xyz, r5.xyz);
      r4.x = dot(r4.xyz, r4.xyz);
      r4.x = r5.x * r4.x + 9.99999975e-005;
      r4.x = rsqrt(r4.x);
      r4.x = r5.w * r4.x;
      r4.yz = r4.xx * float2(0.5,17) + float2(0.5,-16.7800007);
      r4.y = saturate(r4.y);
      r4.y = sqrt(r4.y);
      r5.xy = float2(1.19000006,0.800000012) / r4.ww;
      r5.x = r4.w * 0.360000014 + r5.x;
      r1.y = r1.y * r1.y;
      r5.zw = float2(0.5,5.01325655) * r1.yy;
      r6.w = r1.y + r1.y;
      r7.xyz = asint(cb1[228].zzz) & int3(1,2,4);
      r7.w = 0.997551024 * r4.y;
      r8.x = -r2.w * r2.w + 1;
      r8.x = sqrt(r8.x);
      r8.y = -0.0699428469 * r2.w;
      r7.w = r7.w * r8.x + r8.y;
      r8.x = r1.y * r4.y;
      r8.xy = float2(1.41421354,3.54490757) * r8.xx;
      r2.z = r2.z + r2.w;
      r2.w = -r7.w * -0.139885694 + r2.z;
      r2.w = r2.w * r2.w;
      r2.w = -0.5 * r2.w;
      r7.w = r8.x * r8.x;
      r2.w = r2.w / r7.w;
      r2.w = 1.44269502 * r2.w;
      r2.w = exp2(r2.w);
      r2.w = r2.w / r8.y;
      r2.w = r2.w * r4.y;
      r7.w = saturate(r1.w * 0.5 + 0.5);
      r7.w = sqrt(r7.w);
      r7.w = 1 + -r7.w;
      r8.x = r7.w * r7.w;
      r8.x = r8.x * r8.x;
      r7.w = r8.x * r7.w;
      r7.w = r7.w * 0.953479409 + 0.0465205684;
      r2.w = r7.w * r2.w;
      r2.w = r2.w * r9.y;
      r2.w = 0.00196078443 * r2.w;
      r1.w = saturate(-r1.w);
      r0.w = r0.w * 0.00392156886 + -1;
      r0.w = r1.w * r0.w + 1;
      r0.w = r2.w * r0.w;
      r8.xyz = r7.xxx ? r0.www : float3(0,0,0);
      if (r7.y != 0) {
        r0.w = asint(cb1[228].z) & 64;
        r1.w = -0.0350000001 + r2.z;
        r1.w = r1.w * r1.w;
        r1.w = -0.5 * r1.w;
        r2.w = r5.z * r5.z;
        r1.w = r1.w / r2.w;
        r1.w = 1.44269502 * r1.w;
        r1.w = exp2(r1.w);
        r1.y = 1.25331414 * r1.y;
        r1.y = r1.w / r1.y;
        r1.w = 1 / r5.x;
        r2.w = -r4.x * 0.800000012 + 0.600000024;
        r2.w = r1.w * r2.w + 1;
        r2.w = r4.y * r2.w;
        r4.y = -r2.w * r2.w + 1;
        r4.y = max(0, r4.y);
        r4.y = sqrt(r4.y);
        r4.y = -r4.w * r4.y + 1;
        r5.x = r4.y * r4.y;
        r5.x = r5.x * r5.x;
        r4.y = r5.x * r4.y;
        r4.y = r4.y * 0.953479409 + 0.0465205684;
        r4.y = 1 + -r4.y;
        r4.y = r4.y * r4.y;
        r1.w = r2.w * r1.w;
        r2.w = r1.w * r1.w;
        r1.w = -r1.w * r1.w + 1;
        r1.w = sqrt(r1.w);
        r1.w = 0.5 * r1.w;
        r1.w = r1.w / r4.w;
        r7.xyw = log2(r0.xyz);
        r9.xyz = r7.xyw * r1.www;
        r9.xyz = exp2(r9.xyz);
        r7.xyw = float3(0.117713712,0.117713712,0.117713712) * r7.xyw;
        r7.xyw = r7.xyw * r7.xyw;
        r7.xyw = float3(-2,-2,-2) * r7.xyw;
        r1.w = r2.w / r4.w;
        r1.w = 1 + -r1.w;
        r7.xyw = r7.xyw * abs(r1.www);
        r7.xyw = float3(1.44269502,1.44269502,1.44269502) * r7.xyw;
        r7.xyw = exp2(r7.xyw);
        r7.xyw = r0.www ? r7.xyw : r9.xyz;
        r0.w = r4.x * -3.6500001 + -3.98000002;
        r0.w = 1.44269502 * r0.w;
        r0.w = exp2(r0.w);
        r0.w = r1.y * r0.w;
        r0.w = r0.w * r4.y;
        r7.xyw = r0.www * r7.xyw;
        r8.xyz = r7.xyw * r1.xxx + r8.zzz;
      }
      r0.w = -0.140000001 + r2.z;
      r0.w = r0.w * r0.w;
      r0.w = -0.5 * r0.w;
      r1.x = r6.w * r6.w;
      r0.w = r0.w / r1.x;
      r0.w = 1.44269502 * r0.w;
      r0.w = exp2(r0.w);
      r0.w = r0.w / r5.w;
      r1.x = -r4.w * 0.5 + 1;
      r1.y = r1.x * r1.x;
      r1.y = r1.y * r1.y;
      r1.x = r1.y * r1.x;
      r1.x = r1.x * 0.953479409 + 0.0465205684;
      r1.y = 1 + -r1.x;
      r1.y = r1.y * r1.y;
      r1.x = r1.y * r1.x;
      r0.xyz = log2(r0.xyz);
      r0.xyz = r5.yyy * r0.xyz;
      r0.xyz = exp2(r0.xyz);
      r1.y = 1.44269502 * r4.z;
      r1.y = exp2(r1.y);
      r0.w = r1.y * r0.w;
      r0.w = r0.w * r1.x;
      r0.xyz = r0.www * r0.xyz + r8.xyz;
      r0.xyz = r7.zzz ? r0.xyz : r8.xyz;
      r0.xyz = r0.xyz + r6.xyz;
      r0.xyz = r3.xzw * r0.xyz;
      r0.xyz = r0.xyz * r2.xxx;
      r0.xyz = min(float3(0,0,0), -r0.xyz);
      r1.xyz = cb2[7].xyz * r1.zzz;
      r1.xyz = r1.xyz * r2.yyy;
      r0.xyz = r1.xyz * -r0.xyz;
    } else {
      r0.xyz = float3(0,0,0);
    }
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.w = (uint)r3.y;
  r0.w = 0.00392156886 * r0.w;
  r0.xyz = r0.xyz * r0.www;
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = r0.w;
  return;
}