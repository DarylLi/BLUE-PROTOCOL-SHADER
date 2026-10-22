// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[3];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_raw u1
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadID.xy;
  r0.zw = float2(0,0);
  r1.xyzw = t1.Load(r0.xyw).xyzw;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r2.yzw = r2.xxx * r1.xyz;
  r3.x = t2.Load(r0.xyw).x;
  r1.w = 32 * r1.w;
  r3.yz = (uint2)vThreadID.xy;
  r3.yz = cb0[10].yy * r3.yz;
  r4.xyz = cb0[1].xyz * r3.zzz;
  r3.yzw = r3.yyy * cb0[0].xyz + r4.xyz;
  r3.xyz = r3.xxx * cb0[2].xyz + r3.yzw;
  r3.xyz = cb0[3].xyz + r3.xyz;
  r2.yzw = cb0[11].xxx * r2.yzw;
  r2.yzw = r2.yzw * r1.www + r3.xyz;
  r3.xyz = asint(cb0[8].xyz);
  r2.yzw = r2.yzw * cb0[9].yyy + r3.xyz;
  r3.xyz = float3(-16,-16,-16) + r2.yzw;
  r3.y = max(abs(r3.y), abs(r3.z));
  r3.x = max(abs(r3.x), r3.y);
  r3.x = cmp(16 < r3.x);
  r2.yzw = (int3)r2.yzw;
  r2.zw = (uint2)r2.wz << int2(10,5);
  r2.z = (int)r2.w + (int)r2.z;
  r2.y = (int)r2.y + (int)r2.z;
  r2.y = r3.x ? -1 : r2.y;
  r2.z = cmp((int)r2.y >= 0);
  if (r2.z != 0) {
    r0.xyz = t0.Load(r0.xyz).xyz;
    r0.w = 1 / r1.w;
    r0.w = min(1, r0.w);
    r0.xyz = r0.xyz * r0.www;
    r0.xy = cb0[4].xy * r0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.x, u1, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = (uint)r2.y << 2;
    r0.w = (int)r0.w + 256;
    r1.w = (int)r3.x + 1;
    // Needs manual fix for instruction:
    imm_atomic_exch r4.z, u1, r0.w, r1.w
    InterlockedExchange(dest, imm_value, orig_value);
    r1.xyz = r1.xyz * r2.xxx + float3(1,1,1);
    r1.xyz = float3(127,127,127) * r1.xyz;
    r1.xyz = (uint3)r1.xyz;
    r1.yz = (uint2)r1.yz << int2(8,16);
    r0.w = (int)r1.y | (int)r1.x;
    r4.x = (int)r1.z | (int)r0.w;
    r0.w = r0.x + r0.y;
    r0.z = r0.z * cb0[4].z + r0.w;
    r0.xy = r0.xy / r0.zz;
    r0.xy = r0.xy * float2(255,255) + float2(0.5,0.5);
    r0.xy = (uint2)r0.xy;
    r0.xy = (uint2)r0.xy << int2(24,16);
    r0.x = (int)r0.y | (int)r0.x;
    r0.y = f32tof16(r0.z);
    r4.y = (int)r0.x + (int)r0.y;
    u0[r3.x].val[0/4] = r4.x;
    u0[r3.x].val[0/4+1] = r4.y;
    u0[r3.x].val[0/4+2] = r4.z;
  }
  return;
}