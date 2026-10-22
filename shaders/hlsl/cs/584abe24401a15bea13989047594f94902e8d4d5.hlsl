// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[64];
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)vThreadIDInGroupFlattened.x >> 1;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(2,3,4,5);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.z = (((uint)r1.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.w = (((uint)r1.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.x = (int)r0.z + (int)r0.x;
  r2.x = (int)r0.w + (int)r0.y;
  r2.yzw = mad((int3)r1.www, int3(4,4,4), (int3)r0.xxx);
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r1.xy = (int2)r0.xw + asint(cb0[2].xy);
  r2.xy = (uint2)r1.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = cb0[0].zw * r2.xy;
  r2.xy = max(cb0[6].xy, r2.xy);
  r2.xy = min(cb0[6].zw, r2.xy);
  r3.xyz = t1.SampleLevel(s0_s, r2.xy, 0).xyz;
  r4.x = dot(r3.xzy, float3(1,1,2));
  r4.y = dot(r3.xz, float2(2,-2));
  r4.z = dot(r3.xzy, float3(-1,-1,2));
  r1.zw = float2(0,0);
  r2.z = t0.Load(r1.xyw).x;
  r3.xy = -cb0[0].zw + r2.xy;
  r3.xy = max(cb0[6].xy, r3.xy);
  r3.xy = min(cb0[6].zw, r3.xy);
  r3.xyz = t1.SampleLevel(s0_s, r3.xy, 0).xyz;
  r5.x = dot(r3.xzy, float3(1,1,2));
  r5.y = dot(r3.xz, float2(2,-2));
  r5.z = dot(r3.xzy, float3(-1,-1,2));
  r3.xyz = min(r5.xyz, r4.xyz);
  r5.xyz = max(r5.xyz, r4.xyz);
  r6.xyzw = cb0[0].zwzw * float4(0,-1,1,-1) + r2.xyxy;
  r6.xyzw = max(cb0[6].xyxy, r6.xyzw);
  r6.xyzw = min(cb0[6].zwzw, r6.xyzw);
  r7.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
  r8.x = dot(r7.xzy, float3(1,1,2));
  r8.y = dot(r7.xz, float2(2,-2));
  r8.z = dot(r7.xzy, float3(-1,-1,2));
  r3.xyz = min(r8.xyz, r3.xyz);
  r5.xyz = max(r8.xyz, r5.xyz);
  r6.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  r3.xyz = min(r7.xyz, r3.xyz);
  r5.xyz = max(r7.xyz, r5.xyz);
  r6.xyzw = cb0[0].zwzw * float4(-1,0,1,0) + r2.xyxy;
  r6.xyzw = max(cb0[6].xyxy, r6.xyzw);
  r6.xyzw = min(cb0[6].zwzw, r6.xyzw);
  r7.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
  r8.x = dot(r7.xzy, float3(1,1,2));
  r8.y = dot(r7.xz, float2(2,-2));
  r8.z = dot(r7.xzy, float3(-1,-1,2));
  r3.xyz = min(r8.xyz, r3.xyz);
  r5.xyz = max(r8.xyz, r5.xyz);
  r6.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  r3.xyz = min(r7.xyz, r3.xyz);
  r5.xyz = max(r7.xyz, r5.xyz);
  r6.xyzw = cb0[0].zwzw * float4(-1,1,0,1) + r2.xyxy;
  r6.xyzw = max(cb0[6].xyxy, r6.xyzw);
  r6.xyzw = min(cb0[6].zwzw, r6.xyzw);
  r7.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
  r8.x = dot(r7.xzy, float3(1,1,2));
  r8.y = dot(r7.xz, float2(2,-2));
  r8.z = dot(r7.xzy, float3(-1,-1,2));
  r3.xyz = min(r8.xyz, r3.xyz);
  r5.xyz = max(r8.xyz, r5.xyz);
  r6.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  r3.xyz = min(r7.xyz, r3.xyz);
  r5.xyz = max(r7.xyz, r5.xyz);
  r2.xy = cb0[0].zw + r2.xy;
  r2.xy = max(cb0[6].xy, r2.xy);
  r2.xy = min(cb0[6].zw, r2.xy);
  r2.xyw = t1.SampleLevel(s0_s, r2.xy, 0).xyz;
  r6.x = dot(r2.xwy, float3(1,1,2));
  r6.y = dot(r2.xw, float2(2,-2));
  r6.z = dot(r2.xwy, float3(-1,-1,2));
  r2.xyw = min(r6.xyz, r3.xyz);
  r3.xyz = max(r6.xyz, r5.xyz);
  r5.xyz = t2.Load(r1.xyz).xyz;
  r6.x = dot(r5.xzy, float3(1,1,2));
  r6.y = dot(r5.xz, float2(2,-2));
  r6.z = dot(r5.xzy, float3(-1,-1,2));
  r5.xyz = max(r6.xyz, r2.xyw);
  r5.xyz = min(r5.xyz, r3.xyz);
  r2.xyw = r3.xyz + -r2.xyw;
  r3.xyz = r5.xyz + -r6.xyz;
  r4.xyz = -r6.xyz + r4.xyz;
  r1.z = max(r5.x, r6.x);
  r1.w = 4 + r1.z;
  r1.w = rcp(r1.w);
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = r1.z * r1.w + 0.00048828125;
  r3.w = 1 + -r1.w;
  r3.w = rcp(r3.w);
  r1.w = r3.w * r1.w;
  r1.z = r1.w * 4 + -r1.z;
  r5.xyz = float3(0.25,0.25,0.25) * r2.xyw;
  r5.xyz = max(r5.xyz, abs(r1.zzz));
  r3.xyz = -r5.xyz + abs(r3.xyz);
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.xyw = max(abs(r4.xyz), r2.xyw);
  r2.xyw = saturate(r3.xyz / r2.xyw);
  r2.xyw = float3(1,1,1) + -r2.xyw;
  r1.z = min(r2.y, r2.w);
  r1.z = min(r2.x, r1.z);
  r1.w = cmp(r2.z < 0.5);
  r1.z = r1.w ? 1 : r1.z;
  g0[vThreadIDInGroupFlattened.x].val[0/4] = r1.z;
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)r1.xy < asuint(cb0[2].zw));
  r1.x = r1.y ? r1.x : 0;
  r1.yw = (int2)r0.xw & int2(1,1);
  r1.yw = cmp((int2)r1.yw == int2(0,0));
  r1.y = r1.w ? r1.y : 0;
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xyw = (int3)vThreadIDInGroupFlattened.xxx ^ int3(1,2,3);
    r1.x = g0[r1.x].val[0/4];
    r1.x = min(r1.z, r1.x);
    r1.y = g0[r1.y].val[0/4];
    r1.x = min(r1.x, r1.y);
    r1.y = g0[r1.w].val[0/4];
    r1.x = min(r1.x, r1.y);
    r0.xyzw = (uint4)r0.xyzw >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  }
  return;
}