// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadGroupID.xy;
  r0.zw = float2(0,0);
  r1.xy = t2.Load(r0.xyw).xy;
  r0.xy = t3.Load(r0.xyz).xy;
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
    r6.xyz = float3(1,0,0);
    while (true) {
      r4.w = cmp((uint)r6.z >= 2);
      if (r4.w != 0) break;
      r7.x = dot(r6.xy, float2(0.707106769,-0.707106769));
      r7.y = dot(r6.xy, float2(0.707106769,0.707106769));
      r4.w = cmp((uint)r6.z < 1);
      r6.zw = (int2)r6.zz + int2(1,-1);
      r5.w = (uint)r6.w;
      r3.x = 1 + -r5.w;
      r8.xy = r4.ww ? float2(1,0) : r3.xy;
      r3.x = dot(r8.xy, r8.xy);
      r3.x = sqrt(r3.x);
      r7.zw = r8.xy * cb0[1].zw + r0.xw;
      r9.xy = r1.xy * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r9.xy, abs(r7.zw));
      r7.zw = min(r7.zw, r1.xy);
      r9.xyzw = t0.SampleLevel(s0_s, r7.zw, 0).xyzw;
      r10.xyzw = float4(0.46875,0.46875,-0.46875,-0.46875) * r7.xyxy;
      r4.w = t1.SampleLevel(s1_s, r10.xy, 0).x;
      r5.w = r9.w * r4.w;
      r6.w = abs(r5.w) + -r3.x;
      r10.x = saturate(r6.w * 4 + 0.5);
      r7.zw = -r8.xy * cb0[1].zw + r0.xw;
      r11.xy = r1.xy * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r11.xy, abs(r7.zw));
      r7.zw = min(r7.zw, r1.xy);
      r11.xyzw = t0.SampleLevel(s0_s, r7.zw, 0).xyzw;
      r6.w = t1.SampleLevel(s1_s, r10.zw, 0).x;
      r7.z = r11.w * r6.w;
      r3.x = abs(r7.z) + -r3.x;
      r12.x = saturate(r3.x * 4 + 0.5);
      r3.x = r5.w * r5.w;
      r3.x = 3.14159274 * r3.x;
      r3.x = rcp(r3.x);
      r10.y = min(5.09295797, r3.x);
      r3.x = saturate(-r9.w * r4.w + r2.w);
      r4.w = saturate(-abs(r5.w) + r2.w);
      r7.w = r7.z * r7.z;
      r7.w = 3.14159274 * r7.w;
      r7.w = rcp(r7.w);
      r12.y = min(5.09295797, r7.w);
      r6.w = saturate(-r11.w * r6.w + r2.w);
      r7.w = saturate(-abs(r7.z) + r2.w);
      r5.w = cmp(r5.w < r7.z);
      r10.xy = r5.ww ? r10.xy : r12.xy;
      r5.w = r10.x * r10.y;
      r7.z = r5.w * r4.w;
      r9.xyz = r9.xyz * r7.zzz + r4.xyz;
      r4.w = r5.w * r4.w + r5.x;
      r3.x = r10.x * r3.x + r5.y;
      r7.z = r5.w * r7.w;
      r9.xyz = r11.xyz * r7.zzz + r9.xyz;
      r4.w = r5.w * r7.w + r4.w;
      r3.x = r10.x * r6.w + r3.x;
      r5.w = r10.x * 2 + r5.z;
      r8.zw = -r8.yy;
      r7.zw = float2(-1,1) * r8.yx;
      r6.w = dot(r8.wx, r7.zw);
      r6.w = sqrt(r6.w);
      r7.zw = r7.zw * cb0[1].zw + r0.xw;
      r8.yw = r1.xy * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r8.yw, abs(r7.zw));
      r7.zw = min(r7.zw, r1.xy);
      r10.xyzw = t0.SampleLevel(s0_s, r7.zw, 0).xyzw;
      r11.xyzw = float4(-0.46875,0.46875,0.46875,-0.46875) * r7.yxyx;
      r7.z = t1.SampleLevel(s1_s, r11.xy, 0).x;
      r7.w = r10.w * r7.z;
      r8.y = abs(r7.w) + -r6.w;
      r11.x = saturate(r8.y * 4 + 0.5);
      r8.xy = -r8.zx * cb0[1].zw + r0.xw;
      r8.zw = r1.xy * float2(2,2) + -abs(r8.xy);
      r8.xy = min(abs(r8.xy), r8.zw);
      r8.xy = min(r8.xy, r1.xy);
      r8.xyzw = t0.SampleLevel(s0_s, r8.xy, 0).xyzw;
      r9.w = t1.SampleLevel(s1_s, r11.zw, 0).x;
      r11.z = r9.w * r8.w;
      r6.w = abs(r11.z) + -r6.w;
      r12.x = saturate(r6.w * 4 + 0.5);
      r6.w = r7.w * r7.w;
      r6.w = 3.14159274 * r6.w;
      r6.w = rcp(r6.w);
      r11.y = min(5.09295797, r6.w);
      r6.w = saturate(-r10.w * r7.z + r2.w);
      r7.z = saturate(-abs(r7.w) + r2.w);
      r10.w = r11.z * r11.z;
      r10.w = 3.14159274 * r10.w;
      r10.w = rcp(r10.w);
      r12.y = min(5.09295797, r10.w);
      r8.w = saturate(-r8.w * r9.w + r2.w);
      r9.w = saturate(-abs(r11.z) + r2.w);
      r7.w = cmp(r7.w < r11.z);
      r11.xy = r7.ww ? r11.xy : r12.xy;
      r7.w = r11.x * r11.y;
      r10.w = r7.w * r7.z;
      r9.xyz = r10.xyz * r10.www + r9.xyz;
      r4.w = r7.w * r7.z + r4.w;
      r3.x = r11.x * r6.w + r3.x;
      r6.w = r7.w * r9.w;
      r4.xyz = r8.xyz * r6.www + r9.xyz;
      r5.x = r7.w * r9.w + r4.w;
      r5.y = r11.x * r8.w + r3.x;
      r5.z = r11.x * 2 + r5.w;
      r6.xy = r7.xy;
    }
    r2.yz = float2(2,3);
    r6.xyz = r4.xyz;
    r7.xyz = r5.xyz;
    r1.zw = float2(0.980785251,0.195090324);
    r3.x = cb0[5].z;
    r8.x = 0;
    while (true) {
      r3.y = cmp((uint)r8.x >= 4);
      if (r3.y != 0) break;
      r9.x = dot(r1.zw, float2(0.923879504,-0.382683456));
      r9.y = dot(r1.zw, float2(0.382683456,0.923879504));
      r3.y = cmp((uint)r8.x < 2);
      r3.w = (uint)r8.x;
      r8.xy = (int2)r8.xx + int2(1,-2);
      r4.w = (uint)r8.y;
      r2.x = 2 + -r4.w;
      r10.xy = r3.yy ? r3.zw : r2.xy;
      r2.x = dot(r10.xy, r10.xy);
      r2.x = sqrt(r2.x);
      r3.yw = r10.xy * cb0[1].zw + r0.xw;
      r8.yz = r1.xy * float2(2,2) + -abs(r3.yw);
      r3.yw = min(r8.yz, abs(r3.yw));
      r3.yw = min(r3.yw, r1.xy);
      r11.xyzw = t0.SampleLevel(s0_s, r3.yw, 0).xyzw;
      r12.xyzw = float4(0.46875,0.46875,-0.46875,-0.46875) * r9.xyxy;
      r3.y = t1.SampleLevel(s1_s, r12.xy, 0).x;
      r3.w = r11.w * r3.y;
      r4.w = abs(r3.w) + -r2.x;
      r12.x = saturate(r4.w * 4 + 0.5);
      r8.yz = -r10.xy * cb0[1].zw + r0.xw;
      r9.zw = r1.xy * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.zw, abs(r8.yz));
      r8.yz = min(r8.yz, r1.xy);
      r13.xyzw = t0.SampleLevel(s0_s, r8.yz, 0).xyzw;
      r4.w = t1.SampleLevel(s1_s, r12.zw, 0).x;
      r5.w = r13.w * r4.w;
      r2.x = abs(r5.w) + -r2.x;
      r14.x = saturate(r2.x * 4 + 0.5);
      r2.x = r3.w * r3.w;
      r2.x = 3.14159274 * r2.x;
      r2.x = rcp(r2.x);
      r12.y = min(5.09295797, r2.x);
      r2.x = saturate(-r11.w * r3.y + r3.x);
      r3.y = saturate(r3.x + -abs(r3.w));
      r6.w = r5.w * r5.w;
      r6.w = 3.14159274 * r6.w;
      r6.w = rcp(r6.w);
      r14.y = min(5.09295797, r6.w);
      r4.w = saturate(-r13.w * r4.w + r3.x);
      r6.w = saturate(-abs(r5.w) + r3.x);
      r3.w = cmp(r3.w < r5.w);
      r8.yz = r3.ww ? r12.xy : r14.xy;
      r3.w = r8.y * r8.z;
      r5.w = r3.w * r3.y;
      r11.xyz = r11.xyz * r5.www + r6.xyz;
      r3.y = r3.w * r3.y + r7.x;
      r2.x = r8.y * r2.x + r7.y;
      r5.w = r3.w * r6.w;
      r11.xyz = r13.xyz * r5.www + r11.xyz;
      r3.y = r3.w * r6.w + r3.y;
      r2.x = r8.y * r4.w + r2.x;
      r3.w = r8.y * 2 + r7.z;
      r10.zw = -r10.yy;
      r8.yz = float2(-1,1) * r10.yx;
      r4.w = dot(r10.wx, r8.yz);
      r4.w = sqrt(r4.w);
      r8.yz = r8.yz * cb0[1].zw + r0.xw;
      r9.zw = r1.xy * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.zw, abs(r8.yz));
      r8.yz = min(r8.yz, r1.xy);
      r12.xyzw = t0.SampleLevel(s0_s, r8.yz, 0).xyzw;
      r13.xyzw = float4(-0.46875,0.46875,0.46875,-0.46875) * r9.yxyx;
      r5.w = t1.SampleLevel(s1_s, r13.xy, 0).x;
      r6.w = r12.w * r5.w;
      r7.w = abs(r6.w) + -r4.w;
      r13.x = saturate(r7.w * 4 + 0.5);
      r8.yz = -r10.zx * cb0[1].zw + r0.xw;
      r9.zw = r1.xy * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.zw, abs(r8.yz));
      r8.yz = min(r8.yz, r1.xy);
      r10.xyzw = t0.SampleLevel(s0_s, r8.yz, 0).xyzw;
      r7.w = t1.SampleLevel(s1_s, r13.zw, 0).x;
      r8.y = r10.w * r7.w;
      r4.w = abs(r8.y) + -r4.w;
      r14.x = saturate(r4.w * 4 + 0.5);
      r4.w = r6.w * r6.w;
      r4.w = 3.14159274 * r4.w;
      r4.w = rcp(r4.w);
      r13.y = min(5.09295797, r4.w);
      r4.w = saturate(-r12.w * r5.w + r3.x);
      r5.w = saturate(-abs(r6.w) + r3.x);
      r8.z = r8.y * r8.y;
      r8.z = 3.14159274 * r8.z;
      r8.z = rcp(r8.z);
      r14.y = min(5.09295797, r8.z);
      r7.w = saturate(-r10.w * r7.w + r3.x);
      r8.z = saturate(-abs(r8.y) + r3.x);
      r6.w = cmp(r6.w < r8.y);
      r8.yw = r6.ww ? r13.xy : r14.xy;
      r6.w = r8.y * r8.w;
      r8.w = r6.w * r5.w;
      r11.xyz = r12.xyz * r8.www + r11.xyz;
      r3.y = r6.w * r5.w + r3.y;
      r2.x = r8.y * r4.w + r2.x;
      r4.w = r6.w * r8.z;
      r6.xyz = r10.xyz * r4.www + r11.xyz;
      r7.x = r6.w * r8.z + r3.y;
      r7.y = r8.y * r7.w + r2.x;
      r7.z = r8.y * 2 + r3.w;
      r1.zw = r9.xy;
    }
    r2.y = 3;
    r3.xyz = r6.xyz;
    r4.xyz = r7.xyz;
    r1.zw = float2(1,0);
    r3.w = cb0[5].z;
    r5.x = 0;
    while (true) {
      r4.w = cmp((uint)r5.x >= 6);
      if (r4.w != 0) break;
      r8.x = dot(r1.zw, float2(0.965925813,-0.258819044));
      r8.y = dot(r1.zw, float2(0.258819044,0.965925813));
      r4.w = cmp((uint)r5.x < 3);
      r2.w = (uint)r5.x;
      r5.xy = (int2)r5.xx + int2(1,-3);
      r5.y = (uint)r5.y;
      r2.x = 3 + -r5.y;
      r9.xy = r4.ww ? r2.zw : r2.xy;
      r2.x = dot(r9.xy, r9.xy);
      r2.x = sqrt(r2.x);
      r2.w = cmp(3.5 >= r2.x);
      if (r2.w != 0) {
        r5.yz = r9.xy * cb0[1].zw + r0.xw;
        r8.zw = r1.xy * float2(2,2) + -abs(r5.yz);
        r5.yz = min(r8.zw, abs(r5.yz));
        r5.yz = min(r5.yz, r1.xy);
        r10.xyzw = t0.SampleLevel(s0_s, r5.yz, 0).xyzw;
        r11.xyzw = float4(0.46875,0.46875,-0.46875,-0.46875) * r8.xyxy;
        r2.w = t1.SampleLevel(s1_s, r11.xy, 0).x;
        r4.w = r10.w * r2.w;
        r5.y = abs(r4.w) + -r2.x;
        r11.x = saturate(r5.y * 4 + 0.5);
        r5.yz = -r9.xy * cb0[1].zw + r0.xw;
        r8.zw = r1.xy * float2(2,2) + -abs(r5.yz);
        r5.yz = min(r8.zw, abs(r5.yz));
        r5.yz = min(r5.yz, r1.xy);
        r12.xyzw = t0.SampleLevel(s0_s, r5.yz, 0).xyzw;
        r5.y = t1.SampleLevel(s1_s, r11.zw, 0).x;
        r5.z = r12.w * r5.y;
        r2.x = abs(r5.z) + -r2.x;
        r13.x = saturate(r2.x * 4 + 0.5);
        r2.x = r4.w * r4.w;
        r2.x = 3.14159274 * r2.x;
        r2.x = rcp(r2.x);
        r11.y = min(5.09295797, r2.x);
        r2.x = saturate(-r10.w * r2.w + r3.w);
        r2.w = saturate(-abs(r4.w) + r3.w);
        r5.w = r5.z * r5.z;
        r5.w = 3.14159274 * r5.w;
        r5.w = rcp(r5.w);
        r13.y = min(5.09295797, r5.w);
        r5.y = saturate(-r12.w * r5.y + r3.w);
        r5.w = saturate(-abs(r5.z) + r3.w);
        r4.w = cmp(r4.w < r5.z);
        r8.zw = r4.ww ? r11.xy : r13.xy;
        r4.w = r8.z * r8.w;
        r5.z = r4.w * r2.w;
        r10.xyz = r10.xyz * r5.zzz + r3.xyz;
        r2.w = r4.w * r2.w + r4.x;
        r2.x = r8.z * r2.x + r4.y;
        r5.z = r4.w * r5.w;
        r3.xyz = r12.xyz * r5.zzz + r10.xyz;
        r4.x = r4.w * r5.w + r2.w;
        r4.y = r8.z * r5.y + r2.x;
        r4.z = r8.z * 2 + r4.z;
      }
      r9.zw = -r9.yy;
      r2.x = dot(r9.xz, r9.xw);
      r2.x = sqrt(r2.x);
      r2.w = cmp(3.5 >= r2.x);
      if (r2.w != 0) {
        r5.yz = float2(-1,1) * r9.yx;
        r8.zw = r5.yz * cb0[1].zw + r0.xw;
        r9.xy = r1.xy * float2(2,2) + -abs(r8.zw);
        r8.zw = min(r9.xy, abs(r8.zw));
        r8.zw = min(r8.zw, r1.xy);
        r9.xyzw = t0.SampleLevel(s0_s, r8.zw, 0).xyzw;
        r10.xyzw = float4(-0.46875,0.46875,0.46875,-0.46875) * r8.yxyx;
        r2.w = t1.SampleLevel(s1_s, r10.xy, 0).x;
        r4.w = r9.w * r2.w;
        r5.w = abs(r4.w) + -r2.x;
        r10.x = saturate(r5.w * 4 + 0.5);
        r5.yz = -r5.yz * cb0[1].zw + r0.xw;
        r8.zw = r1.xy * float2(2,2) + -abs(r5.yz);
        r5.yz = min(r8.zw, abs(r5.yz));
        r5.yz = min(r5.yz, r1.xy);
        r11.xyzw = t0.SampleLevel(s0_s, r5.yz, 0).xyzw;
        r5.y = t1.SampleLevel(s1_s, r10.zw, 0).x;
        r5.z = r11.w * r5.y;
        r2.x = abs(r5.z) + -r2.x;
        r12.x = saturate(r2.x * 4 + 0.5);
        r2.x = r4.w * r4.w;
        r2.x = 3.14159274 * r2.x;
        r2.x = rcp(r2.x);
        r10.y = min(5.09295797, r2.x);
        r2.x = saturate(-r9.w * r2.w + r3.w);
        r2.w = saturate(-abs(r4.w) + r3.w);
        r5.w = r5.z * r5.z;
        r5.w = 3.14159274 * r5.w;
        r5.w = rcp(r5.w);
        r12.y = min(5.09295797, r5.w);
        r5.y = saturate(-r11.w * r5.y + r3.w);
        r5.w = saturate(-abs(r5.z) + r3.w);
        r4.w = cmp(r4.w < r5.z);
        r8.zw = r4.ww ? r10.xy : r12.xy;
        r4.w = r8.z * r8.w;
        r5.z = r4.w * r2.w;
        r9.xyz = r9.xyz * r5.zzz + r3.xyz;
        r2.w = r4.w * r2.w + r4.x;
        r2.x = r8.z * r2.x + r4.y;
        r5.z = r4.w * r5.w;
        r3.xyz = r11.xyz * r5.zzz + r9.xyz;
        r4.x = r4.w * r5.w + r2.w;
        r4.y = r8.z * r5.y + r2.x;
        r4.z = r8.z * 2 + r4.z;
      }
      r1.zw = r8.xy;
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