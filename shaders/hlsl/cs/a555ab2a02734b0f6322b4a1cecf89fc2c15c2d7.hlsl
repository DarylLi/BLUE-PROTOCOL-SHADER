// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[3].xyyy);
  r1.xy = (uint2)r0.xw;
  r2.xyzw = float4(0.5,0.5,32.6650009,11.8149996) + r1.xyxy;
  r3.xyzw = cb0[1].zwzw * r2.xyxy;
  r1.x = dot(r1.xy, float2(0.0671105608,0.00583714992));
  r1.x = frac(r1.x);
  r1.x = 52.9829178 * r1.x;
  r1.x = frac(r1.x);
  r2.x = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r2.x = frac(r2.x);
  r2.x = 52.9829178 * r2.x;
  r1.y = frac(r2.x);
  r2.xy = float2(-0.5,-0.5) + r1.xy;
  r2.xy = float2(0.5,0.5) * r2.xy;
  r2.zw = r3.zw * cb0[22].xy + cb0[22].zw;
  r4.xy = cb0[8].xy * r2.zw;
  r4.xy = floor(r4.xy);
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.zw = asuint(cb0[10].xy);
  r4.xy = r4.xy + -r4.zw;
  r2.xy = r4.xy * float2(0.0625,0.0625) + r2.xy;
  r2.xy = cb0[15].zw * r2.xy;
  r2.xy = min(cb0[21].zw, r2.xy);
  r4.xyzw = t1.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r4.xyzw = cb0[0].yyyy * r4.xyzw;
  r1.y = dot(r4.xy, r4.xy);
  r2.x = dot(r4.zw, r4.zw);
  r5.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r2.y = cmp(r2.x < 0.25);
  r4.x = 0.400000006 * r2.x;
  r1.y = cmp(r4.x < r1.y);
// No code for instruction (needs manual fix):
store_raw g0.x, l(0), l(0)
  GroupMemoryBarrierWithGroupSync();
  r1.y = r1.y ? 0.000000 : 0;
  // Needs manual fix for instruction:
atomic_iadd g0, l(0), r1.y
  InterlockedAdd(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
  if (r2.y != 0) {
    r6.xyz = r5.xyz;
    r6.w = 0;
  }
  if (r2.y == 0) {
    r4.xyzw = float4(1,1,-1,-1) * r4.zwzw;
    r4.xyzw = cb0[1].zwzw * r4.xyzw;
  // No code for instruction (needs manual fix):
    ld_raw r1.y, l(0), g0.xxxx
    r1.y = cmp((int)r1.y == 64);
    if (r1.y != 0) {
      r1.z = -r1.x;
      r7.xyzw = float4(0,0,1,1) + r1.xxzz;
      r7.xyzw = float4(0.25,0.25,0.25,0.25) * r7.xyzw;
      r7.xyzw = r7.xyzw * r4.xyzw + r3.zwzw;
      r7.xyzw = max(cb0[7].xyxy, r7.xyzw);
      r7.xyzw = min(cb0[7].zwzw, r7.xyzw);
      r8.xyz = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
      r7.xyz = t0.SampleLevel(s0_s, r7.zw, 0).xyz;
      r7.xyz = r8.xyz + r7.xyz;
      r8.xyzw = float4(1,1,2,2) + r1.xxzz;
      r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r8.xyzw = r8.xyzw * r4.xyzw + r3.zwzw;
      r8.xyzw = max(cb0[7].xyxy, r8.xyzw);
      r8.xyzw = min(cb0[7].zwzw, r8.xyzw);
      r9.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
      r7.xyz = r9.xyz + r7.xyz;
      r8.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
      r7.xyz = r8.xyz + r7.xyz;
      r8.xyzw = float4(2,2,3,3) + r1.xxzz;
      r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r8.xyzw = r8.xyzw * r4.xyzw + r3.zwzw;
      r8.xyzw = max(cb0[7].xyxy, r8.xyzw);
      r8.xyzw = min(cb0[7].zwzw, r8.xyzw);
      r9.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
      r7.xyz = r9.xyz + r7.xyz;
      r8.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
      r7.xyz = r8.xyz + r7.xyz;
      r8.xyzw = float4(3,3,4,4) + r1.xxzz;
      r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r8.xyzw = r8.xyzw * r4.xyzw + r3.zwzw;
      r8.xyzw = max(cb0[7].xyxy, r8.xyzw);
      r8.xyzw = min(cb0[7].zwzw, r8.xyzw);
      r9.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
      r7.xyz = r9.xyz + r7.xyz;
      r8.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
      r7.xyz = r8.xyz + r7.xyz;
      r6.xyz = float3(0.125,0.125,0.125) * r7.xyz;
    } else {
      r1.y = rsqrt(r2.x);
      r1.y = 4 * r1.y;
      r2.xy = t2.SampleLevel(s1_s, r2.zw, 0).xz;
      r1.z = cb0[0].y * r2.x;
      r7.y = min(cb0[0].w, r1.z);
      r1.w = -r1.x;
      r8.xyzw = float4(0,0,1,1) + r1.xxww;
      r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r8.xyzw = r8.xyzw * r4.xyzw + r3.zwzw;
      r8.xyzw = max(cb0[7].xyxy, r8.xyzw);
      r8.xyzw = min(cb0[7].zwzw, r8.xyzw);
      r9.xyzw = r8.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r2.xz = t2.SampleLevel(s1_s, r9.xy, 0).xz;
      r10.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
      r1.z = cb0[0].y * r2.x;
      r7.x = min(cb0[0].w, r1.z);
      r1.z = r2.z + -r2.y;
      r2.xw = saturate(r1.zz * float2(1,-1) + float2(0.5,0.5));
      r8.xy = saturate(r7.yx * r1.yy);
      r1.z = dot(r2.xw, r8.xy);
      r2.xw = t2.SampleLevel(s1_s, r9.zw, 0).xz;
      r8.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
      r2.x = cb0[0].y * r2.x;
      r7.z = min(cb0[0].w, r2.x);
      r2.x = r2.w + -r2.y;
      r9.xy = saturate(r2.xx * float2(1,-1) + float2(0.5,0.5));
      r9.zw = saturate(r7.yz * r1.yy);
      r2.x = dot(r9.xy, r9.zw);
      r2.z = cmp(r2.w < r2.z);
      r2.w = cmp(r7.x < r7.z);
      r5.w = r2.w ? r2.z : 0;
      r5.w = r5.w ? r2.x : r1.z;
      r2.z = (int)r2.w | (int)r2.z;
      r1.z = r2.z ? r2.x : r1.z;
      r2.xzw = r1.zzz * r8.xyz;
      r2.xzw = r5.www * r10.xyz + r2.xzw;
      r1.z = r5.w + r1.z;
      r8.xyzw = float4(1,1,2,2) + r1.xxww;
      r9.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r9.xyzw = r9.xyzw * r4.xyzw + r3.zwzw;
      r9.xyzw = max(cb0[7].xyxy, r9.xyzw);
      r9.xyzw = min(cb0[7].zwzw, r9.xyzw);
      r10.xyzw = r9.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r8.xz = t2.SampleLevel(s1_s, r10.xy, 0).xz;
      r11.xyz = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
      r5.w = cb0[0].y * r8.x;
      r7.w = min(cb0[0].w, r5.w);
      r5.w = r8.z + -r2.y;
      r8.xw = saturate(r5.ww * float2(1,-1) + float2(0.5,0.5));
      r9.xy = saturate(r1.yy * r7.yw + -r1.xx);
      r5.w = dot(r8.xw, r9.xy);
      r8.xw = t2.SampleLevel(s1_s, r10.zw, 0).xz;
      r9.xyz = t0.SampleLevel(s0_s, r9.zw, 0).xyz;
      r8.x = cb0[0].y * r8.x;
      r7.x = min(cb0[0].w, r8.x);
      r8.x = r8.w + -r2.y;
      r10.xy = saturate(r8.xx * float2(1,-1) + float2(0.5,0.5));
      r10.zw = saturate(r1.yy * r7.yx + -r1.xx);
      r8.x = dot(r10.xy, r10.zw);
      r8.z = cmp(r8.w < r8.z);
      r8.w = cmp(r7.w < r7.x);
      r9.w = r8.w ? r8.z : 0;
      r9.w = r9.w ? r8.x : r5.w;
      r8.z = (int)r8.w | (int)r8.z;
      r5.w = r8.z ? r8.x : r5.w;
      r8.xzw = r5.www * r9.xyz;
      r8.xzw = r9.www * r11.xyz + r8.xzw;
      r2.xzw = r8.xzw + r2.xzw;
      r5.w = r9.w + r5.w;
      r1.z = r5.w + r1.z;
      r9.xyzw = float4(2,2,3,3) + r1.xxww;
      r10.xyzw = float4(0.25,0.25,0.25,0.25) * r9.xyzw;
      r10.xyzw = r10.xyzw * r4.xyzw + r3.zwzw;
      r10.xyzw = max(cb0[7].xyxy, r10.xyzw);
      r10.xyzw = min(cb0[7].zwzw, r10.xyzw);
      r11.xyzw = r10.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r8.xz = t2.SampleLevel(s1_s, r11.xy, 0).xz;
      r9.xzw = t0.SampleLevel(s0_s, r10.xy, 0).xyz;
      r5.w = cb0[0].y * r8.x;
      r7.z = min(cb0[0].w, r5.w);
      r5.w = r8.z + -r2.y;
      r8.xw = saturate(r5.ww * float2(1,-1) + float2(0.5,0.5));
      r10.xy = saturate(r1.yy * r7.yz + -r8.yy);
      r5.w = dot(r8.xw, r10.xy);
      r8.xw = t2.SampleLevel(s1_s, r11.zw, 0).xz;
      r10.xyz = t0.SampleLevel(s0_s, r10.zw, 0).xyz;
      r8.x = cb0[0].y * r8.x;
      r7.w = min(cb0[0].w, r8.x);
      r8.x = r8.w + -r2.y;
      r11.xy = saturate(r8.xx * float2(1,-1) + float2(0.5,0.5));
      r8.xy = saturate(r1.yy * r7.yw + -r8.yy);
      r8.x = dot(r11.xy, r8.xy);
      r8.y = cmp(r8.w < r8.z);
      r7.w = cmp(r7.z < r7.w);
      r8.z = r7.w ? r8.y : 0;
      r8.z = r8.z ? r8.x : r5.w;
      r7.w = (int)r7.w | (int)r8.y;
      r5.w = r7.w ? r8.x : r5.w;
      r8.xyw = r5.www * r10.xyz;
      r8.xyw = r8.zzz * r9.xzw + r8.xyw;
      r2.xzw = r8.xyw + r2.xzw;
      r5.w = r8.z + r5.w;
      r1.z = r5.w + r1.z;
      r8.xyzw = float4(3,3,4,4) + r1.xxww;
      r8.xyzw = float4(0.25,0.25,0.25,0.25) * r8.xyzw;
      r3.xyzw = r8.xyzw * r4.xyzw + r3.xyzw;
      r3.xyzw = max(cb0[7].xyxy, r3.xyzw);
      r3.xyzw = min(cb0[7].zwzw, r3.xyzw);
      r4.xyzw = r3.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r1.xw = t2.SampleLevel(s1_s, r4.xy, 0).xz;
      r8.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
      r1.x = cb0[0].y * r1.x;
      r7.x = min(cb0[0].w, r1.x);
      r1.x = r1.w + -r2.y;
      r3.xy = saturate(r1.xx * float2(1,-1) + float2(0.5,0.5));
      r4.xy = saturate(r1.yy * r7.yx + -r9.yy);
      r1.x = dot(r3.xy, r4.xy);
      r3.xy = t2.SampleLevel(s1_s, r4.zw, 0).xz;
      r4.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
      r3.x = cb0[0].y * r3.x;
      r7.z = min(cb0[0].w, r3.x);
      r2.y = r3.y + -r2.y;
      r3.xz = saturate(r2.yy * float2(1,-1) + float2(0.5,0.5));
      r7.yw = saturate(r1.yy * r7.yz + -r9.yy);
      r1.y = dot(r3.xz, r7.yw);
      r1.w = cmp(r3.y < r1.w);
      r2.y = cmp(r7.x < r7.z);
      r3.x = r1.w ? r2.y : 0;
      r3.x = r3.x ? r1.y : r1.x;
      r1.w = (int)r1.w | (int)r2.y;
      r1.x = r1.w ? r1.y : r1.x;
      r3.yzw = r1.xxx * r4.xyz;
      r3.yzw = r3.xxx * r8.xyz + r3.yzw;
      r2.xyz = r3.yzw + r2.xzw;
      r1.x = r3.x + r1.x;
      r1.x = r1.z + r1.x;
      r1.x = -r1.x * 0.125 + 1;
      r1.xyz = r1.xxx * r5.xyz;
      r6.xyz = r2.xyz * float3(0.125,0.125,0.125) + r1.xyz;
    }
    r6.w = 0;
  }
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[3].zw));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r6.xyzw
  }
  return;
}