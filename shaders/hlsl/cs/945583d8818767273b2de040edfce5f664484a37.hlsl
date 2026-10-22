// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[185];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.xyz = -cb0[173].xyz + cb0[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.x);
  r1.yz = float2(0.5,0.5) * cb2[7].zw;
  r1.yz = r0.xw * cb2[7].zw + -r1.yz;
  r3.xy = float2(-1,-1) + cb2[7].xy;
  r3.xy = cb2[7].xy / r3.xy;
  r1.yz = r3.xy * r1.yz;
  r1.w = cb1[0].y * cb1[0].y;
  r2.w = -cb1[0].y * cb1[0].y + r1.x;
  r2.w = sqrt(r2.w);
  r2.w = r2.w / r2.x;
  r3.x = r2.w * r2.w;
  r3.y = r3.x * r2.w;
  r3.z = r2.w * -0.212114394 + 1.57072878;
  r3.x = r3.x * 0.0742610022 + r3.z;
  r3.x = r3.y * -0.0187292993 + r3.x;
  r3.y = 1 + -r2.w;
  r3.y = sqrt(r3.y);
  r3.z = r3.y * r3.x;
  r2.w = cmp(r2.w >= 0);
  r3.x = -r3.y * r3.x + 3.14159274;
  r2.w = r2.w ? r3.z : r3.x;
  r3.x = 3.14159274 + -r2.w;
  r3.y = cmp(r1.z < 0.5);
  r3.z = -r1.z * 2 + 1;
  r3.z = -r3.z * r3.z + 1;
  r3.z = r3.x * r3.z;
  r1.z = r1.z * 2 + -1;
  r1.z = r1.z * r1.z;
  r1.z = r2.w * r1.z + r3.x;
  r1.z = r3.y ? r3.z : r1.z;
  r3.z = cos(r1.z);
  r2.w = -r3.z * r3.z + 1;
  r2.w = sqrt(r2.w);
  r1.z = cmp(0 < r1.z);
  r1.z = r1.z ? 1 : -1;
  r1.z = r2.w * r1.z;
  r2.w = 6.28318548 * r1.y;
  r2.w = cos(r2.w);
  r3.w = -r2.w * r2.w + 1;
  r3.w = sqrt(r3.w);
  r1.y = cmp(0.5 >= r1.y);
  r1.y = r1.y ? 1 : -1;
  r1.y = r3.w * r1.y;
  r3.x = r2.w * r1.z;
  r3.y = r1.z * r1.y;
  r1.y = cmp(cb1[0].z < r2.x);
  if (r1.y != 0) {
    r1.y = dot(r3.xyz, r3.xyz);
    r1.z = dot(r3.zz, r2.xx);
    r1.x = -cb1[0].z * cb1[0].z + r1.x;
    r1.x = r1.x * r1.y;
    r1.x = 4 * r1.x;
    r1.x = r1.z * r1.z + -r1.x;
    r2.w = cmp(r1.x >= 0);
    r1.x = sqrt(r1.x);
    r1.xz = r1.xx * float2(1,-1) + -r1.zz;
    r1.y = r1.y + r1.y;
    r1.xy = r1.xz / r1.yy;
    r1.xy = r2.ww ? r1.xy : float2(-1,-1);
    r4.xy = cmp(r1.yx < float2(0,0));
    r1.z = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r1.xy);
    r2.w = r4.y ? r4.w : -1;
    r2.w = r4.x ? r4.z : r2.w;
    r3.w = (int)r4.y | (int)r4.x;
    r1.x = min(r1.y, r1.x);
    r1.x = max(0, r1.x);
    r1.x = r3.w ? r2.w : r1.x;
    r1.x = r1.z ? -1 : r1.x;
    r1.y = cmp(r1.x >= 0);
    r1.z = ~(int)r1.y;
    r2.y = 0;
    r4.xyz = r2.yyx / r2.xxx;
    r5.xyz = r3.xyz * r1.xxx + r2.yyx;
    r4.xyz = r4.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r5.xyz;
    r4.xyz = r1.yyy ? r4.xyz : r2.yyx;
    r1.x = 0;
  } else {
    r2.z = 0;
    r4.xyz = r2.zzx;
    r1.z = 0;
  }
  r1.y = ~(int)r1.z;
  r1.x = (int)r1.x | (int)r1.y;
  if (r1.x == 0) {
    r2.xyzw = (int4)r0.xwww;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzw, l(0,0,0,0)
    return;
  }
  r1.x = dot(r4.xyz, r4.xyz);
  r1.y = cmp(r1.w < r1.x);
  if (r1.y != 0) {
    r1.y = dot(r3.xyz, r3.xyz);
    r1.z = dot(r3.xyz, r4.xyz);
    r1.z = r1.z + r1.z;
    r2.x = -cb1[0].y * cb1[0].y + r1.x;
    r2.y = r1.z * r1.z;
    r2.z = 4 * r1.y;
    r2.x = -r2.z * r2.x + r2.y;
    r2.w = cmp(r2.x >= 0);
    r2.x = sqrt(r2.x);
    r5.xy = r2.xx * float2(1,-1) + -r1.zz;
    r1.y = r1.y + r1.y;
    r5.xy = r5.xy / r1.yy;
    r2.xw = r2.ww ? r5.xy : float2(-1,-1);
    r5.xy = cmp(r2.wx < float2(0,0));
    r3.w = r5.y ? r5.x : 0;
    r5.zw = max(float2(0,0), r2.xw);
    r4.w = r5.y ? r5.w : -1;
    r4.w = r5.x ? r5.z : r4.w;
    r5.x = (int)r5.y | (int)r5.x;
    r2.x = min(r2.w, r2.x);
    r2.x = max(0, r2.x);
    r2.x = r5.x ? r4.w : r2.x;
    r2.x = r3.w ? -1 : r2.x;
    r2.w = cb1[0].z * cb1[0].z;
    r1.x = -cb1[0].z * cb1[0].z + r1.x;
    r1.x = -r2.z * r1.x + r2.y;
    r2.y = cmp(r1.x >= 0);
    r1.x = sqrt(r1.x);
    r1.xz = r1.xx * float2(1,-1) + -r1.zz;
    r1.xy = r1.xz / r1.yy;
    r1.xy = r2.yy ? r1.xy : float2(-1,-1);
    r2.yz = cmp(r1.yx < float2(0,0));
    r1.z = r2.z ? r2.y : 0;
    r5.xy = max(float2(0,0), r1.xy);
    r3.w = r2.z ? r5.y : -1;
    r3.w = r2.y ? r5.x : r3.w;
    r2.y = (int)r2.z | (int)r2.y;
    r1.x = min(r1.y, r1.x);
    r1.x = max(0, r1.x);
    r1.x = r2.y ? r3.w : r1.x;
    r1.x = r1.z ? -1 : r1.x;
    r1.y = cmp(r2.x < 0);
    r1.z = cmp(r1.x < 0);
    r1.z = r1.z ? r1.y : 0;
    if (r1.z == 0) {
      r5.x = dot(cb0[174].xyz, cb0[161].xyz);
      r5.y = dot(cb0[175].xyz, cb0[161].xyz);
      r5.z = dot(cb0[176].xyz, cb0[161].xyz);
      r1.z = max(0, r1.x);
      r2.y = cmp(0 < r1.x);
      r1.x = min(r1.x, r2.x);
      r1.x = r2.y ? r1.x : 0;
      r1.x = r1.y ? r1.z : r1.x;
      r1.x = min(9000000, r1.x);
      r1.y = saturate(cb2[1].y * r1.x);
      r1.z = cb2[1].x + -cb2[0].w;
      r1.y = r1.y * r1.z + cb2[0].w;
      r1.z = floor(r1.y);
      r2.x = r1.x * r1.z;
      r2.x = r2.x / r1.y;
      r2.y = dot(r5.xyz, r3.xyz);
      r2.z = -cb1[5].x * cb1[5].x + 1;
      r3.w = cb1[5].x * cb1[5].x + 1;
      r4.w = dot(-r2.yy, cb1[5].xx);
      r3.w = r4.w + r3.w;
      r4.w = 12.566371 * r3.w;
      r3.w = sqrt(r3.w);
      r3.w = r4.w * r3.w;
      r2.z = r2.z / r3.w;
      r2.y = r2.y * r2.y + 1;
      r2.y = 0.0596831031 * r2.y;
      r3.w = cmp(0 != cb0[184].x);
      r3.w = r3.w ? cb0[184].y : cb0[135].y;
      r6.xyz = cb0[163].xyz * r3.www;
      r1.w = cb1[0].z * cb1[0].z + -r1.w;
      r1.w = max(0, r1.w);
      r1.w = sqrt(r1.w);
      r3.w = cb1[0].z + -cb1[0].y;
      r4.w = dot(r5.xyz, r5.xyz);
      r5.w = 4 * r4.w;
      r4.w = r4.w + r4.w;
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
      r6.w = 0;
      while (true) {
        r7.w = cmp(r6.w >= r1.y);
        if (r7.w != 0) break;
        r7.w = r6.w / r1.z;
        r6.w = 1 + r6.w;
        r8.w = r6.w / r1.z;
        r7.w = r7.w * r7.w;
        r8.w = r8.w * r8.w;
        r9.x = r7.w * r2.x;
        r9.y = cmp(1 < r8.w);
        r8.w = r8.w * r2.x;
        r8.w = r9.y ? r1.x : r8.w;
        r7.w = -r2.x * r7.w + r8.w;
        r8.w = r7.w * 0.300000012 + r9.x;
        r9.xyz = r8.www * r3.xyz + r4.xyz;
        r8.w = dot(r9.xyz, r9.xyz);
        r9.w = sqrt(r8.w);
        r10.x = -cb1[0].y + r9.w;
        r10.y = max(0, r10.x);
        r10.z = cb1[3].x * r10.y;
        r10.z = 1.44269502 * r10.z;
        r10.z = exp2(r10.z);
        r10.w = cb1[0].w * r10.y;
        r10.w = 1.44269502 * r10.w;
        r10.w = exp2(r10.w);
        r11.x = cmp(r10.y < cb1[7].x);
        r11.y = saturate(cb1[7].z * r10.y + cb1[7].y);
        r10.y = saturate(cb1[8].x * r10.y + cb1[7].w);
        r10.y = r11.x ? r11.y : r10.y;
        r11.xyz = cb1[2].xyz * r10.zzz;
        r12.xyz = cb1[1].xyz * r10.www;
        r13.xyz = r10.zzz * cb1[2].xyz + r12.xyz;
        r14.xyz = r10.zzz * cb1[4].xyz + r12.xyz;
        r10.yzw = r10.yyy * cb1[9].xyz + r14.xyz;
        r14.xyz = r10.yzw * r7.www;
        r14.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r14.xyz;
        r14.xyz = exp2(r14.xyz);
        r15.xyz = r9.xyz / r9.www;
        r7.w = dot(r5.xyz, r15.xyz);
        r11.w = -cb1[0].y * cb1[0].y + r8.w;
        r11.w = max(0, r11.w);
        r11.w = sqrt(r11.w);
        r12.w = r7.w * r7.w + -1;
        r8.w = r8.w * r12.w + r2.w;
        r8.w = sqrt(r8.w);
        r8.w = -r9.w * r7.w + r8.w;
        r8.w = max(0, r8.w);
        r9.w = cb1[0].z + -r9.w;
        r12.w = r11.w + r1.w;
        r8.w = -r9.w + r8.w;
        r9.w = r12.w + -r9.w;
        r16.x = r8.w / r9.w;
        r16.y = r11.w / r1.w;
        r16.xyz = t0.SampleLevel(s0_s, r16.xy, 0).xyz;
        r12.xyz = r12.xyz * r2.yyy;
        r11.xyz = r11.xyz * r2.zzz + r12.xyz;
        r12.x = saturate(r7.w * 0.5 + 0.5);
        r12.y = saturate(r10.x / r3.w);
        r12.xyz = t1.SampleLevel(s1_s, r12.xy, 0).xyz;
        r9.xyz = -r15.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.xyz;
        r7.w = dot(r9.xyz, r9.xyz);
        r8.w = dot(r5.xyz, r9.xyz);
        r8.w = r8.w + r8.w;
        r7.w = -cb1[0].y * cb1[0].y + r7.w;
        r7.w = r7.w * r5.w;
        r7.w = r8.w * r8.w + -r7.w;
        r9.x = cmp(r7.w >= 0);
        r7.w = sqrt(r7.w);
        r9.yz = r7.ww * float2(1,-1) + -r8.ww;
        r9.yz = r9.yz / r4.ww;
        r9.xy = r9.xx ? r9.yz : float2(-1,-1);
        r9.zw = cmp(r9.yx < float2(0,0));
        r7.w = r9.w ? r9.z : 0;
        r15.xy = max(float2(0,0), r9.xy);
        r8.w = r9.w ? r15.y : -1;
        r8.w = r9.z ? r15.x : r8.w;
        r9.z = (int)r9.w | (int)r9.z;
        r9.x = min(r9.y, r9.x);
        r9.x = max(0, r9.x);
        r8.w = r9.z ? r8.w : r9.x;
        r8.w = cmp(r8.w >= 0);
        r7.w = r7.w ? 0 : r8.w;
        r7.w = r7.w ? 0 : 1;
        r9.xyz = r7.www * r16.xyz;
        r12.xyz = r12.xyz * r13.xyz;
        r9.xyz = r9.xyz * r11.xyz + r12.xyz;
        r9.xyz = r9.xyz * r6.xyz;
        r9.xyz = -r9.xyz * r14.xyz + r9.xyz;
        r9.xyz = r9.xyz / r10.yzw;
        r7.xyz = r8.xyz * r9.xyz + r7.xyz;
        r8.xyz = r14.xyz * r8.xyz;
      }
    } else {
      r7.xyz = float3(0,0,0);
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.xyzw = (int4)r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r7.xyzx
  return;
}