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
    r2.xy = r2.yz + r0.xy;
    r2.xy = t3.SampleLevel(s1_s, r2.xy, 0).xy;
    r0.w = cmp(0 < r2.x);
    r2.xy = r2.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r1.xz = r0.ww ? r2.xy : r1.xz;
    r2.xy = cb0[23].xy * r1.zx;
    r0.w = dot(r2.xy, r2.xy);
    r0.w = sqrt(r0.w);
    r2.xy = float2(0,-1) + r5.wx;
    r1.xz = r2.xy + -r1.xz;
    r1.w = max(abs(r1.z), abs(r1.x));
    r1.w = cmp(r1.w >= 1);
    r2.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,0,0,1);
    r2.xyzw = mad((int4)r2.yyyw, int4(10,10,10,10), (int4)r2.xxxz);
    r3.xy = (uint2)r2.zw << int2(2,2);
    r5.x = g0[r3.x].val[0/4];
    r6.xyzw = mad((int4)r2.xyzw, int4(4,4,4,4), int4(1,2,3,1));
    r5.y = g0[r6.x].val[0/4];
    r5.z = g0[r6.y].val[0/4];
    r2.x = g0[r6.z].val[0/4];
    r2.y = cb0[10].x * r2.x;
    r3.x = g0[r3.y].val[0/4];
    r3.y = g0[r6.w].val[0/4];
    r2.zw = mad((int2)r2.ww, int2(4,4), int2(2,3));
    r3.z = g0[r2.z].val[0/4];
    r2.z = g0[r2.w].val[0/4];
    r2.z = cb0[11].x * r2.z;
    r6.xyz = r2.zzz * r3.xyz;
    r6.xyz = r2.yyy * r5.xyz + r6.xyz;
    r2.x = cb0[10].x * r2.x + r2.z;
    r7.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,1,2,1);
    r7.xyzw = mad((int4)r7.yyyw, int4(10,10,10,10), (int4)r7.xxxz);
    r2.yz = (uint2)r7.zw << int2(2,2);
    r8.x = g0[r2.y].val[0/4];
    r9.xyzw = mad((int4)r7.xyzw, int4(4,4,4,4), int4(1,2,3,1));
    r8.y = g0[r9.x].val[0/4];
    r8.z = g0[r9.y].val[0/4];
    r2.y = g0[r9.z].val[0/4];
    r2.w = cb0[12].x * r2.y;
    r6.xyz = r2.www * r8.xyz + r6.xyz;
    r2.x = cb0[12].x * r2.y + r2.x;
    r7.x = g0[r2.z].val[0/4];
    r7.y = g0[r9.w].val[0/4];
    r2.yz = mad((int2)r7.ww, int2(4,4), int2(2,3));
    r7.z = g0[r2.y].val[0/4];
    r2.y = g0[r2.z].val[0/4];
    r2.z = cb0[13].x * r2.y;
    r6.xyz = r2.zzz * r7.xyz + r6.xyz;
    r2.x = cb0[13].x * r2.y + r2.x;
    r2.yz = (int2)vThreadIDInGroup.xy + int2(1,2);
    r2.y = mad((int)r2.z, 10, (int)r2.y);
    r2.z = (uint)r2.y << 2;
    r9.x = g0[r2.z].val[0/4];
    r2.yzw = mad((int3)r2.yyy, int3(4,4,4), int3(1,2,3));
    r9.y = g0[r2.y].val[0/4];
    r9.z = g0[r2.z].val[0/4];
    r2.y = g0[r2.w].val[0/4];
    r2.z = cb0[14].x * r2.y;
    r6.xyz = r2.zzz * r9.xyz + r6.xyz;
    r2.x = cb0[14].x * r2.y + r2.x;
    r2.x = rcp(r2.x);
    r2.yzw = r6.xyz * r2.xxx;
    r6.yzw = min(r8.xyz, r3.xyz);
    r6.yzw = min(r6.yzw, r5.xyz);
    r10.xyz = min(r9.xyz, r7.xyz);
    r6.yzw = min(r10.xyz, r6.yzw);
    r3.xyz = max(r8.xyz, r3.xyz);
    r3.xyz = max(r5.xyz, r3.xyz);
    r5.xyz = max(r9.xyz, r7.xyz);
    r3.xyz = max(r5.xyz, r3.xyz);
    r1.xz = r1.xz * cb0[18].yx + cb0[18].wz;
    r1.xz = max(cb0[22].yx, r1.xz);
    r1.xz = min(cb0[22].wz, r1.xz);
    r5.xy = r1.zx * cb0[21].xy + float2(-0.5,-0.5);
    r5.xy = floor(r5.xy);
    r7.xyzw = float4(0.5,0.5,-0.5,-0.5) + r5.xyxy;
    r1.xz = r1.xz * cb0[21].yx + -r7.yx;
    r5.zw = r1.zx * r1.zx;
    r8.xy = r5.zw * r1.zx;
    r8.zw = r5.wz * r1.xz + r1.xz;
    r8.zw = -r8.zw * float2(0.5,0.5) + r5.wz;
    r9.xy = float2(2.5,2.5) * r5.wz;
    r8.xy = r8.yx * float2(1.5,1.5) + -r9.xy;
    r8.xy = float2(1,1) + r8.xy;
    r1.xz = r5.zw * r1.zx + -r5.zw;
    r5.zw = float2(0.5,0.5) * r1.xz;
    r9.xy = float2(1,1) + -r8.wz;
    r9.xy = r9.xy + -r8.yx;
    r1.xz = -r1.xz * float2(0.5,0.5) + r9.xy;
    r8.xy = r8.xy + r1.zx;
    r1.xz = r1.xz / r8.yx;
    r1.xz = r7.xy + r1.xz;
    r5.xy = float2(2.5,2.5) + r5.xy;
    r7.xy = cb0[21].wz * r7.wz;
    r9.zw = cb0[21].wz * r1.zx;
    r1.xz = cb0[21].zw * r5.xy;
    r5.xy = r8.yx * r8.zw;
    r3.w = r8.y * r8.x;
    r7.zw = r8.xy * r5.zw;
    r8.z = r5.x + r5.y;
    r8.z = r8.y * r8.x + r8.z;
    r5.z = r5.z * r8.x + r8.z;
    r5.z = r5.w * r8.y + r5.z;
    r5.z = 1 / r5.z;
    r9.xy = max(cb0[22].yx, r7.xy);
    r8.xyzw = t5.SampleLevel(s2_s, r9.wx, 0).xyzw;
    r10.xyzw = t5.SampleLevel(s2_s, r9.yz, 0).xyzw;
    r10.xyzw = r10.xyzw * r5.yyyy;
    r8.xyzw = r8.xyzw * r5.xxxx + r10.xyzw;
    r10.xyzw = t5.SampleLevel(s2_s, r9.wz, 0).xyzw;
    r8.xyzw = r10.xyzw * r3.wwww + r8.xyzw;
    r9.xy = min(cb0[22].zw, r1.xz);
    r10.xyzw = t5.SampleLevel(s2_s, r9.xz, 0).xyzw;
    r8.xyzw = r10.xyzw * r7.zzzz + r8.xyzw;
    r9.xyzw = t5.SampleLevel(s2_s, r9.wy, 0).xyzw;
    r7.xyzw = r9.xyzw * r7.wwww + r8.xyzw;
    r5.xyzw = r7.xyzw * r5.zzzz;
    r5.xyz = cb0[0].xxx * r5.xyz;
    r7.x = dot(r5.xzy, float3(1,1,2));
    r7.y = dot(r5.xz, float2(2,-2));
    r7.z = dot(r5.xzy, float3(-1,-1,2));
    r1.x = cmp(asint(cb0[0].z) != 0);
    r1.x = (int)r1.x | (int)r1.w;
    r1.z = t3.SampleLevel(s1_s, r0.xy, 0, int2(0, -1)).x;
    r1.z = cmp(0 < r1.z);
    r1.w = t3.SampleLevel(s1_s, r0.xy, 0, int2(-1, 0)).x;
    r1.w = cmp(0 < r1.w);
    r3.w = t3.SampleLevel(s1_s, r0.xy, 0).x;
    r3.w = cmp(0 < r3.w);
    r5.x = t3.SampleLevel(s1_s, r0.xy, 0, int2(1, 0)).x;
    r5.x = cmp(0 < r5.x);
    r0.x = t3.SampleLevel(s1_s, r0.xy, 0, int2(0, 1)).x;
    r0.x = cmp(0 < r0.x);
    r0.y = (int)r1.w | (int)r1.z;
    r0.y = (int)r3.w | (int)r0.y;
    r0.y = (int)r5.x | (int)r0.y;
    r0.x = (int)r0.x | (int)r0.y;
    r0.x = ~(int)r0.x;
    r0.y = cmp(0 < r5.w);
    r0.x = r0.y ? r0.x : 0;
    r0.x = (int)r0.x | (int)r1.x;
    r1.xzw = max(r7.xyz, r6.yzw);
    r1.xzw = min(r1.xzw, r3.xyz);
    r0.y = 0.0250000004 * r0.w;
    r0.y = min(1, r0.y);
    r0.w = 0.200000003 + -cb0[0].y;
    r0.y = r0.y * r0.w + cb0[0].y;
    r0.w = 0.00999999978 * r7.x;
    r2.x = r6.x * r2.x + -r7.x;
    r0.w = saturate(r0.w / abs(r2.x));
    r0.y = max(r0.y, r0.w);
    r0.y = r1.y ? 0.25 : r0.y;
    r0.y = cb0[0].z ? 1 : r0.y;
    r1.xyz = r0.xxx ? r2.yzw : r1.xzw;
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
    r1.w = r3.w ? 1.000000 : 0;
    r0.xyz = min(float3(65504,65504,65504), -r0.xyz);
    r2.xy = (int2)r4.xw * int2(0x19660d,0x19660d);
    r2.z = asint(cb1[144].y) * 0x0019660d;
    r2.xyz = (int3)r2.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r0.w = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.x = mad((int)r2.z, (int)r0.w, (int)r2.y);
    r2.y = mad((int)r0.w, (int)r2.x, (int)r2.z);
    r0.w = mad((int)r2.x, (int)r2.y, (int)r0.w);
    r0.w = (uint)r0.w >> 16;
    r0.w = (uint)r0.w;
    r0.w = 1.52587891e-005 * r0.w;
    r0.w = frac(r0.w);
    r2.xyz = cb0[25].xyz * r0.www;
    r1.xyz = r0.xyz * r2.xyz + r0.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xyzw, r1.xyzw
  }
  return;
}