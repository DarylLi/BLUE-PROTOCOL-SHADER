// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  nointerpolation uint v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = asint(cb0[8].y) + -1;
  r0.z = (int)-r0.y + (int)r0.z;
  r1.xy = (uint2)r0.xz;
  r0.zw = asuint(cb0[8].xy);
  r1.zw = r1.xy / r0.zw;
  r2.yz = r1.wz * float2(2,2) + float2(-1,-1);
  r1.xy = float2(1,1) + r1.xy;
  r0.zw = r1.xy / r0.zw;
  r1.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = (int)v0.x * 5;
  r3.x = t0[r0.z].val[0/4];
  r3.y = t0[r0.z].val[0/4+1];
  r3.z = t0[r0.z].val[0/4+2];
  r0.z = mad((int)v0.x, 5, 1);
  r4.x = t0[r0.z].val[0/4];
  r4.y = t0[r0.z].val[0/4+1];
  r4.z = t0[r0.z].val[0/4+2];
  r0.zw = cmp(r2.zy < r4.xy);
  r0.z = r0.w ? r0.z : 0;
  r1.z = 1;
  r5.xyz = cmp(r3.xyz < r1.xyz);
  r0.w = r5.y ? r5.x : 0;
  r0.w = r5.z ? r0.w : 0;
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r3.xyz = r4.xyz + r3.xyz;
    r4.xyz = mad((int3)v0.xxx, int3(5,5,5), int3(2,3,4));
    r5.x = t0[r4.x].val[0/4];
    r5.y = t0[r4.x].val[0/4+1];
    r5.z = t0[r4.x].val[0/4+2];
    r4.x = t0[r4.y].val[0/4];
    r4.y = t0[r4.y].val[0/4+1];
    r4.w = t0[r4.y].val[0/4+2];
    r6.x = t0[r4.z].val[0/4];
    r6.y = t0[r4.z].val[0/4+1];
    r6.z = t0[r4.z].val[0/4+2];
    r2.w = -1000;
    r7.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r2.zyw;
    r8.x = dot(r7.xyz, r5.xyz);
    r8.y = dot(r7.xyz, r4.xyw);
    r8.z = dot(r7.xyz, r6.xyz);
    r7.xyz = min(float3(500000,500000,500000), r8.xyz);
    r8.xyz = max(float3(-500000,-500000,-500000), r8.xyz);
    r2.x = r1.x;
    r9.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
    r10.x = dot(r9.xyz, r5.xyz);
    r10.y = dot(r9.xyz, r4.xyw);
    r10.z = dot(r9.xyz, r6.xyz);
    r7.xyz = min(r10.xyz, r7.xyz);
    r8.xyz = max(r10.xyz, r8.xyz);
    r9.xy = r2.zw;
    r9.w = r1.y;
    r10.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r9.xwy;
    r11.x = dot(r10.xyz, r5.xyz);
    r11.y = dot(r10.xyz, r4.xyw);
    r11.z = dot(r10.xyz, r6.xyz);
    r7.xyz = min(r11.xyz, r7.xyz);
    r8.xyz = max(r11.xyz, r8.xyz);
    r9.xy = r2.xw;
    r10.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r9.xwy;
    r11.x = dot(r10.xyz, r5.xyz);
    r11.y = dot(r10.xyz, r4.xyw);
    r11.z = dot(r10.xyz, r6.xyz);
    r7.xyz = min(r11.xyz, r7.xyz);
    r8.xyz = max(r11.xyz, r8.xyz);
    r9.xy = r2.zy;
    r9.z = 1;
    r10.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r9.xyz;
    r11.x = dot(r10.xyz, r5.xyz);
    r11.y = dot(r10.xyz, r4.xyw);
    r11.z = dot(r10.xyz, r6.xyz);
    r7.xyz = min(r11.xyz, r7.xyz);
    r8.xyz = max(r11.xyz, r8.xyz);
    r2.z = 1;
    r2.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
    r10.x = dot(r2.xyz, r5.xyz);
    r10.y = dot(r2.xyz, r4.xyw);
    r10.z = dot(r2.xyz, r6.xyz);
    r2.xyz = min(r10.xyz, r7.xyz);
    r7.xyz = max(r10.xyz, r8.xyz);
    r8.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r9.xwz;
    r9.x = dot(r8.xyz, r5.xyz);
    r9.y = dot(r8.xyz, r4.xyw);
    r9.z = dot(r8.xyz, r6.xyz);
    r2.xyz = min(r9.xyz, r2.xyz);
    r7.xyz = max(r9.xyz, r7.xyz);
    r1.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r1.xyz;
    r3.x = dot(r1.xyz, r5.xyz);
    r3.y = dot(r1.xyz, r4.xyw);
    r3.z = dot(r1.xyz, r6.xyz);
    r1.xyz = min(r3.xyz, r2.xyz);
    r2.xyz = max(r7.xyz, r3.xyz);
    r1.xyz = cmp(r1.xyz < float3(1,1,1));
    r0.z = r1.y ? r1.x : 0;
    r0.z = r1.z ? r0.z : 0;
    r1.xyz = cmp(float3(-1,-1,-1) < r2.xyz);
    r0.w = r1.y ? r1.x : 0;
    r0.w = r1.z ? r0.w : 0;
    r0.z = r0.w ? r0.z : 0;
    if (r0.z != 0) {
      r0.x = mad((int)r0.y, asint(cb0[8].x), (int)r0.x);
      // Needs manual fix for instruction:
        atomic_iadd u1, r0.x, l(1)
      InterlockedAdd(dest, value, orig_value);
    }
  }
  o0.xyzw = float4(0,0,0,0);
  return;
}