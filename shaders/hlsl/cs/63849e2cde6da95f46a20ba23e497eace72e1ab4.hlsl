// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[27];
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
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.x = cmp(0 >= cb4[8].w);
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, l(0,0,0,1.000000)
    return;
  }
  r0.xyz = (uint3)vThreadID.xyz;
  r0.xyw = float3(0.5,0.5,0.5) + r0.xyz;
  r0.xy = cb4[2].zw * r0.xy;
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
  r1.w = cmp(0 != cb0[6].y);
  r0.xy = -cb4[2].zw * float2(0.5,0.5) + r0.xy;
  r4.xy = float2(-1,-1) + cb4[2].xy;
  r4.xy = cb4[2].xy / r4.xy;
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
  r0.x = cb4[3].y * r0.w;
  r0.x = r0.x * r0.x;
  r0.x = cb4[3].x * r0.x;
  r4.xyz = cb0[0].xxx * r1.xyz + r3.xyz;
  r4.w = cb4[3].z * r0.x;
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
  r3.xyz = cb0[0].xxx * r5.xyz + r3.xyz;
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
      r0.z = cb4[4].x * r0.z;
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
      r6.z = r2.x;
      r9.x = 0;
      while (true) {
        r6.w = cmp(r9.x >= r0.z);
        if (r6.w != 0) break;
        r9.xy = float2(1,0.300000012) + r9.xx;
        r6.w = r9.y * r1.w;
        r6.w = r6.w / r0.z;
        r9.yzw = r6.www * r0.xyw + r1.xyz;
        r6.w = dot(r9.yzw, r9.yzw);
        r8.w = sqrt(r6.w);
        r10.x = -cb2[0].y + r8.w;
        r10.y = max(0, r10.x);
        r10.z = cb2[3].x * r10.y;
        r10.z = 1.44269502 * r10.z;
        r10.z = exp2(r10.z);
        r10.w = cb2[0].w * r10.y;
        r10.w = 1.44269502 * r10.w;
        r10.w = exp2(r10.w);
        r11.x = cmp(r10.y < cb2[7].x);
        r11.y = saturate(cb2[7].z * r10.y + cb2[7].y);
        r10.y = saturate(cb2[8].x * r10.y + cb2[7].w);
        r10.y = r11.x ? r11.y : r10.y;
        r11.xyz = cb2[2].xyz * r10.zzz;
        r12.xyz = cb2[1].xyz * r10.www;
        r13.xyz = r10.zzz * cb2[2].xyz + r12.xyz;
        r14.xyz = r10.zzz * cb2[4].xyz + r12.xyz;
        r10.yzw = r10.yyy * cb2[9].xyz + r14.xyz;
        r14.xyz = r10.yzw * r6.zzz;
        r14.xyz = cb4[8].zzz * r14.xyz;
        r14.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r14.xyz;
        r14.xyz = exp2(r14.xyz);
        r15.xyz = r9.yzw / r8.www;
        r11.w = dot(cb1[161].xyz, r15.xyz);
        r12.w = -cb2[0].y * cb2[0].y + r6.w;
        r12.w = max(0, r12.w);
        r12.w = sqrt(r12.w);
        r13.w = r11.w * r11.w + -1;
        r13.w = r6.w * r13.w + r3.w;
        r13.w = sqrt(r13.w);
        r13.w = -r8.w * r11.w + r13.w;
        r13.w = max(0, r13.w);
        r14.w = cb2[0].z + -r8.w;
        r15.w = r12.w + r2.y;
        r13.w = -r14.w + r13.w;
        r15.w = r15.w + -r14.w;
        r16.y = r13.w / r15.w;
        r16.z = r12.w / r2.y;
        r17.xyz = t0.SampleLevel(s0_s, r16.yz, 0).xyz;
        r18.xyz = r12.xyz * r2.zzz;
        r18.xyz = r11.xyz * r3.zzz + r18.xyz;
        r12.w = dot(cb1[162].xyz, r15.xyz);
        r13.w = r12.w * r12.w + -1;
        r6.w = r6.w * r13.w + r3.w;
        r6.w = sqrt(r6.w);
        r6.w = -r8.w * r12.w + r6.w;
        r6.w = max(0, r6.w);
        r6.w = r6.w + -r14.w;
        r16.x = r6.w / r15.w;
        r16.xyz = t0.SampleLevel(s0_s, r16.xz, 0).xyz;
        r12.xyz = r12.xyz * r3.xxx;
        r11.xyz = r11.xyz * r2.www + r12.xyz;
        r12.x = saturate(r11.w * 0.5 + 0.5);
        r12.y = saturate(r10.x / r3.y);
        r12.xyz = t1.SampleLevel(s1_s, r12.xy, 0).xyz;
        r15.xyz = -r15.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.yzw;
        r6.w = dot(r15.xyz, r15.xyz);
        r8.w = dot(cb1[161].xyz, r15.xyz);
        r8.w = r8.w + r8.w;
        r6.w = -cb2[0].y * cb2[0].y + r6.w;
        r10.x = r6.w * r5.w;
        r10.x = r8.w * r8.w + -r10.x;
        r11.w = cmp(r10.x >= 0);
        r10.x = sqrt(r10.x);
        r19.xy = r10.xx * float2(1,-1) + -r8.ww;
        r19.xy = r19.xy / r4.ww;
        r19.xy = r11.ww ? r19.xy : float2(-1,-1);
        r19.zw = cmp(r19.yx < float2(0,0));
        r8.w = r19.w ? r19.z : 0;
        r20.xy = max(float2(0,0), r19.xy);
        r10.x = r19.w ? r20.y : -1;
        r10.x = r19.z ? r20.x : r10.x;
        r11.w = (int)r19.w | (int)r19.z;
        r12.w = min(r19.y, r19.x);
        r12.w = max(0, r12.w);
        r10.x = r11.w ? r10.x : r12.w;
        r10.x = cmp(r10.x >= 0);
        r8.w = r8.w ? 0 : r10.x;
        r9.yzw = r9.yzw * float3(100000,100000,100000) + cb1[173].xyz;
        r19.xyzw = cb3[20].xyzw * r9.zzzz;
        r19.xyzw = r9.yyyy * cb3[19].xyzw + r19.xyzw;
        r19.xyzw = r9.wwww * cb3[21].xyzw + r19.xyzw;
        r19.xyzw = cb3[22].xyzw + r19.xyzw;
        r19.xyz = r19.xyz / r19.www;
        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.xyw = t2.SampleLevel(s2_s, r19.xy, 0).xyz;
        r10.x = saturate(1 + -r19.z);
        r10.x = r10.x * cb3[7].x + -r19.x;
        r10.x = max(0, r10.x);
        r10.x = r10.x * r19.y;
        r10.x = 1000 * r10.x;
        r10.x = min(r19.w, r10.x);
        r10.x = -1.44269502 * r10.x;
        r10.x = exp2(r10.x);
        r10.x = min(1, r10.x);
        r10.x = -1 + r10.x;
        r10.x = saturate(cb0[0].y * r10.x + 1);
        r8.w = r8.w ? 0 : r10.x;
        r17.xyz = r8.www * r17.xyz;
        r12.xyz = r12.xyz * r13.xyz;
        r12.xyz = r17.xyz * r18.xyz + r12.xyz;
        r8.w = dot(cb1[162].xyz, r15.xyz);
        r8.w = r8.w + r8.w;
        r6.w = r6.y * r6.w;
        r6.w = r8.w * r8.w + -r6.w;
        r10.x = cmp(r6.w >= 0);
        r6.w = sqrt(r6.w);
        r13.xy = r6.ww * float2(1,-1) + -r8.ww;
        r13.xy = r13.xy / r6.xx;
        r13.xy = r10.xx ? r13.xy : float2(-1,-1);
        r13.zw = cmp(r13.yx < float2(0,0));
        r6.w = r13.w ? r13.z : 0;
        r15.xy = max(float2(0,0), r13.xy);
        r8.w = r13.w ? r15.y : -1;
        r8.w = r13.z ? r15.x : r8.w;
        r10.x = (int)r13.w | (int)r13.z;
        r11.w = min(r13.y, r13.x);
        r11.w = max(0, r11.w);
        r8.w = r10.x ? r8.w : r11.w;
        r8.w = cmp(r8.w >= 0);
        r6.w = r6.w ? 0 : r8.w;
        r13.xyzw = cb3[24].xyzw * r9.zzzz;
        r13.xyzw = r9.yyyy * cb3[23].xyzw + r13.xyzw;
        r13.xyzw = r9.wwww * cb3[25].xyzw + r13.xyzw;
        r13.xyzw = cb3[26].xyzw + r13.xyzw;
        r9.yzw = r13.xyz / r13.www;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xyz = t3.SampleLevel(s3_s, r9.yz, 0).xyz;
        r8.w = saturate(1 + -r9.w);
        r8.w = r8.w * cb3[8].x + -r13.x;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r13.y;
        r8.w = 1000 * r8.w;
        r8.w = min(r13.z, r8.w);
        r8.w = -1.44269502 * r8.w;
        r8.w = exp2(r8.w);
        r8.w = min(1, r8.w);
        r8.w = -1 + r8.w;
        r8.w = saturate(cb0[0].z * r8.w + 1);
        r6.w = r6.w ? 0 : r8.w;
        r9.yzw = r6.www * r5.xyz;
        r9.yzw = r9.yzw * r16.xyz;
        r9.yzw = r9.yzw * r11.xyz;
        r9.yzw = r4.xyz * r12.xyz + r9.yzw;
        r9.yzw = -r9.yzw * r14.xyz + r9.yzw;
        r9.yzw = r9.yzw / r10.yzw;
        r7.xyz = r8.xyz * r9.yzw + r7.xyz;
        r8.xyz = r14.xyz * r8.xyz;
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