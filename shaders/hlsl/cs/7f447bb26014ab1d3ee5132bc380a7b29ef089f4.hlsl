// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.xy = max(cb0[4].xy, r0.xy);
  r0.xy = min(cb0[4].zw, r0.xy);
  r1.xyzw = cb0[5].xyyy * r0.xyyy;
  r1.xyzw = (uint4)r1.xyzw;
  r0.zw = cmp((uint2)r1.xw < asuint(cb0[1].xy));
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r0.w = r0.z * cb1[65].x + cb1[65].y;
    r0.z = r0.z * cb1[65].z + -cb1[65].w;
    r0.z = 1 / r0.z;
    r3.z = r0.w + r0.z;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).xy;
    r0.w = cmp(0 < r0.w);
    r4.x = r0.w ? 1.000000 : 0;
    r4.y = r0.w ? r0.z : 0;
    r4.z = r4.y * r4.y;
    r5.xyzw = cb0[3].zwzw * float4(1,0,0,1) + r0.xyxy;
    r6.xyzw = -cb0[3].zwzw * float4(1,0,0,1) + r0.xyxy;
    r7.xyzw = cmp(r5.xyzw < cb0[4].xyxy);
    r8.xyzw = cmp(cb0[4].zwzw < r5.xyzw);
    r7.xyzw = (int4)r7.xyzw | (int4)r8.xyzw;
    r0.zw = (int2)r7.yw | (int2)r7.xz;
    r7.xyz = t1.SampleLevel(s0_s, r5.xy, 0).xyz;
    r2.w = t0.SampleLevel(s0_s, r5.xy, 0).x;
    r3.w = r2.w * cb1[65].x + cb1[65].y;
    r2.w = r2.w * cb1[65].z + -cb1[65].w;
    r2.w = 1 / r2.w;
    r8.z = r3.w + r2.w;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r7.xyz * r2.www;
    r9.xyz = t2.SampleLevel(s0_s, r5.xy, 0).xyz;
    r10.xyzw = cmp(r6.xyzw < cb0[4].xyxy);
    r11.xyzw = cmp(cb0[4].zwzw < r6.xyzw);
    r10.xyzw = (int4)r10.xyzw | (int4)r11.xyzw;
    r10.xy = (int2)r10.yw | (int2)r10.xz;
    r11.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
    r2.w = t0.SampleLevel(s0_s, r6.xy, 0).x;
    r3.w = r2.w * cb1[65].x + cb1[65].y;
    r2.w = r2.w * cb1[65].z + -cb1[65].w;
    r2.w = 1 / r2.w;
    r12.z = r3.w + r2.w;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r11.xyz, r11.xyz);
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r13.xyz = t2.SampleLevel(s0_s, r6.xy, 0).xyz;
    r2.w = cmp(0 < r9.y);
    r3.w = r2.w ? 1.000000 : 0;
    r4.w = r2.w ? r9.x : 0;
    r7.w = cmp(0 < r13.y);
    r8.w = r7.w ? 1.000000 : 0;
    r9.x = r7.w ? r13.x : 0;
    r0.xy = r0.xy * cb0[6].xy + cb0[6].zw;
    r14.xyzw = r5.xyzw * cb0[6].xyxy + cb0[6].zwzw;
    r5.x = cmp(cb1[31].w < 1);
    r5.y = r5.x ? r3.z : 1;
    r3.xy = r5.yy * r0.xy;
    r0.x = r5.x ? r8.z : 1;
    r8.xy = r14.xy * r0.xx;
    r8.xyz = -r8.xyz + r3.xyz;
    r13.xyw = cb1[53].xyz * r8.yyy;
    r13.xyw = r8.xxx * cb1[52].xyz + r13.xyw;
    r8.xyz = r8.zzz * cb1[54].xyz + r13.xyw;
    r0.x = rcp(r9.z);
    r0.y = dot(r2.xyz, r8.xyz);
    r0.x = saturate(-abs(r0.y) * r0.x + 1);
    r0.y = dot(r2.xyz, r7.xyz);
    r0.y = max(0, r0.y);
    r0.y = r0.y * r0.y;
    r0.y = r0.y * r0.y;
    r0.x = r0.x * r0.y;
    r0.yz = cmp((int2)r0.zw == int2(0,0));
    r0.y = r0.y ? r2.w : 0;
    r7.x = r3.w * r0.x + r4.x;
    r7.y = r4.w * r0.x + r4.y;
    r0.w = r4.w * r4.w;
    r7.z = r0.w * r0.x + r4.z;
    r0.xyw = r0.yyy ? r7.xyz : r4.xyz;
    r4.xyzw = r6.xyzw * cb0[6].xyxy + cb0[6].zwzw;
    r2.w = r5.x ? r12.z : 1;
    r12.xy = r4.xy * r2.ww;
    r7.xyz = -r12.xyz + r3.xyz;
    r8.xyz = cb1[53].xyz * r7.yyy;
    r8.xyz = r7.xxx * cb1[52].xyz + r8.xyz;
    r7.xyz = r7.zzz * cb1[54].xyz + r8.xyz;
    r2.w = rcp(r13.z);
    r3.w = dot(r2.xyz, r7.xyz);
    r2.w = saturate(-abs(r3.w) * r2.w + 1);
    r3.w = dot(r2.xyz, r11.xyz);
    r3.w = max(0, r3.w);
    r3.w = r3.w * r3.w;
    r3.w = r3.w * r3.w;
    r2.w = r3.w * r2.w;
    r4.xy = cmp((int2)r10.xy == int2(0,0));
    r3.w = r4.x ? r7.w : 0;
    r7.x = r8.w * r2.w + r0.x;
    r7.y = r9.x * r2.w + r0.y;
    r4.x = r9.x * r9.x;
    r7.z = r4.x * r2.w + r0.w;
    r0.xyw = r3.www ? r7.xyz : r0.xyw;
    r7.xyz = t1.SampleLevel(s0_s, r5.zw, 0).xyz;
    r2.w = t0.SampleLevel(s0_s, r5.zw, 0).x;
    r3.w = r2.w * cb1[65].x + cb1[65].y;
    r2.w = r2.w * cb1[65].z + -cb1[65].w;
    r2.w = 1 / r2.w;
    r8.z = r3.w + r2.w;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r7.xyz * r2.www;
    r5.yzw = t2.SampleLevel(s0_s, r5.zw, 0).xyz;
    r9.xyz = t1.SampleLevel(s0_s, r6.zw, 0).xyz;
    r2.w = t0.SampleLevel(s0_s, r6.zw, 0).x;
    r3.w = r2.w * cb1[65].x + cb1[65].y;
    r2.w = r2.w * cb1[65].z + -cb1[65].w;
    r2.w = 1 / r2.w;
    r10.z = r3.w + r2.w;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r6.xyz = t2.SampleLevel(s0_s, r6.zw, 0).xyz;
    r2.w = cmp(0 < r5.z);
    r3.w = r2.w ? 1.000000 : 0;
    r4.x = r2.w ? r5.y : 0;
    r5.y = cmp(0 < r6.y);
    r5.z = r5.y ? 1.000000 : 0;
    r6.x = r5.y ? r6.x : 0;
    r6.y = r5.x ? r8.z : 1;
    r8.xy = r14.zw * r6.yy;
    r8.xyz = -r8.xyz + r3.xyz;
    r11.xyz = cb1[53].xyz * r8.yyy;
    r8.xyw = r8.xxx * cb1[52].xyz + r11.xyz;
    r8.xyz = r8.zzz * cb1[54].xyz + r8.xyw;
    r5.w = rcp(r5.w);
    r6.y = dot(r2.xyz, r8.xyz);
    r5.w = saturate(-abs(r6.y) * r5.w + 1);
    r6.y = dot(r2.xyz, r7.xyz);
    r6.y = max(0, r6.y);
    r6.y = r6.y * r6.y;
    r6.y = r6.y * r6.y;
    r5.w = r6.y * r5.w;
    r0.z = r0.z ? r2.w : 0;
    r7.x = r3.w * r5.w + r0.x;
    r7.y = r4.x * r5.w + r0.y;
    r2.w = r4.x * r4.x;
    r7.z = r2.w * r5.w + r0.w;
    r0.xyz = r0.zzz ? r7.xyz : r0.xyw;
    r0.w = r5.x ? r10.z : 1;
    r10.xy = r4.zw * r0.ww;
    r3.xyz = -r10.xyz + r3.xyz;
    r4.xzw = cb1[53].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb1[52].xyz + r4.xzw;
    r3.xyz = r3.zzz * cb1[54].xyz + r3.xyw;
    r0.w = rcp(r6.z);
    r2.w = dot(r2.xyz, r3.xyz);
    r0.w = saturate(-abs(r2.w) * r0.w + 1);
    r2.x = dot(r2.xyz, r9.xyz);
    r2.x = max(0, r2.x);
    r2.x = r2.x * r2.x;
    r2.x = r2.x * r2.x;
    r0.w = r2.x * r0.w;
    r2.x = r4.y ? r5.y : 0;
    r3.x = r5.z * r0.w + r0.x;
    r3.y = r6.x * r0.w + r0.y;
    r2.y = r6.x * r6.x;
    r3.z = r2.y * r0.w + r0.z;
    r0.xyz = r2.xxx ? r3.xyz : r0.xyz;
    r0.w = cmp(0 < r0.x);
    r0.yz = r0.yz / r0.xx;
    r2.xz = r0.ww ? r0.yz : float2(1,1);
    r2.yw = r0.xx;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r2.xyzw
  }
  return;
}