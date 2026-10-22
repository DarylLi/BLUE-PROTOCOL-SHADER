// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadGroupID.xy;
  r0.zw = float2(0,0);
  r1.xy = t1.Load(r0.xyw).xy;
  r0.xy = t2.Load(r0.xyz).xy;
  r0.z = cmp(r1.x == 0.000000);
  r0.x = cmp(r0.x == 0.000000);
  r0.w = r0.x ? r0.z : 0;
  r1.x = min(-r1.y, r0.y);
  r0.x = r0.x ? -r1.y : r1.x;
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = cmp(3 < r0.x);
  r0.x = (int)r0.x | (int)r0.w;
  if (r0.x != 0) {
    r0.xy = cmp((uint2)vThreadID.xy >= asuint(cb0[4].zw));
    r0.x = (int)r0.y | (int)r0.x;
    if (r0.x == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyyy, l(0,0,0,0)
    }
  } else {
    r0.xyzw = (uint4)vThreadID.xyyy;
    r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
    r0.xyzw = cb0[5].xyyy * r0.xyzw;
    r1.xy = float2(-0.5,-0.5) + cb0[2].xy;
    r1.xy = cb0[1].zw * r1.xy;
    r1.zw = r1.xy * float2(2,2) + -abs(r0.xw);
    r1.zw = min(r1.zw, abs(r0.xw));
    r1.zw = min(r1.zw, r1.xy);
    r2.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
    r1.z = r2.w * r2.w;
    r1.z = 3.14159274 * r1.z;
    r1.z = rcp(r1.z);
    r1.z = min(5.09295797, r1.z);
    r1.w = saturate(cb0[5].z + -r2.w);
    r2.w = saturate(cb0[5].z + -abs(r2.w));
    r1.z = r2.w * r1.z;
    r2.xyz = r2.xyz * r1.zzz;
    r3.yz = float2(1,2);
    r4.xyz = r2.xyz;
    r5.x = r1.z;
    r5.y = r1.w;
    r5.z = 1;
    r2.w = cb0[5].z;
    r6.x = 0;
    while (true) {
      r4.w = cmp((uint)r6.x >= 2);
      if (r4.w != 0) break;
      r4.w = cmp((uint)r6.x < 1);
      r6.xy = (int2)r6.xx + int2(1,-1);
      r5.w = (uint)r6.y;
      r3.x = 1 + -r5.w;
      r7.xy = r4.ww ? float2(1,0) : r3.xy;
      r3.x = dot(r7.xy, r7.xy);
      r3.x = sqrt(r3.x);
      r6.yz = r7.xy * cb0[1].zw + r0.xw;
      r8.xy = r1.xy * float2(2,2) + -abs(r6.yz);
      r6.yz = min(r8.xy, abs(r6.yz));
      r6.yz = min(r6.yz, r1.xy);
      r8.xyzw = t0.SampleLevel(s0_s, r6.yz, 0).xyzw;
      r4.w = abs(r8.w) + -r3.x;
      r9.x = saturate(r4.w * 4 + 0.5);
      r6.yz = -r7.xy * cb0[1].zw + r0.xw;
      r9.zw = r1.xy * float2(2,2) + -abs(r6.yz);
      r6.yz = min(r9.zw, abs(r6.yz));
      r6.yz = min(r6.yz, r1.xy);
      r10.xyzw = t0.SampleLevel(s0_s, r6.yz, 0).xyzw;
      r3.x = abs(r10.w) + -r3.x;
      r11.x = saturate(r3.x * 4 + 0.5);
      r3.x = r8.w * r8.w;
      r3.x = 3.14159274 * r3.x;
      r3.x = rcp(r3.x);
      r9.y = min(5.09295797, r3.x);
      r3.x = saturate(-r8.w + r2.w);
      r4.w = saturate(-abs(r8.w) + r2.w);
      r5.w = r10.w * r10.w;
      r5.w = 3.14159274 * r5.w;
      r5.w = rcp(r5.w);
      r11.y = min(5.09295797, r5.w);
      r5.w = saturate(-r10.w + r2.w);
      r6.y = saturate(-abs(r10.w) + r2.w);
      r6.z = cmp(r8.w < r10.w);
      r6.zw = r6.zz ? r9.xy : r11.xy;
      r6.w = r6.z * r6.w;
      r8.w = r6.w * r4.w;
      r8.xyz = r8.xyz * r8.www + r4.xyz;
      r4.w = r6.w * r4.w + r5.x;
      r3.x = r6.z * r3.x + r5.y;
      r8.w = r6.w * r6.y;
      r8.xyz = r10.xyz * r8.www + r8.xyz;
      r4.w = r6.w * r6.y + r4.w;
      r3.x = r6.z * r5.w + r3.x;
      r5.w = r6.z * 2 + r5.z;
      r7.zw = -r7.yy;
      r6.yz = float2(-1,1) * r7.yx;
      r6.w = dot(r7.wx, r6.yz);
      r6.w = sqrt(r6.w);
      r6.yz = r6.yz * cb0[1].zw + r0.xw;
      r7.yw = r1.xy * float2(2,2) + -abs(r6.yz);
      r6.yz = min(r7.yw, abs(r6.yz));
      r6.yz = min(r6.yz, r1.xy);
      r9.xyzw = t0.SampleLevel(s0_s, r6.yz, 0).xyzw;
      r6.y = abs(r9.w) + -r6.w;
      r10.x = saturate(r6.y * 4 + 0.5);
      r6.yz = -r7.zx * cb0[1].zw + r0.xw;
      r7.xy = r1.xy * float2(2,2) + -abs(r6.yz);
      r6.yz = min(r7.xy, abs(r6.yz));
      r6.yz = min(r6.yz, r1.xy);
      r7.xyzw = t0.SampleLevel(s0_s, r6.yz, 0).xyzw;
      r6.y = abs(r7.w) + -r6.w;
      r11.x = saturate(r6.y * 4 + 0.5);
      r6.y = r9.w * r9.w;
      r6.y = 3.14159274 * r6.y;
      r6.y = rcp(r6.y);
      r10.y = min(5.09295797, r6.y);
      r6.y = saturate(-r9.w + r2.w);
      r6.z = saturate(-abs(r9.w) + r2.w);
      r6.w = r7.w * r7.w;
      r6.w = 3.14159274 * r6.w;
      r6.w = rcp(r6.w);
      r11.y = min(5.09295797, r6.w);
      r6.w = saturate(-r7.w + r2.w);
      r8.w = saturate(-abs(r7.w) + r2.w);
      r7.w = cmp(r9.w < r7.w);
      r10.xy = r7.ww ? r10.xy : r11.xy;
      r7.w = r10.x * r10.y;
      r9.w = r7.w * r6.z;
      r8.xyz = r9.xyz * r9.www + r8.xyz;
      r4.w = r7.w * r6.z + r4.w;
      r3.x = r10.x * r6.y + r3.x;
      r6.y = r7.w * r8.w;
      r4.xyz = r7.xyz * r6.yyy + r8.xyz;
      r5.x = r7.w * r8.w + r4.w;
      r5.y = r10.x * r6.w + r3.x;
      r5.z = r10.x * 2 + r5.w;
    }
    r2.yz = float2(2,3);
    r6.xyz = r4.xyz;
    r7.xyz = r5.xyz;
    r1.z = cb0[5].z;
    r3.x = 0;
    while (true) {
      r1.w = cmp((uint)r3.x >= 4);
      if (r1.w != 0) break;
      r1.w = cmp((uint)r3.x < 2);
      r3.w = (uint)r3.x;
      r3.xy = (int2)r3.xx + int2(1,-2);
      r3.y = (uint)r3.y;
      r2.x = 2 + -r3.y;
      r8.xy = r1.ww ? r3.zw : r2.xy;
      r1.w = dot(r8.xy, r8.xy);
      r1.w = sqrt(r1.w);
      r3.yw = r8.xy * cb0[1].zw + r0.xw;
      r9.xy = r1.xy * float2(2,2) + -abs(r3.yw);
      r3.yw = min(r9.xy, abs(r3.yw));
      r3.yw = min(r3.yw, r1.xy);
      r9.xyzw = t0.SampleLevel(s0_s, r3.yw, 0).xyzw;
      r2.x = abs(r9.w) + -r1.w;
      r10.x = saturate(r2.x * 4 + 0.5);
      r3.yw = -r8.xy * cb0[1].zw + r0.xw;
      r10.zw = r1.xy * float2(2,2) + -abs(r3.yw);
      r3.yw = min(r10.zw, abs(r3.yw));
      r3.yw = min(r3.yw, r1.xy);
      r11.xyzw = t0.SampleLevel(s0_s, r3.yw, 0).xyzw;
      r1.w = abs(r11.w) + -r1.w;
      r12.x = saturate(r1.w * 4 + 0.5);
      r1.w = r9.w * r9.w;
      r1.w = 3.14159274 * r1.w;
      r1.w = rcp(r1.w);
      r10.y = min(5.09295797, r1.w);
      r1.w = saturate(-r9.w + r1.z);
      r2.x = saturate(-abs(r9.w) + r1.z);
      r3.y = r11.w * r11.w;
      r3.y = 3.14159274 * r3.y;
      r3.y = rcp(r3.y);
      r12.y = min(5.09295797, r3.y);
      r3.y = saturate(-r11.w + r1.z);
      r3.w = saturate(-abs(r11.w) + r1.z);
      r4.w = cmp(r9.w < r11.w);
      r10.xy = r4.ww ? r10.xy : r12.xy;
      r4.w = r10.x * r10.y;
      r5.w = r4.w * r2.x;
      r9.xyz = r9.xyz * r5.www + r6.xyz;
      r2.x = r4.w * r2.x + r7.x;
      r1.w = r10.x * r1.w + r7.y;
      r5.w = r4.w * r3.w;
      r9.xyz = r11.xyz * r5.www + r9.xyz;
      r2.x = r4.w * r3.w + r2.x;
      r1.w = r10.x * r3.y + r1.w;
      r3.y = r10.x * 2 + r7.z;
      r8.zw = -r8.yy;
      r10.xy = float2(-1,1) * r8.yx;
      r3.w = dot(r8.wx, r10.xy);
      r3.w = sqrt(r3.w);
      r8.yw = r10.xy * cb0[1].zw + r0.xw;
      r10.xy = r1.xy * float2(2,2) + -abs(r8.yw);
      r8.yw = min(r10.xy, abs(r8.yw));
      r8.yw = min(r8.yw, r1.xy);
      r10.xyzw = t0.SampleLevel(s0_s, r8.yw, 0).xyzw;
      r4.w = abs(r10.w) + -r3.w;
      r11.x = saturate(r4.w * 4 + 0.5);
      r8.xy = -r8.zx * cb0[1].zw + r0.xw;
      r8.zw = r1.xy * float2(2,2) + -abs(r8.xy);
      r8.xy = min(abs(r8.xy), r8.zw);
      r8.xy = min(r8.xy, r1.xy);
      r8.xyzw = t0.SampleLevel(s0_s, r8.xy, 0).xyzw;
      r3.w = abs(r8.w) + -r3.w;
      r12.x = saturate(r3.w * 4 + 0.5);
      r3.w = r10.w * r10.w;
      r3.w = 3.14159274 * r3.w;
      r3.w = rcp(r3.w);
      r11.y = min(5.09295797, r3.w);
      r3.w = saturate(-r10.w + r1.z);
      r4.w = saturate(-abs(r10.w) + r1.z);
      r5.w = r8.w * r8.w;
      r5.w = 3.14159274 * r5.w;
      r5.w = rcp(r5.w);
      r12.y = min(5.09295797, r5.w);
      r5.w = saturate(-r8.w + r1.z);
      r6.w = saturate(-abs(r8.w) + r1.z);
      r7.w = cmp(r10.w < r8.w);
      r11.xy = r7.ww ? r11.xy : r12.xy;
      r7.w = r11.x * r11.y;
      r8.w = r7.w * r4.w;
      r9.xyz = r10.xyz * r8.www + r9.xyz;
      r2.x = r7.w * r4.w + r2.x;
      r1.w = r11.x * r3.w + r1.w;
      r3.w = r7.w * r6.w;
      r6.xyz = r8.xyz * r3.www + r9.xyz;
      r7.x = r7.w * r6.w + r2.x;
      r7.y = r11.x * r5.w + r1.w;
      r7.z = r11.x * 2 + r3.y;
    }
    r2.y = 3;
    r3.xyz = r6.xyz;
    r4.xyz = r7.xyz;
    r1.z = cb0[5].z;
    r5.x = 0;
    while (true) {
      r1.w = cmp((uint)r5.x >= 6);
      if (r1.w != 0) break;
      r1.w = cmp((uint)r5.x < 3);
      r2.w = (uint)r5.x;
      r5.xy = (int2)r5.xx + int2(1,-3);
      r3.w = (uint)r5.y;
      r2.x = 3 + -r3.w;
      r8.xy = r1.ww ? r2.zw : r2.xy;
      r1.w = dot(r8.xy, r8.xy);
      r1.w = sqrt(r1.w);
      r2.x = cmp(3.5 >= r1.w);
      if (r2.x != 0) {
        r2.xw = r8.xy * cb0[1].zw + r0.xw;
        r5.yz = r1.xy * float2(2,2) + -abs(r2.xw);
        r2.xw = min(r5.yz, abs(r2.xw));
        r2.xw = min(r2.xw, r1.xy);
        r9.xyzw = t0.SampleLevel(s0_s, r2.xw, 0).xyzw;
        r2.x = abs(r9.w) + -r1.w;
        r10.x = saturate(r2.x * 4 + 0.5);
        r2.xw = -r8.xy * cb0[1].zw + r0.xw;
        r5.yz = r1.xy * float2(2,2) + -abs(r2.xw);
        r2.xw = min(r5.yz, abs(r2.xw));
        r2.xw = min(r2.xw, r1.xy);
        r11.xyzw = t0.SampleLevel(s0_s, r2.xw, 0).xyzw;
        r1.w = abs(r11.w) + -r1.w;
        r12.x = saturate(r1.w * 4 + 0.5);
        r1.w = r9.w * r9.w;
        r1.w = 3.14159274 * r1.w;
        r1.w = rcp(r1.w);
        r10.y = min(5.09295797, r1.w);
        r1.w = saturate(-r9.w + r1.z);
        r2.x = saturate(-abs(r9.w) + r1.z);
        r2.w = r11.w * r11.w;
        r2.w = 3.14159274 * r2.w;
        r2.w = rcp(r2.w);
        r12.y = min(5.09295797, r2.w);
        r2.w = saturate(-r11.w + r1.z);
        r3.w = saturate(-abs(r11.w) + r1.z);
        r4.w = cmp(r9.w < r11.w);
        r5.yz = r4.ww ? r10.xy : r12.xy;
        r4.w = r5.y * r5.z;
        r5.z = r4.w * r2.x;
        r9.xyz = r9.xyz * r5.zzz + r3.xyz;
        r2.x = r4.w * r2.x + r4.x;
        r1.w = r5.y * r1.w + r4.y;
        r5.z = r4.w * r3.w;
        r3.xyz = r11.xyz * r5.zzz + r9.xyz;
        r4.x = r4.w * r3.w + r2.x;
        r4.y = r5.y * r2.w + r1.w;
        r4.z = r5.y * 2 + r4.z;
      }
      r8.zw = -r8.yy;
      r1.w = dot(r8.xz, r8.xw);
      r1.w = sqrt(r1.w);
      r2.x = cmp(3.5 >= r1.w);
      if (r2.x != 0) {
        r2.xw = float2(-1,1) * r8.yx;
        r5.yz = r2.xw * cb0[1].zw + r0.xw;
        r8.xy = r1.xy * float2(2,2) + -abs(r5.yz);
        r5.yz = min(r8.xy, abs(r5.yz));
        r5.yz = min(r5.yz, r1.xy);
        r8.xyzw = t0.SampleLevel(s0_s, r5.yz, 0).xyzw;
        r3.w = abs(r8.w) + -r1.w;
        r9.x = saturate(r3.w * 4 + 0.5);
        r2.xw = -r2.xw * cb0[1].zw + r0.xw;
        r5.yz = r1.xy * float2(2,2) + -abs(r2.xw);
        r2.xw = min(r5.yz, abs(r2.xw));
        r2.xw = min(r2.xw, r1.xy);
        r10.xyzw = t0.SampleLevel(s0_s, r2.xw, 0).xyzw;
        r1.w = abs(r10.w) + -r1.w;
        r11.x = saturate(r1.w * 4 + 0.5);
        r1.w = r8.w * r8.w;
        r1.w = 3.14159274 * r1.w;
        r1.w = rcp(r1.w);
        r9.y = min(5.09295797, r1.w);
        r1.w = saturate(-r8.w + r1.z);
        r2.x = saturate(-abs(r8.w) + r1.z);
        r2.w = r10.w * r10.w;
        r2.w = 3.14159274 * r2.w;
        r2.w = rcp(r2.w);
        r11.y = min(5.09295797, r2.w);
        r2.w = saturate(-r10.w + r1.z);
        r3.w = saturate(-abs(r10.w) + r1.z);
        r4.w = cmp(r8.w < r10.w);
        r5.yz = r4.ww ? r9.xy : r11.xy;
        r4.w = r5.y * r5.z;
        r5.z = r4.w * r2.x;
        r8.xyz = r8.xyz * r5.zzz + r3.xyz;
        r2.x = r4.w * r2.x + r4.x;
        r1.w = r5.y * r1.w + r4.y;
        r5.z = r4.w * r3.w;
        r3.xyz = r10.xyz * r5.zzz + r8.xyz;
        r4.x = r4.w * r3.w + r2.x;
        r4.y = r5.y * r2.w + r1.w;
        r4.z = r5.y * 2 + r4.z;
      }
    }
    r1.x = cmp(0 < r4.x);
    r1.yz = rcp(r4.xz);
    r1.x = r1.x ? r1.y : 0;
    r2.xyz = r3.xyz * r1.xxx;
    r2.w = r4.y * r1.z;
    r0.xyzw = cb0[7].zwww * r0.xyzw;
    r0.xyzw = (uint4)r0.xyzw;
    r1.xy = cmp((uint2)r0.xw >= asuint(cb0[4].zw));
    r1.x = (int)r1.y | (int)r1.x;
    if (r1.x == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
    }
  }
  return;
}