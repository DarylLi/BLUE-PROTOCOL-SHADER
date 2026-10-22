// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<uint4> t3 : register(t3);

Texture2D<uint4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[37];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r1.x = (int)r0.w + (int)r0.y;
  r1.y = mad((int)r1.w, 4, (int)r0.x);
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)r1.xy);
  r1.xy = (int2)r0.xy + asint(cb0[2].xy);
  r0.zw = cmp((uint2)r1.xy < asuint(cb0[2].zw));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.zw = (uint2)r0.xy;
    r0.zw = float2(0.5,0.5) + r0.zw;
    r2.xy = cb0[3].zw * r0.zw;
    r2.xy = r2.xy + r2.xy;
    r1.zw = float2(0,0);
    r2.zw = t0.Load(r1.xyw).xy;
    r1.z = t1.Load(r1.xyz).x;
    r1.w = r1.z * cb1[65].x + cb1[65].y;
    r1.z = r1.z * cb1[65].z + -cb1[65].w;
    r1.z = 1 / r1.z;
    r1.z = r1.w + r1.z;
    r2.zw = r2.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r2.xy = r2.xy * float2(1,-1) + float2(-1,1);
    r2.xy = r2.xy + -r2.zw;
    r2.xy = cb0[1].xy * r2.xy + cb0[1].zw;
    r2.xy = cb0[0].zw * r2.xy;
    r2.xy = r2.xy * cb0[0].xy + float2(-0.5,-0.5);
    r3.xy = floor(r2.xy);
    r2.xy = frac(r2.xy);
    r3.zw = float2(1,1) + -r2.yx;
    r1.w = r3.w * r3.z;
    r4.xy = (uint2)r3.xy;
    r3.xy = cmp((uint2)r4.xy >= asuint(cb0[2].xy));
    r5.xy = cmp((uint2)r4.xy < asuint(cb0[2].zw));
    r3.xy = r3.xy ? r5.xy : 0;
    r3.x = r3.y ? r3.x : 0;
    r4.zw = float2(0,0);
    r3.y = t2.Load(r4.xyw).x;
    r4.z = t3.Load(r4.xyz).x;
    r4.z = f16tof32(r4.z);
    r4.w = r4.z * cb1[65].x + cb1[65].y;
    r4.z = r4.z * cb1[65].z + -cb1[65].w;
    r4.z = 1 / r4.z;
    r4.z = r4.w + r4.z;
    r4.w = cb1[36].x * cb0[0].z;
    r4.w = 6 * r4.w;
    r5.x = r4.w * r4.z;
    r4.z = r4.z + -r1.z;
    r4.z = abs(r4.z) / r5.x;
    r4.z = saturate(2 + -r4.z);
    r3.y = (uint)r3.y;
    r3.y = r3.y * 0.00390625 + -1;
    r3.y = -abs(r3.y) * 3 + 1;
    r3.y = max(0, r3.y);
    r3.y = max(r4.z, r3.y);
    r1.w = r3.y * r1.w;
    r1.w = r3.x ? r1.w : 0;
    r3.xy = r3.zw * r2.xy;
    r5.xyzw = (int4)r4.xyxy + int4(0,1,1,0);
    r6.xyzw = cmp((uint4)r5.zwxy >= asuint(cb0[2].xyxy));
    r7.xyzw = cmp((uint4)r5.zwxy < asuint(cb0[2].zwzw));
    r6.xyzw = r6.xyzw ? r7.xyzw : 0;
    r3.zw = r6.yw ? r6.xz : 0;
    r6.xy = r5.zw;
    r6.zw = float2(0,0);
    r4.z = t2.Load(r6.xyw).x;
    r6.x = t3.Load(r6.xyz).x;
    r6.x = f16tof32(r6.x);
    r6.y = r6.x * cb1[65].x + cb1[65].y;
    r6.x = r6.x * cb1[65].z + -cb1[65].w;
    r6.x = 1 / r6.x;
    r6.x = r6.y + r6.x;
    r6.y = r6.x * r4.w;
    r6.x = r6.x + -r1.z;
    r6.x = abs(r6.x) / r6.y;
    r6.x = saturate(2 + -r6.x);
    r4.z = (uint)r4.z;
    r4.z = r4.z * 0.00390625 + -1;
    r4.z = -abs(r4.z) * 3 + 1;
    r4.z = max(0, r4.z);
    r4.z = max(r6.x, r4.z);
    r3.x = r3.x * r4.z + r1.w;
    r1.w = r3.z ? r3.x : r1.w;
    r5.zw = float2(0,0);
    r3.x = t2.Load(r5.xyw).x;
    r3.z = t3.Load(r5.xyz).x;
    r3.z = f16tof32(r3.z);
    r4.z = r3.z * cb1[65].x + cb1[65].y;
    r3.z = r3.z * cb1[65].z + -cb1[65].w;
    r3.z = 1 / r3.z;
    r3.z = r4.z + r3.z;
    r4.z = r4.w * r3.z;
    r3.z = r3.z + -r1.z;
    r3.z = abs(r3.z) / r4.z;
    r3.z = saturate(2 + -r3.z);
    r3.x = (uint)r3.x;
    r3.x = r3.x * 0.00390625 + -1;
    r3.x = -abs(r3.x) * 3 + 1;
    r3.x = max(0, r3.x);
    r3.x = max(r3.z, r3.x);
    r3.x = r3.y * r3.x + r1.w;
    r1.w = r3.w ? r3.x : r1.w;
    r2.x = r2.x * r2.y;
    r3.xy = (int2)r4.xy + int2(1,1);
    r4.xy = cmp((uint2)r3.xy >= asuint(cb0[2].xy));
    r5.xy = cmp((uint2)r3.xy < asuint(cb0[2].zw));
    r4.xy = r4.xy ? r5.xy : 0;
    r2.y = r4.y ? r4.x : 0;
    r3.zw = float2(0,0);
    r4.x = t2.Load(r3.xyw).x;
    r3.x = t3.Load(r3.xyz).x;
    r3.x = f16tof32(r3.x);
    r3.y = r3.x * cb1[65].x + cb1[65].y;
    r3.x = r3.x * cb1[65].z + -cb1[65].w;
    r3.x = 1 / r3.x;
    r3.x = r3.y + r3.x;
    r3.y = r4.w * r3.x;
    r1.z = r3.x + -r1.z;
    r1.z = abs(r1.z) / r3.y;
    r1.z = saturate(2 + -r1.z);
    r3.x = (uint)r4.x;
    r3.x = r3.x * 0.00390625 + -1;
    r3.x = -abs(r3.x) * 3 + 1;
    r3.x = max(0, r3.x);
    r1.z = max(r3.x, r1.z);
    r1.z = r2.x * r1.z + r1.w;
    r1.z = r2.y ? r1.z : r1.w;
    r0.zw = -cb0[7].xy + r0.zw;
    r0.zw = cb0[3].zw * r0.zw;
    r2.x = r0.z * 2 + -r2.z;
    r2.y = -r0.w * 2 + -r2.w;
    r0.zw = float2(-1,1) + r2.xy;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = r0.zw * float2(1,-1) + float2(0.5,0.5);
    r0.zw = cb0[31].zw * r0.zw;
    r0.zw = cb0[29].xy * r0.zw;
    r0.zw = max(cb0[34].zw, r0.zw);
    r0.zw = min(cb0[35].xy, r0.zw);
    r2.xyz = t4.SampleLevel(s0_s, r0.zw, 0).xyz;
    r0.xy = (int2)r0.xy * int2(0x19660d,0x19660d);
    r0.z = asint(cb1[144].y) * 0x0019660d;
    r0.xyz = (int3)r0.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r0.x = mad((int)r0.y, (int)r0.z, (int)r0.x);
    r0.y = mad((int)r0.z, (int)r0.x, (int)r0.y);
    r0.z = mad((int)r0.x, (int)r0.y, (int)r0.z);
    r0.x = mad((int)r0.y, (int)r0.z, (int)r0.x);
    r0.x = (uint)r0.x >> 16;
    r0.x = (uint)r0.x;
    r0.x = 1.52587891e-005 * r0.x;
    r0.x = frac(r0.x);
    r3.xyzw = cb0[36].xyzx * r2.xyzx;
    r3.xyzw = (int4)r3.xyzw & int4(0xff800000,0xff800000,0xff800000,0xff800000);
    r0.xyzw = r3.xyzw * r0.xxxx + r2.xyzx;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r0.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyyy, r1.zzzz
  }
  return;
}