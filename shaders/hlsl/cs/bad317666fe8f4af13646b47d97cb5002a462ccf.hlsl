// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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
  float4 cb0[46];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.xy = max(cb0[4].xy, r0.xy);
  r0.xy = min(cb0[4].zw, r0.xy);
  r1.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r2.z = r0.w + r0.z;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(cb1[31].w < 1);
  r0.w = cb1[65].w + r2.z;
  r0.w = cb1[65].z * r0.w;
  r0.w = 1 / r0.w;
  r1.w = r2.z * cb1[30].z + cb1[31].z;
  r0.w = r0.z ? r0.w : r1.w;
  r3.xy = r0.xy * cb0[6].xy + cb0[6].zw;
  r4.xyz = cb1[123].xyw * r3.yyy;
  r4.xyz = r3.xxx * cb1[122].xyw + r4.xyz;
  r4.xyz = r0.www * cb1[124].xyw + r4.xyz;
  r4.xyz = cb1[125].xyw + r4.xyz;
  r0.w = rcp(r4.z);
  r3.zw = -r4.xy * r0.ww + r3.xy;
  r4.xy = t2.SampleLevel(s0_s, r0.xy, 0).xy;
  r0.w = cmp(0 < r4.x);
  r4.xy = r4.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r3.zw = r0.ww ? r4.xy : r3.zw;
  r3.zw = r3.xy + -r3.zw;
  r3.zw = r3.zw * cb0[39].xy + cb0[39].zw;
  r4.xy = max(cb0[41].xy, r3.zw);
  r4.xy = min(cb0[41].zw, r4.xy);
  r4.xy = cmp(r3.zw != r4.xy);
  r0.w = (int)r4.y | (int)r4.x;
  if (r0.w == 0) {
    r3.zw = cb0[11].xy + r3.zw;
    r3.zw = r3.zw * cb0[40].xy + float2(-0.5,-0.5);
    r4.xyzw = floor(r3.zwzw);
    r3.zw = frac(r3.zw);
    r5.xyzw = float4(0.5,0.5,1.5,0.5) + r4.zwzw;
    r6.xy = float2(1,1) + -r3.wz;
    r0.w = r6.y * r6.x;
    r5.xyzw = cb0[40].zwzw * r5.xyzw;
    r4.xyzw = float4(0.5,1.5,1.5,1.5) + r4.xyzw;
    r6.xy = r6.xy * r3.zw;
    r4.xyzw = cb0[40].zwzw * r4.xyzw;
    r1.w = r3.z * r3.w;
    r7.xyzw = cmp(r5.xyzw < cb0[41].xyxy);
    r8.xyzw = cmp(cb0[41].zwzw < r5.xyzw);
    r7.xyzw = (int4)r7.xyzw | (int4)r8.xyzw;
    r3.zw = (int2)r7.yw | (int2)r7.xz;
    r2.w = t3.SampleLevel(s0_s, r5.xy, 0).x;
    r6.z = r2.w * cb1[65].x + cb1[65].y;
    r2.w = r2.w * cb1[65].z + -cb1[65].w;
    r2.w = 1 / r2.w;
    r2.w = r6.z + r2.w;
    r7.xyz = t4.SampleLevel(s0_s, r5.xy, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyw = t9.SampleLevel(s0_s, r5.xy, 0).yxw;
    r9.xyw = t10.SampleLevel(s0_s, r5.xy, 0).yxw;
    r10.xyw = t11.SampleLevel(s0_s, r5.xy, 0).yxw;
    r11.xyw = t12.SampleLevel(s0_s, r5.xy, 0).yxw;
    r8.yz = r8.yw * r8.xx;
    r9.yz = r9.yw * r9.xx;
    r10.yz = r10.yw * r10.xx;
    r11.yz = r11.yw * r11.xx;
    r12.xyzw = max(cb0[42].xyxy, r5.xyzw);
    r12.xyzw = min(cb0[42].zwzw, r12.xyzw);
    r12.xyzw = cmp(r5.xyzw != r12.xyzw);
    r6.zw = (int2)r12.yw | (int2)r12.xz;
    r8.xyz = r6.zzz ? float3(0,0,0) : r8.xyz;
    r12.xyzw = max(cb0[43].xyxy, r5.xyzw);
    r12.xyzw = min(cb0[43].zwzw, r12.xyzw);
    r12.xyzw = cmp(r5.xyzw != r12.xyzw);
    r12.xy = (int2)r12.yw | (int2)r12.xz;
    r9.xyz = r12.xxx ? float3(0,0,0) : r9.xyz;
    r13.xyzw = max(cb0[44].xyxy, r5.xyzw);
    r13.xyzw = min(cb0[44].zwzw, r13.xyzw);
    r13.xyzw = cmp(r5.xyzw != r13.xyzw);
    r12.xz = (int2)r13.yw | (int2)r13.xz;
    r10.xyz = r12.xxx ? float3(0,0,0) : r10.xyz;
    r13.xyzw = max(cb0[45].xyxy, r5.xyzw);
    r13.xyzw = min(cb0[45].zwzw, r13.xyzw);
    r13.xyzw = cmp(r5.xyzw != r13.xyzw);
    r12.xw = (int2)r13.yw | (int2)r13.xz;
    r11.xyz = r12.xxx ? float3(0,0,0) : r11.xyz;
    r13.xy = r0.xy * cb0[12].xy + cb0[12].zw;
    r6.z = r0.z ? r2.z : 1;
    r13.xy = r13.xy * r6.zz;
    r13.yzw = cb1[53].xyz * r13.yyy;
    r13.xyz = r13.xxx * cb1[52].xyz + r13.yzw;
    r13.xyz = r2.zzz * cb1[54].xyz + r13.xyz;
    r13.xyz = cb1[55].xyz + r13.xyz;
    r14.xyzw = r5.xyzw * cb0[12].xyxy + cb0[12].zwzw;
    r5.x = r0.z ? r2.w : 1;
    r5.xy = r14.xy * r5.xx;
    r15.xyz = cb1[119].xyz * r5.yyy;
    r15.xyz = r5.xxx * cb1[118].xyz + r15.xyz;
    r15.xyz = r2.www * cb1[120].xyz + r15.xyz;
    r15.xyz = cb1[121].xyz + r15.xyz;
    r16.xyz = -cb1[113].xyz + cb1[70].xyz;
    r15.xyz = r16.xyz + r15.xyz;
    r5.x = cb0[13].x * r2.z;
    r17.xyz = -r15.xyz + r13.xyz;
    r2.w = cb0[13].x * r2.w;
    r2.w = min(r2.w, r5.x);
    r2.w = 8.48528099 * r2.w;
    r2.w = rcp(r2.w);
    if (cb0[31].x == 0) {
      r18.xyz = -cb0[23].xyz;
    } else {
      r19.xyz = cb1[70].xyz + cb0[19].xyz;
      r19.xyz = r19.xyz + -r15.xyz;
      r5.y = dot(r19.xyz, r19.xyz);
      r5.y = rsqrt(r5.y);
      r18.xyz = r19.xyz * r5.yyy;
    }
    r5.y = dot(r18.xyz, r17.xyz);
    r18.xyz = -r18.xyz * r5.yyy + r17.xyz;
    r5.y = dot(r18.xyz, r18.xyz);
    r6.z = r2.w * r2.w;
    r5.y = -r5.y * r6.z + 1;
    r5.y = max(0, r5.y);
    r7.w = dot(r1.xyz, -r17.xyz);
    r18.xyz = -r7.www * r1.xyz + -r17.xyz;
    r8.w = dot(r18.xyz, r18.xyz);
    r8.w = sqrt(r8.w);
    r7.w = -r8.w * 0.25 + abs(r7.w);
    r2.w = r7.w * r2.w;
    r2.w = saturate(-r2.w * 6 + 1);
    r5.y = r5.y * r2.w;
    r7.x = dot(r1.xyz, r7.xyz);
    r7.x = max(0, r7.x);
    r7.x = r7.x * r7.x;
    r7.x = r7.x * r7.x;
    r5.y = r7.x * r5.y;
    r5.y = r5.y * r0.w;
    r7.y = cmp(r8.x != 0.000000);
    r3.zw = ~(int2)r3.zw;
    r7.y = r7.y ? r3.z : 0;
    r8.xyz = r8.xyz * r5.yyy;
    r7.yzw = r7.yyy ? r8.xyz : 0;
    if (cb0[32].x == 0) {
      r8.xyz = -cb0[24].xyz;
    } else {
      r18.xyz = cb1[70].xyz + cb0[20].xyz;
      r18.xyz = r18.xyz + -r15.xyz;
      r5.y = dot(r18.xyz, r18.xyz);
      r5.y = rsqrt(r5.y);
      r8.xyz = r18.xyz * r5.yyy;
    }
    r5.y = dot(r8.xyz, r17.xyz);
    r8.xyz = -r8.xyz * r5.yyy + r17.xyz;
    r5.y = dot(r8.xyz, r8.xyz);
    r5.y = -r5.y * r6.z + 1;
    r5.y = max(0, r5.y);
    r5.y = r5.y * r2.w;
    r5.y = r5.y * r7.x;
    r5.y = r5.y * r0.w;
    r8.x = cmp(r9.x != 0.000000);
    r8.x = r8.x ? r3.z : 0;
    r8.yzw = r9.xyz * r5.yyy;
    r8.xyz = r8.xxx ? r8.yzw : 0;
    if (cb0[33].x == 0) {
      r9.xyz = -cb0[25].xyz;
    } else {
      r18.xyz = cb1[70].xyz + cb0[21].xyz;
      r18.xyz = r18.xyz + -r15.xyz;
      r5.y = dot(r18.xyz, r18.xyz);
      r5.y = rsqrt(r5.y);
      r9.xyz = r18.xyz * r5.yyy;
    }
    r5.y = dot(r9.xyz, r17.xyz);
    r9.xyz = -r9.xyz * r5.yyy + r17.xyz;
    r5.y = dot(r9.xyz, r9.xyz);
    r5.y = -r5.y * r6.z + 1;
    r5.y = max(0, r5.y);
    r5.y = r5.y * r2.w;
    r5.y = r5.y * r7.x;
    r5.y = r5.y * r0.w;
    r8.w = cmp(r10.x != 0.000000);
    r8.w = r8.w ? r3.z : 0;
    r9.xyz = r10.xyz * r5.yyy;
    r9.xyz = r8.www ? r9.xyz : 0;
    if (cb0[34].x == 0) {
      r10.xyz = -cb0[26].xyz;
    } else {
      r18.xyz = cb1[70].xyz + cb0[22].xyz;
      r15.xyz = r18.xyz + -r15.xyz;
      r5.y = dot(r15.xyz, r15.xyz);
      r5.y = rsqrt(r5.y);
      r10.xyz = r15.xyz * r5.yyy;
    }
    r5.y = dot(r10.xyz, r17.xyz);
    r10.xyz = -r10.xyz * r5.yyy + r17.xyz;
    r5.y = dot(r10.xyz, r10.xyz);
    r5.y = -r5.y * r6.z + 1;
    r5.y = max(0, r5.y);
    r2.w = r5.y * r2.w;
    r2.w = r2.w * r7.x;
    r0.w = r2.w * r0.w;
    r2.w = cmp(r11.x != 0.000000);
    r2.w = r2.w ? r3.z : 0;
    r10.xyz = r11.xyz * r0.www;
    r10.xyz = r2.www ? r10.xyz : 0;
    r0.w = t3.SampleLevel(s0_s, r5.zw, 0).x;
    r2.w = r0.w * cb1[65].x + cb1[65].y;
    r0.w = r0.w * cb1[65].z + -cb1[65].w;
    r0.w = 1 / r0.w;
    r0.w = r2.w + r0.w;
    r11.xyz = t4.SampleLevel(s0_s, r5.zw, 0).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r15.xyw = t9.SampleLevel(s0_s, r5.zw, 0).yxw;
    r17.xyw = t10.SampleLevel(s0_s, r5.zw, 0).yxw;
    r18.xyw = t11.SampleLevel(s0_s, r5.zw, 0).yxw;
    r19.xyw = t12.SampleLevel(s0_s, r5.zw, 0).yxw;
    r15.yz = r15.yw * r15.xx;
    r17.yz = r17.yw * r17.xx;
    r18.yz = r18.yw * r18.xx;
    r19.yz = r19.yw * r19.xx;
    r5.yzw = r6.www ? float3(0,0,0) : r15.xyz;
    r15.xyz = r12.yyy ? float3(0,0,0) : r17.xyz;
    r12.xyz = r12.zzz ? float3(0,0,0) : r18.xyz;
    r17.xyz = r12.www ? float3(0,0,0) : r19.xyz;
    r2.w = r0.z ? r0.w : 1;
    r6.zw = r14.zw * r2.ww;
    r14.xyz = cb1[119].xyz * r6.www;
    r14.xyz = r6.zzz * cb1[118].xyz + r14.xyz;
    r14.xyz = r0.www * cb1[120].xyz + r14.xyz;
    r14.xyz = cb1[121].xyz + r14.xyz;
    r14.xyz = r14.xyz + r16.xyz;
    r18.xyz = -r14.xyz + r13.xyz;
    r0.w = cb0[13].x * r0.w;
    r0.w = min(r0.w, r5.x);
    r0.w = 8.48528099 * r0.w;
    r0.w = rcp(r0.w);
    if (cb0[31].x == 0) {
      r19.xyz = -cb0[23].xyz;
    } else {
      r20.xyz = cb1[70].xyz + cb0[19].xyz;
      r20.xyz = r20.xyz + -r14.xyz;
      r2.w = dot(r20.xyz, r20.xyz);
      r2.w = rsqrt(r2.w);
      r19.xyz = r20.xyz * r2.www;
    }
    r2.w = dot(r19.xyz, r18.xyz);
    r19.xyz = -r19.xyz * r2.www + r18.xyz;
    r2.w = dot(r19.xyz, r19.xyz);
    r3.z = r0.w * r0.w;
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r6.z = dot(r1.xyz, -r18.xyz);
    r19.xyz = -r6.zzz * r1.xyz + -r18.xyz;
    r6.w = dot(r19.xyz, r19.xyz);
    r6.w = sqrt(r6.w);
    r6.z = -r6.w * 0.25 + abs(r6.z);
    r0.w = r6.z * r0.w;
    r0.w = saturate(-r0.w * 6 + 1);
    r2.w = r2.w * r0.w;
    r6.z = dot(r1.xyz, r11.xyz);
    r6.z = max(0, r6.z);
    r6.z = r6.z * r6.z;
    r6.z = r6.z * r6.z;
    r2.w = r6.z * r2.w;
    r2.w = r6.x * r2.w;
    r6.w = cmp(r5.y != 0.000000);
    r6.w = r6.w ? r3.w : 0;
    r5.yzw = r5.yzw * r2.www + r7.yzw;
    r5.yzw = r6.www ? r5.yzw : r7.yzw;
    if (cb0[32].x == 0) {
      r7.xyz = -cb0[24].xyz;
    } else {
      r11.xyz = cb1[70].xyz + cb0[20].xyz;
      r11.xyz = r11.xyz + -r14.xyz;
      r2.w = dot(r11.xyz, r11.xyz);
      r2.w = rsqrt(r2.w);
      r7.xyz = r11.xyz * r2.www;
    }
    r2.w = dot(r7.xyz, r18.xyz);
    r7.xyz = -r7.xyz * r2.www + r18.xyz;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r6.z;
    r2.w = r6.x * r2.w;
    r6.w = cmp(r15.x != 0.000000);
    r6.w = r6.w ? r3.w : 0;
    r7.xyz = r15.xyz * r2.www + r8.xyz;
    r7.xyz = r6.www ? r7.xyz : r8.xyz;
    if (cb0[33].x == 0) {
      r8.xyz = -cb0[25].xyz;
    } else {
      r11.xyz = cb1[70].xyz + cb0[21].xyz;
      r11.xyz = r11.xyz + -r14.xyz;
      r2.w = dot(r11.xyz, r11.xyz);
      r2.w = rsqrt(r2.w);
      r8.xyz = r11.xyz * r2.www;
    }
    r2.w = dot(r8.xyz, r18.xyz);
    r8.xyz = -r8.xyz * r2.www + r18.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r6.z;
    r2.w = r6.x * r2.w;
    r6.w = cmp(r12.x != 0.000000);
    r6.w = r6.w ? r3.w : 0;
    r8.xyz = r12.xyz * r2.www + r9.xyz;
    r8.xyz = r6.www ? r8.xyz : r9.xyz;
    if (cb0[34].x == 0) {
      r9.xyz = -cb0[26].xyz;
    } else {
      r11.xyz = cb1[70].xyz + cb0[22].xyz;
      r11.xyz = r11.xyz + -r14.xyz;
      r2.w = dot(r11.xyz, r11.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r11.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r18.xyz);
    r9.xyz = -r9.xyz * r2.www + r18.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r6.z;
    r0.w = r6.x * r0.w;
    r2.w = cmp(r17.x != 0.000000);
    r2.w = r2.w ? r3.w : 0;
    r6.xzw = r17.xyz * r0.www + r10.xyz;
    r6.xzw = r2.www ? r6.xzw : r10.xyz;
    r9.xyzw = cmp(r4.xyzw < cb0[41].xyxy);
    r10.xyzw = cmp(cb0[41].zwzw < r4.xyzw);
    r9.xyzw = (int4)r9.xyzw | (int4)r10.xyzw;
    r3.zw = (int2)r9.yw | (int2)r9.xz;
    r0.w = t3.SampleLevel(s0_s, r4.xy, 0).x;
    r2.w = r0.w * cb1[65].x + cb1[65].y;
    r0.w = r0.w * cb1[65].z + -cb1[65].w;
    r0.w = 1 / r0.w;
    r0.w = r2.w + r0.w;
    r9.xyz = t4.SampleLevel(s0_s, r4.xy, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyw = t9.SampleLevel(s0_s, r4.xy, 0).yxw;
    r11.xyw = t10.SampleLevel(s0_s, r4.xy, 0).yxw;
    r12.xyw = t11.SampleLevel(s0_s, r4.xy, 0).yxw;
    r14.xyw = t12.SampleLevel(s0_s, r4.xy, 0).yxw;
    r10.yz = r10.yw * r10.xx;
    r11.yz = r11.yw * r11.xx;
    r12.yz = r12.yw * r12.xx;
    r14.yz = r14.yw * r14.xx;
    r15.xyzw = max(cb0[42].xyxy, r4.xyzw);
    r15.xyzw = min(cb0[42].zwzw, r15.xyzw);
    r15.xyzw = cmp(r4.xyzw != r15.xyzw);
    r15.xy = (int2)r15.yw | (int2)r15.xz;
    r10.xyz = r15.xxx ? float3(0,0,0) : r10.xyz;
    r17.xyzw = max(cb0[43].xyxy, r4.xyzw);
    r17.xyzw = min(cb0[43].zwzw, r17.xyzw);
    r17.xyzw = cmp(r4.xyzw != r17.xyzw);
    r15.xz = (int2)r17.yw | (int2)r17.xz;
    r11.xyz = r15.xxx ? float3(0,0,0) : r11.xyz;
    r17.xyzw = max(cb0[44].xyxy, r4.xyzw);
    r17.xyzw = min(cb0[44].zwzw, r17.xyzw);
    r17.xyzw = cmp(r4.xyzw != r17.xyzw);
    r15.xw = (int2)r17.yw | (int2)r17.xz;
    r12.xyz = r15.xxx ? float3(0,0,0) : r12.xyz;
    r17.xyzw = max(cb0[45].xyxy, r4.xyzw);
    r17.xyzw = min(cb0[45].zwzw, r17.xyzw);
    r17.xyzw = cmp(r4.xyzw != r17.xyzw);
    r17.xy = (int2)r17.yw | (int2)r17.xz;
    r14.xyz = r17.xxx ? float3(0,0,0) : r14.xyz;
    r18.xyzw = r4.xyzw * cb0[12].xyxy + cb0[12].zwzw;
    r2.w = r0.z ? r0.w : 1;
    r4.xy = r18.xy * r2.ww;
    r17.xzw = cb1[119].xyz * r4.yyy;
    r17.xzw = r4.xxx * cb1[118].xyz + r17.xzw;
    r17.xzw = r0.www * cb1[120].xyz + r17.xzw;
    r17.xzw = cb1[121].xyz + r17.xzw;
    r17.xzw = r17.xzw + r16.xyz;
    r19.xyz = -r17.xzw + r13.xyz;
    r0.w = cb0[13].x * r0.w;
    r0.w = min(r0.w, r5.x);
    r0.w = 8.48528099 * r0.w;
    r0.w = rcp(r0.w);
    if (cb0[31].x == 0) {
      r20.xyz = -cb0[23].xyz;
    } else {
      r21.xyz = cb1[70].xyz + cb0[19].xyz;
      r21.xyz = r21.xyz + -r17.xzw;
      r2.w = dot(r21.xyz, r21.xyz);
      r2.w = rsqrt(r2.w);
      r20.xyz = r21.xyz * r2.www;
    }
    r2.w = dot(r20.xyz, r19.xyz);
    r20.xyz = -r20.xyz * r2.www + r19.xyz;
    r2.w = dot(r20.xyz, r20.xyz);
    r4.x = r0.w * r0.w;
    r2.w = -r2.w * r4.x + 1;
    r2.w = max(0, r2.w);
    r4.y = dot(r1.xyz, -r19.xyz);
    r20.xyz = -r4.yyy * r1.xyz + -r19.xyz;
    r7.w = dot(r20.xyz, r20.xyz);
    r7.w = sqrt(r7.w);
    r4.y = -r7.w * 0.25 + abs(r4.y);
    r0.w = r4.y * r0.w;
    r0.w = saturate(-r0.w * 6 + 1);
    r2.w = r2.w * r0.w;
    r4.y = dot(r1.xyz, r9.xyz);
    r4.y = max(0, r4.y);
    r4.y = r4.y * r4.y;
    r4.y = r4.y * r4.y;
    r2.w = r4.y * r2.w;
    r2.w = r6.y * r2.w;
    r7.w = cmp(r10.x != 0.000000);
    r3.zw = ~(int2)r3.zw;
    r7.w = r7.w ? r3.z : 0;
    r9.xyz = r10.xyz * r2.www + r5.yzw;
    r5.yzw = r7.www ? r9.xyz : r5.yzw;
    if (cb0[32].x == 0) {
      r9.xyz = -cb0[24].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[20].xyz;
      r10.xyz = r10.xyz + -r17.xzw;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r19.xyz);
    r9.xyz = -r9.xyz * r2.www + r19.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r4.x + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r4.y;
    r2.w = r6.y * r2.w;
    r7.w = cmp(r11.x != 0.000000);
    r7.w = r7.w ? r3.z : 0;
    r9.xyz = r11.xyz * r2.www + r7.xyz;
    r7.xyz = r7.www ? r9.xyz : r7.xyz;
    if (cb0[33].x == 0) {
      r9.xyz = -cb0[25].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[21].xyz;
      r10.xyz = r10.xyz + -r17.xzw;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r19.xyz);
    r9.xyz = -r9.xyz * r2.www + r19.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r4.x + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r4.y;
    r2.w = r6.y * r2.w;
    r7.w = cmp(r12.x != 0.000000);
    r7.w = r7.w ? r3.z : 0;
    r9.xyz = r12.xyz * r2.www + r8.xyz;
    r8.xyz = r7.www ? r9.xyz : r8.xyz;
    if (cb0[34].x == 0) {
      r9.xyz = -cb0[26].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[22].xyz;
      r10.xyz = r10.xyz + -r17.xzw;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r19.xyz);
    r9.xyz = -r9.xyz * r2.www + r19.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r4.x + 1;
    r2.w = max(0, r2.w);
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r4.y;
    r0.w = r6.y * r0.w;
    r2.w = cmp(r14.x != 0.000000);
    r2.w = r2.w ? r3.z : 0;
    r9.xyz = r14.xyz * r0.www + r6.xzw;
    r6.xyz = r2.www ? r9.xyz : r6.xzw;
    r0.w = t3.SampleLevel(s0_s, r4.zw, 0).x;
    r2.w = r0.w * cb1[65].x + cb1[65].y;
    r0.w = r0.w * cb1[65].z + -cb1[65].w;
    r0.w = 1 / r0.w;
    r0.w = r2.w + r0.w;
    r9.xyz = t4.SampleLevel(s0_s, r4.zw, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyw = t9.SampleLevel(s0_s, r4.zw, 0).yxw;
    r11.xyw = t10.SampleLevel(s0_s, r4.zw, 0).yxw;
    r12.xyw = t11.SampleLevel(s0_s, r4.zw, 0).yxw;
    r4.xyw = t12.SampleLevel(s0_s, r4.zw, 0).yxw;
    r10.yz = r10.yw * r10.xx;
    r11.yz = r11.yw * r11.xx;
    r12.yz = r12.yw * r12.xx;
    r4.yz = r4.yw * r4.xx;
    r10.xyz = r15.yyy ? float3(0,0,0) : r10.xyz;
    r11.xyz = r15.zzz ? float3(0,0,0) : r11.xyz;
    r12.xyz = r15.www ? float3(0,0,0) : r12.xyz;
    r4.xyz = r17.yyy ? float3(0,0,0) : r4.xyz;
    r2.w = r0.z ? r0.w : 1;
    r14.xy = r18.zw * r2.ww;
    r14.yzw = cb1[119].xyz * r14.yyy;
    r14.xyz = r14.xxx * cb1[118].xyz + r14.yzw;
    r14.xyz = r0.www * cb1[120].xyz + r14.xyz;
    r14.xyz = cb1[121].xyz + r14.xyz;
    r14.xyz = r14.xyz + r16.xyz;
    r13.xyz = -r14.xyz + r13.xyz;
    r0.w = cb0[13].x * r0.w;
    r0.w = min(r0.w, r5.x);
    r0.w = 8.48528099 * r0.w;
    r0.w = rcp(r0.w);
    if (cb0[31].x == 0) {
      r15.xyz = -cb0[23].xyz;
    } else {
      r16.xyz = cb1[70].xyz + cb0[19].xyz;
      r16.xyz = r16.xyz + -r14.xyz;
      r2.w = dot(r16.xyz, r16.xyz);
      r2.w = rsqrt(r2.w);
      r15.xyz = r16.xyz * r2.www;
    }
    r2.w = dot(r15.xyz, r13.xyz);
    r15.xyz = -r15.xyz * r2.www + r13.xyz;
    r2.w = dot(r15.xyz, r15.xyz);
    r3.z = r0.w * r0.w;
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r4.w = dot(r1.xyz, -r13.xyz);
    r15.xyz = -r4.www * r1.xyz + -r13.xyz;
    r5.x = dot(r15.xyz, r15.xyz);
    r5.x = sqrt(r5.x);
    r4.w = -r5.x * 0.25 + abs(r4.w);
    r0.w = r4.w * r0.w;
    r0.w = saturate(-r0.w * 6 + 1);
    r2.w = r2.w * r0.w;
    r4.w = dot(r1.xyz, r9.xyz);
    r4.w = max(0, r4.w);
    r4.w = r4.w * r4.w;
    r4.w = r4.w * r4.w;
    r2.w = r4.w * r2.w;
    r2.w = r2.w * r1.w;
    r5.x = cmp(r10.x != 0.000000);
    r5.x = r5.x ? r3.w : 0;
    r9.xyz = r10.xyz * r2.www + r5.yzw;
    r5.xyz = r5.xxx ? r9.xyz : r5.yzw;
    if (cb0[32].x == 0) {
      r9.xyz = -cb0[24].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[20].xyz;
      r10.xyz = r10.xyz + -r14.xyz;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r13.xyz);
    r9.xyz = -r9.xyz * r2.www + r13.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r4.w;
    r2.w = r2.w * r1.w;
    r5.w = cmp(r11.x != 0.000000);
    r5.w = r5.w ? r3.w : 0;
    r9.xyz = r11.xyz * r2.www + r7.xyz;
    r7.xyz = r5.www ? r9.xyz : r7.xyz;
    if (cb0[33].x == 0) {
      r9.xyz = -cb0[25].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[21].xyz;
      r10.xyz = r10.xyz + -r14.xyz;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r13.xyz);
    r9.xyz = -r9.xyz * r2.www + r13.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r0.w;
    r2.w = r2.w * r4.w;
    r2.w = r2.w * r1.w;
    r5.w = cmp(r12.x != 0.000000);
    r5.w = r5.w ? r3.w : 0;
    r9.xyz = r12.xyz * r2.www + r8.xyz;
    r8.xyz = r5.www ? r9.xyz : r8.xyz;
    if (cb0[34].x == 0) {
      r9.xyz = -cb0[26].xyz;
    } else {
      r10.xyz = cb1[70].xyz + cb0[22].xyz;
      r10.xyz = r10.xyz + -r14.xyz;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r9.xyz = r10.xyz * r2.www;
    }
    r2.w = dot(r9.xyz, r13.xyz);
    r9.xyz = -r9.xyz * r2.www + r13.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = -r2.w * r3.z + 1;
    r2.w = max(0, r2.w);
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r4.w;
    r0.w = r1.w * r0.w;
    r1.w = cmp(r4.x != 0.000000);
    r1.w = r1.w ? r3.w : 0;
    r4.xyz = r4.xyz * r0.www + r6.xyz;
    r4.xyz = r1.www ? r4.xyz : r6.xyz;
    if (cb0[35].x != 0) {
      r5.xyz = float3(0,0,0);
    }
    if (cb0[36].x != 0) {
      r7.xyz = float3(0,0,0);
    }
    if (cb0[37].x != 0) {
      r8.xyz = float3(0,0,0);
    }
    if (cb0[38].x != 0) {
      r4.xyz = float3(0,0,0);
    }
  } else {
    r5.xyz = float3(0,0,0);
    r7.xyz = float3(0,0,0);
    r8.xyz = float3(0,0,0);
    r4.xyz = float3(0,0,0);
  }
  r6.xyzw = cb0[3].zwzw * float4(1,0,0,1) + r0.xyxy;
  r9.xyzw = -cb0[3].zwzw * float4(1,0,0,1) + r0.xyxy;
  r0.w = t0.SampleLevel(s0_s, r6.xy, 0).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r10.z = r1.w + r0.w;
  r0.w = t0.SampleLevel(s0_s, r9.xy, 0).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r11.z = r1.w + r0.w;
  r12.xyzw = r6.xyzw * cb0[6].xyxy + cb0[6].zwzw;
  r0.w = r0.z ? r10.z : 1;
  r10.xy = r12.xy * r0.ww;
  r13.xyz = cb1[53].xyz * r10.yyy;
  r13.xyz = r10.xxx * cb1[52].xyz + r13.xyz;
  r13.xyz = r10.zzz * cb1[54].xyz + r13.xyz;
  r13.xyz = cb1[55].xyz + r13.xyz;
  if (cb0[31].x == 0) {
    r14.xyz = -cb0[23].xyz;
  } else {
    r15.xyz = cb1[70].xyz + cb0[19].xyz;
    r15.xyz = r15.xyz + -r13.xyz;
    r0.w = dot(r15.xyz, r15.xyz);
    r0.w = rsqrt(r0.w);
    r14.xyz = r15.xyz * r0.www;
  }
  if (cb0[32].x == 0) {
    r15.xyz = -cb0[24].xyz;
  } else {
    r16.xyz = cb1[70].xyz + cb0[20].xyz;
    r16.xyz = r16.xyz + -r13.xyz;
    r0.w = dot(r16.xyz, r16.xyz);
    r0.w = rsqrt(r0.w);
    r15.xyz = r16.xyz * r0.www;
  }
  if (cb0[33].x == 0) {
    r16.xyz = -cb0[25].xyz;
  } else {
    r17.xyz = cb1[70].xyz + cb0[21].xyz;
    r17.xyz = r17.xyz + -r13.xyz;
    r0.w = dot(r17.xyz, r17.xyz);
    r0.w = rsqrt(r0.w);
    r16.xyz = r17.xyz * r0.www;
  }
  if (cb0[34].x == 0) {
    r17.xyz = -cb0[26].xyz;
  } else {
    r18.xyz = cb1[70].xyz + cb0[22].xyz;
    r13.xyz = r18.xyz + -r13.xyz;
    r0.w = dot(r13.xyz, r13.xyz);
    r0.w = rsqrt(r0.w);
    r17.xyz = r13.xyz * r0.www;
  }
  r13.xyzw = r9.xyzw * cb0[6].xyxy + cb0[6].zwzw;
  r0.w = r0.z ? r11.z : 1;
  r11.xy = r13.xy * r0.ww;
  r18.xyz = cb1[53].xyz * r11.yyy;
  r18.xyz = r11.xxx * cb1[52].xyz + r18.xyz;
  r18.xyz = r11.zzz * cb1[54].xyz + r18.xyz;
  r18.xyz = cb1[55].xyz + r18.xyz;
  if (cb0[31].x == 0) {
    r19.xyz = -cb0[23].xyz;
  } else {
    r20.xyz = cb1[70].xyz + cb0[19].xyz;
    r20.xyz = r20.xyz + -r18.xyz;
    r0.w = dot(r20.xyz, r20.xyz);
    r0.w = rsqrt(r0.w);
    r19.xyz = r20.xyz * r0.www;
  }
  if (cb0[32].x == 0) {
    r20.xyz = -cb0[24].xyz;
  } else {
    r21.xyz = cb1[70].xyz + cb0[20].xyz;
    r21.xyz = r21.xyz + -r18.xyz;
    r0.w = dot(r21.xyz, r21.xyz);
    r0.w = rsqrt(r0.w);
    r20.xyz = r21.xyz * r0.www;
  }
  if (cb0[33].x == 0) {
    r21.xyz = -cb0[25].xyz;
  } else {
    r22.xyz = cb1[70].xyz + cb0[21].xyz;
    r22.xyz = r22.xyz + -r18.xyz;
    r0.w = dot(r22.xyz, r22.xyz);
    r0.w = rsqrt(r0.w);
    r21.xyz = r22.xyz * r0.www;
  }
  if (cb0[34].x == 0) {
    r22.xyz = -cb0[26].xyz;
  } else {
    r23.xyz = cb1[70].xyz + cb0[22].xyz;
    r18.xyz = r23.xyz + -r18.xyz;
    r0.w = dot(r18.xyz, r18.xyz);
    r0.w = rsqrt(r0.w);
    r22.xyz = r18.xyz * r0.www;
  }
  r0.w = t0.SampleLevel(s0_s, r6.zw, 0).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r18.z = r1.w + r0.w;
  r0.w = t0.SampleLevel(s0_s, r9.zw, 0).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r23.z = r1.w + r0.w;
  r0.w = r0.z ? r18.z : 1;
  r18.xy = r12.zw * r0.ww;
  r12.xyz = cb1[53].xyz * r18.yyy;
  r12.xyz = r18.xxx * cb1[52].xyz + r12.xyz;
  r12.xyz = r18.zzz * cb1[54].xyz + r12.xyz;
  r12.xyz = cb1[55].xyz + r12.xyz;
  if (cb0[31].x == 0) {
    r24.xyz = -cb0[23].xyz;
  } else {
    r25.xyz = cb1[70].xyz + cb0[19].xyz;
    r25.xyz = r25.xyz + -r12.xyz;
    r0.w = dot(r25.xyz, r25.xyz);
    r0.w = rsqrt(r0.w);
    r24.xyz = r25.xyz * r0.www;
  }
  if (cb0[32].x == 0) {
    r25.xyz = -cb0[24].xyz;
  } else {
    r26.xyz = cb1[70].xyz + cb0[20].xyz;
    r26.xyz = r26.xyz + -r12.xyz;
    r0.w = dot(r26.xyz, r26.xyz);
    r0.w = rsqrt(r0.w);
    r25.xyz = r26.xyz * r0.www;
  }
  if (cb0[33].x == 0) {
    r26.xyz = -cb0[25].xyz;
  } else {
    r27.xyz = cb1[70].xyz + cb0[21].xyz;
    r27.xyz = r27.xyz + -r12.xyz;
    r0.w = dot(r27.xyz, r27.xyz);
    r0.w = rsqrt(r0.w);
    r26.xyz = r27.xyz * r0.www;
  }
  if (cb0[34].x == 0) {
    r27.xyz = -cb0[26].xyz;
  } else {
    r28.xyz = cb1[70].xyz + cb0[22].xyz;
    r12.xyz = r28.xyz + -r12.xyz;
    r0.w = dot(r12.xyz, r12.xyz);
    r0.w = rsqrt(r0.w);
    r27.xyz = r12.xyz * r0.www;
  }
  r0.w = r0.z ? r23.z : 1;
  r23.xy = r13.zw * r0.ww;
  r12.xyz = cb1[53].xyz * r23.yyy;
  r12.xyz = r23.xxx * cb1[52].xyz + r12.xyz;
  r12.xyz = r23.zzz * cb1[54].xyz + r12.xyz;
  r12.xyz = cb1[55].xyz + r12.xyz;
  if (cb0[31].x == 0) {
    r13.xyz = -cb0[23].xyz;
  } else {
    r28.xyz = cb1[70].xyz + cb0[19].xyz;
    r28.xyz = r28.xyz + -r12.xyz;
    r0.w = dot(r28.xyz, r28.xyz);
    r0.w = rsqrt(r0.w);
    r13.xyz = r28.xyz * r0.www;
  }
  if (cb0[32].x == 0) {
    r28.xyz = -cb0[24].xyz;
  } else {
    r29.xyz = cb1[70].xyz + cb0[20].xyz;
    r29.xyz = r29.xyz + -r12.xyz;
    r0.w = dot(r29.xyz, r29.xyz);
    r0.w = rsqrt(r0.w);
    r28.xyz = r29.xyz * r0.www;
  }
  if (cb0[33].x == 0) {
    r29.xyz = -cb0[25].xyz;
  } else {
    r30.xyz = cb1[70].xyz + cb0[21].xyz;
    r30.xyz = r30.xyz + -r12.xyz;
    r0.w = dot(r30.xyz, r30.xyz);
    r0.w = rsqrt(r0.w);
    r29.xyz = r30.xyz * r0.www;
  }
  if (cb0[34].x == 0) {
    r30.xyz = -cb0[26].xyz;
  } else {
    r31.xyz = cb1[70].xyz + cb0[22].xyz;
    r12.xyz = r31.xyz + -r12.xyz;
    r0.w = dot(r12.xyz, r12.xyz);
    r0.w = rsqrt(r0.w);
    r30.xyz = r12.xyz * r0.www;
  }
  r12.xyzw = cb0[5].xyyy * r0.xyyy;
  r12.xyzw = (uint4)r12.xyzw;
  r3.zw = cmp((uint2)r12.xw < asuint(cb0[1].xy));
  r0.w = r3.w ? r3.z : 0;
  if (r0.w != 0) {
    r31.xyzw = t5.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r32.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r33.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r34.xyzw = t8.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.x = cmp(0 < r31.y);
    r0.y = r0.x ? 1.000000 : 0;
    r3.zw = r31.xw * r0.yy;
    r0.w = cmp(0 < r32.y);
    r1.w = r0.w ? 1.000000 : 0;
    r31.xy = r32.xw * r1.ww;
    r2.w = cmp(0 < r33.y);
    r4.w = r2.w ? 1.000000 : 0;
    r32.xy = r33.xw * r4.ww;
    r5.w = cmp(0 < r34.y);
    r7.w = r5.w ? 1.000000 : 0;
    r33.xy = r34.xw * r7.ww;
    r34.xy = r0.xx ? float2(1,-1) : float2(0,-0);
    r8.w = r0.x ? r34.x : 0;
    r35.yz = r8.ww * r3.zw;
    r34.xw = r0.ww ? float2(1,-1) : float2(0,-0);
    r8.w = r0.w ? r34.x : 0;
    r36.yz = r31.xy * r8.ww;
    r37.xy = r2.ww ? float2(1,-1) : float2(0,-0);
    r8.w = r2.w ? r37.x : 0;
    r38.yz = r32.xy * r8.ww;
    r37.xz = r5.ww ? float2(1,-1) : float2(0,-0);
    r8.w = r5.w ? r37.x : 0;
    r39.yz = r33.xy * r8.ww;
    r40.xy = r35.yz * r35.yz;
    r8.w = cmp(r31.z != -1.000000);
    r10.w = min(100000, r31.z);
    r40.z = r8.w ? r10.w : 100000;
    r35.x = 1;
    r35.xyz = r0.xxx ? r35.xyz : 0;
    r40.xyz = r0.xxx ? r40.xyz : float3(0,0,100000);
    r41.xy = r36.yz * r36.yz;
    r0.x = cmp(r32.z != -1.000000);
    r8.w = min(100000, r32.z);
    r41.z = r0.x ? r8.w : 100000;
    r36.x = 1;
    r36.xyz = r0.www ? r36.xyz : 0;
    r41.xyz = r0.www ? r41.xyz : float3(0,0,100000);
    r42.xy = r38.yz * r38.yz;
    r0.x = cmp(r33.z != -1.000000);
    r0.w = min(100000, r33.z);
    r42.z = r0.x ? r0.w : 100000;
    r38.x = 1;
    r38.xyz = r2.www ? r38.xyz : 0;
    r42.xyz = r2.www ? r42.xyz : float3(0,0,100000);
    r43.xy = r39.yz * r39.yz;
    r0.x = cmp(r34.z != -1.000000);
    r0.w = min(100000, r34.z);
    r43.z = r0.x ? r0.w : 100000;
    r39.x = 1;
    r39.xyz = r5.www ? r39.xyz : 0;
    r43.xyz = r5.www ? r43.xyz : float3(0,0,100000);
    r44.xyzw = cmp(r6.xyzw < cb0[4].xyxy);
    r45.xyzw = cmp(cb0[4].zwzw < r6.xyzw);
    r44.xyzw = (int4)r44.xyzw | (int4)r45.xyzw;
    r0.xw = (int2)r44.yw | (int2)r44.xz;
    r44.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
    r44.xyz = r44.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r44.xyz, r44.xyz);
    r2.w = rsqrt(r2.w);
    r44.xyz = r44.xyz * r2.www;
    r45.xyzw = t5.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r46.xyzw = t6.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r47.xyzw = t7.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r48.xyzw = t8.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r49.xyzw = cmp(r9.xyzw < cb0[4].xyxy);
    r50.xyzw = cmp(cb0[4].zwzw < r9.xyzw);
    r49.xyzw = (int4)r49.xyzw | (int4)r50.xyzw;
    r6.xy = (int2)r49.yw | (int2)r49.xz;
    r49.xyz = t1.SampleLevel(s0_s, r9.xy, 0).xyz;
    r49.xyz = r49.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r49.xyz, r49.xyz);
    r2.w = rsqrt(r2.w);
    r49.xyz = r49.xyz * r2.www;
    r50.xyzw = t5.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r51.xyzw = t6.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r52.xyzw = t7.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r53.xyzw = t8.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r2.w = cmp(0 < r45.y);
    r5.w = r2.w ? 1.000000 : 0;
    r9.xy = r45.xw * r5.ww;
    r8.w = cmp(0 < r46.y);
    r10.w = r8.w ? 1.000000 : 0;
    r37.xw = r46.xw * r10.ww;
    r11.w = cmp(0 < r47.y);
    r13.w = r11.w ? 1.000000 : 0;
    r45.xy = r47.xw * r13.ww;
    r14.w = cmp(0 < r48.y);
    r15.w = r14.w ? 1.000000 : 0;
    r46.xy = r48.xw * r15.ww;
    r16.w = cmp(0 < r50.y);
    r17.w = r16.w ? 1.000000 : 0;
    r47.xy = r50.xw * r17.ww;
    r18.w = cmp(0 < r51.y);
    r19.w = r18.w ? 1.000000 : 0;
    r48.xy = r51.xw * r19.ww;
    r20.w = cmp(0 < r52.y);
    r21.w = r20.w ? 1.000000 : 0;
    r50.xy = r52.xw * r21.ww;
    r22.w = cmp(0 < r53.y);
    r23.w = r22.w ? 1.000000 : 0;
    r51.xy = r53.xw * r23.ww;
    r0.z = r0.z ? r2.z : 1;
    r2.xy = r3.xy * r0.zz;
    r10.xyz = -r10.xyz + r2.xyz;
    r52.xyw = cb1[53].xyz * r10.yyy;
    r52.xyw = r10.xxx * cb1[52].xyz + r52.xyw;
    r10.xyz = r10.zzz * cb1[54].xyz + r52.xyw;
    r0.z = rcp(r45.z);
    r3.x = dot(r14.xyz, r10.xyz);
    r14.xyz = -r14.xyz * r3.xxx + r10.xyz;
    r3.x = dot(r14.xyz, r14.xyz);
    r3.y = r0.z * r0.z;
    r3.x = -r3.x * r3.y + 1;
    r3.x = max(0, r3.x);
    r3.y = dot(r1.xyz, -r10.xyz);
    r14.xyz = -r3.yyy * r1.xyz + -r10.xyz;
    r14.x = dot(r14.xyz, r14.xyz);
    r14.x = sqrt(r14.x);
    r3.y = -r14.x * 0.25 + abs(r3.y);
    r3.y = 6 * r3.y;
    r0.z = saturate(-r3.y * r0.z + 1);
    r0.z = r3.x * r0.z;
    r3.x = dot(r1.xyz, r44.xyz);
    r3.x = max(0, r3.x);
    r3.x = r3.x * r3.x;
    r3.x = r3.x * r3.x;
    r0.z = r3.x * r0.z;
    r0.xw = ~(int2)r0.xw;
    r2.w = r0.x ? r2.w : 0;
    r14.x = r5.w * r0.z + r35.x;
    r14.yz = r9.xy * r0.zz + r35.yz;
    r9.xy = r9.xy * r9.xy;
    r44.xy = r9.xy * r0.zz + r40.xy;
    r0.z = cmp(0 < r0.z);
    r5.w = cmp(r45.z != -1.000000);
    r9.x = min(r45.z, r40.z);
    r5.w = r5.w ? r9.x : r40.z;
    r44.z = r0.z ? r5.w : r40.z;
    r14.xyz = r2.www ? r14.xyz : r35.xyz;
    r35.xyz = r2.www ? r44.xyz : r40.xyz;
    r0.z = rcp(r46.z);
    r2.w = dot(r15.xyz, r10.xyz);
    r15.xyz = -r15.xyz * r2.www + r10.xyz;
    r2.w = dot(r15.xyz, r15.xyz);
    r5.w = r0.z * r0.z;
    r2.w = -r2.w * r5.w + 1;
    r2.w = max(0, r2.w);
    r0.z = saturate(-r3.y * r0.z + 1);
    r0.z = r2.w * r0.z;
    r0.z = r0.z * r3.x;
    r2.w = r0.x ? r8.w : 0;
    r15.x = r10.w * r0.z + r36.x;
    r15.yz = r37.xw * r0.zz + r36.yz;
    r9.xy = r37.xw * r37.xw;
    r40.xy = r9.xy * r0.zz + r41.xy;
    r0.z = cmp(0 < r0.z);
    r5.w = cmp(r46.z != -1.000000);
    r8.w = min(r46.z, r41.z);
    r5.w = r5.w ? r8.w : r41.z;
    r40.z = r0.z ? r5.w : r41.z;
    r15.xyz = r2.www ? r15.xyz : r36.xyz;
    r36.xyz = r2.www ? r40.xyz : r41.xyz;
    r0.z = rcp(r47.z);
    r2.w = dot(r16.xyz, r10.xyz);
    r16.xyz = -r16.xyz * r2.www + r10.xyz;
    r2.w = dot(r16.xyz, r16.xyz);
    r5.w = r0.z * r0.z;
    r2.w = -r2.w * r5.w + 1;
    r2.w = max(0, r2.w);
    r0.z = saturate(-r3.y * r0.z + 1);
    r0.z = r2.w * r0.z;
    r0.z = r0.z * r3.x;
    r2.w = r0.x ? r11.w : 0;
    r16.x = r13.w * r0.z + r38.x;
    r16.yz = r45.xy * r0.zz + r38.yz;
    r9.xy = r45.xy * r45.xy;
    r40.xy = r9.xy * r0.zz + r42.xy;
    r0.z = cmp(0 < r0.z);
    r5.w = cmp(r47.z != -1.000000);
    r8.w = min(r47.z, r42.z);
    r5.w = r5.w ? r8.w : r42.z;
    r40.z = r0.z ? r5.w : r42.z;
    r16.xyz = r2.www ? r16.xyz : r38.xyz;
    r38.xyz = r2.www ? r40.xyz : r42.xyz;
    r0.z = rcp(r48.z);
    r2.w = dot(r17.xyz, r10.xyz);
    r10.xyz = -r17.xyz * r2.www + r10.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r5.w = r0.z * r0.z;
    r2.w = -r2.w * r5.w + 1;
    r2.w = max(0, r2.w);
    r0.z = saturate(-r3.y * r0.z + 1);
    r0.z = r2.w * r0.z;
    r0.z = r0.z * r3.x;
    r0.x = r0.x ? r14.w : 0;
    r10.x = r15.w * r0.z + r39.x;
    r10.yz = r46.xy * r0.zz + r39.yz;
    r3.xy = r46.xy * r46.xy;
    r17.xy = r3.xy * r0.zz + r43.xy;
    r0.z = cmp(0 < r0.z);
    r2.w = cmp(r48.z != -1.000000);
    r3.x = min(r48.z, r43.z);
    r2.w = r2.w ? r3.x : r43.z;
    r17.z = r0.z ? r2.w : r43.z;
    r10.xyz = r0.xxx ? r10.xyz : r39.xyz;
    r17.xyz = r0.xxx ? r17.xyz : r43.xyz;
    r11.xyz = -r11.xyz + r2.xyz;
    r39.xyz = cb1[53].xyz * r11.yyy;
    r11.xyw = r11.xxx * cb1[52].xyz + r39.xyz;
    r11.xyz = r11.zzz * cb1[54].xyz + r11.xyw;
    r0.x = rcp(r50.z);
    r0.z = dot(r19.xyz, r11.xyz);
    r19.xyz = -r19.xyz * r0.zzz + r11.xyz;
    r0.z = dot(r19.xyz, r19.xyz);
    r2.w = r0.x * r0.x;
    r0.z = -r0.z * r2.w + 1;
    r0.z = max(0, r0.z);
    r2.w = dot(r1.xyz, -r11.xyz);
    r19.xyz = -r2.www * r1.xyz + -r11.xyz;
    r3.x = dot(r19.xyz, r19.xyz);
    r3.x = sqrt(r3.x);
    r2.w = -r3.x * 0.25 + abs(r2.w);
    r2.w = 6 * r2.w;
    r0.x = saturate(-r2.w * r0.x + 1);
    r0.x = r0.z * r0.x;
    r0.z = dot(r1.xyz, r49.xyz);
    r0.z = max(0, r0.z);
    r0.z = r0.z * r0.z;
    r0.z = r0.z * r0.z;
    r0.x = r0.x * r0.z;
    r3.xy = ~(int2)r6.xy;
    r5.w = r16.w ? r3.x : 0;
    r19.x = r17.w * r0.x + r14.x;
    r19.yz = r47.xy * r0.xx + r14.yz;
    r6.xy = r47.xy * r47.xy;
    r39.xy = r6.xy * r0.xx + r35.xy;
    r0.x = cmp(0 < r0.x);
    r6.x = cmp(r50.z != -1.000000);
    r6.y = min(r35.z, r50.z);
    r6.x = r6.x ? r6.y : r35.z;
    r39.z = r0.x ? r6.x : r35.z;
    r14.xyz = r5.www ? r19.xyz : r14.xyz;
    r19.xyz = r5.www ? r39.xyz : r35.xyz;
    r0.x = rcp(r51.z);
    r5.w = dot(r20.xyz, r11.xyz);
    r20.xyz = -r20.xyz * r5.www + r11.xyz;
    r5.w = dot(r20.xyz, r20.xyz);
    r6.x = r0.x * r0.x;
    r5.w = -r5.w * r6.x + 1;
    r5.w = max(0, r5.w);
    r0.x = saturate(-r2.w * r0.x + 1);
    r0.x = r5.w * r0.x;
    r0.x = r0.x * r0.z;
    r5.w = r18.w ? r3.x : 0;
    r20.x = r19.w * r0.x + r15.x;
    r20.yz = r48.xy * r0.xx + r15.yz;
    r6.xy = r48.xy * r48.xy;
    r35.xy = r6.xy * r0.xx + r36.xy;
    r0.x = cmp(0 < r0.x);
    r6.x = cmp(r51.z != -1.000000);
    r6.y = min(r36.z, r51.z);
    r6.x = r6.x ? r6.y : r36.z;
    r35.z = r0.x ? r6.x : r36.z;
    r15.xyz = r5.www ? r20.xyz : r15.xyz;
    r20.xyz = r5.www ? r35.xyz : r36.xyz;
    r0.x = rcp(r52.z);
    r5.w = dot(r21.xyz, r11.xyz);
    r21.xyz = -r21.xyz * r5.www + r11.xyz;
    r5.w = dot(r21.xyz, r21.xyz);
    r6.x = r0.x * r0.x;
    r5.w = -r5.w * r6.x + 1;
    r5.w = max(0, r5.w);
    r0.x = saturate(-r2.w * r0.x + 1);
    r0.x = r5.w * r0.x;
    r0.x = r0.x * r0.z;
    r5.w = r20.w ? r3.x : 0;
    r21.x = r21.w * r0.x + r16.x;
    r21.yz = r50.xy * r0.xx + r16.yz;
    r6.xy = r50.xy * r50.xy;
    r35.xy = r6.xy * r0.xx + r38.xy;
    r0.x = cmp(0 < r0.x);
    r6.x = cmp(r52.z != -1.000000);
    r6.y = min(r38.z, r52.z);
    r6.x = r6.x ? r6.y : r38.z;
    r35.z = r0.x ? r6.x : r38.z;
    r16.xyz = r5.www ? r21.xyz : r16.xyz;
    r21.xyz = r5.www ? r35.xyz : r38.xyz;
    r0.x = rcp(r53.z);
    r5.w = dot(r22.xyz, r11.xyz);
    r11.xyz = -r22.xyz * r5.www + r11.xyz;
    r5.w = dot(r11.xyz, r11.xyz);
    r6.x = r0.x * r0.x;
    r5.w = -r5.w * r6.x + 1;
    r5.w = max(0, r5.w);
    r0.x = saturate(-r2.w * r0.x + 1);
    r0.x = r5.w * r0.x;
    r0.x = r0.x * r0.z;
    r0.z = r22.w ? r3.x : 0;
    r11.x = r23.w * r0.x + r10.x;
    r11.yz = r51.xy * r0.xx + r10.yz;
    r6.xy = r51.xy * r51.xy;
    r22.xy = r6.xy * r0.xx + r17.xy;
    r0.x = cmp(0 < r0.x);
    r2.w = cmp(r53.z != -1.000000);
    r3.x = min(r17.z, r53.z);
    r2.w = r2.w ? r3.x : r17.z;
    r22.z = r0.x ? r2.w : r17.z;
    r10.xyz = r0.zzz ? r11.xyz : r10.xyz;
    r11.xyz = r0.zzz ? r22.xyz : r17.xyz;
    r17.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
    r17.xyz = r17.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.x = dot(r17.xyz, r17.xyz);
    r0.x = rsqrt(r0.x);
    r17.xyz = r17.xyz * r0.xxx;
    r22.xyzw = t5.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r35.xyzw = t6.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r36.xyzw = t7.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r6.xyzw = t8.SampleLevel(s0_s, r6.zw, 0).xyzw;
    r38.xyz = t1.SampleLevel(s0_s, r9.zw, 0).xyz;
    r38.xyz = r38.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.x = dot(r38.xyz, r38.xyz);
    r0.x = rsqrt(r0.x);
    r38.xyz = r38.xyz * r0.xxx;
    r39.xyzw = t5.SampleLevel(s0_s, r9.zw, 0).xyzw;
    r40.xyzw = t6.SampleLevel(s0_s, r9.zw, 0).xyzw;
    r41.xyzw = t7.SampleLevel(s0_s, r9.zw, 0).xyzw;
    r9.xyzw = t8.SampleLevel(s0_s, r9.zw, 0).xyzw;
    r0.x = cmp(0 < r22.y);
    r0.z = r0.x ? 1.000000 : 0;
    r22.xy = r22.xw * r0.zz;
    r2.w = cmp(0 < r35.y);
    r3.x = r2.w ? 1.000000 : 0;
    r35.xy = r35.xw * r3.xx;
    r5.w = cmp(0 < r36.y);
    r8.w = r5.w ? 1.000000 : 0;
    r36.xy = r36.xw * r8.ww;
    r6.y = cmp(0 < r6.y);
    r10.w = r6.y ? 1.000000 : 0;
    r6.xw = r10.ww * r6.xw;
    r11.w = cmp(0 < r39.y);
    r13.w = r11.w ? 1.000000 : 0;
    r37.xw = r39.xw * r13.ww;
    r14.w = cmp(0 < r40.y);
    r15.w = r14.w ? 1.000000 : 0;
    r39.xy = r40.xw * r15.ww;
    r16.w = cmp(0 < r41.y);
    r17.w = r16.w ? 1.000000 : 0;
    r40.xy = r41.xw * r17.ww;
    r9.y = cmp(0 < r9.y);
    r18.w = r9.y ? 1.000000 : 0;
    r9.xw = r18.ww * r9.xw;
    r18.xyz = -r18.xyz + r2.xyz;
    r41.xyw = cb1[53].xyz * r18.yyy;
    r41.xyw = r18.xxx * cb1[52].xyz + r41.xyw;
    r18.xyz = r18.zzz * cb1[54].xyz + r41.xyw;
    r19.w = rcp(r22.z);
    r20.w = dot(r24.xyz, r18.xyz);
    r24.xyz = -r24.xyz * r20.www + r18.xyz;
    r20.w = dot(r24.xyz, r24.xyz);
    r21.w = r19.w * r19.w;
    r20.w = -r20.w * r21.w + 1;
    r20.w = max(0, r20.w);
    r21.w = dot(r1.xyz, -r18.xyz);
    r24.xyz = -r21.www * r1.xyz + -r18.xyz;
    r22.w = dot(r24.xyz, r24.xyz);
    r22.w = sqrt(r22.w);
    r21.w = -r22.w * 0.25 + abs(r21.w);
    r21.w = 6 * r21.w;
    r19.w = saturate(-r21.w * r19.w + 1);
    r19.w = r20.w * r19.w;
    r17.x = dot(r1.xyz, r17.xyz);
    r17.x = max(0, r17.x);
    r17.x = r17.x * r17.x;
    r17.x = r17.x * r17.x;
    r17.y = r19.w * r17.x;
    r0.x = r0.x ? r0.w : 0;
    r24.x = r0.z * r17.y + r14.x;
    r24.yz = r22.xy * r17.yy + r14.yz;
    r22.xy = r22.xy * r22.xy;
    r42.xy = r22.xy * r17.yy + r19.xy;
    r0.z = cmp(0 < r17.y);
    r17.y = cmp(r22.z != -1.000000);
    r17.z = min(r22.z, r19.z);
    r17.y = r17.y ? r17.z : r19.z;
    r42.z = r0.z ? r17.y : r19.z;
    r14.xyz = r0.xxx ? r24.xyz : r14.xyz;
    r19.xyz = r0.xxx ? r42.xyz : r19.xyz;
    r0.x = rcp(r35.z);
    r0.z = dot(r25.xyz, r18.xyz);
    r22.xyz = -r25.xyz * r0.zzz + r18.xyz;
    r0.z = dot(r22.xyz, r22.xyz);
    r17.y = r0.x * r0.x;
    r0.z = -r0.z * r17.y + 1;
    r0.z = max(0, r0.z);
    r0.x = saturate(-r21.w * r0.x + 1);
    r0.x = r0.z * r0.x;
    r0.x = r0.x * r17.x;
    r0.z = r2.w ? r0.w : 0;
    r22.x = r3.x * r0.x + r15.x;
    r22.yz = r35.xy * r0.xx + r15.yz;
    r17.yz = r35.xy * r35.xy;
    r24.xy = r17.yz * r0.xx + r20.xy;
    r0.x = cmp(0 < r0.x);
    r2.w = cmp(r35.z != -1.000000);
    r3.x = min(r35.z, r20.z);
    r2.w = r2.w ? r3.x : r20.z;
    r24.z = r0.x ? r2.w : r20.z;
    r15.xyz = r0.zzz ? r22.xyz : r15.xyz;
    r20.xyz = r0.zzz ? r24.xyz : r20.xyz;
    r0.x = rcp(r36.z);
    r0.z = dot(r26.xyz, r18.xyz);
    r22.xyz = -r26.xyz * r0.zzz + r18.xyz;
    r0.z = dot(r22.xyz, r22.xyz);
    r2.w = r0.x * r0.x;
    r0.z = -r0.z * r2.w + 1;
    r0.z = max(0, r0.z);
    r0.x = saturate(-r21.w * r0.x + 1);
    r0.x = r0.z * r0.x;
    r0.x = r0.x * r17.x;
    r0.z = r5.w ? r0.w : 0;
    r22.x = r8.w * r0.x + r16.x;
    r22.yz = r36.xy * r0.xx + r16.yz;
    r17.yz = r36.xy * r36.xy;
    r24.xy = r17.yz * r0.xx + r21.xy;
    r0.x = cmp(0 < r0.x);
    r2.w = cmp(r36.z != -1.000000);
    r3.x = min(r36.z, r21.z);
    r2.w = r2.w ? r3.x : r21.z;
    r24.z = r0.x ? r2.w : r21.z;
    r16.xyz = r0.zzz ? r22.xyz : r16.xyz;
    r21.xyz = r0.zzz ? r24.xyz : r21.xyz;
    r0.x = rcp(r6.z);
    r0.z = dot(r27.xyz, r18.xyz);
    r18.xyz = -r27.xyz * r0.zzz + r18.xyz;
    r0.z = dot(r18.xyz, r18.xyz);
    r2.w = r0.x * r0.x;
    r0.z = -r0.z * r2.w + 1;
    r0.z = max(0, r0.z);
    r0.x = saturate(-r21.w * r0.x + 1);
    r0.x = r0.z * r0.x;
    r0.x = r0.x * r17.x;
    r0.z = r6.y ? r0.w : 0;
    r17.x = r10.w * r0.x + r10.x;
    r17.yz = r6.xw * r0.xx + r10.yz;
    r6.xy = r6.xw * r6.xw;
    r18.xy = r6.xy * r0.xx + r11.xy;
    r0.x = cmp(0 < r0.x);
    r0.w = cmp(r6.z != -1.000000);
    r2.w = min(r11.z, r6.z);
    r0.w = r0.w ? r2.w : r11.z;
    r18.z = r0.x ? r0.w : r11.z;
    r6.xyz = r0.zzz ? r17.xyz : r10.xyz;
    r0.xzw = r0.zzz ? r18.xyz : r11.xyz;
    r2.xyw = -r23.xyz + r2.xyz;
    r10.xyz = cb1[53].xyz * r2.yyy;
    r10.xyz = r2.xxx * cb1[52].xyz + r10.xyz;
    r2.xyw = r2.www * cb1[54].xyz + r10.xyz;
    r3.x = rcp(r39.z);
    r5.w = dot(r13.xyz, r2.xyw);
    r10.xyz = -r13.xyz * r5.www + r2.xyw;
    r5.w = dot(r10.xyz, r10.xyz);
    r6.w = r3.x * r3.x;
    r5.w = -r5.w * r6.w + 1;
    r5.w = max(0, r5.w);
    r6.w = dot(r1.xyz, -r2.xyw);
    r10.xyz = -r6.www * r1.xyz + -r2.xyw;
    r8.w = dot(r10.xyz, r10.xyz);
    r8.w = sqrt(r8.w);
    r6.w = -r8.w * 0.25 + abs(r6.w);
    r6.w = 6 * r6.w;
    r3.x = saturate(-r6.w * r3.x + 1);
    r3.x = r5.w * r3.x;
    r1.x = dot(r1.xyz, r38.xyz);
    r1.x = max(0, r1.x);
    r1.x = r1.x * r1.x;
    r1.x = r1.x * r1.x;
    r1.y = r3.x * r1.x;
    r1.z = r11.w ? r3.y : 0;
    r10.x = r13.w * r1.y + r14.x;
    r10.yz = r37.xw * r1.yy + r14.yz;
    r11.xy = r37.xw * r37.xw;
    r11.xy = r11.xy * r1.yy + r19.xy;
    r1.y = cmp(0 < r1.y);
    r3.x = cmp(r39.z != -1.000000);
    r5.w = min(r19.z, r39.z);
    r3.x = r3.x ? r5.w : r19.z;
    r11.z = r1.y ? r3.x : r19.z;
    r10.xyz = r1.zzz ? r10.xyz : r14.xyz;
    r11.xyz = r1.zzz ? r11.xyz : r19.xyz;
    r1.y = rcp(r40.z);
    r1.z = dot(r28.xyz, r2.xyw);
    r13.xyz = -r28.xyz * r1.zzz + r2.xyw;
    r1.z = dot(r13.xyz, r13.xyz);
    r3.x = r1.y * r1.y;
    r1.z = -r1.z * r3.x + 1;
    r1.z = max(0, r1.z);
    r1.y = saturate(-r6.w * r1.y + 1);
    r1.y = r1.z * r1.y;
    r1.y = r1.y * r1.x;
    r1.z = r14.w ? r3.y : 0;
    r13.x = r15.w * r1.y + r15.x;
    r13.yz = r39.xy * r1.yy + r15.yz;
    r14.xy = r39.xy * r39.xy;
    r14.xy = r14.xy * r1.yy + r20.xy;
    r1.y = cmp(0 < r1.y);
    r3.x = cmp(r40.z != -1.000000);
    r5.w = min(r20.z, r40.z);
    r3.x = r3.x ? r5.w : r20.z;
    r14.z = r1.y ? r3.x : r20.z;
    r13.xyz = r1.zzz ? r13.xyz : r15.xyz;
    r14.xyz = r1.zzz ? r14.xyz : r20.xyz;
    r1.y = rcp(r41.z);
    r1.z = dot(r29.xyz, r2.xyw);
    r15.xyz = -r29.xyz * r1.zzz + r2.xyw;
    r1.z = dot(r15.xyz, r15.xyz);
    r3.x = r1.y * r1.y;
    r1.z = -r1.z * r3.x + 1;
    r1.z = max(0, r1.z);
    r1.y = saturate(-r6.w * r1.y + 1);
    r1.y = r1.z * r1.y;
    r1.y = r1.y * r1.x;
    r1.z = r16.w ? r3.y : 0;
    r15.x = r17.w * r1.y + r16.x;
    r15.yz = r40.xy * r1.yy + r16.yz;
    r17.xy = r40.xy * r40.xy;
    r17.xy = r17.xy * r1.yy + r21.xy;
    r1.y = cmp(0 < r1.y);
    r3.x = cmp(r41.z != -1.000000);
    r5.w = min(r21.z, r41.z);
    r3.x = r3.x ? r5.w : r21.z;
    r17.z = r1.y ? r3.x : r21.z;
    r15.xyz = r1.zzz ? r15.xyz : r16.xyz;
    r16.xyz = r1.zzz ? r17.xyz : r21.xyz;
    r1.y = rcp(r9.z);
    r1.z = dot(r30.xyz, r2.xyw);
    r2.xyw = -r30.xyz * r1.zzz + r2.xyw;
    r1.z = dot(r2.xyw, r2.xyw);
    r2.x = r1.y * r1.y;
    r1.z = -r1.z * r2.x + 1;
    r1.z = max(0, r1.z);
    r1.y = saturate(-r6.w * r1.y + 1);
    r1.y = r1.z * r1.y;
    r1.x = r1.y * r1.x;
    r1.y = r9.y ? r3.y : 0;
    r17.x = r18.w * r1.x + r6.x;
    r17.yz = r9.xw * r1.xx + r6.yz;
    r2.xy = r9.xw * r9.xw;
    r18.xy = r2.xy * r1.xx + r0.xz;
    r1.x = cmp(0 < r1.x);
    r1.z = cmp(r9.z != -1.000000);
    r2.x = min(r0.w, r9.z);
    r1.z = r1.z ? r2.x : r0.w;
    r18.z = r1.x ? r1.z : r0.w;
    r2.xyw = r1.yyy ? r17.xyz : r6.xyz;
    r0.xzw = r1.yyy ? r18.xyz : r0.xzw;
    r1.x = rcp(r10.x);
    r1.y = cmp(0 >= r10.x);
    r1.x = r1.y ? 0 : r1.x;
    r6.xyz = r10.xyz * r1.xxx;
    r9.xyzw = r6.yzyz * r6.yzyz;
    r9.xyzw = r11.xyxy * r1.xxxx + -r9.xyzw;
    r9.xyzw = sqrt(abs(r9.xyzw));
    r9.xyzw = r9.xyzw * float4(-1.25,-1.25,1.25,1.25) + r6.yzyz;
    r1.x = cmp(0 < r5.x);
    r1.y = rcp(r5.x);
    r1.x = r1.y ? r1.x : 0;
    r1.yz = r5.yz * r1.xx;
    r1.yz = max(r1.yz, r9.xy);
    r1.yz = min(r1.yz, r9.zw);
    r1.x = -r5.y * r1.x + r1.y;
    r1.x = 1 + -abs(r1.x);
    r1.x = max(0, r1.x);
    r1.x = r5.x * r1.x;
    r3.x = 0.100000001 * r6.x;
    r1.x = max(r3.x, r1.x);
    r1.yz = r1.yz * r1.xx;
    r5.z = min(r31.z, r11.z);
    r3.x = rcp(r13.x);
    r3.y = cmp(0 >= r13.x);
    r3.x = r3.y ? 0 : r3.x;
    r6.xyz = r13.xyz * r3.xxx;
    r9.xyzw = r6.yzyz * r6.yzyz;
    r9.xyzw = r14.xyxy * r3.xxxx + -r9.xyzw;
    r9.xyzw = sqrt(abs(r9.xyzw));
    r9.xyzw = r9.xyzw * float4(-1.25,-1.25,1.25,1.25) + r6.yzyz;
    r3.x = cmp(0 < r7.x);
    r3.y = rcp(r7.x);
    r3.x = r3.y ? r3.x : 0;
    r6.yz = r7.yz * r3.xx;
    r6.yz = max(r6.yz, r9.xy);
    r6.yz = min(r6.yz, r9.zw);
    r3.x = -r7.y * r3.x + r6.y;
    r3.x = 1 + -abs(r3.x);
    r3.x = max(0, r3.x);
    r3.x = r7.x * r3.x;
    r3.y = 0.100000001 * r6.x;
    r3.x = max(r3.x, r3.y);
    r6.xy = r6.yz * r3.xx;
    r9.z = min(r32.z, r14.z);
    r3.y = rcp(r15.x);
    r6.z = cmp(0 >= r15.x);
    r3.y = r6.z ? 0 : r3.y;
    r7.xyz = r15.xyz * r3.yyy;
    r10.xyzw = r7.yzyz * r7.yzyz;
    r10.xyzw = r16.xyxy * r3.yyyy + -r10.xyzw;
    r10.xyzw = sqrt(abs(r10.xyzw));
    r10.xyzw = r10.xyzw * float4(-1.25,-1.25,1.25,1.25) + r7.yzyz;
    r3.y = cmp(0 < r8.x);
    r6.z = rcp(r8.x);
    r3.y = r3.y ? r6.z : 0;
    r6.zw = r8.yz * r3.yy;
    r6.zw = max(r6.zw, r10.xy);
    r6.zw = min(r6.zw, r10.zw);
    r3.y = -r8.y * r3.y + r6.z;
    r3.y = 1 + -abs(r3.y);
    r3.y = max(0, r3.y);
    r3.y = r8.x * r3.y;
    r7.x = 0.100000001 * r7.x;
    r3.y = max(r7.x, r3.y);
    r6.zw = r6.zw * r3.yy;
    r8.z = min(r33.z, r16.z);
    r7.x = rcp(r2.x);
    r7.y = cmp(0 >= r2.x);
    r7.x = r7.y ? 0 : r7.x;
    r2.xyw = r7.xxx * r2.xyw;
    r10.xyzw = r2.ywyw * r2.ywyw;
    r10.xyzw = r0.xzxz * r7.xxxx + -r10.xyzw;
    r10.xyzw = sqrt(abs(r10.xyzw));
    r10.xyzw = r10.xyzw * float4(-1.25,-1.25,1.25,1.25) + r2.ywyw;
    r0.x = cmp(0 < r4.x);
    r0.z = rcp(r4.x);
    r0.x = r0.x ? r0.z : 0;
    r2.yw = r4.yz * r0.xx;
    r2.yw = max(r2.yw, r10.xy);
    r2.yw = min(r2.yw, r10.zw);
    r0.x = -r4.y * r0.x + r2.y;
    r0.x = 1 + -abs(r0.x);
    r0.x = max(0, r0.x);
    r0.x = r4.x * r0.x;
    r0.z = 0.100000001 * r2.x;
    r0.x = max(r0.x, r0.z);
    r2.xy = r2.yw * r0.xx;
    r10.z = min(r34.z, r0.w);
    r0.z = cb0[13].x * r2.z;
    r0.z = rcp(r0.z);
    r0.w = r5.z * r0.z;
    r0.w = 0.5 * r0.w;
    r0.w = r0.w * r0.w;
    r0.w = 0.0617067069 * r0.w;
    r0.w = max(1, r0.w);
    r0.w = min(1024, r0.w);
    r0.w = r0.w + r34.y;
    r0.w = min(r1.x, r0.w);
    r2.z = cmp(0 < r1.x);
    r0.w = r0.w / r1.x;
    r0.w = r2.z ? r0.w : 0;
    r5.y = r1.x * r0.w + r0.y;
    r0.yw = r1.yz * r0.ww + r3.zw;
    r1.x = r9.z * r0.z;
    r1.x = 0.5 * r1.x;
    r1.x = r1.x * r1.x;
    r1.x = 0.0617067069 * r1.x;
    r1.x = max(1, r1.x);
    r1.x = min(1024, r1.x);
    r1.x = r1.x + r34.w;
    r1.x = min(r3.x, r1.x);
    r1.y = cmp(0 < r3.x);
    r1.x = r1.x / r3.x;
    r1.x = r1.y ? r1.x : 0;
    r9.y = r3.x * r1.x + r1.w;
    r1.xy = r6.xy * r1.xx + r31.xy;
    r1.z = r8.z * r0.z;
    r1.z = 0.5 * r1.z;
    r1.z = r1.z * r1.z;
    r1.z = 0.0617067069 * r1.z;
    r1.z = max(1, r1.z);
    r1.z = min(1024, r1.z);
    r1.z = r1.z + r37.y;
    r1.z = min(r3.y, r1.z);
    r1.w = cmp(0 < r3.y);
    r1.z = r1.z / r3.y;
    r1.z = r1.w ? r1.z : 0;
    r8.y = r3.y * r1.z + r4.w;
    r1.zw = r6.zw * r1.zz + r32.xy;
    r0.z = r10.z * r0.z;
    r0.z = 0.5 * r0.z;
    r0.z = r0.z * r0.z;
    r0.z = 0.0617067069 * r0.z;
    r0.z = max(1, r0.z);
    r0.z = min(1024, r0.z);
    r0.z = r0.z + r37.z;
    r0.z = min(r0.x, r0.z);
    r2.z = cmp(0 < r0.x);
    r0.z = r0.z / r0.x;
    r0.z = r2.z ? r0.z : 0;
    r10.y = r0.x * r0.z + r7.w;
    r0.xz = r2.xy * r0.zz + r33.xy;
    r2.x = rcp(r5.y);
    r2.y = cmp(0 >= r5.y);
    r2.x = r2.y ? 0 : r2.x;
    r5.xw = r2.xx * r0.yw;
    r0.y = rcp(r9.y);
    r0.w = cmp(0 >= r9.y);
    r0.y = r0.w ? 0 : r0.y;
    r9.xw = r1.xy * r0.yy;
    r0.y = rcp(r8.y);
    r0.w = cmp(0 >= r8.y);
    r0.y = r0.w ? 0 : r0.y;
    r8.xw = r1.zw * r0.yy;
    r0.y = rcp(r10.y);
    r0.w = cmp(0 >= r10.y);
    r0.y = r0.w ? 0 : r0.y;
    r10.xw = r0.xz * r0.yy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r12.xwww, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r12.xwww, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r12.xwww, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r12.xyzw, r10.xyzw
  }
  return;
}