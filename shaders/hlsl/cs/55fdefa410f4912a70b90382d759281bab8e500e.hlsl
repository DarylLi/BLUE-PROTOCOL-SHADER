// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.zw = float2(0,0);
  r1.x = (uint)vThreadIDInGroup.x >> 3;
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)vThreadIDInGroup.x << 0) & bitmask.y) | ((uint)r1.x & ~bitmask.y);
  if (3 == 0) r1.x = 0; else if (3+1 < 32) {   r1.x = (uint)vThreadIDInGroup.x << (32-(3 + 1)); r1.x = (uint)r1.x >> (32-3);  } else r1.x = (uint)vThreadIDInGroup.x >> 1;
  r1.xz = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r1.xy);
  r2.xyzw = (int4)r1.xzxz + int4(0,-1,-1,0);
  r0.xy = r2.zw;
  r0.xyz = t0.Load(r0.xyz).xyz;
  r3.zw = float2(0,0);
  r4.xyzw = (int4)r1.xzxz + int4(0,1,1,0);
  r3.xy = r4.zw;
  r3.xyz = t0.Load(r3.xyz).xyz;
  r5.xyz = min(r3.xyz, r0.xyz);
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xyz).xyz;
  r5.xyz = min(r2.xyz, r5.xyz);
  r4.zw = float2(0,0);
  r4.xyz = t0.Load(r4.xyz).xyz;
  r5.xyz = min(r5.xyz, r4.xyz);
  r6.xyz = r5.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r6.xyz = rcp(r6.xyz);
  r7.xyz = max(r3.xyz, r0.xyz);
  r7.xyz = max(r7.xyz, r2.xyz);
  r7.xyz = max(r7.xyz, r4.xyz);
  r8.xyz = float3(1,1,1) + -r7.xyz;
  r7.xyz = float3(4,4,4) * r7.xyz;
  r7.xyz = rcp(r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r6.xyz = r8.xyz * r6.xyz;
  r5.xyz = max(r6.xyz, -r5.xyz);
  r0.w = max(r5.y, r5.z);
  r0.w = max(r5.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb0[0].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r0.xyz = r0.www * r4.xyz + r0.xyz;
  r0.xyz = r0.www * r3.xyz + r0.xyz;
  r0.w = r0.w * 4 + 1;
  r1.yw = float2(0,0);
  r2.xyz = t0.Load(r1.xzy).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.x = (int)-r0.w + 0x7ef19fff;
  r0.w = -r2.x * r0.w + 2;
  r0.w = r2.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r0.xyz;
  r2.xy = (uint2)r1.xz;
  r2.xy = r2.xy * cb0[3].xy + cb0[1].xy;
  r0.w = r2.y * 543.309998 + r2.x;
  r0.w = sin(r0.w);
  r0.w = 493013 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb0[2].x + cb0[2].y;
  r0.xyz = r0.xyz * r0.www;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(3.05175781e-005, r0.w);
  r0.w = rcp(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xzzz, r0.xyzw
  r0.zw = float2(0,0);
  r1.xy = (int2)r1.xz + int2(8,8);
  r0.xy = (int2)r1.xz + int2(-1,0);
  r0.xyz = t0.Load(r0.xyz).xyz;
  r2.zw = float2(0,0);
  r2.xy = (int2)r1.xz + int2(1,0);
  r2.xyz = t0.Load(r2.xyz).xyz;
  r3.xyz = min(r2.xyz, r0.xyz);
  r4.zw = float2(0,0);
  r4.xy = (int2)r1.xz + int2(0,-1);
  r4.xyz = t0.Load(r4.xyz).xyz;
  r3.xyz = min(r4.xyz, r3.xyz);
  r5.zw = float2(0,0);
  r5.xy = (int2)r1.xz + int2(0,1);
  r5.xyz = t0.Load(r5.xyz).xyz;
  r3.xyz = min(r5.xyz, r3.xyz);
  r6.xyz = r3.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r6.xyz = rcp(r6.xyz);
  r7.xyz = max(r2.xyz, r0.xyz);
  r7.xyz = max(r7.xyz, r4.xyz);
  r7.xyz = max(r7.xyz, r5.xyz);
  r8.xyz = float3(1,1,1) + -r7.xyz;
  r7.xyz = float3(4,4,4) * r7.xyz;
  r7.xyz = rcp(r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r6.xyz = r8.xyz * r6.xyz;
  r3.xyz = max(r6.xyz, -r3.xyz);
  r0.w = max(r3.y, r3.z);
  r0.w = max(r3.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb0[0].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.www * r4.xyz + r0.xyz;
  r0.xyz = r0.www * r5.xyz + r0.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r0.w = r0.w * 4 + 1;
  r1.w = 0;
  r2.xyz = t0.Load(r1.xzw).xyz;
  r3.xyz = t0.Load(r1.xyw).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r1.w = (int)-r0.w + 0x7ef19fff;
  r0.w = -r1.w * r0.w + 2;
  r0.w = r1.w * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r0.xyz;
  r2.xyzw = (uint4)r1.xzxy;
  r2.xyzw = r2.xyzw * cb0[3].xyxy + cb0[1].xyxy;
  r2.xy = r2.yw * float2(543.309998,543.309998) + r2.xz;
  r2.xy = sin(r2.xy);
  r2.xy = float2(493013,493013) * r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * cb0[2].xx + cb0[2].yy;
  r0.xyz = r2.xxx * r0.xyz;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(3.05175781e-005, r0.w);
  r0.w = rcp(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xzzz, r0.xyzw
  r0.zw = float2(0,0);
  r4.xyzw = (int4)r1.xyxy + int4(0,-1,-1,0);
  r0.xy = r4.zw;
  r0.xyz = t0.Load(r0.xyz).xyz;
  r5.zw = float2(0,0);
  r6.xyzw = (int4)r1.xyxy + int4(0,1,1,0);
  r5.xy = r6.zw;
  r2.xzw = t0.Load(r5.xyz).xyz;
  r5.xyz = min(r2.xzw, r0.xyz);
  r4.zw = float2(0,0);
  r4.xyz = t0.Load(r4.xyz).xyz;
  r5.xyz = min(r4.xyz, r5.xyz);
  r6.zw = float2(0,0);
  r6.xyz = t0.Load(r6.xyz).xyz;
  r5.xyz = min(r6.xyz, r5.xyz);
  r7.xyz = r5.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r7.xyz = rcp(r7.xyz);
  r8.xyz = max(r2.xzw, r0.xyz);
  r8.xyz = max(r8.xyz, r4.xyz);
  r8.xyz = max(r8.xyz, r6.xyz);
  r9.xyz = float3(1,1,1) + -r8.xyz;
  r8.xyz = float3(4,4,4) * r8.xyz;
  r8.xyz = rcp(r8.xyz);
  r5.xyz = r8.xyz * r5.xyz;
  r7.xyz = r9.xyz * r7.xyz;
  r5.xyz = max(r7.xyz, -r5.xyz);
  r0.w = max(r5.y, r5.z);
  r0.w = max(r5.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb0[0].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.www * r4.xyz + r0.xyz;
  r0.xyz = r0.www * r6.xyz + r0.xyz;
  r0.xyz = r0.www * r2.xzw + r0.xyz;
  r0.w = r0.w * 4 + 1;
  r0.xyz = r0.xyz + r3.xyz;
  r1.z = (int)-r0.w + 0x7ef19fff;
  r0.w = -r1.z * r0.w + 2;
  r0.w = r1.z * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r0.xyz;
  r0.xyz = r0.xyz * r2.yyy;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(3.05175781e-005, r0.w);
  r0.w = rcp(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  r0.xyzw = (int4)r1.xyxy + int4(-7,0,-9,0);
  r2.xy = r0.zw;
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xyz).xyz;
  r0.zw = float2(0,0);
  r0.xyz = t0.Load(r0.xyz).xyz;
  r3.xyz = min(r2.xyz, r0.xyz);
  r4.xyz = (int3)r1.xxy + int3(-8,-8,-1);
  r4.w = 0;
  r5.xyz = t0.Load(r4.yzw).xyz;
  r4.xzw = r4.xww;
  r3.xyz = min(r5.xyz, r3.xyz);
  r6.xy = (int2)r1.xy + int2(-8,1);
  r4.y = r1.y;
  r6.zw = float2(0,0);
  r1.xyz = t0.Load(r6.xyz).xyz;
  r3.xyz = min(r3.xyz, r1.xyz);
  r6.xyz = r3.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r6.xyz = rcp(r6.xyz);
  r7.xyz = max(r2.xyz, r0.xyz);
  r7.xyz = max(r7.xyz, r5.xyz);
  r7.xyz = max(r7.xyz, r1.xyz);
  r8.xyz = float3(1,1,1) + -r7.xyz;
  r7.xyz = float3(4,4,4) * r7.xyz;
  r7.xyz = rcp(r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r6.xyz = r8.xyz * r6.xyz;
  r3.xyz = max(r6.xyz, -r3.xyz);
  r0.w = max(r3.y, r3.z);
  r0.w = max(r3.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb0[0].x * r0.w;
  r2.xyz = r0.www * r2.xyz;
  r2.xyz = r0.www * r5.xyz + r2.xyz;
  r1.xyz = r0.www * r1.xyz + r2.xyz;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r0.w = r0.w * 4 + 1;
  r1.xyz = t0.Load(r4.xyz).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = (int)-r0.w + 0x7ef19fff;
  r0.w = -r1.x * r0.w + 2;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r0.xyz;
  r1.xy = (uint2)r4.xy;
  r1.xy = r1.xy * cb0[3].xy + cb0[1].xy;
  r0.w = r1.y * 543.309998 + r1.x;
  r0.w = sin(r0.w);
  r0.w = 493013 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb0[2].x + cb0[2].y;
  r0.xyz = r0.xyz * r0.www;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(3.05175781e-005, r0.w);
  r0.w = rcp(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r4.xyyy, r0.xyzw
  return;
}