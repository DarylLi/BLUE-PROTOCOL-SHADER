// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[49];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
      r3.y = dot(-r2.zz, cb2[5].xx);
      r3.x = r3.x + r3.y;
      r3.y = 12.566371 * r3.x;
      r3.x = sqrt(r3.x);
      r3.x = r3.y * r3.x;
      r2.w = r2.w / r3.x;
      r2.z = r2.z * r2.z + 1;
      r2.z = 0.0596831031 * r2.z;
      r3.x = cmp(0 != cb1[184].x);
      r3.x = r3.x ? cb1[184].y : cb1[135].y;
      r3.xyz = cb1[163].xyz * r3.xxx;
      r2.y = cb2[0].z * cb2[0].z + -r2.y;
      r2.y = max(0, r2.y);
      r2.y = sqrt(r2.y);
      r4.x = cb2[0].z + -cb2[0].y;
      r4.y = dot(cb1[161].xyz, cb1[161].xyz);
      r4.z = 4 * r4.y;
      r4.y = r4.y + r4.y;
      r5.xyz = float3(0,0,0);
      r6.xyz = float3(1,1,1);
      r4.w = r2.x;
      r7.x = 0;
      while (true) {
        r6.w = cmp(r7.x >= r0.z);
        if (r6.w != 0) break;
        r7.xy = float2(1,0.300000012) + r7.xx;
        r6.w = r7.y * r1.w;
        r6.w = r6.w / r0.z;
        r7.yzw = r6.www * r0.xyw + r1.xyz;
        r6.w = dot(r7.yzw, r7.yzw);
        r8.x = sqrt(r6.w);
        r8.y = -cb2[0].y + r8.x;
        r8.z = max(0, r8.y);
        r8.w = cb2[3].x * r8.z;
        r8.w = 1.44269502 * r8.w;
        r8.w = exp2(r8.w);
        r9.x = cb2[0].w * r8.z;
        r9.x = 1.44269502 * r9.x;
        r9.x = exp2(r9.x);
        r9.y = cmp(r8.z < cb2[7].x);
        r9.z = saturate(cb2[7].z * r8.z + cb2[7].y);
        r8.z = saturate(cb2[8].x * r8.z + cb2[7].w);
        r8.z = r9.y ? r9.z : r8.z;
        r9.yzw = cb2[2].xyz * r8.www;
        r10.xyz = cb2[1].xyz * r9.xxx;
        r11.xyz = r8.www * cb2[2].xyz + r10.xyz;
        r12.xyz = r8.www * cb2[4].xyz + r10.xyz;
        r12.xyz = r8.zzz * cb2[9].xyz + r12.xyz;
        r13.xyz = r12.xyz * r4.www;
        r13.xyz = cb4[8].zzz * r13.xyz;
        r13.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r13.xyz;
        r13.xyz = exp2(r13.xyz);
        r14.xyz = r7.yzw / r8.xxx;
        r8.z = dot(cb1[161].xyz, r14.xyz);
        r8.w = -cb2[0].y * cb2[0].y + r6.w;
        r8.w = max(0, r8.w);
        r8.w = sqrt(r8.w);
        r9.x = r8.z * r8.z + -1;
        r6.w = r6.w * r9.x + r3.w;
        r6.w = sqrt(r6.w);
        r6.w = -r8.x * r8.z + r6.w;
        r6.w = max(0, r6.w);
        r8.x = cb2[0].z + -r8.x;
        r9.x = r8.w + r2.y;
        r6.w = -r8.x + r6.w;
        r8.x = r9.x + -r8.x;
        r15.x = r6.w / r8.x;
        r15.y = r8.w / r2.y;
        r15.xyz = t0.SampleLevel(s0_s, r15.xy, 0).xyz;
        r10.xyz = r10.xyz * r2.zzz;
        r9.xyz = r9.yzw * r2.www + r10.xyz;
        r10.x = saturate(r8.z * 0.5 + 0.5);
        r10.y = saturate(r8.y / r4.x);
        r8.xyz = t1.SampleLevel(s1_s, r10.xy, 0).xyz;
        r10.xyz = -r14.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r7.yzw;
        r6.w = dot(r10.xyz, r10.xyz);
        r8.w = dot(cb1[161].xyz, r10.xyz);
        r8.w = r8.w + r8.w;
        r6.w = -cb2[0].y * cb2[0].y + r6.w;
        r6.w = r6.w * r4.z;
        r6.w = r8.w * r8.w + -r6.w;
        r9.w = cmp(r6.w >= 0);
        r6.w = sqrt(r6.w);
        r10.xy = r6.ww * float2(1,-1) + -r8.ww;
        r10.xy = r10.xy / r4.yy;
        r10.xy = r9.ww ? r10.xy : float2(-1,-1);
        r10.zw = cmp(r10.yx < float2(0,0));
        r6.w = r10.w ? r10.z : 0;
        r14.xy = max(float2(0,0), r10.xy);
        r8.w = r10.w ? r14.y : -1;
        r8.w = r10.z ? r14.x : r8.w;
        r9.w = (int)r10.w | (int)r10.z;
        r10.x = min(r10.y, r10.x);
        r10.x = max(0, r10.x);
        r8.w = r9.w ? r8.w : r10.x;
        r8.w = cmp(r8.w >= 0);
        r6.w = r6.w ? 0 : r8.w;
        r6.w = r6.w ? 0 : 1;
        r7.yzw = r7.yzw * float3(100000,100000,100000) + cb1[173].xyz;
        r10.xyzw = cb3[46].xyzw * r7.zzzz;
        r10.xyzw = r7.yyyy * cb3[45].xyzw + r10.xyzw;
        r10.xyzw = r7.wwww * cb3[47].xyzw + r10.xyzw;
        r10.xyzw = cb3[48].xyzw + r10.xyzw;
        r7.yzw = r10.xyz / r10.www;
        r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xyz = t2.SampleLevel(s2_s, r7.yz, 0).xyz;
        r7.y = saturate(1 + -r7.w);
        r7.y = r7.y * cb3[43].x + -r10.x;
        r7.y = max(0, r7.y);
        r7.y = r7.y * r10.y;
        r7.y = 1000 * r7.y;
        r7.y = min(r10.z, r7.y);
        r7.y = -1.44269502 * r7.y;
        r7.y = exp2(r7.y);
        r7.y = min(1, r7.y);
        r7.yzw = r8.xyz * r7.yyy;
        r8.xyz = r6.www * r15.xyz;
        r7.yzw = r7.yzw * r11.xyz;
        r7.yzw = r8.xyz * r9.xyz + r7.yzw;
        r7.yzw = r7.yzw * r3.xyz;
        r7.yzw = -r7.yzw * r13.xyz + r7.yzw;
        r7.yzw = r7.yzw / r12.xyz;
        r5.xyz = r6.xyz * r7.yzw + r5.xyz;
        r6.xyz = r13.xyz * r6.xyz;
      }
    } else {
      r5.xyz = float3(0,0,0);
      r6.xyz = float3(1,1,1);
    }
  } else {
    r5.xyz = float3(0,0,0);
    r6.xyz = float3(1,1,1);
  }
  r5.w = dot(r6.xyz, float3(0.333333343,0.333333343,0.333333343));
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyzz, r5.xyzw
  return;
}