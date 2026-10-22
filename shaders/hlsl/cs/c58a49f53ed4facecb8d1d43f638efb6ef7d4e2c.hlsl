// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[32]; } g0[64];
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
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
// unknown dcl_: dcl_thread_group 8, 4, 1
  r0.x = (uint)vThreadIDInGroup.y << 2;
  r0.x = mad((int)vThreadIDInGroup.x, 16, (int)r0.x);
  g0[0].val[r0.x/4] = 0;
  g0[1].val[r0.x/4] = 0;
  g0[2].val[r0.x/4] = 0;
  g0[3].val[r0.x/4] = 0;
  g0[4].val[r0.x/4] = 0;
  g0[5].val[r0.x/4] = 0;
  g0[6].val[r0.x/4] = 0;
  g0[7].val[r0.x/4] = 0;
  g0[8].val[r0.x/4] = 0;
  g0[9].val[r0.x/4] = 0;
  g0[10].val[r0.x/4] = 0;
  g0[11].val[r0.x/4] = 0;
  g0[12].val[r0.x/4] = 0;
  g0[13].val[r0.x/4] = 0;
  g0[14].val[r0.x/4] = 0;
  g0[15].val[r0.x/4] = 0;
  g0[16].val[r0.x/4] = 0;
  g0[17].val[r0.x/4] = 0;
  g0[18].val[r0.x/4] = 0;
  g0[19].val[r0.x/4] = 0;
  g0[20].val[r0.x/4] = 0;
  g0[21].val[r0.x/4] = 0;
  g0[22].val[r0.x/4] = 0;
  g0[23].val[r0.x/4] = 0;
  g0[24].val[r0.x/4] = 0;
  g0[25].val[r0.x/4] = 0;
  g0[26].val[r0.x/4] = 0;
  g0[27].val[r0.x/4] = 0;
  g0[28].val[r0.x/4] = 0;
  g0[29].val[r0.x/4] = 0;
  g0[30].val[r0.x/4] = 0;
  g0[31].val[r0.x/4] = 0;
  g0[32].val[r0.x/4] = 0;
  g0[33].val[r0.x/4] = 0;
  g0[34].val[r0.x/4] = 0;
  g0[35].val[r0.x/4] = 0;
  g0[36].val[r0.x/4] = 0;
  g0[37].val[r0.x/4] = 0;
  g0[38].val[r0.x/4] = 0;
  g0[39].val[r0.x/4] = 0;
  g0[40].val[r0.x/4] = 0;
  g0[41].val[r0.x/4] = 0;
  g0[42].val[r0.x/4] = 0;
  g0[43].val[r0.x/4] = 0;
  g0[44].val[r0.x/4] = 0;
  g0[45].val[r0.x/4] = 0;
  g0[46].val[r0.x/4] = 0;
  g0[47].val[r0.x/4] = 0;
  g0[48].val[r0.x/4] = 0;
  g0[49].val[r0.x/4] = 0;
  g0[50].val[r0.x/4] = 0;
  g0[51].val[r0.x/4] = 0;
  g0[52].val[r0.x/4] = 0;
  g0[53].val[r0.x/4] = 0;
  g0[54].val[r0.x/4] = 0;
  g0[55].val[r0.x/4] = 0;
  g0[56].val[r0.x/4] = 0;
  g0[57].val[r0.x/4] = 0;
  g0[58].val[r0.x/4] = 0;
  g0[59].val[r0.x/4] = 0;
  g0[60].val[r0.x/4] = 0;
  g0[61].val[r0.x/4] = 0;
  g0[62].val[r0.x/4] = 0;
  g0[63].val[r0.x/4] = 0;
  GroupMemoryBarrierWithGroupSync();
  r0.yz = (uint2)vThreadID.xy << int2(3,3);
  r0.yz = (int2)r0.yz + asint(cb0[7].xy);
  r1.zw = float2(0,0);
  r2.xy = cb0[7].zw;
  r3.y = 0;
  while (true) {
    r0.w = cmp((uint)r3.y >= 8);
    if (r0.w != 0) break;
    r3.x = 0;
    while (true) {
      r0.w = cmp((uint)r3.x >= 8);
      if (r0.w != 0) break;
      r1.xy = (int2)r0.yz + (int2)r3.xy;
      r2.zw = cmp((uint2)r1.xy < (uint2)r2.xy);
      r0.w = r2.w ? r2.z : 0;
      if (r0.w != 0) {
        r4.xyz = t1.Load(r1.xyz).xyz;
        r4.xyz = cb1[135].zzz * r4.xyz;
        r0.w = dot(r4.xyz, float3(0.333333343,0.333333343,0.333333343));
        r0.w = max(cb0[2].w, r0.w);
        r0.w = log2(r0.w);
        r0.w = saturate(r0.w * cb0[2].y + cb0[2].z);
        r1.xy = (int2)r1.xy + asint(-cb0[7].xy);
        r1.xy = (uint2)r1.xy;
        r1.xy = cb0[8].zw * r1.xy;
        r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
        r0.w = 63 * r0.w;
        r1.y = (uint)r0.w;
        r2.z = (int)r1.y + 1;
        r2.z = min(63, (uint)r2.z);
        r0.w = frac(r0.w);
        r2.w = 1 + -r0.w;
        r3.z = cb0[3].x * r2.w;
        r2.w = r1.y ? r2.w : r3.z;
        r3.z = g0[r1.y].val[r0.x/4];
        r2.w = r2.w * r1.x + r3.z;
        g0[r1.y].val[r0.x/4] = r2.w;
        r1.y = g0[r2.z].val[r0.x/4];
        r0.w = r0.w * r1.x + r1.y;
        g0[r2.z].val[r0.x/4] = r0.w;
      }
      r3.x = (int)r3.x + 1;
    }
    r3.y = (int)r3.y + 1;
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = cmp((uint)vThreadIDInGroupFlattened.x < 16);
  if (r0.x != 0) {
    r0.x = (uint)vThreadIDInGroupFlattened.x << 2;
    r0.yzw = mad((int3)vThreadIDInGroupFlattened.xxx, int3(4,4,4), int3(1,2,3));
    r1.xyzw = float4(0,0,0,0);
    r2.x = 0;
    while (true) {
      r2.y = cmp((uint)r2.x >= 4);
      if (r2.y != 0) break;
      r2.y = (uint)r2.x << 2;
      r3.xyzw = r1.xyzw;
      r2.z = 0;
      while (true) {
        r2.w = cmp((uint)r2.z >= 8);
        if (r2.w != 0) break;
        r2.w = (uint)r2.z << 4;
        r2.w = (int)r2.y + (int)r2.w;
        r4.x = g0[r0.x].val[r2.w/4];
        r4.y = g0[r0.y].val[r2.w/4];
        r4.z = g0[r0.z].val[r2.w/4];
        r4.w = g0[r0.w].val[r2.w/4];
        r3.xyzw = r4.xyzw + r3.xyzw;
        r2.z = (int)r2.z + 1;
      }
      r1.xyzw = r3.xyzw;
      r2.x = (int)r2.x + 1;
    }
    r0.x = cb0[8].x * cb0[8].y;
    r0.x = 1 / r0.x;
    r2.yzw = mad((int3)vThreadGroupID.yyy, asint(cb0[12].xxx), (int3)vThreadGroupID.xxx);
    r0.xyzw = r1.xyzw * r0.xxxx;
    r2.x = vThreadIDInGroupFlattened.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzw, r0.xyzw
  }
  return;
}