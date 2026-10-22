// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadGroupID.xy;
  r0.zw = float2(0,0);
  r0.xy = t1.Load(r0.xyz).xy;
  r0.z = -1 + cb0[5].z;
  r0.w = -0.0500000007 * r0.x;
  r1.x = -r0.x + r0.y;
  r0.w = cmp(r1.x < r0.w);
  r0.y = cmp(3 < -r0.y);
  r0.y = (int)r0.y | (int)r0.w;
  r0.w = cmp(r0.z >= -r0.x);
  r0.y = (int)r0.w | (int)r0.y;
  if (r0.y != 0) {
    r0.yw = cmp((uint2)vThreadID.xy >= asuint(cb0[4].zw));
    r0.y = (int)r0.w | (int)r0.y;
    if (r0.y == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyyy, l(0,0,0,1.000000)
    }
  } else {
    r0.yw = (uint2)vThreadID.xy;
    r1.xyzw = float4(0.5,0.5,32.6650009,11.8149996) + r0.ywyw;
    r2.xyzw = cb0[5].xyyy * r1.xyyy;
    r0.y = dot(r0.yw, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
    r0.yw = frac(r0.yw);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.y = sqrt(r0.y);
    r0.yw = float2(0.479999989,6.28318548) * r0.yw;
    sincos(r0.w, r1.x, r3.x);
    r3.y = r1.x;
    r0.yw = r3.xy * r0.yy;
    r1.xyzw = float4(-0.285714298,-0.285714298,-0,-0.571428597) * r0.xxxx;
    r3.x = log2(r1.x);
    r3.x = 0.5 + r3.x;
    r3.x = floor(r3.x);
    r0.yw = r1.xx * r0.yw;
    r0.yw = r0.yw * cb0[1].zw + r2.xw;
    r3.y = (uint)r3.x;
    r3.y = (uint)r3.y;
    r3.y = exp2(r3.y);
    r3.zw = -r3.yy * float2(0.5,0.5) + cb0[2].xy;
    r3.zw = cb0[1].zw * r3.zw;
    r3.y = rcp(r3.y);
    r4.xy = r3.zw * float2(2,2) + -abs(r0.yw);
    r4.xy = min(r4.xy, abs(r0.yw));
    r4.xy = min(r4.xy, r3.zw);
    r4.xyzw = t0.SampleLevel(s0_s, r4.xy, r3.x).xyzw;
    r5.z = saturate(r4.w * cb0[7].x + cb0[7].y);
    r0.z = cmp(r4.w < -r0.z);
    r4.xyz = r5.zzz * r4.xyz;
    r5.xy = r4.yz;
    r5.w = 16384;
    r5.xyzw = r0.zzzz ? float4(0,0,0,0) : r5.xyzw;
    r0.z = r0.z ? 0 : r4.x;
    r4.xyzw = r5.xyzw;
    r6.xy = cb0[7].xy;
    r6.zw = r1.yz;
    r7.x = cb0[5].z;
    r8.x = r0.z;
    r7.y = 0;
    while (true) {
      r7.z = cmp((uint)r7.y >= 2);
      if (r7.z != 0) break;
      r9.x = dot(r6.zw, float2(0.707106769,-0.707106769));
      r9.y = dot(r6.zw, float2(0.707106769,0.707106769));
      r7.zw = r9.xy * cb0[1].zw + r0.yw;
      r10.xy = r3.zw * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r10.xy, abs(r7.zw));
      r7.zw = min(r7.zw, r3.zw);
      r10.xyzw = t0.SampleLevel(s0_s, r7.zw, r3.x).xyzw;
      r7.z = -r0.x * -0.285714298 + abs(r10.w);
      r11.x = saturate(r7.z * r3.y + 0.5);
      r7.zw = -r9.xy * cb0[1].zw + r0.yw;
      r11.zw = r3.zw * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r11.zw, abs(r7.zw));
      r7.zw = min(r7.zw, r3.zw);
      r12.xyzw = t0.SampleLevel(s0_s, r7.zw, r3.x).xyzw;
      r7.z = -r0.x * -0.285714298 + abs(r12.w);
      r13.y = saturate(r7.z * r3.y + 0.5);
      r7.z = saturate(r10.w * r6.x + r6.y);
      r7.w = saturate(r12.w * r6.x + r6.y);
      r11.z = cmp(r10.w < 0);
      r11.w = cmp(r10.w < r12.w);
      r11.z = r11.w ? r11.z : 0;
      r11.y = max(r13.y, r11.x);
      r11.w = cmp(r12.w < 0);
      r13.z = cmp(r12.w < r10.w);
      r11.w = r11.w ? r13.z : 0;
      r13.x = r11.w ? r11.y : r11.x;
      r11.xy = r11.zz ? r11.xy : r13.xy;
      r11.z = -1 + r7.x;
      r10.w = cmp(r10.w < -r11.z);
      r11.w = min(r4.w, r1.x);
      r13.x = r11.x * r7.z;
      r8.yzw = r4.xyz;
      r13.xyz = r10.xyz * r13.xxx + r8.xyz;
      r13.w = r11.x * r7.z + r4.z;
      r13.xyzw = r10.wwww ? r8.xyzw : r13.xyzw;
      r7.z = r10.w ? r11.w : r4.w;
      r8.y = cmp(r12.w < -r11.z);
      r8.z = min(r7.z, r1.x);
      r8.w = r11.y * r7.w;
      r10.xyz = r12.xyz * r8.www + r13.xyz;
      r10.w = r11.y * r7.w + r13.w;
      r10.xyzw = r8.yyyy ? r13.xyzw : r10.xyzw;
      r7.z = r8.y ? r8.z : r7.z;
      r9.zw = -r9.yy;
      r8.yz = r9.wx * cb0[1].zw + r0.yw;
      r11.xy = r3.zw * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r11.xy, abs(r8.yz));
      r8.yz = min(r8.yz, r3.zw);
      r12.xyzw = t0.SampleLevel(s0_s, r8.yz, r3.x).xyzw;
      r7.w = -r0.x * -0.285714298 + abs(r12.w);
      r11.x = saturate(r7.w * r3.y + 0.5);
      r8.yz = -r9.zx * cb0[1].zw + r0.yw;
      r9.zw = r3.zw * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.zw, abs(r8.yz));
      r8.yz = min(r8.yz, r3.zw);
      r13.xyzw = t0.SampleLevel(s0_s, r8.yz, r3.x).xyzw;
      r7.w = -r0.x * -0.285714298 + abs(r13.w);
      r14.y = saturate(r7.w * r3.y + 0.5);
      r7.w = saturate(r12.w * r6.x + r6.y);
      r8.y = saturate(r13.w * r6.x + r6.y);
      r8.z = cmp(r12.w < 0);
      r8.w = cmp(r12.w < r13.w);
      r8.z = r8.w ? r8.z : 0;
      r11.y = max(r14.y, r11.x);
      r8.w = cmp(r13.w < 0);
      r9.z = cmp(r13.w < r12.w);
      r8.w = r8.w ? r9.z : 0;
      r14.x = r8.w ? r11.y : r11.x;
      r8.zw = r8.zz ? r11.xy : r14.xy;
      r9.z = cmp(r12.w < -r11.z);
      r9.w = min(r7.z, r1.x);
      r11.x = r8.z * r7.w;
      r12.xyz = r12.xyz * r11.xxx + r10.xyz;
      r12.w = r8.z * r7.w + r10.w;
      r10.xyzw = r9.zzzz ? r10.xyzw : r12.xyzw;
      r12.w = r9.z ? r9.w : r7.z;
      r7.z = cmp(r13.w < -r11.z);
      r11.w = min(r12.w, r1.x);
      r7.w = r8.w * r8.y;
      r13.xyz = r13.xyz * r7.www + r10.xyz;
      r12.z = r8.w * r8.y + r10.w;
      r11.xyz = r10.yzw;
      r12.xy = r13.yz;
      r4.xyzw = r7.zzzz ? r11.xyzw : r12.xyzw;
      r8.x = r7.z ? r10.x : r13.x;
      r7.y = (int)r7.y + 1;
      r6.zw = r9.xy;
    }
    r5.xyzw = float4(-0.560448766,-0.111480191,-0.857142925,-0) * r0.xxxx;
    r6.xyzw = r4.xyzw;
    r1.xy = cb0[7].xy;
    r7.xy = r5.xy;
    r0.z = cb0[5].z;
    r9.x = r8.x;
    r1.z = 0;
    while (true) {
      r7.z = cmp((uint)r1.z >= 4);
      if (r7.z != 0) break;
      r10.x = dot(r7.xy, float2(0.923879504,-0.382683456));
      r10.y = dot(r7.xy, float2(0.382683456,0.923879504));
      r7.zw = r10.xy * cb0[1].zw + r0.yw;
      r8.yz = r3.zw * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r8.yz, abs(r7.zw));
      r7.zw = min(r7.zw, r3.zw);
      r11.xyzw = t0.SampleLevel(s0_s, r7.zw, r3.x).xyzw;
      r7.z = -r0.x * -0.571428597 + abs(r11.w);
      r12.x = saturate(r7.z * r3.y + 0.5);
      r7.zw = -r10.xy * cb0[1].zw + r0.yw;
      r8.yz = r3.zw * float2(2,2) + -abs(r7.zw);
      r7.zw = min(r8.yz, abs(r7.zw));
      r7.zw = min(r7.zw, r3.zw);
      r13.xyzw = t0.SampleLevel(s0_s, r7.zw, r3.x).xyzw;
      r7.z = -r0.x * -0.571428597 + abs(r13.w);
      r14.y = saturate(r7.z * r3.y + 0.5);
      r7.z = saturate(r11.w * r1.x + r1.y);
      r7.w = saturate(r13.w * r1.x + r1.y);
      r8.y = cmp(r11.w < 0);
      r8.z = cmp(r11.w < r13.w);
      r8.y = r8.z ? r8.y : 0;
      r12.y = max(r14.y, r12.x);
      r8.z = cmp(r13.w < 0);
      r8.w = cmp(r13.w < r11.w);
      r8.z = r8.w ? r8.z : 0;
      r14.x = r8.z ? r12.y : r12.x;
      r8.yz = r8.yy ? r12.xy : r14.xy;
      r8.w = -1 + r0.z;
      r11.w = cmp(r11.w < -r8.w);
      r12.x = min(r6.w, r1.w);
      r12.y = r8.y * r7.z;
      r9.yzw = r6.xyz;
      r14.xyz = r11.xyz * r12.yyy + r9.xyz;
      r14.w = r8.y * r7.z + r6.z;
      r14.xyzw = r11.wwww ? r9.xyzw : r14.xyzw;
      r7.z = r11.w ? r12.x : r6.w;
      r8.y = cmp(r13.w < -r8.w);
      r9.y = min(r7.z, r1.w);
      r9.z = r8.z * r7.w;
      r11.xyz = r13.xyz * r9.zzz + r14.xyz;
      r11.w = r8.z * r7.w + r14.w;
      r11.xyzw = r8.yyyy ? r14.xyzw : r11.xyzw;
      r7.z = r8.y ? r9.y : r7.z;
      r10.zw = -r10.yy;
      r8.yz = r10.wx * cb0[1].zw + r0.yw;
      r9.yz = r3.zw * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.yz, abs(r8.yz));
      r8.yz = min(r8.yz, r3.zw);
      r12.xyzw = t0.SampleLevel(s0_s, r8.yz, r3.x).xyzw;
      r7.w = -r0.x * -0.571428597 + abs(r12.w);
      r13.x = saturate(r7.w * r3.y + 0.5);
      r8.yz = -r10.zx * cb0[1].zw + r0.yw;
      r9.yz = r3.zw * float2(2,2) + -abs(r8.yz);
      r8.yz = min(r9.yz, abs(r8.yz));
      r8.yz = min(r8.yz, r3.zw);
      r14.xyzw = t0.SampleLevel(s0_s, r8.yz, r3.x).xyzw;
      r7.w = -r0.x * -0.571428597 + abs(r14.w);
      r15.y = saturate(r7.w * r3.y + 0.5);
      r7.w = saturate(r12.w * r1.x + r1.y);
      r8.y = saturate(r14.w * r1.x + r1.y);
      r8.z = cmp(r12.w < 0);
      r9.y = cmp(r12.w < r14.w);
      r8.z = r8.z ? r9.y : 0;
      r13.y = max(r15.y, r13.x);
      r9.y = cmp(r14.w < 0);
      r9.z = cmp(r14.w < r12.w);
      r9.y = r9.z ? r9.y : 0;
      r15.x = r9.y ? r13.y : r13.x;
      r9.yz = r8.zz ? r13.xy : r15.xy;
      r8.z = cmp(r12.w < -r8.w);
      r9.w = min(r7.z, r1.w);
      r10.z = r9.y * r7.w;
      r12.xyz = r12.xyz * r10.zzz + r11.xyz;
      r12.w = r9.y * r7.w + r11.w;
      r11.xyzw = r8.zzzz ? r11.xyzw : r12.xyzw;
      r12.w = r8.z ? r9.w : r7.z;
      r7.z = cmp(r14.w < -r8.w);
      r13.w = min(r12.w, r1.w);
      r7.w = r9.z * r8.y;
      r14.xyz = r14.xyz * r7.www + r11.xyz;
      r12.z = r9.z * r8.y + r11.w;
      r13.xyz = r11.yzw;
      r12.xy = r14.yz;
      r6.xyzw = r7.zzzz ? r13.xyzw : r12.xyzw;
      r9.x = r7.z ? r11.x : r14.x;
      r1.z = (int)r1.z + 1;
      r7.xy = r10.xy;
    }
    r1.x = r9.x;
    r1.yz = r6.xy;
    r4.xy = cb0[7].xy;
    r7.xz = r6.zw;
    r4.zw = r5.zw;
    r0.z = cb0[5].z;
    r1.w = 0;
    while (true) {
      r5.x = cmp((uint)r1.w >= 6);
      if (r5.x != 0) break;
      r8.x = dot(r4.zw, float2(0.965925813,-0.258819044));
      r8.y = dot(r4.zw, float2(0.258819044,0.965925813));
      r5.xy = r8.xy * cb0[1].zw + r0.yw;
      r9.yz = r3.zw * float2(2,2) + -abs(r5.xy);
      r5.xy = min(r9.yz, abs(r5.xy));
      r5.xy = min(r5.xy, r3.zw);
      r10.xyzw = t0.SampleLevel(s0_s, r5.xy, r3.x).xyzw;
      r5.x = -r0.x * -0.857142925 + abs(r10.w);
      r5.x = saturate(r5.x * r3.y + 0.5);
      r9.yz = -r8.xy * cb0[1].zw + r0.yw;
      r11.xy = r3.zw * float2(2,2) + -abs(r9.yz);
      r9.yz = min(r11.xy, abs(r9.yz));
      r9.yz = min(r9.yz, r3.zw);
      r11.xyzw = t0.SampleLevel(s0_s, r9.yz, r3.x).xyzw;
      r7.w = -r0.x * -0.857142925 + abs(r11.w);
      r12.y = saturate(r7.w * r3.y + 0.5);
      r7.w = saturate(r10.w * r4.x + r4.y);
      r9.y = saturate(r11.w * r4.x + r4.y);
      r9.z = cmp(r10.w < 0);
      r9.w = cmp(r10.w < r11.w);
      r9.z = r9.w ? r9.z : 0;
      r5.y = max(r12.y, r5.x);
      r9.w = cmp(r11.w < 0);
      r12.z = cmp(r11.w < r10.w);
      r9.w = r9.w ? r12.z : 0;
      r12.x = r9.w ? r5.y : r5.x;
      r5.xy = r9.zz ? r5.xy : r12.xy;
      r9.z = -1 + r0.z;
      r9.w = cmp(r10.w < -r9.z);
      r12.z = min(r7.z, r5.z);
      r10.w = r5.x * r7.w;
      r10.xyz = r10.xyz * r10.www + r1.xyz;
      r7.y = r5.x * r7.w + r7.x;
      r10.xyz = r9.www ? r1.xyz : r10.xyz;
      r12.y = r7.x;
      r12.yz = r9.ww ? r12.yz : r7.yz;
      r5.x = cmp(r11.w < -r9.z);
      r12.w = min(r12.z, r5.z);
      r7.y = r5.y * r9.y;
      r11.xyz = r11.xyz * r7.yyy + r10.xyz;
      r12.x = r5.y * r9.y + r12.y;
      r10.xyz = r5.xxx ? r10.xyz : r11.xyz;
      r11.yz = r5.xx ? r12.yw : r12.xz;
      r8.zw = -r8.yy;
      r5.xy = r8.wx * cb0[1].zw + r0.yw;
      r7.yw = r3.zw * float2(2,2) + -abs(r5.xy);
      r5.xy = min(r7.yw, abs(r5.xy));
      r5.xy = min(r5.xy, r3.zw);
      r12.xyzw = t0.SampleLevel(s0_s, r5.xy, r3.x).xyzw;
      r5.x = -r0.x * -0.857142925 + abs(r12.w);
      r5.x = saturate(r5.x * r3.y + 0.5);
      r7.yw = -r8.zx * cb0[1].zw + r0.yw;
      r8.zw = r3.zw * float2(2,2) + -abs(r7.yw);
      r7.yw = min(r8.zw, abs(r7.yw));
      r7.yw = min(r7.yw, r3.zw);
      r13.xyzw = t0.SampleLevel(s0_s, r7.yw, r3.x).xyzw;
      r7.y = -r0.x * -0.857142925 + abs(r13.w);
      r14.y = saturate(r7.y * r3.y + 0.5);
      r7.y = saturate(r12.w * r4.x + r4.y);
      r7.w = saturate(r13.w * r4.x + r4.y);
      r8.z = cmp(r12.w < 0);
      r8.w = cmp(r12.w < r13.w);
      r8.z = r8.w ? r8.z : 0;
      r5.y = max(r14.y, r5.x);
      r8.w = cmp(r13.w < 0);
      r9.y = cmp(r13.w < r12.w);
      r8.w = r8.w ? r9.y : 0;
      r14.x = r8.w ? r5.y : r5.x;
      r5.xy = r8.zz ? r5.xy : r14.xy;
      r8.z = cmp(r12.w < -r9.z);
      r11.w = min(r11.z, r5.z);
      r8.w = r5.x * r7.y;
      r12.xyz = r12.xyz * r8.www + r10.xyz;
      r11.x = r5.x * r7.y + r11.y;
      r10.xyz = r8.zzz ? r10.xyz : r12.xyz;
      r11.yz = r8.zz ? r11.yw : r11.xz;
      r5.x = cmp(r13.w < -r9.z);
      r11.w = min(r11.z, r5.z);
      r7.y = r5.y * r7.w;
      r9.yzw = r13.xyz * r7.yyy + r10.xyz;
      r11.x = r5.y * r7.w + r11.y;
      r1.xyz = r5.xxx ? r10.xyz : r9.yzw;
      r7.xz = r5.xx ? r11.yw : r11.xz;
      r1.w = (int)r1.w + 1;
      r4.zw = r8.xy;
    }
    r0.y = cmp(0 < r7.x);
    r0.z = rcp(r7.x);
    r0.z = r0.y ? r0.z : 0;
    r1.xyz = r1.xyz * r0.zzz;
    r0.z = cmp(r7.z != 16384.000000);
    r0.y = r0.y ? r0.z : 0;
    r3.w = r7.z / -r0.x;
    r0.x = 1 + -r3.w;
    r3.xyz = r1.xyz * r0.xxx;
    r0.xyzw = r0.yyyy ? r3.xyzw : float4(0,0,0,1);
    r1.xyzw = cb0[7].zwww * r2.xyzw;
    r1.xyzw = (uint4)r1.xyzw;
    r2.xy = cmp((uint2)r1.xw >= asuint(cb0[4].zw));
    r2.x = (int)r2.y | (int)r2.x;
    if (r2.x == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
    }
  }
  return;
}