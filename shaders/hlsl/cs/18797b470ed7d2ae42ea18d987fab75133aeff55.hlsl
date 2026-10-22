// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.z = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r0.w = (uint)r0.z;
  r1.xy = (uint2)vThreadGroupID.xy << int2(3,3);
  r1.xy = (uint2)r1.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = cb0[23].zw * r1.xy;
  r1.xy = r1.xy * cb0[27].xy + cb0[28].xy;
  r1.xy = floor(r1.xy);
  r1.xy = cb0[26].xy + r1.xy;
  r1.zw = float2(-0.5,-0.5) + r1.xy;
  r2.x = 0.125 * r0.w;
  r2.y = floor(r2.x);
  r2.x = -r2.y * 8 + r0.w;
  r1.zw = r2.xy + r1.zw;
  r1.zw = (int2)r1.zw;
  r1.zw = max(asint(cb0[20].xy), (int2)r1.zw);
  r2.xy = min(asint(cb0[20].zw), (int2)r1.zw);
  r2.zw = float2(0,0);
  r2.xyz = t1.Load(r2.xyz).xyz;
  r3.x = dot(r2.xzy, float3(1,1,2));
  r3.y = dot(r2.xz, float2(2,-2));
  r3.z = dot(r2.xzy, float3(-1,-1,2));
  g0[r0.z].val[0/4] = r3.x;
  g0[r0.z].val[0/4+1] = r3.y;
  g0[r0.z].val[0/4+2] = r3.z;
  GroupMemoryBarrierWithGroupSync();
  r2.xyzw = cb0[24].xyyy + r0.xyyy;
  r2.xyzw = (uint4)r2.xyzw;
  r0.zw = (uint2)r2.xw;
  r0.zw = cmp(r0.zw < cb0[24].zw);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.zw = float2(0.5,0.5) + r1.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[23].zw * r0.xy;
    r1.x = t0.Load(float4(0,0,0,0)).x;
    r1.x = cb1[135].z * r1.x;
    r3.xy = r0.xy + r0.xy;
    r1.y = r0.x * 2 + -1;
    r1.z = -r0.y * 2 + 1;
    r4.xy = r0.xy * cb0[15].xy + cb0[15].zw;
    r4.xy = cb0[19].xy * r4.xy;
    r4.xy = trunc(r4.xy);
    r4.xy = (int2)r4.xy;
    r4.zw = float2(0,0);
    r1.w = t4.Load(r4.xyz).y;
    r1.w = (int)r1.w & 8;
    r0.xy = r0.xy * cb0[27].xy + cb0[28].xy;
    r4.xy = floor(r0.xy);
    r4.xy = float2(0.5,0.5) + r4.xy;
    r4.zw = cb0[26].xy + r4.xy;
    r5.xy = cb0[19].zw * r4.zw;
    r6.x = t2.SampleLevel(s0_s, r5.xy, 0, int2(0, 0)).x;
    r5.z = t2.SampleLevel(s0_s, r5.xy, 0, int2(-1, -1)).x;
    r5.w = t2.SampleLevel(s0_s, r5.xy, 0, int2(1, -1)).x;
    r6.w = t2.SampleLevel(s0_s, r5.xy, 0, int2(-1, 1)).x;
    r7.x = t2.SampleLevel(s0_s, r5.xy, 0, int2(1, 1)).x;
    r7.y = cmp(r5.w < r5.z);
    r7.y = r7.y ? -1 : 1;
    r7.w = cmp(r7.x < r6.w);
    r8.y = r7.w ? -1 : 1;
    r5.z = max(r5.z, r5.w);
    r5.w = max(r7.x, r6.w);
    r6.w = cmp(r5.w < r5.z);
    r7.z = -1;
    r8.z = 1;
    r7.xy = r6.ww ? r7.yz : r8.yz;
    r8.x = max(r5.z, r5.w);
    r5.z = cmp(r6.x < r8.x);
    r8.yz = cb0[19].zw * r7.xy;
    r6.yz = float2(0,0);
    r6.xyz = r5.zzz ? r8.xyz : r6.xyz;
    r7.xyz = cb1[123].xyw * r1.zzz;
    r7.xyz = r1.yyy * cb1[122].xyw + r7.xyz;
    r7.xyz = r6.xxx * cb1[124].xyw + r7.xyz;
    r7.xyz = cb1[125].xyw + r7.xyz;
    r1.yz = r7.yx / r7.zz;
    r3.zw = r3.xy * float2(1,-1) + float2(-1,1);
    r1.yz = r3.wz + -r1.yz;
    r3.yz = cb0[19].zw * r4.zw + r6.yz;
    r3.yz = t3.SampleLevel(s1_s, r3.yz, 0).xy;
    r4.z = cmp(0 < r3.y);
    r3.yz = r3.zy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r1.yz = r4.zz ? r3.yz : r1.yz;
    r3.yz = cb0[23].xy * r1.zy;
    r3.y = dot(r3.yz, r3.yz);
    r3.y = sqrt(r3.y);
    r3.xz = float2(0,-1) + r3.wx;
    r1.yz = r3.xz + -r1.yz;
    r3.x = max(abs(r1.z), abs(r1.y));
    r3.x = cmp(r3.x >= 1);
    r3.zw = cb0[19].xy * r5.xy;
    r3.zw = floor(r3.zw);
    r0.zw = floor(r0.zw);
    r0.zw = r3.zw + -r0.zw;
    r0.z = dot(r0.zw, float2(1,8));
    r5.xyzw = float4(1,8,9,10) + r0.zzzz;
    r5.xyzw = (uint4)r5.xyzw;
    r6.x = g0[r5.x].val[0/4];
    r6.y = g0[r5.x].val[0/4+1];
    r6.z = g0[r5.x].val[0/4+2];
    r7.x = g0[r5.y].val[0/4];
    r7.y = g0[r5.y].val[0/4+1];
    r7.z = g0[r5.y].val[0/4+2];
    r5.x = g0[r5.z].val[0/4];
    r5.y = g0[r5.z].val[0/4+1];
    r5.z = g0[r5.z].val[0/4+2];
    r8.x = g0[r5.w].val[0/4];
    r8.y = g0[r5.w].val[0/4+1];
    r8.z = g0[r5.w].val[0/4+2];
    r0.w = 17 + r0.z;
    r0.w = (uint)r0.w;
    r9.x = g0[r0.w].val[0/4];
    r9.y = g0[r0.w].val[0/4+1];
    r9.z = g0[r0.w].val[0/4+2];
    r10.xyz = min(r7.xyz, r5.xyz);
    r10.xyz = min(r10.xyz, r6.xyz);
    r11.xyz = min(r9.xyz, r8.xyz);
    r10.xyz = min(r11.xyz, r10.xyz);
    r7.xyz = max(r7.xyz, r5.xyz);
    r6.xyz = max(r7.xyz, r6.xyz);
    r7.xyz = max(r9.xyz, r8.xyz);
    r6.xyz = max(r7.xyz, r6.xyz);
    r0.xy = -r4.xy + r0.xy;
    r0.xy = (uint2)r0.xy >> int2(30,30);
    r0.xy = (int2)r0.xy & int2(2,2);
    r0.xy = (int2)-r0.xy + int2(1,1);
    r0.xy = (int2)r0.xy;
    r0.xy = float2(1,1) + r0.xy;
    r0.x = dot(r0.xy, float2(1,8));
    r0.x = r0.z + r0.x;
    r0.x = (uint)r0.x;
    r0.x = g0[r0.x].val[0/4];
    r0.y = g0[r0.x].val[0/4+1];
    r0.z = g0[r0.x].val[0/4+2];
    r4.xyz = min(r10.xyz, r0.xyz);
    r0.xyz = max(r6.xyz, r0.xyz);
    r1.yz = r1.yz * cb0[18].yx + cb0[18].wz;
    r1.yz = max(cb0[22].yx, r1.yz);
    r1.yz = min(cb0[22].wz, r1.yz);
    r3.zw = r1.zy * cb0[21].xy + float2(-0.5,-0.5);
    r3.zw = floor(r3.zw);
    r6.xyzw = float4(0.5,0.5,-0.5,-0.5) + r3.zwzw;
    r1.yz = r1.yz * cb0[21].yx + -r6.yx;
    r7.xy = r1.zy * r1.zy;
    r7.zw = r7.xy * r1.zy;
    r8.xy = r7.yx * r1.yz + r1.yz;
    r8.xy = -r8.xy * float2(0.5,0.5) + r7.yx;
    r8.zw = float2(2.5,2.5) * r7.yx;
    r7.zw = r7.wz * float2(1.5,1.5) + -r8.zw;
    r7.zw = float2(1,1) + r7.zw;
    r1.yz = r7.xy * r1.zy + -r7.xy;
    r7.xy = float2(0.5,0.5) * r1.yz;
    r8.zw = float2(1,1) + -r8.yx;
    r8.zw = r8.zw + -r7.wz;
    r1.yz = -r1.yz * float2(0.5,0.5) + r8.zw;
    r7.zw = r7.zw + r1.zy;
    r1.yz = r1.yz / r7.wz;
    r1.yz = r6.xy + r1.yz;
    r3.zw = float2(2.5,2.5) + r3.zw;
    r6.xy = cb0[21].wz * r6.wz;
    r9.zw = cb0[21].wz * r1.zy;
    r1.yz = cb0[21].zw * r3.zw;
    r3.zw = r7.wz * r8.xy;
    r0.w = r7.w * r7.z;
    r6.zw = r7.xy * r7.zw;
    r4.w = r3.z + r3.w;
    r4.w = r7.w * r7.z + r4.w;
    r4.w = r7.x * r7.z + r4.w;
    r4.w = r7.y * r7.w + r4.w;
    r4.w = 1 / r4.w;
    r9.xy = max(cb0[22].yx, r6.xy);
    r7.xyz = t5.SampleLevel(s2_s, r9.wx, 0).xyz;
    r8.xyz = t5.SampleLevel(s2_s, r9.yz, 0).xyz;
    r8.xyz = r8.xyz * r3.www;
    r7.xyz = r7.xyz * r3.zzz + r8.xyz;
    r8.xyz = t5.SampleLevel(s2_s, r9.wz, 0).xyz;
    r7.xyz = r8.xyz * r0.www + r7.xyz;
    r9.xy = min(cb0[22].zw, r1.yz);
    r8.xyz = t5.SampleLevel(s2_s, r9.xz, 0).xyz;
    r6.xyz = r8.xyz * r6.zzz + r7.xyz;
    r7.xyz = t5.SampleLevel(s2_s, r9.wy, 0).xyz;
    r6.xyz = r7.xyz * r6.www + r6.xyz;
    r6.xyz = r6.xyz * r4.www;
    r6.xyz = cb0[0].xxx * r6.xyz;
    r7.x = dot(r6.xzy, float3(1,1,2));
    r7.y = dot(r6.xz, float2(2,-2));
    r7.z = dot(r6.xzy, float3(-1,-1,2));
    r0.w = cmp(asint(cb0[0].z) != 0);
    r0.w = (int)r0.w | (int)r3.x;
    r3.xzw = max(r7.xyz, r4.xyz);
    r0.xyz = min(r3.xzw, r0.xyz);
    r1.y = 0.0250000004 * r3.y;
    r1.y = min(1, r1.y);
    r1.z = 0.200000003 + -cb0[0].y;
    r1.y = r1.y * r1.z + cb0[0].y;
    r1.z = 0.00999999978 * r7.x;
    r3.x = -r7.x + r5.x;
    r1.z = saturate(r1.z / abs(r3.x));
    r1.y = max(r1.y, r1.z);
    r1.y = r1.w ? 0.25 : r1.y;
    r1.y = cb0[0].z ? 1 : r1.y;
    r0.xyz = r0.www ? r5.xyz : r0.xyz;
    r0.w = r5.x * r1.x + 4;
    r0.w = rcp(r0.w);
    r1.x = r0.x * r1.x + 4;
    r1.x = rcp(r1.x);
    r1.z = 1 + -r1.y;
    r1.w = r1.z * r1.x;
    r0.w = r1.y * r0.w;
    r1.x = r1.z * r1.x + r0.w;
    r1.x = rcp(r1.x);
    r1.y = r1.w * r1.x;
    r0.w = r1.x * r0.w;
    r1.xzw = r5.xyz * r0.www;
    r0.xyz = r0.xyz * r1.yyy + r1.xzw;
    r1.xyz = float3(0.25,0.25,0.25) * r0.xyz;
    r3.yz = r1.xx + r1.yz;
    r3.x = -r0.z * 0.25 + r3.y;
    r0.x = r0.x * 0.25 + -r1.y;
    r3.w = -r0.z * 0.25 + r0.x;
    r0.xyz = min(float3(0,0,0), -r3.xzw);
    r0.xyz = min(float3(65504,65504,65504), -r0.xyz);
    r1.xy = (int2)r2.xw * int2(0x19660d,0x19660d);
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
    store_uav_typed u0.xyzw, r2.xyzw, r0.xyzw
  }
  return;
}