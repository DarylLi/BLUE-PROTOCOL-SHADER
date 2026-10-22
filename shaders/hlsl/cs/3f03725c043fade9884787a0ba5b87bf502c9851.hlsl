// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[400];
Texture2D<float4> t5 : register(t5);

Texture2D<uint4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[26];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.z = t0.Load(float4(0,0,0,0)).x;
  r0.z = cb1[135].z * r0.z;
  r1.xy = (uint2)vThreadGroupID.xy << int2(3,3);
  r1.xy = (uint2)r1.xy;
  r1.xy = cb0[24].xy + r1.xy;
  r0.w = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r1.zw = (uint2)vThreadIDInGroup.xx << int2(1,2);
  r1.zw = mad((int2)vThreadIDInGroup.yy, int2(16,32), (int2)r1.zw);
  uiDest.x = (uint)r1.z / 12;
  r3.x = (uint)r1.z % 12;
  r2.x = uiDest.x;
  r1.z = mad((int)r2.x, 24, (int)r3.x);
  r2.y = cmp((uint)r1.z < 144);
  if (r2.y != 0) {
    r3.y = (uint)r2.x << 1;
    r2.xy = float2(-2,-2) + r1.xy;
    r2.xy = (uint2)r2.xy;
    r2.xy = (int2)r3.xy + (int2)r2.xy;
    r2.xy = (uint2)r2.xy;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = cb0[19].zw * r2.xy;
    r2.xyzw = t2.Gather(s0_s, r2.xy).xyzw;
    r3.x = (int)r1.z + 12;
    g0[r3.x].val[0/4] = r2.x;
    r2.x = (int)r3.x + 1;
    g0[r2.x].val[0/4] = r2.y;
    r2.x = (int)r1.z + 1;
    g0[r2.x].val[0/4] = r2.z;
    g0[r1.z].val[0/4] = r2.w;
  }
  GroupMemoryBarrierWithGroupSync();
  r2.xyzw = (int4)vThreadIDInGroup.xyxy + int4(2,2,4,0);
  r2.xy = mad((int2)r2.yw, int2(12,12), (int2)r2.xz);
  r3.x = g0[r2.x].val[0/4];
  r1.z = mad((int)vThreadIDInGroup.y, 12, (int)vThreadIDInGroup.x);
  r1.z = g0[r1.z].val[0/4];
  r2.x = g0[r2.y].val[0/4];
  r4.xyzw = (int4)vThreadIDInGroup.xyxy + int4(0,4,4,4);
  r2.yz = mad((int2)r4.yw, int2(12,12), (int2)r4.xz);
  r2.y = g0[r2.y].val[0/4];
  r2.z = g0[r2.z].val[0/4];
  GroupMemoryBarrierWithGroupSync();
  r1.xy = float2(-1,-1) + r1.xy;
  r1.xy = (uint2)r1.xy;
  uiDest.x = (uint)r0.w / 10;
  r5.x = (uint)r0.w % 10;
  r4.x = uiDest.x;
  r5.y = r4.x;
  r4.xy = (int2)r1.xy + (int2)r5.xy;
  r4.xy = max(asint(cb0[20].xy), (int2)r4.xy);
  r4.xy = min(asint(cb0[20].zw), (int2)r4.xy);
  r4.zw = float2(0,0);
  r4.xyz = t1.Load(r4.xyz).xyz;
  r2.w = dot(r4.xzy, float3(1,1,2));
  r3.w = dot(r4.xz, float2(2,-2));
  r4.x = dot(r4.xzy, float3(-1,-1,2));
  r4.y = r2.w * r0.z + 4;
  r4.y = rcp(r4.y);
  g0[r1.w].val[0/4] = r2.w;
  r4.zw = (int2)r1.ww + int2(1,3);
  g0[r4.z].val[0/4] = r3.w;
  bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r5.x = (((uint)r0.w << 2) & bitmask.x) | ((uint)2 & ~bitmask.x);
  bitmask.y = ((~(-1 << 6)) << 0) & 0xffffffff;  r5.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)64 & ~bitmask.y);
  g0[r5.x].val[0/4] = r4.x;
  g0[r4.w].val[0/4] = r4.y;
  r1.w = cmp((uint)r5.y < 100);
  if (r1.w != 0) {
    uiDest.x = (uint)r5.y / 10;
    r5.x = (uint)r5.y % 10;
    r4.x = uiDest.x;
    r5.y = r4.x;
    r1.xy = (int2)r1.xy + (int2)r5.xy;
    r1.xy = max(asint(cb0[20].xy), (int2)r1.xy);
    r4.xy = min(asint(cb0[20].zw), (int2)r1.xy);
    r4.zw = float2(0,0);
    r1.xyw = t1.Load(r4.xyz).xyz;
    r2.w = dot(r1.xwy, float3(1,1,2));
    r3.w = dot(r1.xw, float2(2,-2));
    r1.x = dot(r1.xwy, float3(-1,-1,2));
    r1.y = r2.w * r0.z + 4;
    r1.y = rcp(r1.y);
    r0.w = mad((int)r0.w, 4, 256);
    g0[r0.w].val[0/4] = r2.w;
    r4.xyz = (int3)r0.www | int3(257,258,259);
    g0[r4.x].val[0/4] = r3.w;
    g0[r4.y].val[0/4] = r1.x;
    g0[r4.z].val[0/4] = r1.y;
  }
  GroupMemoryBarrierWithGroupSync();
  r4.xyzw = cb0[24].xyyy + r0.xyyy;
  r4.xyzw = (uint4)r4.xyzw;
  r1.xy = (uint2)r4.xw;
  r1.xy = cmp(r1.xy < cb0[24].zw);
  r0.w = r1.y ? r1.x : 0;
  if (r0.w != 0) {
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[23].zw * r0.xy;
    r5.xy = r0.xy + r0.xy;
    r0.w = r0.x * 2 + -1;
    r1.x = -r0.y * 2 + 1;
    r0.xy = r0.xy * cb0[15].xy + cb0[15].zw;
    r1.yw = cb0[19].xy * r0.xy;
    r1.yw = trunc(r1.yw);
    r6.xy = (int2)r1.yw;
    r6.zw = float2(0,0);
    r1.y = t4.Load(r6.xyz).y;
    r1.y = (int)r1.y & 8;
    r1.w = cmp(r2.x < r1.z);
    r6.y = r1.w ? -2 : 2;
    r1.w = cmp(r2.z < r2.y);
    r7.y = r1.w ? -2 : 2;
    r1.z = max(r2.x, r1.z);
    r1.w = max(r2.y, r2.z);
    r2.x = cmp(r1.w < r1.z);
    r6.z = -2;
    r7.z = 2;
    r2.xy = r2.xx ? r6.yz : r7.yz;
    r6.x = max(r1.z, r1.w);
    r1.z = cmp(r3.x < r6.x);
    r6.yz = cb0[19].zw * r2.xy;
    r3.yz = float2(0,0);
    r2.xyz = r1.zzz ? r6.xyz : r3.xyz;
    r1.xzw = cb1[123].xyw * r1.xxx;
    r1.xzw = r0.www * cb1[122].xyw + r1.xzw;
    r1.xzw = r2.xxx * cb1[124].xyw + r1.xzw;
    r1.xzw = cb1[125].xyw + r1.xzw;
    r1.xz = r1.zx / r1.ww;
    r5.zw = r5.xy * float2(1,-1) + float2(-1,1);
    r1.xz = r5.wz + -r1.xz;
    r0.xy = r2.yz + r0.xy;
    r0.xy = t3.SampleLevel(s1_s, r0.xy, 0).xy;
    r0.w = cmp(0 < r0.x);
    r0.xy = r0.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r0.xy = r0.ww ? r0.xy : r1.xz;
    r1.xz = cb0[23].xy * r0.yx;
    r0.w = dot(r1.xz, r1.xz);
    r0.w = sqrt(r0.w);
    r1.xz = float2(0,-1) + r5.wx;
    r0.xy = r1.xz + -r0.xy;
    r1.x = max(abs(r0.y), abs(r0.x));
    r1.x = cmp(r1.x >= 1);
    r2.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,0,0,1);
    r2.xyzw = mad((int4)r2.yyyw, int4(10,10,10,10), (int4)r2.xxxz);
    r1.zw = (uint2)r2.zw << int2(2,2);
    r3.x = g0[r1.z].val[0/4];
    r5.xyzw = mad((int4)r2.xyzw, int4(4,4,4,4), int4(1,2,3,1));
    r3.y = g0[r5.x].val[0/4];
    r3.z = g0[r5.y].val[0/4];
    r1.z = g0[r5.z].val[0/4];
    r2.x = cb0[10].x * r1.z;
    r5.x = g0[r1.w].val[0/4];
    r5.y = g0[r5.w].val[0/4];
    r2.yz = mad((int2)r2.ww, int2(4,4), int2(2,3));
    r5.z = g0[r2.y].val[0/4];
    r1.w = g0[r2.z].val[0/4];
    r1.w = cb0[11].x * r1.w;
    r2.yzw = r1.www * r5.xyz;
    r2.xyz = r2.xxx * r3.xyz + r2.yzw;
    r1.z = cb0[10].x * r1.z + r1.w;
    r6.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,1,2,1);
    r6.xyzw = mad((int4)r6.yyyw, int4(10,10,10,10), (int4)r6.xxxz);
    r7.xy = (uint2)r6.zw << int2(2,2);
    r8.x = g0[r7.x].val[0/4];
    r9.xyzw = mad((int4)r6.xyzw, int4(4,4,4,4), int4(1,2,3,1));
    r8.y = g0[r9.x].val[0/4];
    r8.z = g0[r9.y].val[0/4];
    r1.w = g0[r9.z].val[0/4];
    r2.w = cb0[12].x * r1.w;
    r2.xyz = r2.www * r8.xyz + r2.xyz;
    r1.z = cb0[12].x * r1.w + r1.z;
    r6.x = g0[r7.y].val[0/4];
    r6.y = g0[r9.w].val[0/4];
    r7.xy = mad((int2)r6.ww, int2(4,4), int2(2,3));
    r6.z = g0[r7.x].val[0/4];
    r1.w = g0[r7.y].val[0/4];
    r2.w = cb0[13].x * r1.w;
    r2.xyz = r2.www * r6.xyz + r2.xyz;
    r1.z = cb0[13].x * r1.w + r1.z;
    r7.xy = (int2)vThreadIDInGroup.xy + int2(1,2);
    r1.w = mad((int)r7.y, 10, (int)r7.x);
    r2.w = (uint)r1.w << 2;
    r7.x = g0[r2.w].val[0/4];
    r9.xyz = mad((int3)r1.www, int3(4,4,4), int3(1,2,3));
    r7.y = g0[r9.x].val[0/4];
    r7.z = g0[r9.y].val[0/4];
    r1.w = g0[r9.z].val[0/4];
    r2.w = cb0[14].x * r1.w;
    r2.xyz = r2.www * r7.xyz + r2.xyz;
    r1.z = cb0[14].x * r1.w + r1.z;
    r1.z = rcp(r1.z);
    r2.yzw = r2.xyz * r1.zzz;
    r9.xyz = min(r8.xyz, r5.xyz);
    r9.xyz = min(r9.xyz, r3.xyz);
    r10.xyz = min(r7.xyz, r6.xyz);
    r9.xyz = min(r10.xyz, r9.xyz);
    r5.xyz = max(r8.xyz, r5.xyz);
    r3.xyz = max(r5.xyz, r3.xyz);
    r5.xyz = max(r7.xyz, r6.xyz);
    r3.xyz = max(r5.xyz, r3.xyz);
    r0.xy = r0.xy * cb0[18].yx + cb0[18].wz;
    r0.xy = max(cb0[22].yx, r0.xy);
    r0.xy = min(cb0[22].wz, r0.xy);
    r5.xy = r0.yx * cb0[21].xy + float2(-0.5,-0.5);
    r5.xy = floor(r5.xy);
    r6.xyzw = float4(0.5,0.5,-0.5,-0.5) + r5.xyxy;
    r0.xy = r0.xy * cb0[21].yx + -r6.yx;
    r5.zw = r0.yx * r0.yx;
    r7.xy = r5.zw * r0.yx;
    r7.zw = r5.wz * r0.xy + r0.xy;
    r7.zw = -r7.zw * float2(0.5,0.5) + r5.wz;
    r8.xy = float2(2.5,2.5) * r5.wz;
    r7.xy = r7.yx * float2(1.5,1.5) + -r8.xy;
    r7.xy = float2(1,1) + r7.xy;
    r0.xy = r5.zw * r0.yx + -r5.zw;
    r5.zw = float2(0.5,0.5) * r0.xy;
    r8.xy = float2(1,1) + -r7.wz;
    r8.xy = r8.xy + -r7.yx;
    r0.xy = -r0.xy * float2(0.5,0.5) + r8.xy;
    r7.xy = r7.xy + r0.yx;
    r0.xy = r0.xy / r7.yx;
    r0.xy = r6.xy + r0.xy;
    r5.xy = float2(2.5,2.5) + r5.xy;
    r6.xy = cb0[21].wz * r6.wz;
    r8.zw = cb0[21].wz * r0.yx;
    r0.xy = cb0[21].zw * r5.xy;
    r5.xy = r7.yx * r7.zw;
    r1.w = r7.y * r7.x;
    r6.zw = r7.xy * r5.zw;
    r3.w = r5.x + r5.y;
    r3.w = r7.y * r7.x + r3.w;
    r3.w = r5.z * r7.x + r3.w;
    r3.w = r5.w * r7.y + r3.w;
    r3.w = 1 / r3.w;
    r8.xy = max(cb0[22].yx, r6.xy);
    r7.xyz = t5.SampleLevel(s2_s, r8.wx, 0).xyz;
    r10.xyz = t5.SampleLevel(s2_s, r8.yz, 0).xyz;
    r5.yzw = r10.xyz * r5.yyy;
    r5.xyz = r7.xyz * r5.xxx + r5.yzw;
    r7.xyz = t5.SampleLevel(s2_s, r8.wz, 0).xyz;
    r5.xyz = r7.xyz * r1.www + r5.xyz;
    r8.xy = min(cb0[22].zw, r0.xy);
    r7.xyz = t5.SampleLevel(s2_s, r8.xz, 0).xyz;
    r5.xyz = r7.xyz * r6.zzz + r5.xyz;
    r6.xyz = t5.SampleLevel(s2_s, r8.wy, 0).xyz;
    r5.xyz = r6.xyz * r6.www + r5.xyz;
    r5.xyz = r5.xyz * r3.www;
    r5.xyz = cb0[0].xxx * r5.xyz;
    r6.x = dot(r5.xzy, float3(1,1,2));
    r6.y = dot(r5.xz, float2(2,-2));
    r6.z = dot(r5.xzy, float3(-1,-1,2));
    r0.x = cmp(asint(cb0[0].z) != 0);
    r0.x = (int)r0.x | (int)r1.x;
    r5.xyz = max(r6.xyz, r9.xyz);
    r3.xyz = min(r5.xyz, r3.xyz);
    r0.y = 0.0250000004 * r0.w;
    r0.y = min(1, r0.y);
    r0.w = 0.200000003 + -cb0[0].y;
    r0.y = r0.y * r0.w + cb0[0].y;
    r0.w = 0.00999999978 * r6.x;
    r1.x = r2.x * r1.z + -r6.x;
    r0.w = saturate(r0.w / abs(r1.x));
    r0.y = max(r0.y, r0.w);
    r0.y = r1.y ? 0.25 : r0.y;
    r0.y = cb0[0].z ? 1 : r0.y;
    r1.xyz = r0.xxx ? r2.yzw : r3.xyz;
    r0.x = r2.y * r0.z + 4;
    r0.z = r1.x * r0.z + 4;
    r0.xz = rcp(r0.xz);
    r0.w = 1 + -r0.y;
    r1.w = r0.w * r0.z;
    r0.x = r0.y * r0.x;
    r0.y = r0.w * r0.z + r0.x;
    r0.y = rcp(r0.y);
    r0.z = r1.w * r0.y;
    r0.x = r0.x * r0.y;
    r0.xyw = r2.yzw * r0.xxx;
    r0.xyz = r1.xyz * r0.zzz + r0.xyw;
    r1.xyz = float3(0.25,0.25,0.25) * r0.xyz;
    r2.yz = r1.xx + r1.yz;
    r2.x = -r0.z * 0.25 + r2.y;
    r0.x = r0.x * 0.25 + -r1.y;
    r2.w = -r0.z * 0.25 + r0.x;
    r0.xyz = min(float3(0,0,0), -r2.xzw);
    r0.xyz = min(float3(65504,65504,65504), -r0.xyz);
    r1.xy = (int2)r4.xw * int2(0x19660d,0x19660d);
    r1.z = asint(cb1[144].y) * 0x0019660d;
    r1.xyz = (int3)r1.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r0.w = mad((int)r1.y, (int)r1.z, (int)r1.x);
    r1.x = mad((int)r1.z, (int)r0.w, (int)r1.y);
    r1.y = mad((int)r0.w, (int)r1.x, (int)r1.z);
    r0.w = mad((int)r1.x, (int)r1.y, (int)r0.w);
    r0.w = (uint)r0.w >> 16;
    r0.w = (uint)r0.w;
    r0.w = 1.52587891e-005 * r0.w;
    r0.w = frac(r0.w);
    r1.xyz = cb0[25].xyz * r0.www;
    r0.xyz = r0.xyz * r1.xyz + r0.xyz;
    r0.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xyzw, r0.xyzw
  }
  return;
}