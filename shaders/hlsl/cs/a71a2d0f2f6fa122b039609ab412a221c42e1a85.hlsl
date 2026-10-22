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
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
      r5.z = dot(-r3.yy, cb2[5].xx);
      r5.y = r5.y + r5.z;
      r5.z = 12.566371 * r5.y;
      r5.y = sqrt(r5.y);
      r5.y = r5.z * r5.y;
      r4.w = r4.w / r5.y;
      r3.y = r3.y * r3.y + 1;
      r3.y = 0.0596831031 * r3.y;
      r5.y = cmp(0 != cb1[184].x);
      r5.y = r5.y ? cb1[184].y : cb1[135].y;
      r5.yzw = cb1[163].xyz * r5.yyy;
      r2.w = cb2[0].z * cb2[0].z + -r2.w;
      r2.w = max(0, r2.w);
      r2.w = sqrt(r2.w);
      r6.w = cb2[0].z + -cb2[0].y;
      r7.x = dot(r6.xyz, r6.xyz);
      r7.y = 4 * r7.x;
      r7.x = r7.x + r7.x;
      r8.x = dot(cb1[174].xyz, r4.xyz);
      r8.y = dot(cb1[175].xyz, r4.xyz);
      r8.z = dot(cb1[176].xyz, r4.xyz);
      r9.xyz = float3(0,0,0);
      r10.xyz = float3(1,1,1);
      r7.z = 0;
      while (true) {
        r7.w = cmp(r7.z >= r2.x);
        if (r7.w != 0) break;
        r7.w = r7.z / r2.y;
        r7.z = 1 + r7.z;
        r8.w = r7.z / r2.y;
        r7.w = r7.w * r7.w;
        r8.w = r8.w * r8.w;
        r9.w = r7.w * r2.z;
        r10.w = cmp(1 < r8.w);
        r8.w = r8.w * r2.z;
        r8.w = r10.w ? r1.w : r8.w;
        r7.w = -r2.z * r7.w + r8.w;
        r8.w = r7.w * 0.300000012 + r9.w;
        r11.xyz = r8.www * r4.xyz + r3.xzw;
        r9.w = dot(r11.xyz, r11.xyz);
        r10.w = sqrt(r9.w);
        r11.w = -cb2[0].y + r10.w;
        r12.x = max(0, r11.w);
        r12.y = cb2[3].x * r12.x;
        r12.y = 1.44269502 * r12.y;
        r12.y = exp2(r12.y);
        r12.z = cb2[0].w * r12.x;
        r12.z = 1.44269502 * r12.z;
        r12.z = exp2(r12.z);
        r12.w = cmp(r12.x < cb2[7].x);
        r13.x = saturate(cb2[7].z * r12.x + cb2[7].y);
        r12.x = saturate(cb2[8].x * r12.x + cb2[7].w);
        r12.x = r12.w ? r13.x : r12.x;
        r13.xyz = cb2[2].xyz * r12.yyy;
        r14.xyz = cb2[1].xyz * r12.zzz;
        r15.xyz = r12.yyy * cb2[2].xyz + r14.xyz;
        r12.yzw = r12.yyy * cb2[4].xyz + r14.xyz;
        r12.xyz = r12.xxx * cb2[9].xyz + r12.yzw;
        r16.xyz = r12.xyz * r7.www;
        r16.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r16.xyz;
        r16.xyz = exp2(r16.xyz);
        r17.xyz = r11.xyz / r10.www;
        r7.w = dot(r6.xyz, r17.xyz);
        r12.w = -cb2[0].y * cb2[0].y + r9.w;
        r12.w = max(0, r12.w);
        r12.w = sqrt(r12.w);
        r13.w = r7.w * r7.w + -1;
        r9.w = r9.w * r13.w + r5.x;
        r9.w = sqrt(r9.w);
        r9.w = -r10.w * r7.w + r9.w;
        r9.w = max(0, r9.w);
        r10.w = cb2[0].z + -r10.w;
        r13.w = r12.w + r2.w;
        r9.w = -r10.w + r9.w;
        r10.w = r13.w + -r10.w;
        r18.x = r9.w / r10.w;
        r18.y = r12.w / r2.w;
        r18.xyz = t0.SampleLevel(s0_s, r18.xy, 0).xyz;
        r14.xyz = r14.xyz * r3.yyy;
        r13.xyz = r13.xyz * r4.www + r14.xyz;
        r14.x = saturate(r7.w * 0.5 + 0.5);
        r14.y = saturate(r11.w / r6.w);
        r14.xyz = t1.SampleLevel(s1_s, r14.xy, 0).xyz;
        r11.xyz = -r17.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.xyz;
        r7.w = dot(r11.xyz, r11.xyz);
        r9.w = dot(r6.xyz, r11.xyz);
        r9.w = r9.w + r9.w;
        r7.w = -cb2[0].y * cb2[0].y + r7.w;
        r7.w = r7.y * r7.w;
        r7.w = r9.w * r9.w + -r7.w;
        r10.w = cmp(r7.w >= 0);
        r7.w = sqrt(r7.w);
        r11.xy = r7.ww * float2(1,-1) + -r9.ww;
        r11.xy = r11.xy / r7.xx;
        r11.xy = r10.ww ? r11.xy : float2(-1,-1);
        r11.zw = cmp(r11.yx < float2(0,0));
        r7.w = r11.w ? r11.z : 0;
        r17.xy = max(float2(0,0), r11.xy);
        r9.w = r11.w ? r17.y : -1;
        r9.w = r11.z ? r17.x : r9.w;
        r10.w = (int)r11.w | (int)r11.z;
        r11.x = min(r11.y, r11.x);
        r11.x = max(0, r11.x);
        r9.w = r10.w ? r9.w : r11.x;
        r9.w = cmp(r9.w >= 0);
        r7.w = r7.w ? 0 : r9.w;
        r11.xyz = r8.www * r8.xyz + r1.xyz;
        r11.xyz = r11.xyz * float3(100000,100000,100000) + cb1[173].xyz;
        r17.xyzw = cb3[46].xyzw * r11.yyyy;
        r17.xyzw = r11.xxxx * cb3[45].xyzw + r17.xyzw;
        r17.xyzw = r11.zzzz * cb3[47].xyzw + r17.xyzw;
        r17.xyzw = cb3[48].xyzw + r17.xyzw;
        r17.xyz = r17.xyz / r17.www;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.xyw = t3.SampleLevel(s3_s, r17.xy, 0).xyz;
        r8.w = saturate(1 + -r17.z);
        r8.w = r8.w * cb3[43].x + -r17.x;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r17.y;
        r8.w = 1000 * r8.w;
        r8.w = min(r17.w, r8.w);
        r8.w = -1.44269502 * r8.w;
        r8.w = exp2(r8.w);
        r8.w = min(1, r8.w);
        r14.xyz = r14.xyz * r8.www;
        r17.xyzw = cb3[20].xyzw * r11.yyyy;
        r17.xyzw = r11.xxxx * cb3[19].xyzw + r17.xyzw;
        r11.xyzw = r11.zzzz * cb3[21].xyzw + r17.xyzw;
        r11.xyzw = cb3[22].xyzw + r11.xyzw;
        r11.xyz = r11.xyz / r11.www;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xyw = t2.SampleLevel(s2_s, r11.xy, 0).xyz;
        r8.w = saturate(1 + -r11.z);
        r8.w = r8.w * cb3[7].x + -r11.x;
        r8.w = max(0, r8.w);
        r8.w = r8.w * r11.y;
        r8.w = 1000 * r8.w;
        r8.w = min(r11.w, r8.w);
        r8.w = -1.44269502 * r8.w;
        r8.w = exp2(r8.w);
        r8.w = min(1, r8.w);
        r8.w = -1 + r8.w;
        r8.w = saturate(cb0[0].y * r8.w + 1);
        r7.w = r7.w ? 0 : r8.w;
        r11.xyz = r7.www * r18.xyz;
        r14.xyz = r14.xyz * r15.xyz;
        r11.xyz = r11.xyz * r13.xyz + r14.xyz;
        r11.xyz = r11.xyz * r5.yzw;
        r11.xyz = -r11.xyz * r16.xyz + r11.xyz;
        r11.xyz = r11.xyz / r12.xyz;
        r9.xyz = r10.xyz * r11.xyz + r9.xyz;
        r10.xyz = r16.xyz * r10.xyz;
      }
    } else {
      r9.xyz = float3(0,0,0);
    }
  } else {
    r9.xyz = float3(0,0,0);
  }
  r0.xyzw = (int4)r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r9.xyzx
  return;
}