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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
      r1.xy = float2(0,0);
      r4.xyz = float3(0,0,0);
      r5.xyz = float3(1,1,1);
      r3.z = 0;
      while (true) {
        r4.w = cmp(r3.z >= 10);
        if (r4.w != 0) break;
        r3.zw = float2(1,0.300000012) + r3.zz;
        r3.w = r3.w * r0.y;
        r3.w = 0.100000001 * r3.w;
        r6.xyz = r3.www * r2.xyz + r1.xyz;
        r3.w = dot(r6.xyz, r6.xyz);
        r4.w = sqrt(r3.w);
        r5.w = -cb1[0].y + r4.w;
        r6.w = max(0, r5.w);
        r7.x = cb1[3].x * r6.w;
        r7.x = 1.44269502 * r7.x;
        r7.x = exp2(r7.x);
        r7.y = cb1[0].w * r6.w;
        r7.y = 1.44269502 * r7.y;
        r7.y = exp2(r7.y);
        r7.z = cmp(r6.w < cb1[7].x);
        r7.w = saturate(cb1[7].z * r6.w + cb1[7].y);
        r6.w = saturate(cb1[8].x * r6.w + cb1[7].w);
        r6.w = r7.z ? r7.w : r6.w;
        r7.yzw = cb1[1].xyz * r7.yyy;
        r8.xyz = r7.xxx * cb1[2].xyz + r7.yzw;
        r7.xyz = r7.xxx * cb1[4].xyz + r7.yzw;
        r7.xyz = r6.www * cb1[9].xyz + r7.xyz;
        r9.xyz = r7.xyz * r0.www;
        r9.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r9.xyz;
        r9.xyz = exp2(r9.xyz);
        r10.xyz = r6.xyz / r4.www;
        r6.w = dot(cb0[2].xyz, r10.xyz);
        r7.w = -cb1[0].y * cb1[0].y + r3.w;
        r7.w = max(0, r7.w);
        r7.w = sqrt(r7.w);
        r8.w = r6.w * r6.w + -1;
        r3.w = r3.w * r8.w + r3.y;
        r3.w = sqrt(r3.w);
        r3.w = -r4.w * r6.w + r3.w;
        r3.w = max(0, r3.w);
        r4.w = cb1[0].z + -r4.w;
        r8.w = r7.w + r0.z;
        r3.w = -r4.w + r3.w;
        r4.w = r8.w + -r4.w;
        r11.x = r3.w / r4.w;
        r11.y = r7.w / r0.z;
        r11.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
        r12.xyz = float3(0.0795774683,0.0795774683,0.0795774683) * r8.xyz;
        r13.x = saturate(r6.w * 0.5 + 0.5);
        r13.y = saturate(r5.w / r1.w);
        r13.xyz = t1.SampleLevel(s1_s, r13.xy, 0).xyz;
        r6.xyz = -r10.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r6.xyz;
        r3.w = dot(r6.xyz, r6.xyz);
        r4.w = dot(cb0[2].xyz, r6.xyz);
        r4.w = r4.w + r4.w;
        r3.w = -cb1[0].y * cb1[0].y + r3.w;
        r3.w = r3.x * r3.w;
        r3.w = r4.w * r4.w + -r3.w;
        r5.w = cmp(r3.w >= 0);
        r3.w = sqrt(r3.w);
        r6.xy = r3.ww * float2(1,-1) + -r4.ww;
        r6.xy = r6.xy / r2.ww;
        r6.xy = r5.ww ? r6.xy : float2(-1,-1);
        r6.zw = cmp(r6.yx < float2(0,0));
        r3.w = r6.w ? r6.z : 0;
        r10.xy = max(float2(0,0), r6.xy);
        r4.w = r6.w ? r10.y : -1;
        r4.w = r6.z ? r10.x : r4.w;
        r5.w = (int)r6.w | (int)r6.z;
        r6.x = min(r6.y, r6.x);
        r6.x = max(0, r6.x);
        r4.w = r5.w ? r4.w : r6.x;
        r4.w = cmp(r4.w >= 0);
        r3.w = r3.w ? 0 : r4.w;
        r3.w = r3.w ? 0 : 1;
        r6.xyz = r3.www * r11.xyz;
        r8.xyz = r13.xyz * r8.xyz;
        r6.xyz = r6.xyz * r12.xyz + r8.xyz;
        r6.xyz = cb0[4].xyz * r6.xyz;
        r6.xyz = -r6.xyz * r9.xyz + r6.xyz;
        r6.xyz = r6.xyz / r7.xyz;
        r4.xyz = r5.xyz * r6.xyz + r4.xyz;
        r5.xyz = r9.xyz * r5.xyz;
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