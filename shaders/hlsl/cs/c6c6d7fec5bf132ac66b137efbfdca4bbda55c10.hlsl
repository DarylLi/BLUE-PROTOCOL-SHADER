// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

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
  float4 cb3[45];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[45];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.xyz = -cb0[173].xyz + cb0[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  r3.xy = float2(0.5,0.5) * cb4[7].zw;
  r3.xy = r0.xw * cb4[7].zw + -r3.xy;
  r3.zw = float2(-1,-1) + cb4[7].xy;
  r3.zw = cb4[7].xy / r3.zw;
  r3.xy = r3.xy * r3.zw;
  r2.w = cb1[0].y * cb1[0].y;
  r3.z = -cb1[0].y * cb1[0].y + r1.w;
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
  r3.x = cmp(cb1[0].z < r2.x);
  if (r3.x != 0) {
    r3.x = dot(r4.xyz, r4.xyz);
    r3.y = dot(r4.zz, r2.xx);
    r1.w = -cb1[0].z * cb1[0].z + r1.w;
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
    r2.z = -cb1[0].y * cb1[0].y + r1.w;
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
    r5.x = cb1[0].z * cb1[0].z;
    r1.w = -cb1[0].z * cb1[0].z + r1.w;
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
      r6.x = dot(cb0[174].xyz, cb0[161].xyz);
      r6.y = dot(cb0[175].xyz, cb0[161].xyz);
      r6.z = dot(cb0[176].xyz, cb0[161].xyz);
      r7.x = dot(cb0[174].xyz, cb0[162].xyz);
      r7.y = dot(cb0[175].xyz, cb0[162].xyz);
      r7.z = dot(cb0[176].xyz, cb0[162].xyz);
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
      r4.w = -cb1[5].x * cb1[5].x + 1;
      r5.y = cb1[5].x * cb1[5].x + 1;
      r5.z = cb1[5].x + cb1[5].x;
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
      r5.z = cmp(0 != cb0[184].x);
      r5.z = r5.z ? cb0[184].y : cb0[135].y;
      r8.xyz = cb0[163].xyz * r5.zzz;
      r9.xyz = cb0[164].xyz * r5.zzz;
      r2.w = cb1[0].z * cb1[0].z + -r2.w;
      r2.w = max(0, r2.w);
      r2.w = sqrt(r2.w);
      r5.z = cb1[0].z + -cb1[0].y;
      r6.w = dot(r6.xyz, r6.xyz);
      r7.w = 4 * r6.w;
      r6.w = r6.w + r6.w;
      r10.x = dot(cb0[174].xyz, r4.xyz);
      r10.y = dot(cb0[175].xyz, r4.xyz);
      r10.z = dot(cb0[176].xyz, r4.xyz);
      r8.w = dot(r7.xyz, r7.xyz);
      r9.w = 4 * r8.w;
      r8.w = r8.w + r8.w;
      r11.xyz = float3(0,0,0);
      r10.w = cb2[38].x;
      r11.w = cb3[38].x;
      r12.xyzw = float4(1,1,1,0);
      while (true) {
        r13.x = cmp(r12.w >= r2.x);
        if (r13.x != 0) break;
        r13.x = r12.w / r2.y;
        r12.w = 1 + r12.w;
        r13.y = r12.w / r2.y;
        r13.xy = r13.xy * r13.xy;
        r13.w = cmp(1 < r13.y);
        r13.yz = r13.yx * r2.zz;
        r13.y = r13.w ? r1.w : r13.y;
        r13.x = -r2.z * r13.x + r13.y;
        r13.y = r13.x * 0.300000012 + r13.z;
        r14.xyz = r13.yyy * r4.xyz + r3.xzw;
        r13.z = dot(r14.xyz, r14.xyz);
        r13.w = sqrt(r13.z);
        r14.w = -cb1[0].y + r13.w;
        r15.x = max(0, r14.w);
        r15.y = cb1[3].x * r15.x;
        r15.y = 1.44269502 * r15.y;
        r15.y = exp2(r15.y);
        r15.z = cb1[0].w * r15.x;
        r15.z = 1.44269502 * r15.z;
        r15.z = exp2(r15.z);
        r15.w = cmp(r15.x < cb1[7].x);
        r16.x = saturate(cb1[7].z * r15.x + cb1[7].y);
        r15.x = saturate(cb1[8].x * r15.x + cb1[7].w);
        r15.x = r15.w ? r16.x : r15.x;
        r16.xyz = cb1[2].xyz * r15.yyy;
        r17.xyz = cb1[1].xyz * r15.zzz;
        r18.xyz = r15.yyy * cb1[2].xyz + r17.xyz;
        r15.yzw = r15.yyy * cb1[4].xyz + r17.xyz;
        r15.xyz = r15.xxx * cb1[9].xyz + r15.yzw;
        r19.xyz = r15.xyz * r13.xxx;
        r19.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r19.xyz;
        r19.xyz = exp2(r19.xyz);
        r20.xyz = r14.xyz / r13.www;
        r13.x = dot(r6.xyz, r20.xyz);
        r15.w = -cb1[0].y * cb1[0].y + r13.z;
        r15.w = max(0, r15.w);
        r15.w = sqrt(r15.w);
        r16.w = r13.x * r13.x + -1;
        r16.w = r13.z * r16.w + r5.x;
        r16.w = sqrt(r16.w);
        r16.w = -r13.w * r13.x + r16.w;
        r16.w = max(0, r16.w);
        r17.w = cb1[0].z + -r13.w;
        r18.w = r15.w + r2.w;
        r16.w = -r17.w + r16.w;
        r18.w = r18.w + -r17.w;
        r21.y = r16.w / r18.w;
        r21.z = r15.w / r2.w;
        r22.xyz = t4.SampleLevel(s4_s, r21.yz, 0).xyz;
        r23.xyz = r17.xyz * r3.yyy;
        r23.xyz = r16.xyz * r5.www + r23.xyz;
        r15.w = dot(r7.xyz, r20.xyz);
        r16.w = r15.w * r15.w + -1;
        r13.z = r13.z * r16.w + r5.x;
        r13.z = sqrt(r13.z);
        r13.z = -r13.w * r15.w + r13.z;
        r13.z = max(0, r13.z);
        r13.z = r13.z + -r17.w;
        r21.x = r13.z / r18.w;
        r21.xyz = t4.SampleLevel(s4_s, r21.xz, 0).xyz;
        r17.xyz = r17.xyz * r5.yyy;
        r16.xyz = r16.xyz * r4.www + r17.xyz;
        r17.x = saturate(r13.x * 0.5 + 0.5);
        r17.y = saturate(r14.w / r5.z);
        r13.xzw = t5.SampleLevel(s5_s, r17.xy, 0).xyz;
        r14.xyz = -r20.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r14.xyz;
        r14.w = dot(r14.xyz, r14.xyz);
        r15.w = dot(r6.xyz, r14.xyz);
        r15.w = r15.w + r15.w;
        r14.w = -cb1[0].y * cb1[0].y + r14.w;
        r16.w = r14.w * r7.w;
        r16.w = r15.w * r15.w + -r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = sqrt(r16.w);
        r17.yz = r16.ww * float2(1,-1) + -r15.ww;
        r17.yz = r17.yz / r6.ww;
        r17.xy = r17.xx ? r17.yz : float2(-1,-1);
        r17.zw = cmp(r17.yx < float2(0,0));
        r15.w = r17.w ? r17.z : 0;
        r20.xy = max(float2(0,0), r17.xy);
        r16.w = r17.w ? r20.y : -1;
        r16.w = r17.z ? r20.x : r16.w;
        r17.z = (int)r17.w | (int)r17.z;
        r17.x = min(r17.y, r17.x);
        r17.x = max(0, r17.x);
        r16.w = r17.z ? r16.w : r17.x;
        r16.w = cmp(r16.w >= 0);
        r15.w = r15.w ? 0 : r16.w;
        r17.xyz = r13.yyy * r10.xyz + r1.xyz;
        r17.xyz = r17.xyz * float3(100000,100000,100000) + cb0[173].xyz;
        if (r11.w != 0) {
          r20.xyzw = cb3[41].xyzw * r17.yyyy;
          r20.xyzw = r17.xxxx * cb3[40].xyzw + r20.xyzw;
          r20.xyzw = r17.zzzz * cb3[42].xyzw + r20.xyzw;
          r20.xyzw = cb3[43].xyzw + r20.xyzw;
          r24.xyzw = r20.xyxy / r20.wwww;
          r20.xy = cmp(r24.zw >= float2(0,0));
          r25.xy = cmp(float2(1,1) >= r24.zw);
          r20.xy = r20.xy ? r25.xy : 0;
          r13.y = r20.y ? r20.x : 0;
          if (r13.y != 0) {
            r24.xyzw = r24.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r20.xy = frac(r24.zw);
            r24.xyzw = floor(r24.xyzw);
            r25.xyzw = float4(0.5,1.5,0.5,0.5) + r24.zwzw;
            r25.xyzw = cb3[44].zwzw * r25.xyzw;
            r26.x = t3.SampleLevel(s3_s, r25.xy, 0).x;
            r24.xyzw = float4(1.5,1.5,1.5,0.5) + r24.xyzw;
            r24.xyzw = cb3[44].zwzw * r24.xyzw;
            r26.y = t3.SampleLevel(s3_s, r24.xy, 0).x;
            r26.z = t3.SampleLevel(s3_s, r24.zw, 0).x;
            r26.w = t3.SampleLevel(s3_s, r25.zw, 0).x;
            r13.y = r20.z * 40 + -1;
            r24.xyzw = saturate(r26.xyzw * float4(40,40,40,40) + -r13.yyyy);
            r25.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r26.xyzw);
            r25.xyzw = r25.xyzw ? float4(1,1,1,1) : 0;
            r24.xyzw = r25.xyzw + r24.xyzw;
            r24.xyzw = min(float4(1,1,1,1), r24.xyzw);
            r20.zw = r24.zy + -r24.wx;
            r20.xz = r20.xx * r20.zw + r24.wx;
            r13.y = r20.z + -r20.x;
            r13.y = r20.y * r13.y + r20.x;
          } else {
            r13.y = 1;
          }
        } else {
          r13.y = 1;
        }
        r20.xyzw = cb3[2].xyzw * r17.yyyy;
        r20.xyzw = r17.xxxx * cb3[1].xyzw + r20.xyzw;
        r20.xyzw = r17.zzzz * cb3[3].xyzw + r20.xyzw;
        r20.xyzw = cb3[4].xyzw + r20.xyzw;
        r20.xy = r20.xy / r20.ww;
        r24.xy = cmp(r20.xy >= cb3[5].xy);
        r24.zw = cmp(cb3[5].zw >= r20.xy);
        r24.xy = r24.zw ? r24.xy : 0;
        r16.w = r24.y ? r24.x : 0;
        if (r16.w != 0) {
          r16.w = t2.SampleLevel(s2_s, r20.xy, 0).x;
          r17.w = -cb3[6].x + r16.w;
          r17.w = cmp(r20.z < r17.w);
          r17.w = r17.w ? 1.000000 : 0;
          r16.w = cmp(r16.w == 1.000000);
          r16.w = r16.w ? 1.000000 : 0;
          r16.w = r17.w + r16.w;
          r16.w = min(1, r16.w);
        } else {
          r16.w = 1;
        }
        r20.xyz = -cb0[67].xyz + r17.xyz;
        r17.w = dot(r20.xyz, cb0[60].xyz);
        r18.w = saturate(r17.w * cb3[7].z + cb3[7].w);
        r18.w = r18.w * r18.w;
        r19.w = 1 + -r16.w;
        r16.w = r18.w * r19.w + r16.w;
        r13.y = min(r16.w, r13.y);
        r13.y = r15.w ? 0 : r13.y;
        r20.xyz = r13.yyy * r22.xyz;
        r13.xyz = r13.xzw * r18.xyz;
        r13.xyz = r20.xyz * r23.xyz + r13.xyz;
        r13.w = dot(r7.xyz, r14.xyz);
        r13.w = r13.w + r13.w;
        r14.x = r14.w * r9.w;
        r14.x = r13.w * r13.w + -r14.x;
        r14.y = cmp(r14.x >= 0);
        r14.x = sqrt(r14.x);
        r14.xz = r14.xx * float2(1,-1) + -r13.ww;
        r14.xz = r14.xz / r8.ww;
        r14.xy = r14.yy ? r14.xz : float2(-1,-1);
        r14.zw = cmp(r14.yx < float2(0,0));
        r13.w = r14.w ? r14.z : 0;
        r18.xy = max(float2(0,0), r14.xy);
        r15.w = r14.w ? r18.y : -1;
        r15.w = r14.z ? r18.x : r15.w;
        r14.z = (int)r14.w | (int)r14.z;
        r14.x = min(r14.y, r14.x);
        r14.x = max(0, r14.x);
        r14.x = r14.z ? r15.w : r14.x;
        r14.x = cmp(r14.x >= 0);
        r13.w = r13.w ? 0 : r14.x;
        if (r10.w != 0) {
          r14.xyzw = cb2[41].xyzw * r17.yyyy;
          r14.xyzw = r17.xxxx * cb2[40].xyzw + r14.xyzw;
          r14.xyzw = r17.zzzz * cb2[42].xyzw + r14.xyzw;
          r14.xyzw = cb2[43].xyzw + r14.xyzw;
          r18.xyzw = r14.xyxy / r14.wwww;
          r14.xy = cmp(r18.zw >= float2(0,0));
          r20.xy = cmp(float2(1,1) >= r18.zw);
          r14.xy = r14.xy ? r20.xy : 0;
          r14.x = r14.y ? r14.x : 0;
          if (r14.x != 0) {
            r18.xyzw = r18.xyzw * cb2[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r14.xy = frac(r18.zw);
            r18.xyzw = floor(r18.xyzw);
            r20.xyzw = float4(0.5,1.5,0.5,0.5) + r18.zwzw;
            r20.xyzw = cb2[44].zwzw * r20.xyzw;
            r22.x = t1.SampleLevel(s1_s, r20.xy, 0).x;
            r18.xyzw = float4(1.5,1.5,1.5,0.5) + r18.xyzw;
            r18.xyzw = cb2[44].zwzw * r18.xyzw;
            r22.y = t1.SampleLevel(s1_s, r18.xy, 0).x;
            r22.z = t1.SampleLevel(s1_s, r18.zw, 0).x;
            r22.w = t1.SampleLevel(s1_s, r20.zw, 0).x;
            r14.z = r14.z * 40 + -1;
            r18.xyzw = saturate(r22.xyzw * float4(40,40,40,40) + -r14.zzzz);
            r20.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r22.xyzw);
            r20.xyzw = r20.xyzw ? float4(1,1,1,1) : 0;
            r18.xyzw = r20.xyzw + r18.xyzw;
            r18.xyzw = min(float4(1,1,1,1), r18.xyzw);
            r14.zw = r18.zy + -r18.wx;
            r14.xz = r14.xx * r14.zw + r18.wx;
            r14.z = r14.z + -r14.x;
            r14.x = r14.y * r14.z + r14.x;
          } else {
            r14.x = 1;
          }
        } else {
          r14.x = 1;
        }
        r18.xyzw = cb2[2].xyzw * r17.yyyy;
        r18.xyzw = r17.xxxx * cb2[1].xyzw + r18.xyzw;
        r18.xyzw = r17.zzzz * cb2[3].xyzw + r18.xyzw;
        r18.xyzw = cb2[4].xyzw + r18.xyzw;
        r14.yz = r18.xy / r18.ww;
        r17.xy = cmp(r14.yz >= cb2[5].xy);
        r18.xy = cmp(cb2[5].zw >= r14.yz);
        r17.xy = r17.xy ? r18.xy : 0;
        r14.w = r17.y ? r17.x : 0;
        if (r14.w != 0) {
          r14.y = t0.SampleLevel(s0_s, r14.yz, 0).x;
          r14.z = -cb2[6].x + r14.y;
          r14.z = cmp(r18.z < r14.z);
          r14.y = cmp(r14.y == 1.000000);
          r14.yz = r14.yz ? float2(1,1) : 0;
          r14.y = r14.z + r14.y;
          r14.y = min(1, r14.y);
        } else {
          r14.y = 1;
        }
        r14.z = saturate(r17.w * cb2[7].z + cb2[7].w);
        r14.z = r14.z * r14.z;
        r14.w = 1 + -r14.y;
        r14.y = r14.z * r14.w + r14.y;
        r14.x = min(r14.x, r14.y);
        r13.w = r13.w ? 0 : r14.x;
        r14.xyz = r13.www * r9.xyz;
        r14.xyz = r14.xyz * r21.xyz;
        r14.xyz = r14.xyz * r16.xyz;
        r13.xyz = r8.xyz * r13.xyz + r14.xyz;
        r13.xyz = -r13.xyz * r19.xyz + r13.xyz;
        r13.xyz = r13.xyz / r15.xyz;
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