// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g1[64];
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
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r3.yz = r1.xy * cb0[15].xy + cb0[15].zw;
  r3.yz = cb0[19].xy * r3.yz;
  r3.yz = trunc(r3.yz);
  r4.xy = (int2)r3.yz;
  r4.zw = float2(0,0);
  r3.y = t4.Load(r4.xyz).y;
  r3.y = (int)r3.y & 8;
  r1.xy = r1.xy * cb0[27].xy + cb0[28].xy;
  r3.zw = floor(r1.xy);
  r3.zw = float2(0.5,0.5) + r3.zw;
  r4.xy = cb0[26].xy + r3.zw;
  r4.zw = cb0[19].zw * r4.xy;
  r5.x = t2.SampleLevel(s0_s, r4.zw, 0, int2(0, 0)).x;
  r5.w = t2.SampleLevel(s0_s, r4.zw, 0, int2(-1, -1)).x;
  r6.x = t2.SampleLevel(s0_s, r4.zw, 0, int2(1, -1)).x;
  r6.y = t2.SampleLevel(s0_s, r4.zw, 0, int2(-1, 1)).x;
  r6.z = t2.SampleLevel(s0_s, r4.zw, 0, int2(1, 1)).x;
  r6.w = cmp(r6.x < r5.w);
  r7.y = r6.w ? -1 : 1;
  r6.w = cmp(r6.z < r6.y);
  r8.y = r6.w ? -1 : 1;
  r5.w = max(r6.x, r5.w);
  r6.x = max(r6.y, r6.z);
  r6.y = cmp(r6.x < r5.w);
  r7.z = -1;
  r8.z = 1;
  r6.yz = r6.yy ? r7.yz : r8.yz;
  r7.x = max(r6.x, r5.w);
  r5.w = cmp(r5.x < r7.x);
  r7.yz = cb0[19].zw * r6.yz;
  r5.yz = float2(0,0);
  r5.xyz = r5.www ? r7.xyz : r5.xyz;
  r6.xyz = cb1[123].xyw * r3.xxx;
  r6.xyz = r1.www * cb1[122].xyw + r6.xyz;
  r6.xyz = r5.xxx * cb1[124].xyw + r6.xyz;
  r6.xyz = cb1[125].xyw + r6.xyz;
  r5.xw = r6.yx / r6.zz;
  r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
  r2.yz = r2.wz + -r5.xw;
  r4.xy = cb0[19].zw * r4.xy + r5.yz;
  r4.xy = t3.SampleLevel(s1_s, r4.xy, 0).xy;
  r1.w = cmp(0 < r4.x);
  r4.xy = r4.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r2.yz = r1.ww ? r4.xy : r2.yz;
  r4.xy = cb0[23].xy * r2.zy;
  r1.w = dot(r4.xy, r4.xy);
  r1.w = sqrt(r1.w);
  r2.xw = float2(0,-1) + r2.wx;
  r2.xy = r2.xw + -r2.yz;
  r2.z = max(abs(r2.y), abs(r2.x));
  r2.z = cmp(r2.z >= 1);
  r2.w = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r3.x = (uint)r2.w;
  r5.xyzw = (uint4)vThreadGroupID.xyxy << int4(3,3,3,3);
  r5.xyzw = (uint4)r5.xyzw;
  r5.xyzw = float4(0.5,0.5,0.5,0.5) + r5.xyzw;
  r5.xyzw = cb0[23].zwzw * r5.xyzw;
  r5.xyzw = r5.xyzw * cb0[27].xyxy + cb0[28].xyxy;
  r5.xyzw = floor(r5.xyzw);
  r5.xyzw = cb0[26].xyxy + r5.xyzw;
  r5.xyzw = float4(0.5,0.5,-0.5,-0.5) + r5.xyzw;
  r4.x = 0.125 * r3.x;
  r4.y = floor(r4.x);
  r4.x = -r4.y * 8 + r3.x;
  r4.xy = r5.zw + r4.xy;
  r4.xy = (int2)r4.xy;
  r4.xy = max(asint(cb0[20].xy), (int2)r4.xy);
  r6.xy = min(asint(cb0[20].zw), (int2)r4.xy);
  r6.zw = float2(0,0);
  r6.xyz = t1.Load(r6.xyz).xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  g1[r2.w].val[0/4] = r7.x;
  g1[r2.w].val[0/4+1] = r7.y;
  g1[r2.w].val[0/4+2] = r7.z;
  GroupMemoryBarrierWithGroupSync();
  r4.xy = cb0[19].xy * r4.zw;
  r4.xy = floor(r4.xy);
  r4.zw = floor(r5.xy);
  r4.xy = r4.xy + -r4.zw;
  r3.x = dot(r4.xy, float2(1,8));
  r4.xyzw = float4(1,8,9,10) + r3.xxxx;
  r4.xyzw = (uint4)r4.xyzw;
  r5.x = g1[r4.x].val[0/4];
  r5.y = g1[r4.x].val[0/4+1];
  r5.z = g1[r4.x].val[0/4+2];
  r6.x = g1[r4.y].val[0/4];
  r6.y = g1[r4.y].val[0/4+1];
  r6.z = g1[r4.y].val[0/4+2];
  r4.x = g1[r4.z].val[0/4];
  r4.y = g1[r4.z].val[0/4+1];
  r4.z = g1[r4.z].val[0/4+2];
  r7.x = g1[r4.w].val[0/4];
  r7.y = g1[r4.w].val[0/4+1];
  r7.z = g1[r4.w].val[0/4+2];
  r4.w = 17 + r3.x;
  r4.w = (uint)r4.w;
  r8.x = g1[r4.w].val[0/4];
  r8.y = g1[r4.w].val[0/4+1];
  r8.z = g1[r4.w].val[0/4+2];
  r9.xyz = min(r6.xyz, r4.xyz);
  r9.xyz = min(r9.xyz, r5.xyz);
  r10.xyz = min(r8.xyz, r7.xyz);
  r9.xyz = min(r10.xyz, r9.xyz);
  r6.xyz = max(r6.xyz, r4.xyz);
  r5.xyz = max(r6.xyz, r5.xyz);
  r6.xyz = max(r8.xyz, r7.xyz);
  r5.xyz = max(r6.xyz, r5.xyz);
  r1.xy = -r3.zw + r1.xy;
  r1.xy = (uint2)r1.xy >> int2(30,30);
  r1.xy = (int2)r1.xy & int2(2,2);
  r1.xy = (int2)-r1.xy + int2(1,1);
  r1.xy = (int2)r1.xy;
  r1.xy = float2(1,1) + r1.xy;
  r1.x = dot(r1.xy, float2(1,8));
  r1.x = r3.x + r1.x;
  r1.x = (uint)r1.x;
  r3.x = g1[r1.x].val[0/4];
  r3.z = g1[r1.x].val[0/4+1];
  r3.w = g1[r1.x].val[0/4+2];
  r6.xyz = min(r9.xyz, r3.xzw);
  r3.xzw = max(r5.xyz, r3.xzw);
  r1.xy = r2.xy * cb0[18].yx + cb0[18].wz;
  r1.xy = max(cb0[22].yx, r1.xy);
  r1.xy = min(cb0[22].wz, r1.xy);
  r2.xy = r1.yx * cb0[21].xy + float2(-0.5,-0.5);
  r2.xy = floor(r2.xy);
  r5.xyzw = float4(0.5,0.5,-0.5,-0.5) + r2.xyxy;
  r1.xy = r1.xy * cb0[21].yx + -r5.yx;
  r7.xy = r1.yx * r1.yx;
  r7.zw = r7.xy * r1.yx;
  r8.xy = r7.yx * r1.xy + r1.xy;
  r8.xy = -r8.xy * float2(0.5,0.5) + r7.yx;
  r8.zw = float2(2.5,2.5) * r7.yx;
  r7.zw = r7.wz * float2(1.5,1.5) + -r8.zw;
  r7.zw = float2(1,1) + r7.zw;
  r1.xy = r7.xy * r1.yx + -r7.xy;
  r7.xy = float2(0.5,0.5) * r1.xy;
  r8.zw = float2(1,1) + -r8.yx;
  r8.zw = r8.zw + -r7.wz;
  r1.xy = -r1.xy * float2(0.5,0.5) + r8.zw;
  r7.zw = r7.zw + r1.yx;
  r1.xy = r1.xy / r7.wz;
  r1.xy = r5.xy + r1.xy;
  r2.xy = float2(2.5,2.5) + r2.xy;
  r5.xy = cb0[21].wz * r5.wz;
  r9.zw = cb0[21].wz * r1.yx;
  r1.xy = cb0[21].zw * r2.xy;
  r2.xy = r7.wz * r8.xy;
  r4.w = r7.w * r7.z;
  r5.zw = r7.xy * r7.zw;
  r6.w = r2.x + r2.y;
  r6.w = r7.w * r7.z + r6.w;
  r6.w = r7.x * r7.z + r6.w;
  r6.w = r7.y * r7.w + r6.w;
  r6.w = 1 / r6.w;
  r9.xy = max(cb0[22].yx, r5.xy);
  r7.xyz = t5.SampleLevel(s2_s, r9.wx, 0).xyz;
  r8.xyz = t5.SampleLevel(s2_s, r9.yz, 0).xyz;
  r8.xyz = r8.xyz * r2.yyy;
  r7.xyz = r7.xyz * r2.xxx + r8.xyz;
  r8.xyz = t5.SampleLevel(s2_s, r9.wz, 0).xyz;
  r7.xyz = r8.xyz * r4.www + r7.xyz;
  r9.xy = min(cb0[22].zw, r1.xy);
  r8.xyz = t5.SampleLevel(s2_s, r9.xz, 0).xyz;
  r5.xyz = r8.xyz * r5.zzz + r7.xyz;
  r7.xyz = t5.SampleLevel(s2_s, r9.wy, 0).xyz;
  r5.xyz = r7.xyz * r5.www + r5.xyz;
  r5.xyz = r5.xyz * r6.www;
  r5.xyz = cb0[0].xxx * r5.xyz;
  r7.x = dot(r5.xzy, float3(1,1,2));
  r7.y = dot(r5.xz, float2(2,-2));
  r7.z = dot(r5.xzy, float3(-1,-1,2));
  r1.x = cmp(asint(cb0[0].z) != 0);
  r1.x = (int)r1.x | (int)r2.z;
  r2.xyz = max(r7.xyz, r6.xyz);
  r2.xyz = min(r2.xyz, r3.xzw);
  r1.y = 0.0250000004 * r1.w;
  r1.y = min(1, r1.y);
  r1.w = 0.200000003 + -cb0[0].y;
  r1.y = r1.y * r1.w + cb0[0].y;
  r1.w = 0.00999999978 * r7.x;
  r3.x = -r7.x + r4.x;
  r1.w = saturate(r1.w / abs(r3.x));
  r1.y = max(r1.y, r1.w);
  r1.y = r3.y ? 0.25 : r1.y;
  r1.y = cb0[0].z ? 1 : r1.y;
  r2.xyz = r1.xxx ? r4.xyz : r2.xyz;
  r1.x = r4.x * r1.z + 4;
  r1.z = r2.x * r1.z + 4;
  r1.xz = rcp(r1.xz);
  r1.w = 1 + -r1.y;
  r3.x = r1.w * r1.z;
  r1.x = r1.y * r1.x;
  r1.y = r1.w * r1.z + r1.x;
  r1.y = rcp(r1.y);
  r1.z = r3.x * r1.y;
  r1.x = r1.x * r1.y;
  r1.xyw = r4.xyz * r1.xxx;
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
    r3.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.y = mad((int)r3.z, (int)r3.x, (int)r3.y);
    r3.z = mad((int)r3.x, (int)r3.y, (int)r3.z);
    r3.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.x = (uint)r3.x >> 16;
    r3.x = (uint)r3.x;
    r3.x = 1.52587891e-005 * r3.x;
    r3.x = frac(r3.x);
    r3.xyz = cb0[25].xyz * r3.xxx;
    r3.xyz = r2.xyz * r3.xyz + r2.xyz;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r3.xyzw
  }
  r1.w = 0;
  g0[r2.w].val[0/4] = r1.x;
  g0[r2.w].val[0/4+1] = r1.y;
  g0[r2.w].val[0/4+2] = r1.z;
  g0[r2.w].val[0/4+3] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r2.x = (int)vThreadIDInGroup.y | (int)vThreadIDInGroup.x;
  r2.x = (int)r2.x & 1;
  if (r2.x == 0) {
    r2.xyz = (int3)r2.www + int3(1,8,9);
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