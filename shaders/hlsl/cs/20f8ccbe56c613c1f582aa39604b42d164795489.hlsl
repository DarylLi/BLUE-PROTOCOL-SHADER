// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.x = cb1[6].w * r0.w;
  r1.y = cb0[0].z + -cb0[0].y;
  r1.x = r1.x * r1.y + cb0[0].y;
  r1.y = r1.x * r1.x;
  r1.z = cb0[0].y * cb0[0].y;
  r1.y = cmp(r1.z < r1.y);
  if (r1.y != 0) {
    r1.y = dot(r0.xx, cb1[6].zz);
    r2.y = -1 + r1.y;
    r1.y = -r2.y * r2.y + 1;
    r1.y = max(0, r1.y);
    r2.x = sqrt(r1.y);
    r1.y = r1.x + r1.x;
    r1.w = r1.x * r1.x + -r1.z;
    r1.w = 4 * r1.w;
    r2.z = r1.y * r1.y + -r1.w;
    r2.w = cmp(r2.z >= 0);
    r2.z = sqrt(r2.z);
    r3.xy = r2.zz * float2(1,-1) + -r1.yy;
    r3.xy = float2(0.5,0.5) * r3.xy;
    r2.zw = r2.ww ? r3.xy : float2(-1,-1);
    r3.xy = cmp(r2.wz < float2(0,0));
    r3.z = r3.y ? r3.x : 0;
    r4.xy = max(float2(0,0), r2.zw);
    r3.w = r3.y ? r4.y : -1;
    r3.w = r3.x ? r4.x : r3.w;
    r3.x = (int)r3.y | (int)r3.x;
    r2.z = min(r2.w, r2.z);
    r2.z = max(0, r2.z);
    r2.z = r3.x ? r3.w : r2.z;
    r2.z = r3.z ? -1 : r2.z;
    r2.w = cb0[0].z * cb0[0].z;
    r3.x = r1.x * r1.x + -r2.w;
    r3.x = 4 * r3.x;
    r3.y = r1.y * r1.y + -r3.x;
    r3.z = cmp(r3.y >= 0);
    r3.y = sqrt(r3.y);
    r3.yw = r3.yy * float2(1,-1) + -r1.yy;
    r3.yw = float2(0.5,0.5) * r3.yw;
    r3.yz = r3.zz ? r3.yw : float2(-1,-1);
    r4.xy = cmp(r3.zy < float2(0,0));
    r1.y = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r3.yz);
    r3.w = r4.y ? r4.w : -1;
    r3.w = r4.x ? r4.z : r3.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.y = min(r3.z, r3.y);
    r3.y = max(0, r3.y);
    r3.y = r4.x ? r3.w : r3.y;
    r1.y = r1.y ? -1 : r3.y;
    r3.y = cmp(r2.z < 0);
    r3.z = cmp(r1.y < 0);
    r3.z = r3.z ? r3.y : 0;
    if (r3.z == 0) {
      r3.z = max(0, r1.y);
      r3.w = cmp(0 < r1.y);
      r1.y = min(r1.y, r2.z);
      r1.y = r3.w ? r1.y : 0;
      r1.y = r3.y ? r3.z : r1.y;
      r1.y = min(9000000, r1.y);
      r3.y = r1.y / cb1[8].y;
      r3.z = cb0[0].z * cb0[0].z + -r1.z;
      r3.z = max(0, r3.z);
      r3.z = sqrt(r3.z);
      r3.w = dot(r2.xy, r2.xy);
      r4.x = 4 * r3.w;
      r3.w = r3.w + r3.w;
      r4.yzw = float3(0,0,0);
      r5.xyz = float3(0,0,0);
      r6.xyz = float3(1,1,1);
      r5.w = r3.y;
      r7.x = 0;
      while (true) {
        r6.w = cmp(r7.x >= cb1[8].y);
        if (r6.w != 0) break;
        r7.xy = float2(1,0.300000012) + r7.xx;
        r6.w = r7.y * r1.y;
        r6.w = r6.w / cb1[8].y;
        r6.w = r6.w + r1.x;
        r7.y = -cb0[0].y + abs(r6.w);
        r7.y = max(0, r7.y);
        r7.z = cb0[3].x * r7.y;
        r7.z = 1.44269502 * r7.z;
        r7.z = exp2(r7.z);
        r7.w = cb0[0].w * r7.y;
        r7.w = 1.44269502 * r7.w;
        r7.w = exp2(r7.w);
        r8.x = cmp(r7.y < cb0[7].x);
        r8.y = saturate(cb0[7].z * r7.y + cb0[7].y);
        r7.y = saturate(cb0[8].x * r7.y + cb0[7].w);
        r7.y = r8.x ? r8.y : r7.y;
        r8.xyz = cb0[1].xyz * r7.www;
        r9.xyz = r7.zzz * cb0[2].xyz + r8.xyz;
        r8.xyz = r7.zzz * cb0[4].xyz + r8.xyz;
        r7.yzw = r7.yyy * cb0[9].xyz + r8.xyz;
        r8.xyz = r7.yzw * r5.www;
        r8.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r8.xyz;
        r8.xyz = exp2(r8.xyz);
        r8.w = r6.w / abs(r6.w);
        r9.w = r8.w * r2.y;
        r10.x = abs(r6.w) * abs(r6.w);
        r10.y = abs(r6.w) * abs(r6.w) + -r1.z;
        r10.y = max(0, r10.y);
        r10.z = r9.w * r9.w + -1;
        r10.x = r10.x * r10.z + r2.w;
        r10.xy = sqrt(r10.xy);
        r9.w = -abs(r6.w) * r9.w + r10.x;
        r9.w = max(0, r9.w);
        r10.x = cb0[0].z + -abs(r6.w);
        r10.z = r10.y + r3.z;
        r9.w = -r10.x + r9.w;
        r10.x = r10.z + -r10.x;
        r11.x = r9.w / r10.x;
        r11.y = r10.y / r3.z;
        r10.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
        r11.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r9.xyz;
        r6.w = -r8.w * 0.00100000005 + r6.w;
        r8.w = dot(r2.yy, r6.ww);
        r6.w = r6.w * r6.w + -r1.z;
        r6.w = r6.w * r4.x;
        r6.w = r8.w * r8.w + -r6.w;
        r9.w = cmp(r6.w >= 0);
        r6.w = sqrt(r6.w);
        r12.xy = r6.ww * float2(1,-1) + -r8.ww;
        r12.xy = r12.xy / r3.ww;
        r12.xy = r9.ww ? r12.xy : float2(-1,-1);
        r12.zw = cmp(r12.yx < float2(0,0));
        r6.w = r12.w ? r12.z : 0;
        r13.xy = max(float2(0,0), r12.xy);
        r8.w = r12.w ? r13.y : -1;
        r8.w = r12.z ? r13.x : r8.w;
        r9.w = (int)r12.w | (int)r12.z;
        r10.w = min(r12.y, r12.x);
        r10.w = max(0, r10.w);
        r8.w = r9.w ? r8.w : r10.w;
        r8.w = cmp(r8.w >= 0);
        r6.w = r6.w ? 0 : r8.w;
        r6.w = r6.w ? 0 : 1;
        r10.xyz = r6.www * r10.xyz;
        r10.xyz = r10.xyz * r11.xyz;
        r9.xyz = r9.xyz * r6.xyz;
        r4.yzw = r9.xyz * r5.www + r4.yzw;
        r9.xyz = -r10.xyz * r8.xyz + r10.xyz;
        r7.yzw = r9.xyz / r7.yzw;
        r5.xyz = r6.xyz * r7.yzw + r5.xyz;
        r6.xyz = r8.xyz * r6.xyz;
      }
      r1.y = cmp(r2.z == r1.y);
      if (r1.y != 0) {
        r1.y = r2.z + r1.x;
        r2.z = r1.y / abs(r1.y);
        r2.z = r2.y * r2.z;
        r3.y = abs(r1.y) * abs(r1.y);
        r3.w = abs(r1.y) * abs(r1.y) + -r1.z;
        r3.w = max(0, r3.w);
        r4.x = r2.z * r2.z + -1;
        r3.y = r3.y * r4.x + r2.w;
        r3.yw = sqrt(r3.yw);
        r3.y = -abs(r1.y) * r2.z + r3.y;
        r3.y = max(0, r3.y);
        r1.y = cb0[0].z + -abs(r1.y);
        r4.x = r3.w + r3.z;
        r3.y = r3.y + -r1.y;
        r1.y = r4.x + -r1.y;
        r7.x = r3.y / r1.y;
        r7.y = r3.w / r3.z;
        r3.yzw = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
        r2.z = saturate(r2.z);
        r3.yzw = r3.yzw * r6.xyz;
        r3.yzw = r3.yzw * r2.zzz;
        r3.yzw = cb0[10].xyz * r3.yzw;
        r5.xyz = r3.yzw * float3(0.318309873,0.318309873,0.318309873) + r5.xyz;
      }
    } else {
      r5.xyz = float3(0,0,0);
      r4.yzw = float3(0,0,0);
    }
    r1.y = -2 * r1.x;
    r1.w = r1.y * r1.y + -r1.w;
    r2.z = cmp(r1.w >= 0);
    r1.w = sqrt(r1.w);
    r3.yz = r1.ww * float2(1,-1) + -r1.yy;
    r3.yz = float2(0.5,0.5) * r3.yz;
    r3.yz = r2.zz ? r3.yz : float2(-1,-1);
    r6.xy = cmp(r3.zy < float2(0,0));
    r1.w = r6.y ? r6.x : 0;
    r6.zw = max(float2(0,0), r3.yz);
    r2.z = r6.y ? r6.w : -1;
    r2.z = r6.x ? r6.z : r2.z;
    r3.w = (int)r6.y | (int)r6.x;
    r3.y = min(r3.z, r3.y);
    r3.y = max(0, r3.y);
    r2.z = r3.w ? r2.z : r3.y;
    r1.w = r1.w ? -1 : r2.z;
    r2.z = r1.y * r1.y + -r3.x;
    r3.x = cmp(r2.z >= 0);
    r2.z = sqrt(r2.z);
    r3.yz = r2.zz * float2(1,-1) + -r1.yy;
    r3.yz = float2(0.5,0.5) * r3.yz;
    r3.xy = r3.xx ? r3.yz : float2(-1,-1);
    r3.zw = cmp(r3.yx < float2(0,0));
    r1.y = r3.w ? r3.z : 0;
    r6.xy = max(float2(0,0), r3.xy);
    r2.z = r3.w ? r6.y : -1;
    r2.z = r3.z ? r6.x : r2.z;
    r3.z = (int)r3.w | (int)r3.z;
    r3.x = min(r3.y, r3.x);
    r3.x = max(0, r3.x);
    r2.z = r3.z ? r2.z : r3.x;
    r1.y = r1.y ? -1 : r2.z;
    r2.z = cmp(r1.w < 0);
    r3.x = cmp(r1.y < 0);
    r3.x = r2.z ? r3.x : 0;
    if (r3.x == 0) {
      r3.x = max(0, r1.y);
      r3.y = cmp(0 < r1.y);
      r1.y = min(r1.y, r1.w);
      r1.y = r3.y ? r1.y : 0;
      r1.y = r2.z ? r3.x : r1.y;
      r1.y = min(9000000, r1.y);
      r2.z = r1.y / cb1[8].y;
      r3.x = cb0[0].z * cb0[0].z + -r1.z;
      r3.x = max(0, r3.x);
      r3.x = sqrt(r3.x);
      r2.x = dot(r2.xy, r2.xy);
      r3.y = 4 * r2.x;
      r2.x = r2.x + r2.x;
      r6.xyz = float3(0,0,0);
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
      r3.z = r2.z;
      r9.x = 0;
      while (true) {
        r3.w = cmp(r9.x >= cb1[8].y);
        if (r3.w != 0) break;
        r9.xy = float2(1,0.300000012) + r9.xx;
        r3.w = r9.y * r1.y;
        r3.w = r3.w / cb1[8].y;
        r3.w = -r3.w + r1.x;
        r4.x = -cb0[0].y + abs(r3.w);
        r4.x = max(0, r4.x);
        r5.w = cb0[3].x * r4.x;
        r5.w = 1.44269502 * r5.w;
        r5.w = exp2(r5.w);
        r6.w = cb0[0].w * r4.x;
        r6.w = 1.44269502 * r6.w;
        r6.w = exp2(r6.w);
        r7.w = cmp(r4.x < cb0[7].x);
        r8.w = saturate(cb0[7].z * r4.x + cb0[7].y);
        r4.x = saturate(cb0[8].x * r4.x + cb0[7].w);
        r4.x = r7.w ? r8.w : r4.x;
        r9.yzw = cb0[1].xyz * r6.www;
        r10.xyz = r5.www * cb0[2].xyz + r9.yzw;
        r9.yzw = r5.www * cb0[4].xyz + r9.yzw;
        r9.yzw = r4.xxx * cb0[9].xyz + r9.yzw;
        r11.xyz = r9.yzw * r3.zzz;
        r11.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r11.xyz;
        r11.xyz = exp2(r11.xyz);
        r4.x = r3.w / abs(r3.w);
        r5.w = r4.x * r2.y;
        r6.w = abs(r3.w) * abs(r3.w);
        r7.w = abs(r3.w) * abs(r3.w) + -r1.z;
        r7.w = max(0, r7.w);
        r7.w = sqrt(r7.w);
        r8.w = r5.w * r5.w + -1;
        r6.w = r6.w * r8.w + r2.w;
        r6.w = sqrt(r6.w);
        r5.w = -abs(r3.w) * r5.w + r6.w;
        r5.w = max(0, r5.w);
        r6.w = cb0[0].z + -abs(r3.w);
        r8.w = r7.w + r3.x;
        r5.w = -r6.w + r5.w;
        r6.w = r8.w + -r6.w;
        r12.x = r5.w / r6.w;
        r12.y = r7.w / r3.x;
        r12.xyz = t0.SampleLevel(s0_s, r12.xy, 0).xyz;
        r13.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r10.xyz;
        r3.w = -r4.x * 0.00100000005 + r3.w;
        r4.x = dot(r2.yy, r3.ww);
        r3.w = r3.w * r3.w + -r1.z;
        r3.w = r3.y * r3.w;
        r3.w = r4.x * r4.x + -r3.w;
        r5.w = cmp(r3.w >= 0);
        r3.w = sqrt(r3.w);
        r14.xy = r3.ww * float2(1,-1) + -r4.xx;
        r14.xy = r14.xy / r2.xx;
        r14.xy = r5.ww ? r14.xy : float2(-1,-1);
        r14.zw = cmp(r14.yx < float2(0,0));
        r3.w = r14.w ? r14.z : 0;
        r15.xy = max(float2(0,0), r14.xy);
        r4.x = r14.w ? r15.y : -1;
        r4.x = r14.z ? r15.x : r4.x;
        r5.w = (int)r14.w | (int)r14.z;
        r6.w = min(r14.y, r14.x);
        r6.w = max(0, r6.w);
        r4.x = r5.w ? r4.x : r6.w;
        r4.x = cmp(r4.x >= 0);
        r3.w = r3.w ? 0 : r4.x;
        r3.w = r3.w ? 0 : 1;
        r12.xyz = r3.www * r12.xyz;
        r12.xyz = r12.xyz * r13.xyz;
        r10.xyz = r10.xyz * r8.xyz;
        r6.xyz = r10.xyz * r3.zzz + r6.xyz;
        r10.xyz = -r12.xyz * r11.xyz + r12.xyz;
        r9.yzw = r10.xyz / r9.yzw;
        r7.xyz = r8.xyz * r9.yzw + r7.xyz;
        r8.xyz = r11.xyz * r8.xyz;
      }
      r1.y = cmp(r1.w == r1.y);
      if (r1.y != 0) {
        r1.x = r1.x + -r1.w;
        r1.y = r1.x / abs(r1.x);
        r1.y = r2.y * r1.y;
        r1.w = abs(r1.x) * abs(r1.x);
        r1.z = abs(r1.x) * abs(r1.x) + -r1.z;
        r1.z = max(0, r1.z);
        r2.x = r1.y * r1.y + -1;
        r1.w = r1.w * r2.x + r2.w;
        r1.zw = sqrt(r1.zw);
        r1.w = -abs(r1.x) * r1.y + r1.w;
        r1.w = max(0, r1.w);
        r1.x = cb0[0].z + -abs(r1.x);
        r2.x = r1.z + r3.x;
        r1.w = r1.w + -r1.x;
        r1.x = r2.x + -r1.x;
        r2.x = r1.w / r1.x;
        r2.y = r1.z / r3.x;
        r1.xzw = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
        r1.y = saturate(r1.y);
        r1.xzw = r1.xzw * r8.xyz;
        r1.xyz = r1.xzw * r1.yyy;
        r1.xyz = cb0[10].xyz * r1.xyz;
        r7.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r7.xyz;
      }
    } else {
      r7.xyz = float3(0,0,0);
      r6.xyz = float3(0,0,0);
    }
  } else {
    r5.xyz = float3(0,0,0);
    r4.yzw = float3(0,0,0);
    r7.xyz = float3(0,0,0);
    r6.xyz = float3(0,0,0);
  }
  r1.xyzw = r7.xyzx + r5.xyzx;
  r2.xyzw = r6.xyzx + r4.yzwy;
  r2.xyzw = float4(0.5,0.5,0.5,0.5) * r2.xyzw;
  r1.xyzw = float4(0.5,0.5,0.5,0.5) * r1.xyzw;
  r3.xyzw = r2.wyzw * r2.wyzw;
  r4.xyzw = r2.wyzw * r2.wyzw + r2.wyzw;
  r4.xyzw = float4(1,1,1,1) + r4.xyzw;
  r2.xyzw = r2.xyzw * r3.xyzw + r4.xyzw;
  r2.xyzw = r3.xyzw * r3.xyzw + r2.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = (int4)r0.xyzw;
  r1.xyzw = cb0[0].xxxx * r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}