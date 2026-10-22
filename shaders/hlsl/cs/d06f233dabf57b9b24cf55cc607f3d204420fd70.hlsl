// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t7 : register(t7);

struct t6_t {
  float val[4];
};
StructuredBuffer<t6_t> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[215];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[9].z));
  if (r0.x != 0) {
    r0.xyzw = t7.Load(vThreadID.x).xyzw;
    r1.x = cmp(asint(cb0[8].z) == 2);
    if (r1.x != 0) {
      r1.x = t6[0].val[0/4];
      r1.y = t6[0].val[0/4+1];
      r1.z = t6[0].val[0/4+2];
      r2.x = t6[1].val[0/4];
      r2.y = t6[1].val[0/4+1];
      r2.z = t6[1].val[0/4+2];
      r3.x = t6[2].val[0/4];
      r3.y = t6[2].val[0/4+1];
      r3.z = t6[2].val[0/4+2];
      r2.xyz = float3(-0.589999974,-0.589999974,0.589999974) * r2.xyz;
      r1.xyz = r1.xyz * float3(-0.300000012,-0.300000012,0.300000012) + r2.xyz;
      r1.xyz = r3.xyz * float3(-0.109999999,-0.109999999,0.109999999) + r1.xyz;
      r1.xyz = float3(-1,-1,1) * r1.xyz;
      r1.w = dot(r1.xyz, r1.xyz);
      r1.w = sqrt(r1.w);
      r1.w = max(9.99999975e-005, r1.w);
      r1.xyz = r1.xyz / r1.www;
      r1.w = cb0[8].w;
    } else {
      r0.xyz = r0.xyz * cb1[211].xyz + cb1[212].xyz;
      r0.xyz = max(float3(0,0,0), r0.xyz);
      r0.xyz = min(float3(0.99000001,0.99000001,0.99000001), r0.xyz);
      r0.xyz = cb1[213].xyz * r0.xyz;
      r2.xyz = (int3)r0.xyz;
      r2.w = 0;
      r2.xyzw = t0.Load(r2.xyzw).xyzw;
      r2.xyzw = (uint4)r2.xyzw;
      r3.x = 1 + cb1[213].w;
      r0.xyz = r0.xyz / r2.www;
      r0.xyz = frac(r0.xyz);
      r0.xyz = cb1[213].www * r0.xyz;
      r0.xyz = r2.xyz * r3.xxx + r0.xyz;
      r0.xyz = float3(0.5,0.5,0.5) + r0.xyz;
      r0.xyz = cb1[214].xyz * r0.xyz;
      r2.x = cmp(asint(cb0[8].z) == 1);
      if (r2.x != 0) {
        r2.xyz = t5.SampleLevel(s0_s, r0.xyz, 0).xyz;
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.w = dot(r2.xyz, r2.xyz);
        r2.w = sqrt(r2.w);
        r3.x = cb0[9].x * r2.w;
        r3.x = 1.57079637 * r3.x;
        r3.y = 0.0174532942 * cb0[9].y;
        r1.w = max(r3.x, r3.y);
        r2.w = max(9.99999975e-005, r2.w);
        r1.xyz = r2.xyz / r2.www;
      } else {
        r2.xyz = t1.SampleLevel(s0_s, r0.xyz, 0).xyz;
        r3.xyz = t2.SampleLevel(s0_s, r0.xyz, 0).xyz;
        r3.xyz = r3.zxy * float3(2,2,2) + float3(-1,-1,-1);
        r4.xyz = t3.SampleLevel(s0_s, r0.xyz, 0).xyz;
        r4.xyz = r4.zxy * float3(2,2,2) + float3(-1,-1,-1);
        r0.xyz = t4.SampleLevel(s0_s, r0.xyz, 0).xyz;
        r0.xyz = r0.zxy * float3(2,2,2) + float3(-1,-1,-1);
        r3.xyz = r3.xyz * r2.xxx;
        r2.xyw = r4.xyz * r2.yyy;
        r0.xyz = r0.xyz * r2.zzz;
        r2.xyz = float3(1.02191019,1.02191019,1.02191019) * r2.xyw;
        r2.xyz = r3.xyz * float3(0.519615412,0.519615412,0.519615412) + r2.xyz;
        r0.xyz = r0.xyz * float3(0.190525636,0.190525636,0.190525636) + r2.xyz;
        r0.xyz = float3(-1,-1,1) * r0.xyz;
        r2.x = dot(r0.xyz, r0.xyz);
        r2.x = sqrt(r2.x);
        r2.x = max(9.99999975e-005, r2.x);
        r1.xyz = r0.xyz / r2.xxx;
        r1.w = cb0[8].w;
      }
    }
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = cmp(r0.x < 0.100000001);
    r2.xyz = r0.xxx ? float3(0,0,1) : r1.xyz;
    r0.x = (uint)r0.w >> 16;
    r0.x = f16tof32(r0.x);
    r0.y = f32tof16(r1.w);
    r0.x = f32tof16(r0.x);
    r2.w = mad((int)r0.x, 0x00010000, (int)r0.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xxxx, r2.xyzw
  }
  return;
}