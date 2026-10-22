// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[9];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[49];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[45];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[45];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[33];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.x = cmp(0 >= cb6[8].w);
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, l(0,0,0,1.000000)
    return;
  }
  r0.xyz = (uint3)vThreadID.xyz;
  r0.xyw = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xy = cb6[2].zw * r0.xy;
  r1.xy = r0.xy * cb1[130].xy + -cb1[129].xy;
  r1.xy = r1.xy * cb1[130].zw + float2(-0.5,-0.5);
  r1.xy = float2(2000000,-2000000) * r1.xy;
  r1.yzw = cb1[49].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
  r1.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r1.xyz;
  r1.xyz = cb1[51].xyz + r1.xyz;
  r1.xyz = -cb1[67].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = -cb1[173].xyz + cb1[172].xyz;
  r3.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r2.xyz;
  r1.w = cmp(0 != cb0[32].y);
  r0.xy = -cb6[2].zw * float2(0.5,0.5) + r0.xy;
  r4.xy = float2(-1,-1) + cb6[2].xy;
  r4.xy = cb6[2].xy / r4.xy;
  r0.xy = r4.xy * r0.xy;
  r4.z = r0.y * 2 + -1;
  r0.y = -r4.z * r4.z + 1;
  r0.y = sqrt(r0.y);
  r2.w = 6.28318548 * r0.x;
  r2.w = cos(r2.w);
  r3.w = -r2.w * r2.w + 1;
  r3.w = sqrt(r3.w);
  r0.x = cmp(0.5 < r0.x);
  r0.x = r0.x ? -1 : 1;
  r0.x = r3.w * r0.x;
  r4.x = r2.w * r0.y;
  r4.y = r0.x * r0.y;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r4.xyz * r0.xxx;
  r1.xyz = r1.www ? r4.xyz : r1.xyz;
  r0.x = cb6[3].y * r0.w;
  r0.x = r0.x * r0.x;
  r0.x = cb6[3].x * r0.x;
  r4.xyz = cb0[26].yyy * r1.xyz + r3.xyz;
  r4.w = cb6[3].z * r0.x;
  r0.xyw = r4.www * r1.xyz + r4.xyz;
  r1.w = dot(r0.xyw, r0.xyw);
  r2.w = sqrt(r1.w);
  r2.w = cmp(r2.w < cb2[0].y);
  r2.xyz = -r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + r0.xyw;
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r3.w);
  r2.xyz = r2.xyz / r3.www;
  r5.x = dot(r3.xyz, r3.xyz);
  r5.y = dot(r2.xyz, r2.xyz);
  r2.x = dot(r2.xyz, r3.xyz);
  r2.x = r2.x + r2.x;
  r2.y = cb2[0].y * cb2[0].y;
  r2.z = -cb2[0].y * cb2[0].y + r5.x;
  r2.z = r2.z * r5.y;
  r2.z = 4 * r2.z;
  r2.z = r2.x * r2.x + -r2.z;
  r5.z = cmp(r2.z >= 0);
  r2.z = sqrt(r2.z);
  r2.xz = r2.zz * float2(1,-1) + -r2.xx;
  r5.y = r5.y + r5.y;
  r2.xz = r2.xz / r5.yy;
  r2.xz = r5.zz ? r2.xz : float2(-1,-1);
  r5.yz = cmp(r2.zx < float2(0,0));
  r5.w = r5.z ? r5.y : 0;
  r6.xy = max(float2(0,0), r2.xz);
  r6.y = r5.z ? r6.y : -1;
  r6.x = r5.y ? r6.x : r6.y;
  r5.y = (int)r5.z | (int)r5.y;
  r2.x = min(r2.z, r2.x);
  r2.x = max(0, r2.x);
  r2.x = r5.y ? r6.x : r2.x;
  r2.x = r5.w ? -1 : r2.x;
  r2.z = cmp(0 < r2.x);
  r2.x = cmp(r2.x < r3.w);
  r2.x = r2.x ? r2.z : 0;
  r2.z = (int)r2.w | (int)r2.x;
  r3.w = rsqrt(r5.x);
  r5.xyz = r3.xyz * r3.www;
  r3.xyz = r5.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + r3.xyz;
  r1.w = rsqrt(r1.w);
  r5.xyz = r1.www * r0.xyw;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = r3.xyz * r1.www;
  r7.xyz = cb2[0].yyy * r5.xyz;
  r8.xyz = -r5.xyz * cb2[0].yyy + r3.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r8.xyz * r1.www;
  r1.w = dot(r8.xyz, r5.xyz);
  r1.w = cmp(r1.w < 9.99999975e-005);
  r1.w = r1.w ? r2.x : 0;
  r5.xyz = r6.xyz * cb2[0].yyy + r7.xyz;
  r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r5.xyz = r5.xyz * r2.xxx;
  r5.xyz = r5.xyz * cb2[0].yyy + -r3.xyz;
  r5.xyz = r5.xyz * float3(2,2,2) + r3.xyz;
  r0.xyw = r2.www ? r7.xyz : r0.xyw;
  r0.xyw = r1.www ? r5.xyz : r0.xyw;
  r5.xyz = r0.xyw + -r3.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r3.xyz = cb0[26].yyy * r5.xyz + r3.xyz;
  r0.xyw = -r3.xyz + r0.xyw;
  r0.x = dot(r0.xyw, r0.xyw);
  r3.w = sqrt(r0.x);
  r0.xyw = r2.zzz ? r5.xyz : r1.xyz;
  r1.xyzw = r2.zzzz ? r3.xyzw : r4.xyzw;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.z = sqrt(r2.x);
  r2.w = cmp(r2.z >= cb2[0].z);
  if (r2.w != 0) {
    r2.w = cmp(cb2[0].z < r2.z);
    if (r2.w != 0) {
      r2.w = dot(r0.xyw, r0.xyw);
      r3.x = dot(r0.xyw, r1.xyz);
      r3.x = r3.x + r3.x;
      r2.x = -cb2[0].z * cb2[0].z + r2.x;
      r2.x = r2.x * r2.w;
      r2.x = 4 * r2.x;
      r2.x = r3.x * r3.x + -r2.x;
      r3.y = cmp(r2.x >= 0);
      r2.x = sqrt(r2.x);
      r3.xz = r2.xx * float2(1,-1) + -r3.xx;
      r2.x = r2.w + r2.w;
      r2.xw = r3.xz / r2.xx;
      r2.xw = r3.yy ? r2.xw : float2(-1,-1);
      r3.xy = cmp(r2.wx < float2(0,0));
      r3.z = r3.y ? r3.x : 0;
      r4.xy = max(float2(0,0), r2.xw);
      r3.w = r3.y ? r4.y : -1;
      r3.w = r3.x ? r4.x : r3.w;
      r3.x = (int)r3.y | (int)r3.x;
      r2.x = min(r2.w, r2.x);
      r2.x = max(0, r2.x);
      r2.x = r3.x ? r3.w : r2.x;
      r2.x = r3.z ? -1 : r2.x;
      r2.w = cmp(r2.x >= 0);
      r3.x = ~(int)r2.w;
      r3.yzw = r1.xyz / r2.zzz;
      r4.xyz = r0.xyw * r2.xxx + r1.xyz;
      r3.yzw = r3.yzw * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r4.xyz;
      r2.xzw = r2.www ? r3.yzw : r1.xyz;
      r3.y = 0;
    } else {
      r2.xzw = r1.xyz;
      r3.x = 0;
    }
    r3.x = ~(int)r3.x;
    r3.x = (int)r3.y | (int)r3.x;
    if (r3.x == 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyzz, l(0,0,0,1.000000)
      return;
    }
    r3.xyz = -r2.xzw + r1.xyz;
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    r3.y = cmp(r1.w < r3.x);
    if (r3.y != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyzz, l(0,0,0,1.000000)
      return;
    }
    r3.x = -r3.x + r1.w;
    r1.w = max(0, r3.x);
    r1.xyz = r2.xzw;
  }
  r2.x = dot(r1.xyz, r1.xyz);
  r2.z = cmp(r2.y < r2.x);
  if (r2.z != 0) {
    r2.z = dot(r0.xyw, r0.xyw);
    r2.w = dot(r0.xyw, r1.xyz);
    r2.w = r2.w + r2.w;
    r3.x = -cb2[0].y * cb2[0].y + r2.x;
    r3.y = r2.w * r2.w;
    r3.z = 4 * r2.z;
    r3.x = -r3.z * r3.x + r3.y;
    r3.w = cmp(r3.x >= 0);
    r3.x = sqrt(r3.x);
    r4.xy = r3.xx * float2(1,-1) + -r2.ww;
    r2.z = r2.z + r2.z;
    r4.xy = r4.xy / r2.zz;
    r3.xw = r3.ww ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.wx < float2(0,0));
    r4.z = r4.y ? r4.x : 0;
    r5.xy = max(float2(0,0), r3.xw);
    r4.w = r4.y ? r5.y : -1;
    r4.w = r4.x ? r5.x : r4.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.x = min(r3.w, r3.x);
    r3.x = max(0, r3.x);
    r3.x = r4.x ? r4.w : r3.x;
    r3.x = r4.z ? -1 : r3.x;
    r3.w = cb2[0].z * cb2[0].z;
    r2.x = -cb2[0].z * cb2[0].z + r2.x;
    r2.x = -r3.z * r2.x + r3.y;
    r3.y = cmp(r2.x >= 0);
    r2.x = sqrt(r2.x);
    r2.xw = r2.xx * float2(1,-1) + -r2.ww;
    r2.xz = r2.xw / r2.zz;
    r2.xz = r3.yy ? r2.xz : float2(-1,-1);
    r3.yz = cmp(r2.zx < float2(0,0));
    r2.w = r3.z ? r3.y : 0;
    r4.xy = max(float2(0,0), r2.xz);
    r4.y = r3.z ? r4.y : -1;
    r4.x = r3.y ? r4.x : r4.y;
    r3.y = (int)r3.z | (int)r3.y;
    r2.x = min(r2.z, r2.x);
    r2.x = max(0, r2.x);
    r2.x = r3.y ? r4.x : r2.x;
    r2.x = r2.w ? -1 : r2.x;
    r2.z = cmp(r3.x < 0);
    r2.w = cmp(r2.x < 0);
    r2.w = r2.w ? r2.z : 0;
    if (r2.w == 0) {
      r0.z = 1 + r0.z;
      r0.z = cb6[4].x * r0.z;
      r0.z = max(1, r0.z);
      r2.w = max(0, r2.x);
      r3.y = cmp(0 < r2.x);
      r2.x = min(r2.x, r3.x);
      r2.x = r3.y ? r2.x : 0;
      r2.x = r2.z ? r2.w : r2.x;
      r1.w = min(r2.x, r1.w);
      r2.x = r1.w / r0.z;
      r2.z = dot(cb1[161].xyz, r0.xyw);
      r2.w = -cb2[5].x * cb2[5].x + 1;
      r3.x = cb2[5].x * cb2[5].x + 1;
      r3.y = cb2[5].x + cb2[5].x;
      r3.z = r3.y * -r2.z + r3.x;
      r4.x = 12.566371 * r3.z;
      r3.z = sqrt(r3.z);
      r3.z = r4.x * r3.z;
      r3.z = r2.w / r3.z;
      r2.z = r2.z * r2.z + 1;
      r2.z = 0.0596831031 * r2.z;
      r4.x = dot(cb1[162].xyz, r0.xyw);
      r3.x = r3.y * -r4.x + r3.x;
      r3.y = 12.566371 * r3.x;
      r3.x = sqrt(r3.x);
      r3.x = r3.y * r3.x;
      r2.w = r2.w / r3.x;
      r3.x = r4.x * r4.x + 1;
      r3.x = 0.0596831031 * r3.x;
      r3.y = cmp(0 != cb1[184].x);
      r3.y = r3.y ? cb1[184].y : cb1[135].y;
      r4.xyz = cb1[163].xyz * r3.yyy;
      r5.xyz = cb1[164].xyz * r3.yyy;
      r2.y = cb2[0].z * cb2[0].z + -r2.y;
      r2.y = max(0, r2.y);
      r2.y = sqrt(r2.y);
      r3.y = cb2[0].z + -cb2[0].y;
      r4.w = dot(cb1[161].xyz, cb1[161].xyz);
      r5.w = 4 * r4.w;
      r4.w = r4.w + r4.w;
      r6.x = dot(cb1[162].xyz, cb1[162].xyz);
      r6.y = 4 * r6.x;
      r6.x = r6.x + r6.x;
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
      r6.z = cb3[38].x;
      r6.w = cb4[38].x;
      r8.w = r2.x;
      r9.x = 0;
      while (true) {
        r9.z = cmp(r9.x >= r0.z);
        if (r9.z != 0) break;
        r9.xy = float2(1,0.300000012) + r9.xx;
        r9.y = r9.y * r1.w;
        r9.y = r9.y / r0.z;
        r9.yzw = r9.yyy * r0.xyw + r1.xyz;
        r10.x = dot(r9.yzw, r9.yzw);
        r10.y = sqrt(r10.x);
        r10.z = -cb2[0].y + r10.y;
        r10.w = max(0, r10.z);
        r11.x = cb2[3].x * r10.w;
        r11.x = 1.44269502 * r11.x;
        r11.x = exp2(r11.x);
        r11.y = cb2[0].w * r10.w;
        r11.y = 1.44269502 * r11.y;
        r11.y = exp2(r11.y);
        r11.z = cmp(r10.w < cb2[7].x);
        r11.w = saturate(cb2[7].z * r10.w + cb2[7].y);
        r10.w = saturate(cb2[8].x * r10.w + cb2[7].w);
        r10.w = r11.z ? r11.w : r10.w;
        r12.xyz = cb2[2].xyz * r11.xxx;
        r11.yzw = cb2[1].xyz * r11.yyy;
        r13.xyz = r11.xxx * cb2[2].xyz + r11.yzw;
        r14.xyz = r11.xxx * cb2[4].xyz + r11.yzw;
        r14.xyz = r10.www * cb2[9].xyz + r14.xyz;
        r15.xyz = r14.xyz * r8.www;
        r15.xyz = cb6[8].zzz * r15.xyz;
        r15.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r15.xyz;
        r15.xyz = exp2(r15.xyz);
        r16.xyz = r9.yzw / r10.yyy;
        r10.w = dot(cb1[161].xyz, r16.xyz);
        r11.x = -cb2[0].y * cb2[0].y + r10.x;
        r11.x = max(0, r11.x);
        r11.x = sqrt(r11.x);
        r12.w = r10.w * r10.w + -1;
        r12.w = r10.x * r12.w + r3.w;
        r12.w = sqrt(r12.w);
        r12.w = -r10.y * r10.w + r12.w;
        r12.w = max(0, r12.w);
        r13.w = cb2[0].z + -r10.y;
        r14.w = r11.x + r2.y;
        r12.w = -r13.w + r12.w;
        r14.w = r14.w + -r13.w;
        r17.y = r12.w / r14.w;
        r17.z = r11.x / r2.y;
        r18.xyz = t4.SampleLevel(s4_s, r17.yz, 0).xyz;
        r19.xyz = r11.yzw * r2.zzz;
        r19.xyz = r12.xyz * r3.zzz + r19.xyz;
        r11.x = dot(cb1[162].xyz, r16.xyz);
        r12.w = r11.x * r11.x + -1;
        r10.x = r10.x * r12.w + r3.w;
        r10.x = sqrt(r10.x);
        r10.x = -r10.y * r11.x + r10.x;
        r10.x = max(0, r10.x);
        r10.x = r10.x + -r13.w;
        r17.x = r10.x / r14.w;
        r17.xyz = t4.SampleLevel(s4_s, r17.xz, 0).xyz;
        r11.xyz = r11.yzw * r3.xxx;
        r11.xyz = r12.xyz * r2.www + r11.xyz;
        r10.x = saturate(r10.w * 0.5 + 0.5);
        r10.y = saturate(r10.z / r3.y);
        r10.xyz = t5.SampleLevel(s5_s, r10.xy, 0).xyz;
        r12.xyz = -r16.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.yzw;
        r10.w = dot(r12.xyz, r12.xyz);
        r11.w = dot(cb1[161].xyz, r12.xyz);
        r11.w = r11.w + r11.w;
        r10.w = -cb2[0].y * cb2[0].y + r10.w;
        r12.w = r10.w * r5.w;
        r12.w = r11.w * r11.w + -r12.w;
        r13.w = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r16.xy = r12.ww * float2(1,-1) + -r11.ww;
        r16.xy = r16.xy / r4.ww;
        r16.xy = r13.ww ? r16.xy : float2(-1,-1);
        r16.zw = cmp(r16.yx < float2(0,0));
        r11.w = r16.w ? r16.z : 0;
        r20.xy = max(float2(0,0), r16.xy);
        r12.w = r16.w ? r20.y : -1;
        r12.w = r16.z ? r20.x : r12.w;
        r13.w = (int)r16.w | (int)r16.z;
        r14.w = min(r16.y, r16.x);
        r14.w = max(0, r14.w);
        r12.w = r13.w ? r12.w : r14.w;
        r12.w = cmp(r12.w >= 0);
        r11.w = r11.w ? 0 : r12.w;
        r9.yzw = r9.yzw * float3(100000,100000,100000) + cb1[173].xyz;
        if (r6.w != 0) {
          r16.xyzw = cb4[41].xyzw * r9.zzzz;
          r16.xyzw = r9.yyyy * cb4[40].xyzw + r16.xyzw;
          r16.xyzw = r9.wwww * cb4[42].xyzw + r16.xyzw;
          r16.xyzw = cb4[43].xyzw + r16.xyzw;
          r20.xyzw = r16.xyxy / r16.wwww;
          r16.xy = cmp(r20.zw >= float2(0,0));
          r21.xy = cmp(float2(1,1) >= r20.zw);
          r16.xy = r16.xy ? r21.xy : 0;
          r12.w = r16.y ? r16.x : 0;
          if (r12.w != 0) {
            r20.xyzw = r20.xyzw * cb4[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r16.xy = frac(r20.zw);
            r20.xyzw = floor(r20.xyzw);
            r21.xyzw = float4(0.5,1.5,0.5,0.5) + r20.zwzw;
            r21.xyzw = cb4[44].zwzw * r21.xyzw;
            r22.x = t3.SampleLevel(s3_s, r21.xy, 0).x;
            r20.xyzw = float4(1.5,1.5,1.5,0.5) + r20.xyzw;
            r20.xyzw = cb4[44].zwzw * r20.xyzw;
            r22.y = t3.SampleLevel(s3_s, r20.xy, 0).x;
            r22.z = t3.SampleLevel(s3_s, r20.zw, 0).x;
            r22.w = t3.SampleLevel(s3_s, r21.zw, 0).x;
            r12.w = r16.z * 40 + -1;
            r20.xyzw = saturate(r22.xyzw * float4(40,40,40,40) + -r12.wwww);
            r21.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r22.xyzw);
            r21.xyzw = r21.xyzw ? float4(1,1,1,1) : 0;
            r20.xyzw = r21.xyzw + r20.xyzw;
            r20.xyzw = min(float4(1,1,1,1), r20.xyzw);
            r16.zw = r20.zy + -r20.wx;
            r16.xz = r16.xx * r16.zw + r20.wx;
            r12.w = r16.z + -r16.x;
            r12.w = r16.y * r12.w + r16.x;
          } else {
            r12.w = 1;
          }
        } else {
          r12.w = 1;
        }
        r16.xyzw = cb4[2].xyzw * r9.zzzz;
        r16.xyzw = r9.yyyy * cb4[1].xyzw + r16.xyzw;
        r16.xyzw = r9.wwww * cb4[3].xyzw + r16.xyzw;
        r16.xyzw = cb4[4].xyzw + r16.xyzw;
        r16.xy = r16.xy / r16.ww;
        r20.xy = cmp(r16.xy >= cb4[5].xy);
        r20.zw = cmp(cb4[5].zw >= r16.xy);
        r20.xy = r20.zw ? r20.xy : 0;
        r13.w = r20.y ? r20.x : 0;
        if (r13.w != 0) {
          r13.w = t2.SampleLevel(s2_s, r16.xy, 0).x;
          r14.w = -cb4[6].x + r13.w;
          r14.w = cmp(r16.z < r14.w);
          r14.w = r14.w ? 1.000000 : 0;
          r13.w = cmp(r13.w == 1.000000);
          r13.w = r13.w ? 1.000000 : 0;
          r13.w = r14.w + r13.w;
          r13.w = min(1, r13.w);
        } else {
          r13.w = 1;
        }
        r16.xyz = -cb1[67].xyz + r9.yzw;
        r14.w = dot(r16.xyz, cb1[60].xyz);
        r15.w = saturate(r14.w * cb4[7].z + cb4[7].w);
        r15.w = r15.w * r15.w;
        r16.x = 1 + -r13.w;
        r13.w = r15.w * r16.x + r13.w;
        r12.w = min(r13.w, r12.w);
        r16.xyzw = cb5[46].xyzw * r9.zzzz;
        r16.xyzw = r9.yyyy * cb5[45].xyzw + r16.xyzw;
        r16.xyzw = r9.wwww * cb5[47].xyzw + r16.xyzw;
        r16.xyzw = cb5[48].xyzw + r16.xyzw;
        r16.xyz = r16.xyz / r16.www;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.xyw = t8.SampleLevel(s8_s, r16.xy, 0).xyz;
        r13.w = saturate(1 + -r16.z);
        r13.w = r13.w * cb5[43].x + -r16.x;
        r13.w = max(0, r13.w);
        r13.w = r13.w * r16.y;
        r13.w = 1000 * r13.w;
        r13.w = min(r16.w, r13.w);
        r13.w = -1.44269502 * r13.w;
        r13.w = exp2(r13.w);
        r13.w = min(1, r13.w);
        r10.xyz = r13.www * r10.xyz;
        r16.xyzw = cb5[20].xyzw * r9.zzzz;
        r16.xyzw = r9.yyyy * cb5[19].xyzw + r16.xyzw;
        r16.xyzw = r9.wwww * cb5[21].xyzw + r16.xyzw;
        r16.xyzw = cb5[22].xyzw + r16.xyzw;
        r16.xyz = r16.xyz / r16.www;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.xyw = t6.SampleLevel(s6_s, r16.xy, 0).xyz;
        r13.w = saturate(1 + -r16.z);
        r13.w = r13.w * cb5[7].x + -r16.x;
        r13.w = max(0, r13.w);
        r13.w = r13.w * r16.y;
        r13.w = 1000 * r13.w;
        r13.w = min(r16.w, r13.w);
        r13.w = -1.44269502 * r13.w;
        r13.w = exp2(r13.w);
        r13.w = min(1, r13.w);
        r13.w = -1 + r13.w;
        r13.w = saturate(cb0[26].z * r13.w + 1);
        r12.w = r13.w * r12.w;
        r11.w = r11.w ? 0 : r12.w;
        r16.xyz = r11.www * r18.xyz;
        r10.xyz = r10.xyz * r13.xyz;
        r10.xyz = r16.xyz * r19.xyz + r10.xyz;
        r11.w = dot(cb1[162].xyz, r12.xyz);
        r11.w = r11.w + r11.w;
        r10.w = r10.w * r6.y;
        r10.w = r11.w * r11.w + -r10.w;
        r12.x = cmp(r10.w >= 0);
        r10.w = sqrt(r10.w);
        r12.yz = r10.ww * float2(1,-1) + -r11.ww;
        r12.yz = r12.yz / r6.xx;
        r12.xy = r12.xx ? r12.yz : float2(-1,-1);
        r12.zw = cmp(r12.yx < float2(0,0));
        r10.w = r12.w ? r12.z : 0;
        r13.xy = max(float2(0,0), r12.xy);
        r11.w = r12.w ? r13.y : -1;
        r11.w = r12.z ? r13.x : r11.w;
        r12.z = (int)r12.w | (int)r12.z;
        r12.x = min(r12.y, r12.x);
        r12.x = max(0, r12.x);
        r11.w = r12.z ? r11.w : r12.x;
        r11.w = cmp(r11.w >= 0);
        r10.w = r10.w ? 0 : r11.w;
        if (r6.z != 0) {
          r12.xyzw = cb3[41].xyzw * r9.zzzz;
          r12.xyzw = r9.yyyy * cb3[40].xyzw + r12.xyzw;
          r12.xyzw = r9.wwww * cb3[42].xyzw + r12.xyzw;
          r12.xyzw = cb3[43].xyzw + r12.xyzw;
          r13.xyzw = r12.xyxy / r12.wwww;
          r12.xy = cmp(r13.zw >= float2(0,0));
          r16.xy = cmp(float2(1,1) >= r13.zw);
          r12.xy = r12.xy ? r16.xy : 0;
          r11.w = r12.y ? r12.x : 0;
          if (r11.w != 0) {
            r13.xyzw = r13.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r12.xy = frac(r13.zw);
            r13.xyzw = floor(r13.xyzw);
            r16.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
            r16.xyzw = cb3[44].zwzw * r16.xyzw;
            r18.x = t1.SampleLevel(s1_s, r16.xy, 0).x;
            r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
            r13.xyzw = cb3[44].zwzw * r13.xyzw;
            r18.y = t1.SampleLevel(s1_s, r13.xy, 0).x;
            r18.z = t1.SampleLevel(s1_s, r13.zw, 0).x;
            r18.w = t1.SampleLevel(s1_s, r16.zw, 0).x;
            r11.w = r12.z * 40 + -1;
            r13.xyzw = saturate(r18.xyzw * float4(40,40,40,40) + -r11.wwww);
            r16.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r18.xyzw);
            r16.xyzw = r16.xyzw ? float4(1,1,1,1) : 0;
            r13.xyzw = r16.xyzw + r13.xyzw;
            r13.xyzw = min(float4(1,1,1,1), r13.xyzw);
            r12.zw = r13.zy + -r13.wx;
            r12.xz = r12.xx * r12.zw + r13.wx;
            r11.w = r12.z + -r12.x;
            r11.w = r12.y * r11.w + r12.x;
          } else {
            r11.w = 1;
          }
        } else {
          r11.w = 1;
        }
        r12.xyzw = cb3[2].xyzw * r9.zzzz;
        r12.xyzw = r9.yyyy * cb3[1].xyzw + r12.xyzw;
        r12.xyzw = r9.wwww * cb3[3].xyzw + r12.xyzw;
        r12.xyzw = cb3[4].xyzw + r12.xyzw;
        r12.xy = r12.xy / r12.ww;
        r13.xy = cmp(r12.xy >= cb3[5].xy);
        r13.zw = cmp(cb3[5].zw >= r12.xy);
        r13.xy = r13.zw ? r13.xy : 0;
        r12.w = r13.y ? r13.x : 0;
        if (r12.w != 0) {
          r12.x = t0.SampleLevel(s0_s, r12.xy, 0).x;
          r12.y = -cb3[6].x + r12.x;
          r12.y = cmp(r12.z < r12.y);
          r12.x = cmp(r12.x == 1.000000);
          r12.xy = r12.xy ? float2(1,1) : 0;
          r12.x = r12.y + r12.x;
          r12.x = min(1, r12.x);
        } else {
          r12.x = 1;
        }
        r12.y = saturate(r14.w * cb3[7].z + cb3[7].w);
        r12.y = r12.y * r12.y;
        r12.z = 1 + -r12.x;
        r12.x = r12.y * r12.z + r12.x;
        r11.w = min(r12.x, r11.w);
        r12.xyzw = cb5[24].xyzw * r9.zzzz;
        r12.xyzw = r9.yyyy * cb5[23].xyzw + r12.xyzw;
        r12.xyzw = r9.wwww * cb5[25].xyzw + r12.xyzw;
        r12.xyzw = cb5[26].xyzw + r12.xyzw;
        r9.yzw = r12.xyz / r12.www;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.xyz = t7.SampleLevel(s7_s, r9.yz, 0).xyz;
        r9.y = saturate(1 + -r9.w);
        r9.y = r9.y * cb5[8].x + -r12.x;
        r9.y = max(0, r9.y);
        r9.y = r9.y * r12.y;
        r9.y = 1000 * r9.y;
        r9.y = min(r12.z, r9.y);
        r9.y = -1.44269502 * r9.y;
        r9.y = exp2(r9.y);
        r9.y = min(1, r9.y);
        r9.y = -1 + r9.y;
        r9.y = saturate(cb0[26].w * r9.y + 1);
        r9.y = r11.w * r9.y;
        r9.y = r10.w ? 0 : r9.y;
        r9.yzw = r9.yyy * r5.xyz;
        r9.yzw = r9.yzw * r17.xyz;
        r9.yzw = r9.yzw * r11.xyz;
        r9.yzw = r4.xyz * r10.xyz + r9.yzw;
        r9.yzw = -r9.yzw * r15.xyz + r9.yzw;
        r9.yzw = r9.yzw / r14.xyz;
        r7.xyz = r8.xyz * r9.yzw + r7.xyz;
        r8.xyz = r15.xyz * r8.xyz;
      }
    } else {
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
    }
  } else {
    r7.xyz = float3(0,0,0);
    r8.xyz = float3(1,1,1);
  }
  r7.w = dot(r8.xyz, float3(0.333333343,0.333333343,0.333333343));
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, r7.xyzw
  return;
}