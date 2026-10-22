// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[9];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.xy = cb1[5].zw * r0.xw;
  r1.z = cb0[0].y * cb0[0].y;
  r1.w = cb0[0].z * cb0[0].z + -r1.z;
  r1.w = sqrt(r1.w);
  r2.x = r1.w * r1.y;
  r2.y = r2.x * r2.x;
  r2.x = r2.x * r2.x + r1.z;
  r1.z = cmp(r1.z < r2.x);
  if (r1.z != 0) {
    r3.y = sqrt(r2.x);
    r1.z = cb0[0].z + -r3.y;
    r1.y = r1.w * r1.y + r1.w;
    r1.y = r1.y + -r1.z;
    r1.x = r1.x * r1.y + r1.z;
    r1.y = cmp(r1.x == 0.000000);
    r1.z = r1.w * r1.w + -r2.y;
    r1.z = -r1.x * r1.x + r1.z;
    r1.x = dot(r1.xx, r3.yy);
    r1.x = r1.z / r1.x;
    r1.x = max(-1, r1.x);
    r1.x = min(1, r1.x);
    r1.y = r1.y ? 1 : r1.x;
    r1.z = -r1.y * r1.y + 1;
    r1.x = sqrt(r1.z);
    r1.z = dot(r1.xy, r1.xy);
    r1.w = dot(r1.yy, r3.yy);
    r2.z = r1.w * r1.w;
    r2.w = 4 * r1.z;
    r2.y = -r2.w * r2.y + r2.z;
    r3.z = cmp(r2.y >= 0);
    r2.y = sqrt(r2.y);
    r4.xy = r2.yy * float2(1,-1) + -r1.ww;
    r1.z = r1.z + r1.z;
    r4.xy = r4.xy / r1.zz;
    r3.zw = r3.zz ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.wz < float2(0,0));
    r2.y = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r3.zw);
    r4.w = r4.y ? r4.w : -1;
    r4.z = r4.x ? r4.z : r4.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.z = min(r3.w, r3.z);
    r3.z = max(0, r3.z);
    r3.z = r4.x ? r4.z : r3.z;
    r2.y = r2.y ? -1 : r3.z;
    r2.x = -cb0[0].z * cb0[0].z + r2.x;
    r2.x = -r2.w * r2.x + r2.z;
    r2.z = cmp(r2.x >= 0);
    r2.x = sqrt(r2.x);
    r2.xw = r2.xx * float2(1,-1) + -r1.ww;
    r1.zw = r2.xw / r1.zz;
    r1.zw = r2.zz ? r1.zw : float2(-1,-1);
    r2.xz = cmp(r1.wz < float2(0,0));
    r2.w = r2.z ? r2.x : 0;
    r3.zw = max(float2(0,0), r1.zw);
    r3.w = r2.z ? r3.w : -1;
    r3.z = r2.x ? r3.z : r3.w;
    r2.x = (int)r2.z | (int)r2.x;
    r1.z = min(r1.w, r1.z);
    r1.z = max(0, r1.z);
    r1.z = r2.x ? r3.z : r1.z;
    r1.z = r2.w ? -1 : r1.z;
    r1.w = cmp(r2.y < 0);
    r2.x = cmp(r1.z < 0);
    r2.x = r1.w ? r2.x : 0;
    if (r2.x == 0) {
      r2.x = max(0, r1.z);
      r2.z = cmp(0 < r1.z);
      r1.z = min(r1.z, r2.y);
      r1.z = r2.z ? r1.z : 0;
      r1.z = r1.w ? r2.x : r1.z;
      r1.z = min(9000000, r1.z);
      r1.w = r1.z / cb1[8].x;
      r3.x = 0;
      r2.xyz = float3(0,0,0);
      r2.w = r1.w;
      r3.z = 0;
      while (true) {
        r4.x = cmp(r3.z >= cb1[8].x);
        if (r4.x != 0) break;
        r3.zw = float2(1,0.300000012) + r3.zz;
        r3.w = r3.w * r1.z;
        r3.w = r3.w / cb1[8].x;
        r4.xy = r3.ww * r1.xy + r3.xy;
        r3.w = dot(r4.xy, r4.xy);
        r3.w = sqrt(r3.w);
        r3.w = -cb0[0].y + r3.w;
        r3.w = max(0, r3.w);
        r4.x = cb0[3].x * r3.w;
        r4.x = 1.44269502 * r4.x;
        r4.x = exp2(r4.x);
        r4.y = cb0[0].w * r3.w;
        r4.y = 1.44269502 * r4.y;
        r4.y = exp2(r4.y);
        r4.z = cmp(r3.w < cb0[7].x);
        r4.w = saturate(cb0[7].z * r3.w + cb0[7].y);
        r3.w = saturate(cb0[8].x * r3.w + cb0[7].w);
        r3.w = r4.z ? r4.w : r3.w;
        r4.yzw = cb0[1].xyz * r4.yyy;
        r4.xyz = r4.xxx * cb0[4].xyz + r4.yzw;
        r4.xyz = r3.www * cb0[9].xyz + r4.xyz;
        r2.xyz = r4.xyz * r2.www + r2.xyz;
      }
    } else {
      r2.xyz = float3(0,0,0);
    }
  } else {
    r2.xyz = float3(0,0,0);
  }
  r1.xyzw = float4(-1.44269502,-1.44269502,-1.44269502,-1.44269502) * r2.xyzx;
  r1.xyzw = exp2(r1.xyzw);
  r0.xyzw = (int4)r0.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}