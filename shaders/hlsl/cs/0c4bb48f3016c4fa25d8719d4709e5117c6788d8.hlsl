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

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[27];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = r0.xyzw * cb0[2].xyyy + cb0[2].zwww;
  r0.xyzw = max(cb0[4].xyyy, r0.xyzw);
  r0.xyzw = min(cb0[4].zwww, r0.xyzw);
  r1.xyz = t1.SampleLevel(s0_s, r0.xw, 0).xyz;
  r1.w = t0.SampleLevel(s0_s, r0.xw, 0).x;
  r2.x = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r2.z = r2.x + r1.w;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = cmp(cb1[31].w < 1);
  r2.w = cb1[65].w + r2.z;
  r2.w = cb1[65].z * r2.w;
  r2.w = 1 / r2.w;
  r3.x = r2.z * cb1[30].z + cb1[31].z;
  r2.w = r1.w ? r2.w : r3.x;
  r3.xy = r0.xw * cb0[6].xy + cb0[6].zw;
  r4.xyz = cb1[123].xyw * r3.yyy;
  r4.xyz = r3.xxx * cb1[122].xyw + r4.xyz;
  r4.xyz = r2.www * cb1[124].xyw + r4.xyz;
  r4.xyz = cb1[125].xyw + r4.xyz;
  r2.w = rcp(r4.z);
  r3.zw = -r4.xy * r2.ww + r3.xy;
  r4.xy = t2.SampleLevel(s0_s, r0.xw, 0).xy;
  r2.w = cmp(0 < r4.x);
  r4.xy = r4.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r3.zw = r2.ww ? r4.xy : r3.zw;
  r3.zw = r3.xy + -r3.zw;
  r4.xyzw = t5.SampleLevel(s0_s, r0.xw, 0).xyzw;
  r2.w = t6.SampleLevel(s0_s, r0.xw, 0).x;
  r4.xyzw = r2.wwww * r4.xyzw;
  r3.zw = r3.zw * cb0[24].xy + cb0[24].zw;
  r5.xy = max(cb0[26].xy, r3.zw);
  r5.xy = min(cb0[26].zw, r5.xy);
  r5.xy = cmp(r3.zw != r5.xy);
  r5.x = (int)r5.y | (int)r5.x;
  if (r5.x == 0) {
    r3.zw = cb0[11].xy + r3.zw;
    r3.zw = r3.zw * cb0[25].xy + float2(-0.5,-0.5);
    r5.xyzw = floor(r3.zwzw);
    r3.zw = frac(r3.zw);
    r6.xyzw = float4(0.5,0.5,1.5,0.5) + r5.zwzw;
    r7.xy = float2(1,1) + -r3.wz;
    r7.z = r7.y * r7.x;
    r6.xyzw = cb0[25].zwzw * r6.xyzw;
    r5.xyzw = float4(0.5,1.5,1.5,1.5) + r5.xyzw;
    r7.xy = r7.xy * r3.zw;
    r5.xyzw = cb0[25].zwzw * r5.xyzw;
    r3.z = r3.z * r3.w;
    r8.xyzw = cmp(r6.xyzw < cb0[26].xyxy);
    r9.xyzw = cmp(cb0[26].zwzw < r6.xyzw);
    r8.xyzw = (int4)r8.xyzw | (int4)r9.xyzw;
    r8.xy = (int2)r8.yw | (int2)r8.xz;
    r3.w = t3.SampleLevel(s0_s, r6.xy, 0).x;
    r7.w = r3.w * cb1[65].x + cb1[65].y;
    r3.w = r3.w * cb1[65].z + -cb1[65].w;
    r3.w = 1 / r3.w;
    r3.w = r7.w + r3.w;
    r9.xyz = t4.SampleLevel(s0_s, r6.xy, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyzw = t7.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r7.w = t8.SampleLevel(s0_s, r6.xy, 0).x;
    r10.xyzw = r7.wwww * r10.xyzw;
    r8.zw = r0.xw * cb0[12].xy + cb0[12].zw;
    r9.w = r1.w ? r2.z : 1;
    r8.zw = r9.ww * r8.zw;
    r11.xyz = cb1[53].xyz * r8.www;
    r11.xyz = r8.zzz * cb1[52].xyz + r11.xyz;
    r11.xyz = r2.zzz * cb1[54].xyz + r11.xyz;
    r11.xyz = cb1[55].xyz + r11.xyz;
    r12.xyzw = r6.xyzw * cb0[12].xyxy + cb0[12].zwzw;
    r6.x = r1.w ? r3.w : 1;
    r6.xy = r12.xy * r6.xx;
    r13.xyz = cb1[119].xyz * r6.yyy;
    r13.xyz = r6.xxx * cb1[118].xyz + r13.xyz;
    r13.xyz = r3.www * cb1[120].xyz + r13.xyz;
    r13.xyz = cb1[121].xyz + r13.xyz;
    r14.xyz = -cb1[113].xyz + cb1[70].xyz;
    r13.xyz = r14.xyz + r13.xyz;
    r6.x = cb0[13].x * r2.z;
    r13.xyz = -r13.xyz + r11.xyz;
    r3.w = cb0[13].x * r3.w;
    r3.w = min(r3.w, r6.x);
    r3.w = 8.48528099 * r3.w;
    r3.w = rcp(r3.w);
    r6.y = dot(r1.xyz, r13.xyz);
    r3.w = saturate(-abs(r6.y) * r3.w + 1);
    r6.y = dot(r1.xyz, r9.xyz);
    r6.y = max(0, r6.y);
    r6.y = r6.y * r6.y;
    r6.y = r6.y * r6.y;
    r3.w = r6.y * r3.w;
    r3.w = r7.z * r3.w;
    r6.y = cmp(r7.w != 0.000000);
    r8.xy = cmp((int2)r8.xy == int2(0,0));
    r6.y = r6.y ? r8.x : 0;
    r9.xyzw = r10.xyzw * r3.wwww;
    r3.w = r7.w * r3.w;
    r9.xyzw = r6.yyyy ? r9.xyzw : 0;
    r3.w = r6.y ? r3.w : 0;
    r6.y = t3.SampleLevel(s0_s, r6.zw, 0).x;
    r7.z = r6.y * cb1[65].x + cb1[65].y;
    r6.y = r6.y * cb1[65].z + -cb1[65].w;
    r6.y = 1 / r6.y;
    r6.y = r7.z + r6.y;
    r8.xzw = t4.SampleLevel(s0_s, r6.zw, 0).xyz;
    r8.xzw = r8.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyzw = t7.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r6.z = t8.SampleLevel(s0_s, r6.zw, 0).x;
    r10.xyzw = r6.zzzz * r10.xyzw;
    r6.w = r1.w ? r6.y : 1;
    r7.zw = r12.zw * r6.ww;
    r12.xyz = cb1[119].xyz * r7.www;
    r12.xyz = r7.zzz * cb1[118].xyz + r12.xyz;
    r12.xyz = r6.yyy * cb1[120].xyz + r12.xyz;
    r12.xyz = cb1[121].xyz + r12.xyz;
    r12.xyz = r12.xyz + r14.xyz;
    r12.xyz = -r12.xyz + r11.xyz;
    r6.y = cb0[13].x * r6.y;
    r6.y = min(r6.y, r6.x);
    r6.y = 8.48528099 * r6.y;
    r6.y = rcp(r6.y);
    r6.w = dot(r1.xyz, r12.xyz);
    r6.y = saturate(-abs(r6.w) * r6.y + 1);
    r6.w = dot(r1.xyz, r8.xzw);
    r6.w = max(0, r6.w);
    r6.w = r6.w * r6.w;
    r6.w = r6.w * r6.w;
    r6.y = r6.y * r6.w;
    r6.y = r7.x * r6.y;
    r6.w = cmp(r6.z != 0.000000);
    r6.w = r8.y ? r6.w : 0;
    r8.xyzw = r10.xyzw * r6.yyyy + r9.xyzw;
    r6.y = r6.z * r6.y + r3.w;
    r8.xyzw = r6.wwww ? r8.xyzw : r9.xyzw;
    r3.w = r6.w ? r6.y : r3.w;
    r9.xyzw = cmp(r5.xyzw < cb0[26].xyxy);
    r10.xyzw = cmp(cb0[26].zwzw < r5.xyzw);
    r9.xyzw = (int4)r9.xyzw | (int4)r10.xyzw;
    r6.yz = (int2)r9.yw | (int2)r9.xz;
    r6.w = t3.SampleLevel(s0_s, r5.xy, 0).x;
    r7.x = r6.w * cb1[65].x + cb1[65].y;
    r6.w = r6.w * cb1[65].z + -cb1[65].w;
    r6.w = 1 / r6.w;
    r6.w = r7.x + r6.w;
    r7.xzw = t4.SampleLevel(s0_s, r5.xy, 0).xyz;
    r7.xzw = r7.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyzw = t7.SampleLevel(s0_s, r5.xy, 0).xyzw;
    r10.x = t8.SampleLevel(s0_s, r5.xy, 0).x;
    r9.xyzw = r10.xxxx * r9.xyzw;
    r12.xyzw = r5.xyzw * cb0[12].xyxy + cb0[12].zwzw;
    r5.x = r1.w ? r6.w : 1;
    r5.xy = r12.xy * r5.xx;
    r10.yzw = cb1[119].xyz * r5.yyy;
    r10.yzw = r5.xxx * cb1[118].xyz + r10.yzw;
    r10.yzw = r6.www * cb1[120].xyz + r10.yzw;
    r10.yzw = cb1[121].xyz + r10.yzw;
    r10.yzw = r10.yzw + r14.xyz;
    r10.yzw = r11.xyz + -r10.yzw;
    r5.x = cb0[13].x * r6.w;
    r5.x = min(r5.x, r6.x);
    r5.x = 8.48528099 * r5.x;
    r5.x = rcp(r5.x);
    r5.y = dot(r1.xyz, r10.yzw);
    r5.x = saturate(-abs(r5.y) * r5.x + 1);
    r5.y = dot(r1.xyz, r7.xzw);
    r5.y = max(0, r5.y);
    r5.y = r5.y * r5.y;
    r5.y = r5.y * r5.y;
    r5.x = r5.x * r5.y;
    r5.x = r7.y * r5.x;
    r5.y = cmp(r10.x != 0.000000);
    r6.yz = cmp((int2)r6.yz == int2(0,0));
    r5.y = r5.y ? r6.y : 0;
    r7.xyzw = r9.xyzw * r5.xxxx + r8.xyzw;
    r5.x = r10.x * r5.x + r3.w;
    r7.xyzw = r5.yyyy ? r7.xyzw : r8.xyzw;
    r5.x = r5.y ? r5.x : r3.w;
    r3.w = t3.SampleLevel(s0_s, r5.zw, 0).x;
    r6.y = r3.w * cb1[65].x + cb1[65].y;
    r3.w = r3.w * cb1[65].z + -cb1[65].w;
    r3.w = 1 / r3.w;
    r3.w = r6.y + r3.w;
    r8.xyz = t4.SampleLevel(s0_s, r5.zw, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyzw = t7.SampleLevel(s0_s, r5.zw, 0).xyzw;
    r5.z = t8.SampleLevel(s0_s, r5.zw, 0).x;
    r9.xyzw = r5.zzzz * r9.xyzw;
    r5.w = r1.w ? r3.w : 1;
    r6.yw = r12.zw * r5.ww;
    r10.xyz = cb1[119].xyz * r6.www;
    r10.xyz = r6.yyy * cb1[118].xyz + r10.xyz;
    r10.xyz = r3.www * cb1[120].xyz + r10.xyz;
    r10.xyz = cb1[121].xyz + r10.xyz;
    r10.xyz = r10.xyz + r14.xyz;
    r10.xyz = r11.xyz + -r10.xyz;
    r3.w = cb0[13].x * r3.w;
    r3.w = min(r3.w, r6.x);
    r3.w = 8.48528099 * r3.w;
    r3.w = rcp(r3.w);
    r5.w = dot(r1.xyz, r10.xyz);
    r3.w = saturate(-abs(r5.w) * r3.w + 1);
    r5.w = dot(r1.xyz, r8.xyz);
    r5.w = max(0, r5.w);
    r5.w = r5.w * r5.w;
    r5.w = r5.w * r5.w;
    r3.w = r5.w * r3.w;
    r3.z = r3.z * r3.w;
    r3.w = cmp(r5.z != 0.000000);
    r3.w = r6.z ? r3.w : 0;
    r6.xyzw = r9.xyzw * r3.zzzz + r7.xyzw;
    r8.x = r5.z * r3.z + r5.x;
    r6.xyz = r3.www ? r6.xyz : r7.xyz;
    r8.y = r6.w;
    r5.y = r7.w;
    r5.xw = r3.ww ? r8.xy : r5.xy;
    if (cb0[23].x != 0) {
      r6.xyz = float3(0,0,0);
      r3.z = 0;
      r5.w = 0;
    } else {
      r3.z = r5.x;
    }
    r5.xyz = cb0[23].yyy * r6.xyz;
  } else {
    r5.xyzw = float4(0,0,0,0);
    r3.z = 0;
  }
  r3.w = cmp(r2.w == 0.000000);
  r6.x = cmp(0 < r2.w);
  r6.y = rcp(r2.w);
  r6.y = r6.x ? r6.y : 0;
  r7.xyzw = r6.yyyy * r4.xyzw;
  r8.xyzw = min(float4(1,1,1,1), r7.wxyz);
  r7.xyzw = max(float4(0,0,0,0), r7.xyzw);
  r9.x = 1;
  r9.yzw = r8.yzw;
  r9.xyzw = r6.xxxx ? r9.xyzw : float4(0,0,0,0);
  r8.y = 1;
  r8.zw = r7.xy;
  r8.xyzw = r6.xxxx ? r8.xyzw : float4(0,0,0,0);
  r6.xy = r6.xx ? r7.zw : 0;
  r6.z = cb0[13].x * r2.z;
  r6.w = r1.w ? r2.z : 1;
  r2.xy = r6.ww * r3.xy;
  r3.x = 2.82842708 * r6.z;
  r3.x = rcp(r3.x);
  r7.xyz = r9.yzw;
  r7.w = r8.x;
  r10.xy = r8.zw;
  r10.zw = r6.xy;
  r3.y = r9.x;
  r6.z = r8.y;
  r6.w = -3;
  while (true) {
    r11.x = cmp(3 < (int)r6.w);
    if (r11.x != 0) break;
    r11.x = cmp((int)r6.w == 0);
    r12.x = (int)r6.w;
    r13.xyzw = r7.xyzw;
    r14.xyzw = r10.xyzw;
    r15.x = r3.y;
    r15.y = r6.z;
    r11.y = -3;
    while (true) {
      r11.z = cmp(3 < (int)r11.y);
      if (r11.z != 0) break;
      r11.z = cmp((int)r11.y == 0);
      r11.z = r11.z ? r11.x : 0;
      if (r11.z != 0) {
        r11.y = 1;
        continue;
      }
      r12.y = (int)r11.y;
      r11.zw = r12.xy * cb0[3].zw + r0.xw;
      r12.yz = cmp(r11.zw < cb0[4].xy);
      r15.zw = cmp(cb0[4].zw < r11.zw);
      r12.yz = (int2)r12.yz | (int2)r15.zw;
      r12.y = (int)r12.z | (int)r12.y;
      r16.xyz = t1.SampleLevel(s0_s, r11.zw, 0).xyz;
      r12.z = t0.SampleLevel(s0_s, r11.zw, 0).x;
      r12.w = r12.z * cb1[65].x + cb1[65].y;
      r12.z = r12.z * cb1[65].z + -cb1[65].w;
      r12.z = 1 / r12.z;
      r17.z = r12.w + r12.z;
      r16.xyz = r16.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r12.z = dot(r16.xyz, r16.xyz);
      r12.z = rsqrt(r12.z);
      r16.xyz = r16.xyz * r12.zzz;
      r18.xyzw = t5.SampleLevel(s0_s, r11.zw, 0).xyzw;
      r12.z = t6.SampleLevel(s0_s, r11.zw, 0).x;
      r12.z = cmp(0 < r12.z);
      r12.w = r12.z ? 1.000000 : 0;
      r18.xyzw = r12.wwww * r18.xyzw;
      r11.zw = r11.zw * cb0[6].xy + cb0[6].zw;
      r15.z = r1.w ? r17.z : 1;
      r17.xy = r15.zz * r11.zw;
      r17.xyz = -r17.xyz + r2.xyz;
      r19.xyz = cb1[53].xyz * r17.yyy;
      r17.xyw = r17.xxx * cb1[52].xyz + r19.xyz;
      r17.xyz = r17.zzz * cb1[54].xyz + r17.xyw;
      r11.z = dot(r1.xyz, r17.xyz);
      r11.z = saturate(-abs(r11.z) * r3.x + 1);
      r11.w = dot(r1.xyz, r16.xyz);
      r11.w = max(0, r11.w);
      r11.w = r11.w * r11.w;
      r11.w = r11.w * r11.w;
      r11.z = r11.z * r11.w;
      r11.w = cmp((int)r12.y == 0);
      r11.w = r11.w ? r12.z : 0;
      r11.z = cmp(0 < r11.z);
      r11.z = (int)r3.w | (int)r11.z;
      r16.xyzw = min(r18.xyzw, r13.xyzw);
      r17.x = min(r15.x, r12.w);
      r18.xyzw = max(r18.xyzw, r14.xyzw);
      r17.y = max(r15.y, r12.w);
      r16.xyzw = r11.zzzz ? r16.xyzw : r13.xyzw;
      r18.xyzw = r11.zzzz ? r18.xyzw : r14.xyzw;
      r12.yz = r11.zz ? r17.xy : r15.xy;
      r13.xyzw = r11.wwww ? r16.xyzw : r13.xyzw;
      r14.xyzw = r11.wwww ? r18.xyzw : r14.xyzw;
      r15.xy = r11.ww ? r12.yz : r15.xy;
      r11.y = (int)r11.y + 1;
    }
    r7.xyzw = r13.xyzw;
    r10.xyzw = r14.xyzw;
    r3.y = r15.x;
    r6.z = r15.y;
    r6.w = (int)r6.w + 1;
  }
  r0.xyzw = cb0[5].xyyy * r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[1].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.x = cmp(0 < r3.z);
    r1.y = rcp(r3.z);
    r1.y = r1.y ? r1.x : 0;
    r5.xyzw = r5.xyzw * r1.yyyy;
    r1.x = r1.x ? 1.000000 : 0;
    r5.xyzw = max(r5.xyzw, r7.xyzw);
    r5.xyzw = min(r5.xyzw, r10.xyzw);
    r1.x = max(r1.x, r3.y);
    r1.x = min(r1.x, r6.z);
    r5.xyzw = r5.xyzw * r3.zzzz;
    r1.x = r1.x * r3.z;
    r1.y = cmp(0 >= r6.z);
    r3.xyzw = r1.yyyy ? float4(0,0,0,0) : r5.xyzw;
    r1.x = r1.y ? 0 : r1.x;
    r1.y = 4096 + -r2.w;
    r1.y = min(r1.x, r1.y);
    r1.z = cmp(0 < r1.x);
    r1.y = r1.y / r1.x;
    r1.y = r1.z ? r1.y : 0;
    r3.xyzw = r3.xyzw * r1.yyyy + r4.xyzw;
    r1.x = r1.x * r1.y + r2.w;
    r2.x = rcp(r1.x);
    r2.y = cmp(0 >= r1.x);
    r2.x = r2.y ? 0 : r2.x;
    r2.xyzw = r3.xyzw * r2.xxxx;
    r2.xyz = min(float3(65504,65504,65504), r2.xyz);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r2.xyzw
    r1.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}