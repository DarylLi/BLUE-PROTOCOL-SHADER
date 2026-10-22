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
  float4 cb4[8];
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
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.xyz = -cb1[173].xyz + cb1[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  r3.xy = float2(0.5,0.5) * cb4[7].zw;
  r3.xy = r0.xw * cb4[7].zw + -r3.xy;
  r3.zw = float2(-1,-1) + cb4[7].xy;
  r3.zw = cb4[7].xy / r3.zw;
  r3.xy = r3.xy * r3.zw;
  r2.w = cb2[0].y * cb2[0].y;
  r3.z = -cb2[0].y * cb2[0].y + r1.w;
  r3.z = sqrt(r3.z);
  r3.z = r3.z / r2.x;
  r3.w = r3.z * r3.z;
  r4.x = r3.w * r3.z;
  r4.y = r3.z * -0.212114394 + 1.57072878;
  r3.w = r3.w * 0.0742610022 + r4.y;
  r3.w = r4.x * -0.0187292993 + r3.w;
  r4.x = 1 + -r3.z;
  r4.x = sqrt(r4.x);
  r4.y = r4.x * r3.w;
  r3.z = cmp(r3.z >= 0);
  r3.w = -r4.x * r3.w + 3.14159274;
  r3.z = r3.z ? r4.y : r3.w;
  r3.w = 3.14159274 + -r3.z;
  r4.x = cmp(r3.y < 0.5);
  r4.y = -r3.y * 2 + 1;
  r4.y = -r4.y * r4.y + 1;
  r4.y = r4.y * r3.w;
  r3.y = r3.y * 2 + -1;
  r3.y = r3.y * r3.y;
  r3.y = r3.z * r3.y + r3.w;
  r3.y = r4.x ? r4.y : r3.y;
  r4.z = cos(r3.y);
  r3.z = -r4.z * r4.z + 1;
  r3.z = sqrt(r3.z);
  r3.y = cmp(0 < r3.y);
  r3.y = r3.y ? 1 : -1;
  r3.y = r3.z * r3.y;
  r3.z = 6.28318548 * r3.x;
  r3.z = cos(r3.z);
  r3.w = -r3.z * r3.z + 1;
  r3.w = sqrt(r3.w);
  r3.x = cmp(0.5 >= r3.x);
  r3.x = r3.x ? 1 : -1;
  r3.x = r3.w * r3.x;
  r4.xy = r3.yy * r3.zx;
  r3.x = cmp(cb2[0].z < r2.x);
  if (r3.x != 0) {
    r3.x = dot(r4.xyz, r4.xyz);
    r3.y = dot(r4.zz, r2.xx);
    r1.w = -cb2[0].z * cb2[0].z + r1.w;
    r1.w = r1.w * r3.x;
    r1.w = 4 * r1.w;
    r1.w = r3.y * r3.y + -r1.w;
    r3.z = cmp(r1.w >= 0);
    r1.w = sqrt(r1.w);
    r3.yw = r1.ww * float2(1,-1) + -r3.yy;
    r1.w = r3.x + r3.x;
    r3.xy = r3.yw / r1.ww;
    r3.xy = r3.zz ? r3.xy : float2(-1,-1);
    r3.zw = cmp(r3.yx < float2(0,0));
    r1.w = r3.w ? r3.z : 0;
    r5.xy = max(float2(0,0), r3.xy);
    r4.w = r3.w ? r5.y : -1;
    r4.w = r3.z ? r5.x : r4.w;
    r3.z = (int)r3.w | (int)r3.z;
    r3.x = min(r3.y, r3.x);
    r3.x = max(0, r3.x);
    r3.x = r3.z ? r4.w : r3.x;
    r1.w = r1.w ? -1 : r3.x;
    r3.x = cmp(r1.w >= 0);
    r3.y = ~(int)r3.x;
    r2.y = 0;
    r5.xyz = r2.yyx / r2.xxx;
    r6.xyz = r4.xyz * r1.www + r2.yyx;
    r5.xyz = r5.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r6.xyz;
    r3.xzw = r3.xxx ? r5.xyz : r2.yyx;
    r1.w = 0;
  } else {
    r2.z = 0;
    r3.xzw = r2.zzx;
    r3.y = 0;
  }
  r2.x = ~(int)r3.y;
  r1.w = (int)r1.w | (int)r2.x;
  if (r1.w == 0) {
    r5.xyzw = (int4)r0.xwww;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xyzw, l(0,0,0,0)
    return;
  }
  r1.w = dot(r3.xzw, r3.xzw);
  r2.x = cmp(r2.w < r1.w);
  if (r2.x != 0) {
    r2.x = dot(r4.xyz, r4.xyz);
    r2.y = dot(r4.xyz, r3.xzw);
    r2.y = r2.y + r2.y;
    r2.z = -cb2[0].y * cb2[0].y + r1.w;
    r3.y = r2.y * r2.y;
    r4.w = 4 * r2.x;
    r2.z = -r4.w * r2.z + r3.y;
    r5.x = cmp(r2.z >= 0);
    r2.z = sqrt(r2.z);
    r5.yz = r2.zz * float2(1,-1) + -r2.yy;
    r2.x = r2.x + r2.x;
    r5.yz = r5.yz / r2.xx;
    r5.xy = r5.xx ? r5.yz : float2(-1,-1);
    r5.zw = cmp(r5.yx < float2(0,0));
    r2.z = r5.w ? r5.z : 0;
    r6.xy = max(float2(0,0), r5.xy);
    r6.y = r5.w ? r6.y : -1;
    r6.x = r5.z ? r6.x : r6.y;
    r5.z = (int)r5.w | (int)r5.z;
    r5.x = min(r5.y, r5.x);
    r5.x = max(0, r5.x);
    r5.x = r5.z ? r6.x : r5.x;
    r2.z = r2.z ? -1 : r5.x;
    r5.x = cb2[0].z * cb2[0].z;
    r1.w = -cb2[0].z * cb2[0].z + r1.w;
    r1.w = -r4.w * r1.w + r3.y;
    r3.y = cmp(r1.w >= 0);
    r1.w = sqrt(r1.w);
    r5.yz = r1.ww * float2(1,-1) + -r2.yy;
    r2.xy = r5.yz / r2.xx;
    r2.xy = r3.yy ? r2.xy : float2(-1,-1);
    r5.yz = cmp(r2.yx < float2(0,0));
    r1.w = r5.z ? r5.y : 0;
    r6.xy = max(float2(0,0), r2.xy);
    r3.y = r5.z ? r6.y : -1;
    r3.y = r5.y ? r6.x : r3.y;
    r4.w = (int)r5.z | (int)r5.y;
    r2.x = min(r2.y, r2.x);
    r2.x = max(0, r2.x);
    r2.x = r4.w ? r3.y : r2.x;
    r1.w = r1.w ? -1 : r2.x;
    r2.x = cmp(r2.z < 0);
    r2.y = cmp(r1.w < 0);
    r2.y = r2.y ? r2.x : 0;
    if (r2.y == 0) {
      r6.x = dot(cb1[174].xyz, cb1[161].xyz);
      r6.y = dot(cb1[175].xyz, cb1[161].xyz);
      r6.z = dot(cb1[176].xyz, cb1[161].xyz);
      r7.x = dot(cb1[174].xyz, cb1[162].xyz);
      r7.y = dot(cb1[175].xyz, cb1[162].xyz);
      r7.z = dot(cb1[176].xyz, cb1[162].xyz);
      r2.y = max(0, r1.w);
      r3.y = cmp(0 < r1.w);
      r1.w = min(r1.w, r2.z);
      r1.w = r3.y ? r1.w : 0;
      r1.w = r2.x ? r2.y : r1.w;
      r1.w = min(9000000, r1.w);
      r2.x = saturate(cb4[1].y * r1.w);
      r2.y = cb4[1].x + -cb4[0].w;
      r2.x = r2.x * r2.y + cb4[0].w;
      r2.y = floor(r2.x);
      r2.z = r2.y * r1.w;
      r2.z = r2.z / r2.x;
      r3.y = dot(r6.xyz, r4.xyz);
      r4.w = -cb2[5].x * cb2[5].x + 1;
      r5.y = cb2[5].x * cb2[5].x + 1;
      r5.z = cb2[5].x + cb2[5].x;
      r5.w = r5.z * -r3.y + r5.y;
      r6.w = 12.566371 * r5.w;
      r5.w = sqrt(r5.w);
      r5.w = r6.w * r5.w;
      r5.w = r4.w / r5.w;
      r3.y = r3.y * r3.y + 1;
      r3.y = 0.0596831031 * r3.y;
      r6.w = dot(r7.xyz, r4.xyz);
      r5.y = r5.z * -r6.w + r5.y;
      r5.z = 12.566371 * r5.y;
      r5.y = sqrt(r5.y);
      r5.y = r5.z * r5.y;
      r4.w = r4.w / r5.y;
      r5.y = r6.w * r6.w + 1;
      r5.y = 0.0596831031 * r5.y;
      r5.z = cmp(0 != cb1[184].x);
      r5.z = r5.z ? cb1[184].y : cb1[135].y;
      r8.xyz = cb1[163].xyz * r5.zzz;
      r9.xyz = cb1[164].xyz * r5.zzz;
      r2.w = cb2[0].z * cb2[0].z + -r2.w;
      r2.w = max(0, r2.w);
      r2.w = sqrt(r2.w);
      r5.z = cb2[0].z + -cb2[0].y;
      r6.w = dot(r6.xyz, r6.xyz);
      r7.w = 4 * r6.w;
      r6.w = r6.w + r6.w;
      r10.x = dot(cb1[174].xyz, r4.xyz);
      r10.y = dot(cb1[175].xyz, r4.xyz);
      r10.z = dot(cb1[176].xyz, r4.xyz);
      r8.w = dot(r7.xyz, r7.xyz);
      r9.w = 4 * r8.w;
      r8.w = r8.w + r8.w;
      r11.xyz = float3(0,0,0);
      r12.xyz = float3(1,1,1);
      r10.w = 0;
      while (true) {
        r11.w = cmp(r10.w >= r2.x);
        if (r11.w != 0) break;
        r11.w = r10.w / r2.y;
        r10.w = 1 + r10.w;
        r12.w = r10.w / r2.y;
        r11.w = r11.w * r11.w;
        r12.w = r12.w * r12.w;
        r13.x = r11.w * r2.z;
        r13.y = cmp(1 < r12.w);
        r12.w = r12.w * r2.z;
        r12.w = r13.y ? r1.w : r12.w;
        r11.w = -r2.z * r11.w + r12.w;
        r12.w = r11.w * 0.300000012 + r13.x;
        r13.xyz = r12.www * r4.xyz + r3.xzw;
        r13.w = dot(r13.xyz, r13.xyz);
        r14.x = sqrt(r13.w);
        r14.y = -cb2[0].y + r14.x;
        r14.z = max(0, r14.y);
        r14.w = cb2[3].x * r14.z;
        r14.w = 1.44269502 * r14.w;
        r14.w = exp2(r14.w);
        r15.x = cb2[0].w * r14.z;
        r15.x = 1.44269502 * r15.x;
        r15.x = exp2(r15.x);
        r15.y = cmp(r14.z < cb2[7].x);
        r15.z = saturate(cb2[7].z * r14.z + cb2[7].y);
        r14.z = saturate(cb2[8].x * r14.z + cb2[7].w);
        r14.z = r15.y ? r15.z : r14.z;
        r15.yzw = cb2[2].xyz * r14.www;
        r16.xyz = cb2[1].xyz * r15.xxx;
        r17.xyz = r14.www * cb2[2].xyz + r16.xyz;
        r18.xyz = r14.www * cb2[4].xyz + r16.xyz;
        r18.xyz = r14.zzz * cb2[9].xyz + r18.xyz;
        r19.xyz = r18.xyz * r11.www;
        r19.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r19.xyz;
        r19.xyz = exp2(r19.xyz);
        r20.xyz = r13.xyz / r14.xxx;
        r11.w = dot(r6.xyz, r20.xyz);
        r14.z = -cb2[0].y * cb2[0].y + r13.w;
        r14.z = max(0, r14.z);
        r14.w = r11.w * r11.w + -1;
        r14.w = r13.w * r14.w + r5.x;
        r14.zw = sqrt(r14.zw);
        r14.w = -r14.x * r11.w + r14.w;
        r14.w = max(0, r14.w);
        r15.x = cb2[0].z + -r14.x;
        r16.w = r14.z + r2.w;
        r14.w = -r15.x + r14.w;
        r16.w = r16.w + -r15.x;
        r21.y = r14.w / r16.w;
        r21.z = r14.z / r2.w;
        r22.xyz = t0.SampleLevel(s0_s, r21.yz, 0).xyz;
        r23.xyz = r16.xyz * r3.yyy;
        r23.xyz = r15.yzw * r5.www + r23.xyz;
        r14.z = dot(r7.xyz, r20.xyz);
        r14.w = r14.z * r14.z + -1;
        r13.w = r13.w * r14.w + r5.x;
        r13.w = sqrt(r13.w);
        r13.w = -r14.x * r14.z + r13.w;
        r13.w = max(0, r13.w);
        r13.w = r13.w + -r15.x;
        r21.x = r13.w / r16.w;
        r14.xzw = t0.SampleLevel(s0_s, r21.xz, 0).xyz;
        r16.xyz = r16.xyz * r5.yyy;
        r15.xyz = r15.yzw * r4.www + r16.xyz;
        r16.x = saturate(r11.w * 0.5 + 0.5);
        r16.y = saturate(r14.y / r5.z);
        r16.xyz = t1.SampleLevel(s1_s, r16.xy, 0).xyz;
        r20.xyz = -r20.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r13.xyz;
        r11.w = dot(r20.xyz, r20.xyz);
        r13.w = dot(r6.xyz, r20.xyz);
        r13.w = r13.w + r13.w;
        r11.w = -cb2[0].y * cb2[0].y + r11.w;
        r14.y = r11.w * r7.w;
        r14.y = r13.w * r13.w + -r14.y;
        r15.w = cmp(r14.y >= 0);
        r14.y = sqrt(r14.y);
        r21.xy = r14.yy * float2(1,-1) + -r13.ww;
        r21.xy = r21.xy / r6.ww;
        r21.xy = r15.ww ? r21.xy : float2(-1,-1);
        r21.zw = cmp(r21.yx < float2(0,0));
        r13.w = r21.w ? r21.z : 0;
        r24.xy = max(float2(0,0), r21.xy);
        r14.y = r21.w ? r24.y : -1;
        r14.y = r21.z ? r24.x : r14.y;
        r15.w = (int)r21.w | (int)r21.z;
        r16.w = min(r21.y, r21.x);
        r16.w = max(0, r16.w);
        r14.y = r15.w ? r14.y : r16.w;
        r14.y = cmp(r14.y >= 0);
        r13.w = r13.w ? 0 : r14.y;
        r21.xyz = r12.www * r10.xyz + r1.xyz;
        r21.xyz = r21.xyz * float3(100000,100000,100000) + cb1[173].xyz;
        r24.xyzw = cb3[20].xyzw * r21.yyyy;
        r24.xyzw = r21.xxxx * cb3[19].xyzw + r24.xyzw;
        r21.xyzw = r21.zzzz * cb3[21].xyzw + r24.xyzw;
        r21.xyzw = cb3[22].xyzw + r21.xyzw;
        r21.xyz = r21.xyz / r21.www;
        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.xyw = t2.SampleLevel(s2_s, r21.xy, 0).xyz;
        r12.w = saturate(1 + -r21.z);
        r12.w = r12.w * cb3[7].x + -r21.x;
        r12.w = max(0, r12.w);
        r12.w = r12.w * r21.y;
        r12.w = 1000 * r12.w;
        r12.w = min(r21.w, r12.w);
        r12.w = -1.44269502 * r12.w;
        r12.w = exp2(r12.w);
        r12.w = min(1, r12.w);
        r12.w = -1 + r12.w;
        r12.w = saturate(cb0[0].y * r12.w + 1);
        r12.w = r13.w ? 0 : r12.w;
        r21.xyz = r12.www * r22.xyz;
        r16.xyz = r16.xyz * r17.xyz;
        r16.xyz = r21.xyz * r23.xyz + r16.xyz;
        r12.w = dot(r7.xyz, r20.xyz);
        r12.w = r12.w + r12.w;
        r11.w = r11.w * r9.w;
        r11.w = r12.w * r12.w + -r11.w;
        r13.w = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r17.xy = r11.ww * float2(1,-1) + -r12.ww;
        r17.xy = r17.xy / r8.ww;
        r17.xy = r13.ww ? r17.xy : float2(-1,-1);
        r17.zw = cmp(r17.yx < float2(0,0));
        r11.w = r17.w ? r17.z : 0;
        r20.xy = max(float2(0,0), r17.xy);
        r12.w = r17.w ? r20.y : -1;
        r12.w = r17.z ? r20.x : r12.w;
        r13.w = (int)r17.w | (int)r17.z;
        r14.y = min(r17.y, r17.x);
        r14.y = max(0, r14.y);
        r12.w = r13.w ? r12.w : r14.y;
        r12.w = cmp(r12.w >= 0);
        r11.w = r11.w ? 0 : r12.w;
        r13.xyz = r13.xyz * float3(100000,100000,100000) + cb1[173].xyz;
        r17.xyzw = cb3[24].xyzw * r13.yyyy;
        r17.xyzw = r13.xxxx * cb3[23].xyzw + r17.xyzw;
        r13.xyzw = r13.zzzz * cb3[25].xyzw + r17.xyzw;
        r13.xyzw = cb3[26].xyzw + r13.xyzw;
        r13.xyz = r13.xyz / r13.www;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xyw = t3.SampleLevel(s3_s, r13.xy, 0).xyz;
        r12.w = saturate(1 + -r13.z);
        r12.w = r12.w * cb3[8].x + -r13.x;
        r12.w = max(0, r12.w);
        r12.w = r12.w * r13.y;
        r12.w = 1000 * r12.w;
        r12.w = min(r13.w, r12.w);
        r12.w = -1.44269502 * r12.w;
        r12.w = exp2(r12.w);
        r12.w = min(1, r12.w);
        r12.w = -1 + r12.w;
        r12.w = saturate(cb0[0].z * r12.w + 1);
        r11.w = r11.w ? 0 : r12.w;
        r13.xyz = r11.www * r9.xyz;
        r13.xyz = r13.xyz * r14.xzw;
        r13.xyz = r13.xyz * r15.xyz;
        r13.xyz = r8.xyz * r16.xyz + r13.xyz;
        r13.xyz = -r13.xyz * r19.xyz + r13.xyz;
        r13.xyz = r13.xyz / r18.xyz;
        r11.xyz = r12.xyz * r13.xyz + r11.xyz;
        r12.xyz = r19.xyz * r12.xyz;
      }
    } else {
      r11.xyz = float3(0,0,0);
    }
  } else {
    r11.xyz = float3(0,0,0);
  }
  r0.xyzw = (int4)r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r11.xyzx
  return;
}