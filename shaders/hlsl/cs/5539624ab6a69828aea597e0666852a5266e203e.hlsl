// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyxy;
  r1.xyzw = cb0[24].xyyy + r0.zwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xy = (uint2)r1.xw;
  r2.xy = cmp(r2.xy < cb0[24].zw);
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
    r0.xyzw = cb0[16].zwzw * r0.xyzw;
    r0.xyzw = min(cb0[16].xyxy, r0.xyzw);
    r2.x = t0.Load(float4(0,0,0,0)).x;
    r2.x = cb1[135].z * r2.x;
    r3.xy = r0.zw + r0.zw;
    r2.y = r0.z * 2 + -1;
    r2.z = -r0.w * 2 + 1;
    r0.xyzw = r0.xyzw * cb0[15].xyxy + cb0[15].zwzw;
    r2.w = t2.SampleLevel(s0_s, r0.zw, 0, int2(0, 0)).x;
    r4.xyz = cb1[123].xyw * r2.zzz;
    r4.xyz = r2.yyy * cb1[122].xyw + r4.xyz;
    r2.yzw = r2.www * cb1[124].xyw + r4.xyz;
    r2.yzw = cb1[125].xyw + r2.yzw;
    r2.yz = r2.yz / r2.ww;
    r3.zw = r3.xy * float2(1,-1) + float2(-1,1);
    r2.yz = r3.zw + -r2.yz;
    r3.yz = cb0[23].xy * r2.yz;
    r3.yz = abs(r3.yz) + abs(r3.yz);
    r2.w = r3.y + r3.z;
    r2.w = min(1, r2.w);
    r3.xy = float2(-1,0) + r3.xw;
    r2.yz = r3.xy + -r2.yz;
    r3.x = max(abs(r2.y), abs(r2.z));
    r3.x = cmp(r3.x >= 1);
    r0.xyzw = cb0[19].xyxy * r0.xyzw;
    r0.xyzw = (int4)r0.xyzw;
    r4.xyzw = (int4)r0.zwzw + int4(0,-1,-1,0);
    r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
    r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
    r5.xy = r4.zw;
    r5.zw = float2(0,0);
    r5.xyzw = t1.Load(r5.xyz).xyzw;
    r6.x = dot(r5.xzy, float3(1,1,2));
    r6.y = dot(r5.xz, float2(2,-2));
    r6.z = dot(r5.xzy, float3(-1,-1,2));
    r4.zw = float2(0,0);
    r4.xyzw = t1.Load(r4.xyz).xyzw;
    r7.x = dot(r4.xzy, float3(1,1,2));
    r7.y = dot(r4.xz, float2(2,-2));
    r7.z = dot(r4.xzy, float3(-1,-1,2));
    r3.yz = max(asint(cb0[20].xy), (int2)r0.zw);
    r8.xy = min(asint(cb0[20].zw), (int2)r3.yz);
    r8.zw = float2(0,0);
    r8.xyzw = t1.Load(r8.xyz).xyzw;
    r9.x = dot(r8.xzy, float3(1,1,2));
    r9.y = dot(r8.xz, float2(2,-2));
    r9.z = dot(r8.xzy, float3(-1,-1,2));
    r0.xyzw = (int4)r0.xyzw + int4(1,0,0,1);
    r0.xyzw = max(asint(cb0[20].xyxy), (int4)r0.xyzw);
    r0.xyzw = min(asint(cb0[20].zwzw), (int4)r0.zwxy);
    r10.xy = r0.zw;
    r10.zw = float2(0,0);
    r10.xyzw = t1.Load(r10.xyz).xyzw;
    r11.x = dot(r10.xzy, float3(1,1,2));
    r11.y = dot(r10.xz, float2(2,-2));
    r11.z = dot(r10.xzy, float3(-1,-1,2));
    r0.zw = float2(0,0);
    r0.xyzw = t1.Load(r0.xyz).xyzw;
    r12.x = dot(r0.xzy, float3(1,1,2));
    r12.y = dot(r0.xz, float2(2,-2));
    r12.z = dot(r0.xzy, float3(-1,-1,2));
    r6.w = r5.w;
    r7.w = r4.w;
    r4.xyzw = cb0[11].xxxx * r7.xyzw;
    r4.xyzw = cb0[10].xxxx * r6.xyzw + r4.xyzw;
    r9.w = r8.w;
    r4.xyzw = cb0[12].xxxx * r9.xyzw + r4.xyzw;
    r11.w = r10.w;
    r4.xyzw = cb0[13].xxxx * r11.xyzw + r4.xyzw;
    r12.w = r0.w;
    r0.xyzw = cb0[14].xxxx * r12.xyzw + r4.xyzw;
    r3.yzw = min(r9.xyz, r7.xyz);
    r3.yzw = min(r6.xyz, r3.yzw);
    r4.x = min(r9.w, r7.w);
    r4.x = min(r6.w, r4.x);
    r4.yzw = min(r12.xyz, r11.xyz);
    r5.xyz = min(r4.yzw, r3.yzw);
    r3.y = min(r12.w, r11.w);
    r5.w = min(r4.x, r3.y);
    r3.yzw = max(r9.xyz, r7.xyz);
    r3.yzw = max(r6.xyz, r3.yzw);
    r4.x = max(r9.w, r7.w);
    r4.x = max(r6.w, r4.x);
    r4.yzw = max(r12.xyz, r11.xyz);
    r6.xyz = max(r4.yzw, r3.yzw);
    r3.y = max(r12.w, r11.w);
    r6.w = max(r4.x, r3.y);
    r2.yz = max(-cb0[17].xy, r2.yz);
    r2.yz = min(cb0[17].xy, r2.yz);
    r2.yz = r2.yz * cb0[18].xy + cb0[18].zw;
    r4.xyzw = t3.SampleLevel(s1_s, r2.yz, 0).xyzw;
    r3.yzw = cb0[0].xxx * r4.xyz;
    r4.x = dot(r3.ywz, float3(1,1,2));
    r4.y = dot(r3.yw, float2(2,-2));
    r4.z = dot(r3.ywz, float3(-1,-1,2));
    r2.y = cmp(asint(cb0[0].z) != 0);
    r2.y = (int)r2.y | (int)r3.x;
    r3.xyzw = max(r4.xyzw, r5.xyzw);
    r3.xyzw = min(r3.xyzw, r6.xyzw);
    r2.z = r6.x + -r5.x;
    r2.z = r2.z * 128 + 1;
    r2.z = rcp(r2.z);
    r2.z = saturate(r2.w * 0.5 + r2.z);
    r4.xyzw = r9.xyzw + -r0.xyzw;
    r0.xyzw = r2.zzzz * r4.xyzw + r0.xyzw;
    r3.xyzw = r2.yyyy ? r0.xyzw : r3.xyzw;
    r2.y = r0.x * r2.x + 4;
    r2.x = r3.x * r2.x + 4;
    r2.xy = rcp(r2.xy);
    r2.zw = cb0[0].zz ? float2(1,0) : float2(0.015625,0.984375);
    r4.x = r2.w * r2.x;
    r2.y = r2.z * r2.y;
    r2.x = r2.w * r2.x + r2.y;
    r2.x = rcp(r2.x);
    r2.z = r4.x * r2.x;
    r2.x = r2.y * r2.x;
    r0.xyzw = r2.xxxx * r0.xyzw;
    r0.xyzw = r3.xyzw * r2.zzzz + r0.xyzw;
    r2.x = cmp(0.995000005 < r0.w);
    r2.w = r2.x ? 1 : r0.w;
    r3.xyz = float3(0.25,0.25,0.25) * r0.xyz;
    r2.xy = r3.xx + r3.yz;
    r2.x = -r0.z * 0.25 + r2.x;
    r0.x = r0.x * 0.25 + -r3.y;
    r2.z = -r0.z * 0.25 + r0.x;
    r0.xyzw = min(float4(0,0,0,0), -r2.xyzw);
    r0.xyzw = min(float4(65504,65504,65504,65504), -r0.xyzw);
    r2.xy = (int2)r1.xw * int2(0x19660d,0x19660d);
    r2.z = asint(cb1[144].y) * 0x0019660d;
    r2.xyz = (int3)r2.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.x = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.y = mad((int)r2.z, (int)r2.x, (int)r2.y);
    r2.z = mad((int)r2.x, (int)r2.y, (int)r2.z);
    r2.x = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.x = (uint)r2.x >> 16;
    r2.x = (uint)r2.x;
    r2.x = 1.52587891e-005 * r2.x;
    r2.x = frac(r2.x);
    r2.xyz = cb0[25].xyz * r2.xxx;
    r0.xyz = r0.xyz * r2.xyz + r0.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}