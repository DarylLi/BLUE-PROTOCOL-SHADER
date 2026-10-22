// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[3]; } g0[64];
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)vThreadID.y << 3;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r1.z = cb1[0].y + cb0[6].x;
  r0.y = r1.z * r1.z;
  r0.z = cb1[0].y * cb1[0].y;
  r0.y = cmp(r0.z < r0.y);
  if (r0.y != 0) {
    r2.xyz = t2.Load(r0.x).xyz;
    r0.y = dot(r2.xyz, r2.xyz);
    r0.w = dot(r2.zz, r1.zz);
    r1.w = r1.z * r1.z + -r0.z;
    r2.w = r0.w * r0.w;
    r3.x = 4 * r0.y;
    r1.w = -r3.x * r1.w + r2.w;
    r3.y = cmp(r1.w >= 0);
    r1.w = sqrt(r1.w);
    r3.zw = r1.ww * float2(1,-1) + -r0.ww;
    r0.y = r0.y + r0.y;
    r3.zw = r3.zw / r0.yy;
    r3.yz = r3.yy ? r3.zw : float2(-1,-1);
    r4.xy = cmp(r3.zy < float2(0,0));
    r1.w = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r3.yz);
    r3.w = r4.y ? r4.w : -1;
    r3.w = r4.x ? r4.z : r3.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.y = min(r3.z, r3.y);
    r3.y = max(0, r3.y);
    r3.y = r4.x ? r3.w : r3.y;
    r1.w = r1.w ? -1 : r3.y;
    r3.y = cb1[0].z * cb1[0].z;
    r3.z = r1.z * r1.z + -r3.y;
    r2.w = -r3.x * r3.z + r2.w;
    r3.x = cmp(r2.w >= 0);
    r2.w = sqrt(r2.w);
    r3.zw = r2.ww * float2(1,-1) + -r0.ww;
    r0.yw = r3.zw / r0.yy;
    r0.yw = r3.xx ? r0.yw : float2(-1,-1);
    r3.xz = cmp(r0.wy < float2(0,0));
    r2.w = r3.z ? r3.x : 0;
    r4.xy = max(float2(0,0), r0.yw);
    r3.w = r3.z ? r4.y : -1;
    r3.w = r3.x ? r4.x : r3.w;
    r3.x = (int)r3.z | (int)r3.x;
    r0.y = min(r0.w, r0.y);
    r0.y = max(0, r0.y);
    r0.y = r3.x ? r3.w : r0.y;
    r0.y = r2.w ? -1 : r0.y;
    r0.w = cmp(r1.w < 0);
    r2.w = cmp(r0.y < 0);
    r2.w = r0.w ? r2.w : 0;
    if (r2.w == 0) {
      r2.w = max(0, r0.y);
      r3.x = cmp(0 < r0.y);
      r0.y = min(r0.y, r1.w);
      r0.y = r3.x ? r0.y : 0;
      r0.y = r0.w ? r2.w : r0.y;
      r0.y = min(9000000, r0.y);
      r0.w = 0.100000001 * r0.y;
      r0.z = cb1[0].z * cb1[0].z + -r0.z;
      r0.z = max(0, r0.z);
      r0.z = sqrt(r0.z);
      r1.w = cb1[0].z + -cb1[0].y;
      r2.w = dot(cb0[2].xyz, cb0[2].xyz);
      r3.x = 4 * r2.w;
      r2.w = r2.w + r2.w;
      r3.z = dot(cb0[3].xyz, cb0[3].xyz);
      r3.w = 4 * r3.z;
      r3.z = r3.z + r3.z;
      r1.xy = float2(0,0);
      r4.xyz = float3(0,0,0);
      r5.xyz = float3(1,1,1);
      r6.x = 0;
      while (true) {
        r4.w = cmp(r6.x >= 10);
        if (r4.w != 0) break;
        r6.xy = float2(1,0.300000012) + r6.xx;
        r4.w = r6.y * r0.y;
        r4.w = 0.100000001 * r4.w;
        r6.yzw = r4.www * r2.xyz + r1.xyz;
        r4.w = dot(r6.yzw, r6.yzw);
        r5.w = sqrt(r4.w);
        r7.x = -cb1[0].y + r5.w;
        r7.y = max(0, r7.x);
        r7.z = cb1[3].x * r7.y;
        r7.z = 1.44269502 * r7.z;
        r7.z = exp2(r7.z);
        r7.w = cb1[0].w * r7.y;
        r7.w = 1.44269502 * r7.w;
        r7.w = exp2(r7.w);
        r8.x = cmp(r7.y < cb1[7].x);
        r8.y = saturate(cb1[7].z * r7.y + cb1[7].y);
        r7.y = saturate(cb1[8].x * r7.y + cb1[7].w);
        r7.y = r8.x ? r8.y : r7.y;
        r8.xyz = cb1[1].xyz * r7.www;
        r9.xyz = r7.zzz * cb1[2].xyz + r8.xyz;
        r8.xyz = r7.zzz * cb1[4].xyz + r8.xyz;
        r7.yzw = r7.yyy * cb1[9].xyz + r8.xyz;
        r8.xyz = r7.yzw * r0.www;
        r8.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r8.xyz;
        r8.xyz = exp2(r8.xyz);
        r10.xyz = r6.yzw / r5.www;
        r8.w = dot(cb0[2].xyz, r10.xyz);
        r9.w = -cb1[0].y * cb1[0].y + r4.w;
        r9.w = max(0, r9.w);
        r9.w = sqrt(r9.w);
        r10.w = r8.w * r8.w + -1;
        r10.w = r4.w * r10.w + r3.y;
        r10.w = sqrt(r10.w);
        r10.w = -r5.w * r8.w + r10.w;
        r10.w = max(0, r10.w);
        r11.x = cb1[0].z + -r5.w;
        r11.y = r9.w + r0.z;
        r10.w = -r11.x + r10.w;
        r11.y = r11.y + -r11.x;
        r12.y = r10.w / r11.y;
        r12.z = r9.w / r0.z;
        r13.xyz = t0.SampleLevel(s0_s, r12.yz, 0).xyz;
        r14.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r9.xyz;
        r9.w = dot(cb0[3].xyz, r10.xyz);
        r10.w = r9.w * r9.w + -1;
        r4.w = r4.w * r10.w + r3.y;
        r4.w = sqrt(r4.w);
        r4.w = -r5.w * r9.w + r4.w;
        r4.w = max(0, r4.w);
        r4.w = r4.w + -r11.x;
        r12.x = r4.w / r11.y;
        r11.xyz = t0.SampleLevel(s0_s, r12.xz, 0).xyz;
        r12.x = saturate(r8.w * 0.5 + 0.5);
        r12.y = saturate(r7.x / r1.w);
        r12.xyz = t1.SampleLevel(s1_s, r12.xy, 0).xyz;
        r6.yzw = -r10.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r6.yzw;
        r4.w = dot(r6.yzw, r6.yzw);
        r5.w = dot(cb0[2].xyz, r6.yzw);
        r5.w = r5.w + r5.w;
        r4.w = -cb1[0].y * cb1[0].y + r4.w;
        r7.x = r4.w * r3.x;
        r7.x = r5.w * r5.w + -r7.x;
        r8.w = cmp(r7.x >= 0);
        r7.x = sqrt(r7.x);
        r10.xy = r7.xx * float2(1,-1) + -r5.ww;
        r10.xy = r10.xy / r2.ww;
        r10.xy = r8.ww ? r10.xy : float2(-1,-1);
        r10.zw = cmp(r10.yx < float2(0,0));
        r5.w = r10.w ? r10.z : 0;
        r15.xy = max(float2(0,0), r10.xy);
        r7.x = r10.w ? r15.y : -1;
        r7.x = r10.z ? r15.x : r7.x;
        r8.w = (int)r10.w | (int)r10.z;
        r9.w = min(r10.y, r10.x);
        r9.w = max(0, r9.w);
        r7.x = r8.w ? r7.x : r9.w;
        r7.x = cmp(r7.x >= 0);
        r5.w = r5.w ? 0 : r7.x;
        r5.w = r5.w ? 0 : 1;
        r10.xyz = r5.www * r13.xyz;
        r9.xyz = r12.xyz * r9.xyz;
        r9.xyz = r10.xyz * r14.xyz + r9.xyz;
        r5.w = dot(cb0[3].xyz, r6.yzw);
        r5.w = r5.w + r5.w;
        r4.w = r4.w * r3.w;
        r4.w = r5.w * r5.w + -r4.w;
        r6.y = cmp(r4.w >= 0);
        r4.w = sqrt(r4.w);
        r6.zw = r4.ww * float2(1,-1) + -r5.ww;
        r6.zw = r6.zw / r3.zz;
        r6.yz = r6.yy ? r6.zw : float2(-1,-1);
        r10.xy = cmp(r6.zy < float2(0,0));
        r4.w = r10.y ? r10.x : 0;
        r10.zw = max(float2(0,0), r6.yz);
        r5.w = r10.y ? r10.w : -1;
        r5.w = r10.x ? r10.z : r5.w;
        r6.w = (int)r10.y | (int)r10.x;
        r6.y = min(r6.z, r6.y);
        r6.y = max(0, r6.y);
        r5.w = r6.w ? r5.w : r6.y;
        r5.w = cmp(r5.w >= 0);
        r4.w = r4.w ? 0 : r5.w;
        r6.yzw = r4.www ? float3(0,0,0) : cb0[5].xyz;
        r6.yzw = r6.yzw * r11.xyz;
        r6.yzw = r6.yzw * r14.xyz;
        r6.yzw = cb0[4].xyz * r9.xyz + r6.yzw;
        r6.yzw = -r6.yzw * r8.xyz + r6.yzw;
        r6.yzw = r6.yzw / r7.yzw;
        r4.xyz = r5.xyz * r6.yzw + r4.xyz;
        r5.xyz = r8.xyz * r5.xyz;
      }
    } else {
      r4.xyz = float3(0,0,0);
    }
  } else {
    r4.xyz = float3(0,0,0);
  }
  r0.yzw = cb2[9].xyz * r4.xyz;
  g0[r0.x].val[0/4] = r0.y;
  g0[r0.x].val[0/4+1] = r0.z;
  g0[r0.x].val[0/4+2] = r0.w;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = cmp((int4)r0.xxxx < int4(32,16,8,4));
  if (r1.x != 0) {
    r0.y = (int)r0.x + 32;
    r0.y = g0[r0.y].val[0/4];
    r0.z = g0[r0.y].val[0/4+1];
    r0.w = g0[r0.y].val[0/4+2];
    r0.yzw = r4.xyz * cb2[9].xyz + r0.yzw;
    g0[r0.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4+1] = r0.z;
    g0[r0.x].val[0/4+2] = r0.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y != 0) {
    r0.y = (int)r0.x + 16;
    r0.y = g0[r0.y].val[0/4];
    r0.z = g0[r0.y].val[0/4+1];
    r0.w = g0[r0.y].val[0/4+2];
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r0.yzw = r2.xyz + r0.yzw;
    g0[r0.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4+1] = r0.z;
    g0[r0.x].val[0/4+2] = r0.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z != 0) {
    r0.y = (int)r0.x + 8;
    r0.y = g0[r0.y].val[0/4];
    r0.z = g0[r0.y].val[0/4+1];
    r0.w = g0[r0.y].val[0/4+2];
    r1.x = g0[r0.x].val[0/4];
    r1.y = g0[r0.x].val[0/4+1];
    r1.z = g0[r0.x].val[0/4+2];
    r0.yzw = r1.xyz + r0.yzw;
    g0[r0.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4+1] = r0.z;
    g0[r0.x].val[0/4+2] = r0.w;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
    r0.y = (int)r0.x + 4;
    r0.y = g0[r0.y].val[0/4];
    r0.z = g0[r0.y].val[0/4+1];
    r0.w = g0[r0.y].val[0/4+2];
    r1.x = g0[r0.x].val[0/4];
    r1.y = g0[r0.x].val[0/4+1];
    r1.z = g0[r0.x].val[0/4+2];
    r0.yzw = r1.xyz + r0.yzw;
    g0[r0.x].val[0/4] = r0.y;
    g0[r0.x].val[0/4+1] = r0.z;
    g0[r0.x].val[0/4+2] = r0.w;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.yz = cmp((int2)r0.xx < int2(2,1));
  if (r0.y != 0) {
    r0.y = (int)r0.x + 2;
    r1.x = g0[r0.y].val[0/4];
    r1.y = g0[r0.y].val[0/4+1];
    r1.z = g0[r0.y].val[0/4+2];
    r2.x = g0[r0.x].val[0/4];
    r2.y = g0[r0.x].val[0/4+1];
    r2.z = g0[r0.x].val[0/4+2];
    r1.xyz = r2.xyz + r1.xyz;
    g0[r0.x].val[0/4] = r1.x;
    g0[r0.x].val[0/4+1] = r1.y;
    g0[r0.x].val[0/4+2] = r1.z;
  }
  if (r0.z != 0) {
    r1.xyzw = (uint4)vThreadID.xyyy;
    r1.xyzw = float4(0.5,0.5,0.5,0.5) + r1.xyzw;
    r0.x = g0[r0.x].val[0/4];
    r0.y = g0[r0.x].val[0/4+1];
    r0.z = g0[r0.x].val[0/4+2];
    r2.x = g0[1].val[0/4];
    r2.y = g0[1].val[0/4+1];
    r2.z = g0[1].val[0/4+2];
    r0.xyzw = r2.xyzx + r0.xyzx;
    r1.xyzw = (int4)r1.xyzw;
    r0.xyzw = float4(0.015625,0.015625,0.015625,0.015625) * r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}