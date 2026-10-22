// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g1[400];
groupshared struct { float val[4]; } g0[64];
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r1.xy = float2(0.5,0.5) + r0.xw;
  r1.xy = cb0[23].zw * r1.xy;
  r1.z = t0.Load(float4(0,0,0,0)).x;
  r1.z = cb1[135].z * r1.z;
  r2.xy = r1.xy + r1.xy;
  r1.w = r1.x * 2 + -1;
  r3.x = -r1.y * 2 + 1;
  r1.xy = r1.xy * cb0[15].xy + cb0[15].zw;
  r3.yz = cb0[19].xy * r1.xy;
  r3.yz = trunc(r3.yz);
  r4.xy = (int2)r3.yz;
  r4.zw = float2(0,0);
  r3.y = t4.Load(r4.xyz).y;
  r3.y = (int)r3.y & 8;
  r3.zw = (uint2)vThreadGroupID.xy << int2(3,3);
  r3.zw = (uint2)r3.zw;
  r3.zw = cb0[24].xy + r3.zw;
  r4.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r4.yz = (uint2)vThreadIDInGroup.xx << int2(1,2);
  r4.yz = mad((int2)vThreadIDInGroup.yy, int2(16,32), (int2)r4.yz);
  uiDest.x = (uint)r4.y / 12;
  r6.x = (uint)r4.y % 12;
  r5.x = uiDest.x;
  r4.y = mad((int)r5.x, 24, (int)r6.x);
  r4.w = cmp((uint)r4.y < 144);
  if (r4.w != 0) {
    r6.y = (uint)r5.x << 1;
    r5.xy = float2(-2,-2) + r3.zw;
    r5.xy = (uint2)r5.xy;
    r5.xy = (int2)r6.xy + (int2)r5.xy;
    r5.xy = (uint2)r5.xy;
    r5.xy = float2(0.5,0.5) + r5.xy;
    r5.xy = cb0[19].zw * r5.xy;
    r5.xyzw = t2.Gather(s0_s, r5.xy).xyzw;
    r4.w = (int)r4.y + 12;
    g1[r4.w].val[0/4] = r5.x;
    r4.w = (int)r4.w + 1;
    g1[r4.w].val[0/4] = r5.y;
    r4.w = (int)r4.y + 1;
    g1[r4.w].val[0/4] = r5.z;
    g1[r4.y].val[0/4] = r5.w;
  }
  GroupMemoryBarrierWithGroupSync();
  r5.xyzw = (int4)vThreadIDInGroup.xyxy + int4(2,2,4,0);
  r4.yw = mad((int2)r5.yw, int2(12,12), (int2)r5.xz);
  r5.x = g1[r4.y].val[0/4];
  r4.y = mad((int)vThreadIDInGroup.y, 12, (int)vThreadIDInGroup.x);
  r4.y = g1[r4.y].val[0/4];
  r4.w = g1[r4.w].val[0/4];
  r6.xyzw = (int4)vThreadIDInGroup.xyxy + int4(0,4,4,4);
  r6.xy = mad((int2)r6.yw, int2(12,12), (int2)r6.xz);
  r5.w = g1[r6.x].val[0/4];
  r6.x = g1[r6.y].val[0/4];
  r6.y = cmp(r4.w < r4.y);
  r6.y = r6.y ? -2 : 2;
  r6.w = cmp(r6.x < r5.w);
  r7.y = r6.w ? -2 : 2;
  r4.y = max(r4.y, r4.w);
  r4.w = max(r6.x, r5.w);
  r5.w = cmp(r4.w < r4.y);
  r6.z = -2;
  r7.z = 2;
  r6.xy = r5.ww ? r6.yz : r7.yz;
  r7.x = max(r4.y, r4.w);
  r4.y = cmp(r5.x < r7.x);
  r7.yz = cb0[19].zw * r6.xy;
  r5.yz = float2(0,0);
  r5.xyz = r4.yyy ? r7.xyz : r5.xyz;
  r6.xyz = cb1[123].xyw * r3.xxx;
  r6.xyz = r1.www * cb1[122].xyw + r6.xyz;
  r6.xyz = r5.xxx * cb1[124].xyw + r6.xyz;
  r6.xyz = cb1[125].xyw + r6.xyz;
  r4.yw = r6.yx / r6.zz;
  r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
  r2.yz = r2.wz + -r4.yw;
  r1.xy = r5.yz + r1.xy;
  r1.xy = t3.SampleLevel(s1_s, r1.xy, 0).xy;
  r1.w = cmp(0 < r1.x);
  r1.xy = r1.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r1.xy = r1.ww ? r1.xy : r2.yz;
  r2.yz = cb0[23].xy * r1.yx;
  r1.w = dot(r2.yz, r2.yz);
  r1.w = sqrt(r1.w);
  r2.xy = float2(0,-1) + r2.wx;
  r1.xy = r2.xy + -r1.xy;
  r2.x = max(abs(r1.y), abs(r1.x));
  r2.x = cmp(r2.x >= 1);
  GroupMemoryBarrierWithGroupSync();
  r2.yz = float2(-1,-1) + r3.zw;
  r2.yz = (uint2)r2.yz;
  uiDest.x = (uint)r4.x / 10;
  r5.x = (uint)r4.x % 10;
  r3.x = uiDest.x;
  r5.y = r3.x;
  r3.xz = (int2)r2.yz + (int2)r5.xy;
  r3.xz = max(asint(cb0[20].xy), (int2)r3.xz);
  r5.xy = min(asint(cb0[20].zw), (int2)r3.xz);
  r5.zw = float2(0,0);
  r3.xzw = t1.Load(r5.xyz).xyz;
  r2.w = dot(r3.xwz, float3(1,1,2));
  r4.y = dot(r3.xw, float2(2,-2));
  r3.x = dot(r3.xwz, float3(-1,-1,2));
  r3.z = r2.w * r1.z + 4;
  r3.z = rcp(r3.z);
  g1[r4.z].val[0/4] = r2.w;
  r5.xy = (int2)r4.zz + int2(1,3);
  g1[r5.x].val[0/4] = r4.y;
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r4.y = (((uint)r4.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
  bitmask.w = ((~(-1 << 6)) << 0) & 0xffffffff;  r4.w = (((uint)r4.x << 0) & bitmask.w) | ((uint)64 & ~bitmask.w);
  g1[r4.y].val[0/4] = r3.x;
  g1[r5.y].val[0/4] = r3.z;
  r2.w = cmp((uint)r4.w < 100);
  if (r2.w != 0) {
    uiDest.x = (uint)r4.w / 10;
    r5.x = (uint)r4.w % 10;
    r3.x = uiDest.x;
    r5.y = r3.x;
    r2.yz = (int2)r2.yz + (int2)r5.xy;
    r2.yz = max(asint(cb0[20].xy), (int2)r2.yz);
    r5.xy = min(asint(cb0[20].zw), (int2)r2.yz);
    r5.zw = float2(0,0);
    r2.yzw = t1.Load(r5.xyz).xyz;
    r3.x = dot(r2.ywz, float3(1,1,2));
    r3.z = dot(r2.yw, float2(2,-2));
    r2.y = dot(r2.ywz, float3(-1,-1,2));
    r2.z = r3.x * r1.z + 4;
    r2.z = rcp(r2.z);
    r2.w = mad((int)r4.x, 4, 256);
    g1[r2.w].val[0/4] = r3.x;
    r4.yzw = (int3)r2.www | int3(257,258,259);
    g1[r4.y].val[0/4] = r3.z;
    g1[r4.z].val[0/4] = r2.y;
    g1[r4.w].val[0/4] = r2.z;
  }
  GroupMemoryBarrierWithGroupSync();
  r5.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,0,0,1);
  r5.xyzw = mad((int4)r5.yyyw, int4(10,10,10,10), (int4)r5.xxxz);
  r2.yz = (uint2)r5.zw << int2(2,2);
  r6.x = g1[r2.y].val[0/4];
  r7.xyzw = mad((int4)r5.xyzw, int4(4,4,4,4), int4(1,2,3,1));
  r6.y = g1[r7.x].val[0/4];
  r6.z = g1[r7.y].val[0/4];
  r2.y = g1[r7.z].val[0/4];
  r2.w = cb0[10].x * r2.y;
  r5.x = g1[r2.z].val[0/4];
  r5.y = g1[r7.w].val[0/4];
  r3.xz = mad((int2)r5.ww, int2(4,4), int2(2,3));
  r5.z = g1[r3.x].val[0/4];
  r2.z = g1[r3.z].val[0/4];
  r2.z = cb0[11].x * r2.z;
  r3.xzw = r2.zzz * r5.xyz;
  r3.xzw = r2.www * r6.xyz + r3.xzw;
  r2.y = cb0[10].x * r2.y + r2.z;
  r7.xyzw = (int4)vThreadIDInGroup.xyxy + int4(1,1,2,1);
  r7.xyzw = mad((int4)r7.yyyw, int4(10,10,10,10), (int4)r7.xxxz);
  r2.zw = (uint2)r7.zw << int2(2,2);
  r8.x = g1[r2.z].val[0/4];
  r9.xyzw = mad((int4)r7.xyzw, int4(4,4,4,4), int4(1,2,3,1));
  r8.y = g1[r9.x].val[0/4];
  r8.z = g1[r9.y].val[0/4];
  r2.z = g1[r9.z].val[0/4];
  r4.y = cb0[12].x * r2.z;
  r3.xzw = r4.yyy * r8.xyz + r3.xzw;
  r2.y = cb0[12].x * r2.z + r2.y;
  r7.x = g1[r2.w].val[0/4];
  r7.y = g1[r9.w].val[0/4];
  r2.zw = mad((int2)r7.ww, int2(4,4), int2(2,3));
  r7.z = g1[r2.z].val[0/4];
  r2.z = g1[r2.w].val[0/4];
  r2.w = cb0[13].x * r2.z;
  r3.xzw = r2.www * r7.xyz + r3.xzw;
  r2.y = cb0[13].x * r2.z + r2.y;
  r2.zw = (int2)vThreadIDInGroup.xy + int2(1,2);
  r2.z = mad((int)r2.w, 10, (int)r2.z);
  r2.w = (uint)r2.z << 2;
  r9.x = g1[r2.w].val[0/4];
  r4.yzw = mad((int3)r2.zzz, int3(4,4,4), int3(1,2,3));
  r9.y = g1[r4.y].val[0/4];
  r9.z = g1[r4.z].val[0/4];
  r2.z = g1[r4.w].val[0/4];
  r2.w = cb0[14].x * r2.z;
  r3.xzw = r2.www * r9.xyz + r3.xzw;
  r2.y = cb0[14].x * r2.z + r2.y;
  r2.y = rcp(r2.y);
  r4.yzw = r3.xzw * r2.yyy;
  r10.xyz = min(r8.xyz, r5.xyz);
  r10.xyz = min(r10.xyz, r6.xyz);
  r11.xyz = min(r9.xyz, r7.xyz);
  r10.xyz = min(r11.xyz, r10.xyz);
  r5.xyz = max(r8.xyz, r5.xyz);
  r5.xyz = max(r6.xyz, r5.xyz);
  r6.xyz = max(r9.xyz, r7.xyz);
  r5.xyz = max(r6.xyz, r5.xyz);
  r1.xy = r1.xy * cb0[18].yx + cb0[18].wz;
  r1.xy = max(cb0[22].yx, r1.xy);
  r1.xy = min(cb0[22].wz, r1.xy);
  r2.zw = r1.yx * cb0[21].xy + float2(-0.5,-0.5);
  r2.zw = floor(r2.zw);
  r6.xyzw = float4(0.5,0.5,-0.5,-0.5) + r2.zwzw;
  r1.xy = r1.xy * cb0[21].yx + -r6.yx;
  r3.zw = r1.yx * r1.yx;
  r7.xy = r3.zw * r1.yx;
  r7.zw = r3.wz * r1.xy + r1.xy;
  r7.zw = -r7.zw * float2(0.5,0.5) + r3.wz;
  r8.xy = float2(2.5,2.5) * r3.wz;
  r7.xy = r7.yx * float2(1.5,1.5) + -r8.xy;
  r7.xy = float2(1,1) + r7.xy;
  r1.xy = r3.zw * r1.yx + -r3.zw;
  r3.zw = float2(0.5,0.5) * r1.xy;
  r8.xy = float2(1,1) + -r7.wz;
  r8.xy = r8.xy + -r7.yx;
  r1.xy = -r1.xy * float2(0.5,0.5) + r8.xy;
  r7.xy = r7.xy + r1.yx;
  r1.xy = r1.xy / r7.yx;
  r1.xy = r6.xy + r1.xy;
  r2.zw = float2(2.5,2.5) + r2.zw;
  r6.xy = cb0[21].wz * r6.wz;
  r8.zw = cb0[21].wz * r1.yx;
  r1.xy = cb0[21].zw * r2.zw;
  r2.zw = r7.yx * r7.zw;
  r5.w = r7.y * r7.x;
  r6.zw = r7.xy * r3.zw;
  r7.z = r2.z + r2.w;
  r7.z = r7.y * r7.x + r7.z;
  r3.z = r3.z * r7.x + r7.z;
  r3.z = r3.w * r7.y + r3.z;
  r3.z = 1 / r3.z;
  r8.xy = max(cb0[22].yx, r6.xy);
  r7.xyz = t5.SampleLevel(s2_s, r8.wx, 0).xyz;
  r9.xyz = t5.SampleLevel(s2_s, r8.yz, 0).xyz;
  r9.xyz = r9.xyz * r2.www;
  r7.xyz = r7.xyz * r2.zzz + r9.xyz;
  r9.xyz = t5.SampleLevel(s2_s, r8.wz, 0).xyz;
  r7.xyz = r9.xyz * r5.www + r7.xyz;
  r8.xy = min(cb0[22].zw, r1.xy);
  r9.xyz = t5.SampleLevel(s2_s, r8.xz, 0).xyz;
  r6.xyz = r9.xyz * r6.zzz + r7.xyz;
  r7.xyz = t5.SampleLevel(s2_s, r8.wy, 0).xyz;
  r6.xyz = r7.xyz * r6.www + r6.xyz;
  r6.xyz = r6.xyz * r3.zzz;
  r6.xyz = cb0[0].xxx * r6.xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  r1.x = cmp(asint(cb0[0].z) != 0);
  r1.x = (int)r1.x | (int)r2.x;
  r2.xzw = max(r7.xyz, r10.xyz);
  r2.xzw = min(r2.xzw, r5.xyz);
  r1.y = 0.0250000004 * r1.w;
  r1.y = min(1, r1.y);
  r1.w = 0.200000003 + -cb0[0].y;
  r1.y = r1.y * r1.w + cb0[0].y;
  r1.w = 0.00999999978 * r7.x;
  r2.y = r3.x * r2.y + -r7.x;
  r1.w = saturate(r1.w / abs(r2.y));
  r1.y = max(r1.y, r1.w);
  r1.y = r3.y ? 0.25 : r1.y;
  r1.y = cb0[0].z ? 1 : r1.y;
  r2.xyz = r1.xxx ? r4.yzw : r2.xzw;
  r1.x = r4.y * r1.z + 4;
  r1.z = r2.x * r1.z + 4;
  r1.xz = rcp(r1.xz);
  r1.w = 1 + -r1.y;
  r2.w = r1.w * r1.z;
  r1.x = r1.y * r1.x;
  r1.y = r1.w * r1.z + r1.x;
  r1.y = rcp(r1.y);
  r1.z = r2.w * r1.y;
  r1.x = r1.x * r1.y;
  r1.xyw = r4.yzw * r1.xxx;
  r1.xyz = r2.xyz * r1.zzz + r1.xyw;
  r2.xyz = float3(0.25,0.25,0.25) * r1.xyz;
  r3.yz = r2.xx + r2.yz;
  r3.x = -r1.z * 0.25 + r3.y;
  r1.x = r1.x * 0.25 + -r2.y;
  r3.w = -r1.z * 0.25 + r1.x;
  r1.xyz = min(float3(0,0,0), -r3.xzw);
  r1.xyz = -r1.xyz;
  r0.xyzw = cb0[24].xyyy + r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r2.xy = (uint2)r0.xw;
  r2.xy = cmp(r2.xy < cb0[24].zw);
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r2.xyz = min(float3(65504,65504,65504), r1.xyz);
    r3.xy = (int2)r0.xw * int2(0x19660d,0x19660d);
    r3.z = asint(cb1[144].y) * 0x0019660d;
    r3.xyz = (int3)r3.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.w = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.x = mad((int)r3.z, (int)r2.w, (int)r3.y);
    r3.y = mad((int)r2.w, (int)r3.x, (int)r3.z);
    r2.w = mad((int)r3.x, (int)r3.y, (int)r2.w);
    r2.w = (uint)r2.w >> 16;
    r2.w = (uint)r2.w;
    r2.w = 1.52587891e-005 * r2.w;
    r2.w = frac(r2.w);
    r3.xyz = cb0[25].xyz * r2.www;
    r2.xyz = r2.xyz * r3.xyz + r2.xyz;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r2.xyzw
  }
  r1.w = 0;
  g0[r4.x].val[0/4] = r1.x;
  g0[r4.x].val[0/4+1] = r1.y;
  g0[r4.x].val[0/4+2] = r1.z;
  g0[r4.x].val[0/4+3] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r2.x = (int)vThreadIDInGroup.y | (int)vThreadIDInGroup.x;
  r2.x = (int)r2.x & 1;
  if (r2.x == 0) {
    r2.xyz = (int3)r4.xxx + int3(1,8,9);
    r0.xyzw = (uint4)r0.xyzw >> int4(1,1,1,1);
    r3.x = g0[r2.x].val[0/4];
    r3.y = g0[r2.x].val[0/4+1];
    r3.z = g0[r2.x].val[0/4+2];
    r3.w = g0[r2.x].val[0/4+3];
    r1.xyzw = r3.xyzw + r1.xyzw;
    r3.x = g0[r2.y].val[0/4];
    r3.y = g0[r2.y].val[0/4+1];
    r3.z = g0[r2.y].val[0/4+2];
    r3.w = g0[r2.y].val[0/4+3];
    r1.xyzw = r3.xyzw + r1.xyzw;
    r2.x = g0[r2.z].val[0/4];
    r2.y = g0[r2.z].val[0/4+1];
    r2.z = g0[r2.z].val[0/4+2];
    r2.w = g0[r2.z].val[0/4+3];
    r1.xyzw = r2.xyzw + r1.xyzw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}