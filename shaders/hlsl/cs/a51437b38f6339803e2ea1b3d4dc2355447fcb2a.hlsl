// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

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
  r2.xz = (int2)r0.ww + (int2)r0.yy;
  r2.yw = mad((int2)r1.ww, int2(4,4), (int2)r0.xx);
  r0.xyzw = mad((int4)vThreadGroupID.xyxy, int4(8,8,8,8), (int4)r2.xyzw);
  r0.xyzw = (int4)r0.xyzw + asint(cb0[2].xyxy);
  r0.xyzw = (uint4)r0.xyzw;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r0.xyzw = cb0[0].zwzw * r0.xyzw;
  r1.xyzw = cb0[0].xyyy * r0.zwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xy = cmp((uint2)r1.xw < asuint(cb0[2].zw));
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r2.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
    r3.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
    r2.w = t2.SampleLevel(s0_s, r0.zw, 0).x;
    r2.w = cmp(r2.w < 0.5);
    r2.w = r2.w ? 0 : 1;
    r4.xy = r2.yx + r2.yz;
    r3.w = r4.x + r4.y;
    r3.w = 4 + r3.w;
    r3.w = rcp(r3.w);
    r3.w = max(9.99999975e-005, r3.w);
    r4.xy = r3.yx + r3.yz;
    r4.x = r4.x + r4.y;
    r4.x = 4 + r4.x;
    r4.x = rcp(r4.x);
    r4.x = max(9.99999975e-005, r4.x);
    r4.y = r4.x * r2.w;
    r5.xyzw = cb0[0].zwzw * float4(-3,-3,0,-3) + r0.zwzw;
    r5.xyzw = max(cb0[6].xyxy, r5.xyzw);
    r5.xyzw = min(cb0[6].zwzw, r5.xyzw);
    r6.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.xy, 0).xyz;
    r4.z = t2.SampleLevel(s0_s, r5.xy, 0).x;
    r4.z = cmp(r4.z < 0.5);
    r4.z = r4.z ? 0 : 1;
    r5.xy = r6.yx + r6.yz;
    r4.w = r5.x + r5.y;
    r4.w = 4 + r4.w;
    r4.w = rcp(r4.w);
    r4.w = max(9.99999975e-005, r4.w);
    r4.w = r4.z * r4.w;
    r5.xy = r7.yx + r7.yz;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r4.z = r5.x * r4.z;
    r5.x = 0.25 * r4.w;
    r6.xyzw = r5.xxxx * r6.xyzx;
    r6.xyzw = r3.wwww * r2.xyzx + r6.xyzw;
    r2.x = r4.w * 0.25 + r3.w;
    r2.y = 0.25 * r4.z;
    r7.xyzw = r2.yyyy * r7.xyzx;
    r3.xyzw = r4.yyyy * r3.xyzx + r7.xyzw;
    r2.y = r2.w * r4.x + r2.y;
    r4.xyz = t0.SampleLevel(s0_s, r5.zw, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.zw, 0).xyz;
    r2.z = t2.SampleLevel(s0_s, r5.zw, 0).x;
    r2.z = cmp(r2.z < 0.5);
    r2.z = r2.z ? 0 : 1;
    r5.xy = r4.yx + r4.yz;
    r2.w = r5.x + r5.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r2.z * r2.w;
    r5.xy = r7.yx + r7.yz;
    r4.w = r5.x + r5.y;
    r4.w = 4 + r4.w;
    r4.w = rcp(r4.w);
    r4.w = max(9.99999975e-005, r4.w);
    r2.z = r4.w * r2.z;
    r4.w = 0.5 * r2.w;
    r4.xyzw = r4.wwww * r4.xyzx + r6.xyzw;
    r2.x = r2.w * 0.5 + r2.x;
    r2.w = 0.5 * r2.z;
    r3.xyzw = r2.wwww * r7.xyzx + r3.xyzw;
    r2.y = r2.z * 0.5 + r2.y;
    r5.xyzw = cb0[0].zwzw * float4(3,-3,-3,0) + r0.zwzw;
    r5.xyzw = max(cb0[6].xyxy, r5.xyzw);
    r5.xyzw = min(cb0[6].zwzw, r5.xyzw);
    r6.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.xy, 0).xyz;
    r2.z = t2.SampleLevel(s0_s, r5.xy, 0).x;
    r2.z = cmp(r2.z < 0.5);
    r2.z = r2.z ? 0 : 1;
    r5.xy = r6.yx + r6.yz;
    r2.w = r5.x + r5.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r2.z * r2.w;
    r5.xy = r7.yx + r7.yz;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r2.z = r5.x * r2.z;
    r5.x = 0.25 * r2.w;
    r4.xyzw = r5.xxxx * r6.xyzx + r4.xyzw;
    r2.x = r2.w * 0.25 + r2.x;
    r2.w = 0.25 * r2.z;
    r3.xyzw = r2.wwww * r7.xyzx + r3.xyzw;
    r2.y = r2.z * 0.25 + r2.y;
    r6.xyz = t0.SampleLevel(s0_s, r5.zw, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.zw, 0).xyz;
    r2.z = t2.SampleLevel(s0_s, r5.zw, 0).x;
    r2.z = cmp(r2.z < 0.5);
    r2.z = r2.z ? 0 : 1;
    r5.xy = r6.yx + r6.yz;
    r2.w = r5.x + r5.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r2.z * r2.w;
    r5.xy = r7.yx + r7.yz;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r2.z = r5.x * r2.z;
    r5.x = 0.5 * r2.w;
    r4.xyzw = r5.xxxx * r6.xyzx + r4.xyzw;
    r2.x = r2.w * 0.5 + r2.x;
    r2.w = 0.5 * r2.z;
    r3.xyzw = r2.wwww * r7.xyzx + r3.xyzw;
    r2.y = r2.z * 0.5 + r2.y;
    r5.xyzw = cb0[0].zwzw * float4(3,0,-3,3) + r0.zwzw;
    r5.xyzw = max(cb0[6].xyxy, r5.xyzw);
    r5.xyzw = min(cb0[6].zwzw, r5.xyzw);
    r6.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.xy, 0).xyz;
    r2.z = t2.SampleLevel(s0_s, r5.xy, 0).x;
    r2.z = cmp(r2.z < 0.5);
    r2.z = r2.z ? 0 : 1;
    r5.xy = r6.yx + r6.yz;
    r2.w = r5.x + r5.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r2.z * r2.w;
    r5.xy = r7.yx + r7.yz;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r2.z = r5.x * r2.z;
    r5.x = 0.5 * r2.w;
    r4.xyzw = r5.xxxx * r6.xyzx + r4.xyzw;
    r2.x = r2.w * 0.5 + r2.x;
    r2.w = 0.5 * r2.z;
    r3.xyzw = r2.wwww * r7.xyzx + r3.xyzw;
    r2.y = r2.z * 0.5 + r2.y;
    r6.xyz = t0.SampleLevel(s0_s, r5.zw, 0).xyz;
    r7.xyz = t1.SampleLevel(s0_s, r5.zw, 0).xyz;
    r2.z = t2.SampleLevel(s0_s, r5.zw, 0).x;
    r2.z = cmp(r2.z < 0.5);
    r2.z = r2.z ? 0 : 1;
    r5.xy = r6.yx + r6.yz;
    r2.w = r5.x + r5.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r2.z * r2.w;
    r5.xy = r7.yx + r7.yz;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r2.z = r5.x * r2.z;
    r5.x = 0.25 * r2.w;
    r4.xyzw = r5.xxxx * r6.xyzx + r4.xyzw;
    r2.x = r2.w * 0.25 + r2.x;
    r2.w = 0.25 * r2.z;
    r3.xyzw = r2.wwww * r7.xyzx + r3.xyzw;
    r2.y = r2.z * 0.25 + r2.y;
    r0.xyzw = cb0[0].zwzw * float4(0,3,3,3) + r0.xyzw;
    r0.xyzw = max(cb0[6].xyxy, r0.xyzw);
    r0.xyzw = min(cb0[6].zwzw, r0.xyzw);
    r5.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
    r6.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
    r0.x = cmp(r0.x < 0.5);
    r0.x = r0.x ? 0 : 1;
    r2.zw = r5.yx + r5.yz;
    r0.y = r2.z + r2.w;
    r0.y = 4 + r0.y;
    r0.y = rcp(r0.y);
    r0.y = max(9.99999975e-005, r0.y);
    r0.y = r0.x * r0.y;
    r2.zw = r6.yx + r6.yz;
    r2.z = r2.z + r2.w;
    r2.z = 4 + r2.z;
    r2.z = rcp(r2.z);
    r2.z = max(9.99999975e-005, r2.z);
    r0.x = r2.z * r0.x;
    r2.z = 0.5 * r0.y;
    r4.xyzw = r2.zzzz * r5.xyzx + r4.xyzw;
    r0.y = r0.y * 0.5 + r2.x;
    r2.x = 0.5 * r0.x;
    r3.xyzw = r2.xxxx * r6.xyzx + r3.xyzw;
    r0.x = r0.x * 0.5 + r2.y;
    r2.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
    r5.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
    r0.z = t2.SampleLevel(s0_s, r0.zw, 0).x;
    r0.z = cmp(r0.z < 0.5);
    r0.z = r0.z ? 0 : 1;
    r6.xy = r2.yx + r2.yz;
    r0.w = r6.x + r6.y;
    r0.w = 4 + r0.w;
    r0.w = rcp(r0.w);
    r0.w = max(9.99999975e-005, r0.w);
    r0.w = r0.z * r0.w;
    r6.xy = r5.yx + r5.yz;
    r2.w = r6.x + r6.y;
    r2.w = 4 + r2.w;
    r2.w = rcp(r2.w);
    r2.w = max(9.99999975e-005, r2.w);
    r0.z = r2.w * r0.z;
    r2.w = 0.25 * r0.w;
    r2.xyzw = r2.wwww * r2.xyzx + r4.xyzw;
    r0.y = r0.w * 0.25 + r0.y;
    r0.w = 0.25 * r0.z;
    r3.xyzw = r0.wwww * r5.xyzx + r3.xyzw;
    r0.x = r0.z * 0.25 + r0.x;
    r0.z = cmp(0 < r0.y);
    r0.y = rcp(r0.y);
    r0.y = r0.z ? r0.y : 0;
    r2.xyzw = r2.xyzw * r0.yyyy;
    r0.y = cmp(0 < r0.x);
    r0.x = rcp(r0.x);
    r0.x = r0.y ? r0.x : 0;
    r0.xyzw = r3.xyzw * r0.xxxx;
    r3.xy = (int2)r1.xw * int2(0x19660d,0x19660d);
    r3.z = asint(cb1[144].y) * 0x0019660d;
    r3.xyz = (int3)r3.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r3.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.y = mad((int)r3.z, (int)r3.x, (int)r3.y);
    r3.z = mad((int)r3.x, (int)r3.y, (int)r3.z);
    r3.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.x = (uint)r3.x >> 16;
    r3.x = (uint)r3.x;
    r3.x = 1.52587891e-005 * r3.x;
    r3.x = frac(r3.x);
    r4.xyzw = cb0[36].xyzx * r2.wyzw;
    r4.xyzw = (int4)r4.xyzw & int4(0xff800000,0xff800000,0xff800000,0xff800000);
    r2.xyzw = r4.xyzw * r3.xxxx + r2.xyzw;
    r4.xyzw = cb0[36].xyzx * r0.wyzw;
    r4.xyzw = (int4)r4.xyzw & int4(0xff800000,0xff800000,0xff800000,0xff800000);
    r0.xyzw = r4.xyzw * r3.xxxx + r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xwww, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}