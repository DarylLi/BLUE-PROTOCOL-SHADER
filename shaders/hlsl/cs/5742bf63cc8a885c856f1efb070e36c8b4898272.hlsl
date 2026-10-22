// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r1.xyzw = cb0[4].xyyy * r0.xyyy;
  r1.xyzw = (uint4)r1.xyzw;
  r0.zw = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.xyw = r0.yxw * float3(2,2,2) + float3(-1,-1,-1);
    r2.x = dot(r0.xyw, r0.xyw);
    r2.x = rsqrt(r2.x);
    r0.xyw = r2.xxx * r0.xyw;
    r2.xy = cmp(abs(r0.yy) >= abs(r0.xw));
    r2.x = r2.y ? r2.x : 0;
    r2.y = cmp(abs(r0.w) < abs(r0.x));
    r2.y = r2.y ? 1 : 2;
    r2.y = r2.x ? 0 : r2.y;
    r0.xyw = r2.xxx ? r0.xyw : r0.ywx;
    r2.x = cmp((int)r2.y == 1);
    r0.xyw = r2.xxx ? r0.xyw : r0.xwy;
    r0.w = cmp(0 < r0.w);
    r2.xz = r0.ww ? float2(0,1) : float2(1,-1);
    r0.xy = r2.zz * r0.xy;
    r0.xy = r0.xy * float2(0.707106769,0.707106769) + float2(0.5,0.5);
    r0.xy = float2(127,127) * r0.xy;
    r0.xy = round(r0.xy);
    r0.xy = max(float2(0,0), r0.xy);
    r0.xy = min(float2(127,127), r0.xy);
    r0.xy = (uint2)r0.xy;
    r0.z = f32tof16(r0.z);
    r0.w = (uint)r2.y << 16;
    r0.w = mad((int)r2.x, 0x00008000, (int)r0.w);
    r0.z = (int)r0.w | (int)r0.z;
    r0.x = mad((int)r0.x, 0x00040000, (int)r0.z);
    r0.x = mad((int)r0.y, 0x02000000, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}