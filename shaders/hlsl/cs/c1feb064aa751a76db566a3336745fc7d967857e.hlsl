// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.x = dot(r0.xx, cb2[6].zz);
  r1.y = -1 + r1.x;
  r1.z = -r1.y * r1.y + 1;
  r1.z = max(0, r1.z);
  r1.x = sqrt(r1.z);
  r1.z = cb2[6].w * r0.w;
  r1.w = cb1[0].z + -cb1[0].y;
  r2.x = r1.z * r1.w + cb1[0].y;
  r1.z = r2.x * r2.x;
  r3.xyzw = cb1[0].yyzz * cb1[0].yyzz;
  r1.z = cmp(r3.y < r1.z);
  r4.xyzw = r2.xxxx * r2.xxxx + -r3.xyzw;
  r1.w = cb1[0].z * cb1[0].z + -r3.y;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.w = dot(r1.xy, r1.xy);
  r3.x = 4 * r2.w;
  r2.w = r2.w + r2.w;
  r2.yz = float2(0,0);
  r5.xyz = float3(0,0,0);
  r6.xyz = float3(0,0,0);
  r3.y = 0;
  while (true) {
    r3.z = cmp((uint)r3.y >= asuint(cb0[1].y));
    if (r3.z != 0) break;
    if (r1.z != 0) {
      r7.xyz = t1.Load(r3.y).xyz;
      r3.z = dot(r7.xyz, r7.xyz);
      r5.w = dot(r7.zz, r2.xx);
      r6.w = 4 * r3.z;
      r8.xyzw = r6.wwww * r4.xyzw;
      r8.xyzw = r5.wwww * r5.wwww + -r8.xyzw;
      r9.xyzw = cmp(r8.yyww >= float4(0,0,0,0));
      r8.xyzw = sqrt(r8.xyzw);
      r8.xyzw = r8.xyzw * float4(1,-1,1,-1) + -r5.wwww;
      r3.z = r3.z + r3.z;
      r8.xyzw = r8.xyzw / r3.zzzz;
      r8.xyzw = r9.xyzw ? r8.xyzw : float4(-1,-1,-1,-1);
      r9.xyzw = cmp(r8.yxwz < float4(0,0,0,0));
      r10.xy = r9.yw ? r9.xz : 0;
      r11.xyzw = max(float4(0,0,0,0), r8.xyzw);
      r10.zw = r9.yw ? r11.yw : float2(-1,-1);
      r10.zw = r9.xz ? r11.xz : r10.zw;
      r9.xy = (int2)r9.yw | (int2)r9.xz;
      r8.xy = min(r8.yw, r8.xz);
      r8.xy = max(float2(0,0), r8.xy);
      r8.xy = r9.xy ? r10.zw : r8.xy;
      r8.xy = r10.xy ? float2(-1,-1) : r8.xy;
      r8.zw = cmp(r8.xy < float2(0,0));
      r3.z = r8.w ? r8.z : 0;
      if (r3.z == 0) {
        r3.z = max(0, r8.y);
        r5.w = cmp(0 < r8.y);
        r6.w = min(r8.y, r8.x);
        r5.w = r5.w ? r6.w : 0;
        r3.z = r8.z ? r3.z : r5.w;
        r3.z = min(9000000, r3.z);
        r5.w = r3.z / cb2[8].y;
        r8.yzw = float3(0,0,0);
        r9.xyz = float3(0,0,0);
        r10.xyz = float3(1,1,1);
        r6.w = r5.w;
        r11.x = 0;
        while (true) {
          r7.w = cmp(r11.x >= cb2[8].y);
          if (r7.w != 0) break;
          r11.xy = float2(1,0.300000012) + r11.xx;
          r7.w = r11.y * r3.z;
          r7.w = r7.w / cb2[8].y;
          r11.yzw = r7.www * r7.xyz + r2.yyx;
          r7.w = dot(r11.yzw, r11.yzw);
          r9.w = sqrt(r7.w);
          r10.w = -cb1[0].y + r9.w;
          r10.w = max(0, r10.w);
          r12.x = cb1[3].x * r10.w;
          r12.x = 1.44269502 * r12.x;
          r12.x = exp2(r12.x);
          r12.y = cb1[0].w * r10.w;
          r12.y = 1.44269502 * r12.y;
          r12.y = exp2(r12.y);
          r12.z = cmp(r10.w < cb1[7].x);
          r12.w = saturate(cb1[7].z * r10.w + cb1[7].y);
          r10.w = saturate(cb1[8].x * r10.w + cb1[7].w);
          r10.w = r12.z ? r12.w : r10.w;
          r12.yzw = cb1[1].xyz * r12.yyy;
          r13.xyz = r12.xxx * cb1[2].xyz + r12.yzw;
          r12.xyz = r12.xxx * cb1[4].xyz + r12.yzw;
          r12.xyz = r10.www * cb1[9].xyz + r12.xyz;
          r14.xyz = r12.xyz * r6.www;
          r14.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r14.xyz;
          r14.xyz = exp2(r14.xyz);
          r15.xyz = r11.yzw / r9.www;
          r10.w = dot(r1.xy, r15.yz);
          r12.w = -cb1[0].y * cb1[0].y + r7.w;
          r12.w = max(0, r12.w);
          r12.w = sqrt(r12.w);
          r13.w = r10.w * r10.w + -1;
          r7.w = r7.w * r13.w + r3.w;
          r7.w = sqrt(r7.w);
          r7.w = -r9.w * r10.w + r7.w;
          r7.w = max(0, r7.w);
          r9.w = cb1[0].z + -r9.w;
          r10.w = r12.w + r1.w;
          r7.w = -r9.w + r7.w;
          r9.w = r10.w + -r9.w;
          r16.x = r7.w / r9.w;
          r16.y = r12.w / r1.w;
          r16.xyz = t0.SampleLevel(s0_s, r16.xy, 0).xyz;
          r17.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r13.xyz;
          r11.yzw = -r15.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.yzw;
          r7.w = dot(r11.yzw, r11.yzw);
          r9.w = dot(r1.xxyy, r11.zzww);
          r7.w = -cb1[0].y * cb1[0].y + r7.w;
          r7.w = r7.w * r3.x;
          r7.w = r9.w * r9.w + -r7.w;
          r10.w = cmp(r7.w >= 0);
          r7.w = sqrt(r7.w);
          r11.yz = r7.ww * float2(1,-1) + -r9.ww;
          r11.yz = r11.yz / r2.ww;
          r11.yz = r10.ww ? r11.yz : float2(-1,-1);
          r15.xy = cmp(r11.zy < float2(0,0));
          r7.w = r15.y ? r15.x : 0;
          r15.zw = max(float2(0,0), r11.yz);
          r9.w = r15.y ? r15.w : -1;
          r9.w = r15.x ? r15.z : r9.w;
          r10.w = (int)r15.y | (int)r15.x;
          r11.y = min(r11.z, r11.y);
          r11.y = max(0, r11.y);
          r9.w = r10.w ? r9.w : r11.y;
          r9.w = cmp(r9.w >= 0);
          r7.w = r7.w ? 0 : r9.w;
          r7.w = r7.w ? 0 : 1;
          r11.yzw = r7.www * r16.xyz;
          r11.yzw = r11.yzw * r17.xyz;
          r13.xyz = r13.xyz * r10.xyz;
          r8.yzw = r13.xyz * r6.www + r8.yzw;
          r11.yzw = -r11.yzw * r14.xyz + r11.yzw;
          r11.yzw = r11.yzw / r12.xyz;
          r9.xyz = r10.xyz * r11.yzw + r9.xyz;
          r10.xyz = r14.xyz * r10.xyz;
        }
        r3.z = cmp(r8.x == r3.z);
        if (r3.z != 0) {
          r7.xyz = r8.xxx * r7.xyz + r2.zzx;
          r3.z = dot(r7.xyz, r7.xyz);
          r5.w = sqrt(r3.z);
          r7.xy = r7.yz / r5.ww;
          r6.w = dot(r1.xy, r7.xy);
          r7.x = -cb1[0].y * cb1[0].y + r3.z;
          r7.x = max(0, r7.x);
          r7.x = sqrt(r7.x);
          r7.y = r6.w * r6.w + -1;
          r3.z = r3.z * r7.y + r3.w;
          r3.z = sqrt(r3.z);
          r3.z = -r5.w * r6.w + r3.z;
          r3.z = max(0, r3.z);
          r5.w = cb1[0].z + -r5.w;
          r7.y = r7.x + r1.w;
          r3.z = -r5.w + r3.z;
          r5.w = r7.y + -r5.w;
          r11.x = r3.z / r5.w;
          r11.y = r7.x / r1.w;
          r7.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
          r6.w = saturate(r6.w);
          r7.xyz = r7.xyz * r10.xyz;
          r7.xyz = r7.xyz * r6.www;
          r7.xyz = cb1[10].xyz * r7.xyz;
          r9.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
        }
      } else {
        r9.xyz = float3(0,0,0);
        r8.yzw = float3(0,0,0);
      }
    } else {
      r9.xyz = float3(0,0,0);
      r8.yzw = float3(0,0,0);
    }
    r5.xyz = r9.xyz + r5.xyz;
    r6.xyz = r8.yzw + r6.xyz;
    r3.y = (int)r3.y + 1;
  }
  r1.xyzw = r5.xyzx;
  r2.xyzw = r6.xyzx;
  r3.x = asuint(cb0[1].y);
  r3.x = 1 / r3.x;
  r3.y = 12.566371 * r3.x;
  r1.xyzw = r3.yyyy * r1.xyzw;
  r2.xyzw = r3.xxxx * r2.xyzw;
  r1.xyzw = float4(0.0795774683,0.0795774683,0.0795774683,0.0795774683) * r1.xyzw;
  r3.xyzw = r2.wyzw * r2.wyzw;
  r4.xyzw = r2.wyzw * r2.wyzw + r2.wyzw;
  r4.xyzw = float4(1,1,1,1) + r4.xyzw;
  r2.xyzw = r2.xyzw * r3.xyzw + r4.xyzw;
  r2.xyzw = r3.xyzw * r3.xyzw + r2.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = (int4)r0.xyzw;
  r1.xyzw = cb1[0].xxxx * r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}