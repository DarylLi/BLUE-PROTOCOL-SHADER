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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
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
      r6.x = dot(cb0[174].xyz, cb0[162].xyz);
      r6.y = dot(cb0[175].xyz, cb0[162].xyz);
      r6.z = dot(cb0[176].xyz, cb0[162].xyz);
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
      r4.w = cb1[5].x + cb1[5].x;
      r5.w = r4.w * -r2.y + r3.w;
      r6.w = 12.566371 * r5.w;
      r5.w = sqrt(r5.w);
      r5.w = r6.w * r5.w;
      r5.w = r2.z / r5.w;
      r2.y = r2.y * r2.y + 1;
      r2.y = 0.0596831031 * r2.y;
      r6.w = dot(r6.xyz, r3.xyz);
      r3.w = r4.w * -r6.w + r3.w;
      r4.w = 12.566371 * r3.w;
      r3.w = sqrt(r3.w);
      r3.w = r4.w * r3.w;
      r2.z = r2.z / r3.w;
      r3.w = r6.w * r6.w + 1;
      r3.w = 0.0596831031 * r3.w;
      r4.w = cmp(0 != cb0[184].x);
      r4.w = r4.w ? cb0[184].y : cb0[135].y;
      r7.xyz = cb0[163].xyz * r4.www;
      r8.xyz = cb0[164].xyz * r4.www;
      r1.w = cb1[0].z * cb1[0].z + -r1.w;
      r1.w = max(0, r1.w);
      r1.w = sqrt(r1.w);
      r4.w = cb1[0].z + -cb1[0].y;
      r6.w = dot(r5.xyz, r5.xyz);
      r7.w = 4 * r6.w;
      r6.w = r6.w + r6.w;
      r8.w = dot(r6.xyz, r6.xyz);
      r9.x = 4 * r8.w;
      r8.w = r8.w + r8.w;
      r9.yzw = float3(0,0,0);
      r10.xyzw = float4(1,1,1,0);
      while (true) {
        r11.x = cmp(r10.w >= r1.y);
        if (r11.x != 0) break;
        r11.x = r10.w / r1.z;
        r10.w = 1 + r10.w;
        r11.y = r10.w / r1.z;
        r11.xy = r11.xy * r11.xy;
        r11.w = cmp(1 < r11.y);
        r11.yz = r11.yx * r2.xx;
        r11.y = r11.w ? r1.x : r11.y;
        r11.x = -r2.x * r11.x + r11.y;
        r11.y = r11.x * 0.300000012 + r11.z;
        r11.yzw = r11.yyy * r3.xyz + r4.xyz;
        r12.x = dot(r11.yzw, r11.yzw);
        r12.y = sqrt(r12.x);
        r12.z = -cb1[0].y + r12.y;
        r12.w = max(0, r12.z);
        r13.x = cb1[3].x * r12.w;
        r13.x = 1.44269502 * r13.x;
        r13.x = exp2(r13.x);
        r13.y = cb1[0].w * r12.w;
        r13.y = 1.44269502 * r13.y;
        r13.y = exp2(r13.y);
        r13.z = cmp(r12.w < cb1[7].x);
        r13.w = saturate(cb1[7].z * r12.w + cb1[7].y);
        r12.w = saturate(cb1[8].x * r12.w + cb1[7].w);
        r12.w = r13.z ? r13.w : r12.w;
        r14.xyz = cb1[2].xyz * r13.xxx;
        r13.yzw = cb1[1].xyz * r13.yyy;
        r15.xyz = r13.xxx * cb1[2].xyz + r13.yzw;
        r16.xyz = r13.xxx * cb1[4].xyz + r13.yzw;
        r16.xyz = r12.www * cb1[9].xyz + r16.xyz;
        r17.xyz = r16.xyz * r11.xxx;
        r17.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r17.xyz;
        r17.xyz = exp2(r17.xyz);
        r18.xyz = r11.yzw / r12.yyy;
        r11.x = dot(r5.xyz, r18.xyz);
        r12.w = -cb1[0].y * cb1[0].y + r12.x;
        r12.w = max(0, r12.w);
        r12.w = sqrt(r12.w);
        r13.x = r11.x * r11.x + -1;
        r13.x = r12.x * r13.x + r2.w;
        r13.x = sqrt(r13.x);
        r13.x = -r12.y * r11.x + r13.x;
        r13.x = max(0, r13.x);
        r14.w = cb1[0].z + -r12.y;
        r15.w = r12.w + r1.w;
        r13.x = -r14.w + r13.x;
        r15.w = r15.w + -r14.w;
        r19.y = r13.x / r15.w;
        r19.z = r12.w / r1.w;
        r20.xyz = t0.SampleLevel(s0_s, r19.yz, 0).xyz;
        r21.xyz = r13.yzw * r2.yyy;
        r21.xyz = r14.xyz * r5.www + r21.xyz;
        r12.w = dot(r6.xyz, r18.xyz);
        r13.x = r12.w * r12.w + -1;
        r12.x = r12.x * r13.x + r2.w;
        r12.x = sqrt(r12.x);
        r12.x = -r12.y * r12.w + r12.x;
        r12.x = max(0, r12.x);
        r12.x = r12.x + -r14.w;
        r19.x = r12.x / r15.w;
        r12.xyw = t0.SampleLevel(s0_s, r19.xz, 0).xyz;
        r13.xyz = r13.yzw * r3.www;
        r13.xyz = r14.xyz * r2.zzz + r13.xyz;
        r14.x = saturate(r11.x * 0.5 + 0.5);
        r14.y = saturate(r12.z / r4.w);
        r14.xyz = t1.SampleLevel(s1_s, r14.xy, 0).xyz;
        r11.xyz = -r18.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.yzw;
        r11.w = dot(r11.xyz, r11.xyz);
        r12.z = dot(r5.xyz, r11.xyz);
        r12.z = r12.z + r12.z;
        r11.w = -cb1[0].y * cb1[0].y + r11.w;
        r13.w = r11.w * r7.w;
        r13.w = r12.z * r12.z + -r13.w;
        r14.w = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r18.xy = r13.ww * float2(1,-1) + -r12.zz;
        r18.xy = r18.xy / r6.ww;
        r18.xy = r14.ww ? r18.xy : float2(-1,-1);
        r18.zw = cmp(r18.yx < float2(0,0));
        r12.z = r18.w ? r18.z : 0;
        r19.xy = max(float2(0,0), r18.xy);
        r13.w = r18.w ? r19.y : -1;
        r13.w = r18.z ? r19.x : r13.w;
        r14.w = (int)r18.w | (int)r18.z;
        r15.w = min(r18.y, r18.x);
        r15.w = max(0, r15.w);
        r13.w = r14.w ? r13.w : r15.w;
        r13.w = cmp(r13.w >= 0);
        r12.z = r12.z ? 0 : r13.w;
        r12.z = r12.z ? 0 : 1;
        r18.xyz = r12.zzz * r20.xyz;
        r14.xyz = r14.xyz * r15.xyz;
        r14.xyz = r18.xyz * r21.xyz + r14.xyz;
        r11.x = dot(r6.xyz, r11.xyz);
        r11.x = r11.x + r11.x;
        r11.y = r11.w * r9.x;
        r11.y = r11.x * r11.x + -r11.y;
        r11.z = cmp(r11.y >= 0);
        r11.y = sqrt(r11.y);
        r11.xy = r11.yy * float2(1,-1) + -r11.xx;
        r11.xy = r11.xy / r8.ww;
        r11.xy = r11.zz ? r11.xy : float2(-1,-1);
        r11.zw = cmp(r11.yx < float2(0,0));
        r12.z = r11.w ? r11.z : 0;
        r15.xy = max(float2(0,0), r11.xy);
        r13.w = r11.w ? r15.y : -1;
        r13.w = r11.z ? r15.x : r13.w;
        r11.z = (int)r11.w | (int)r11.z;
        r11.x = min(r11.y, r11.x);
        r11.x = max(0, r11.x);
        r11.x = r11.z ? r13.w : r11.x;
        r11.x = cmp(r11.x >= 0);
        r11.x = r12.z ? 0 : r11.x;
        r11.x = r11.x ? 0 : 1;
        r11.xyz = r11.xxx * r8.xyz;
        r11.xyz = r11.xyz * r12.xyw;
        r11.xyz = r11.xyz * r13.xyz;
        r11.xyz = r7.xyz * r14.xyz + r11.xyz;
        r11.xyz = -r11.xyz * r17.xyz + r11.xyz;
        r11.xyz = r11.xyz / r16.xyz;
        r9.yzw = r10.xyz * r11.xyz + r9.yzw;
        r10.xyz = r17.xyz * r10.xyz;
      }
    } else {
      r9.yzw = float3(0,0,0);
    }
  } else {
    r9.yzw = float3(0,0,0);
  }
  r0.xyzw = (int4)r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r9.yzwy
  return;
}