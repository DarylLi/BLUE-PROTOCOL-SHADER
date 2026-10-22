// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r1.xyzw = cb0[24].xyyy + r0.xyyy;
  r1.xyzw = (uint4)r1.xyzw;
  r0.zw = (uint2)r1.xw;
  r0.zw = cmp(r0.zw < cb0[24].zw);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[16].zw * r0.xy;
    r0.xy = min(cb0[16].xy, r0.xy);
    r0.z = t0.Load(float4(0,0,0,0)).x;
    r0.z = cb1[135].z * r0.z;
    r2.xy = r0.xy + r0.xy;
    r0.w = r0.x * 2 + -1;
    r3.x = -r0.y * 2 + 1;
    r0.xy = r0.xy * cb0[15].xy + cb0[15].zw;
    r4.xyzw = cb0[19].xyxy * r0.xyxy;
    r3.yz = trunc(r4.zw);
    r5.xy = (int2)r3.yz;
    r5.zw = float2(0,0);
    r3.y = t4.Load(r5.xyz).y;
    r3.y = (int)r3.y & 8;
    r5.x = t2.SampleLevel(s0_s, r0.xy, 0, int2(0, 0)).x;
    r3.z = t2.SampleLevel(s0_s, r0.xy, 0, int2(-4, -4)).x;
    r3.w = t2.SampleLevel(s0_s, r0.xy, 0, int2(4, -4)).x;
    r5.w = t2.SampleLevel(s0_s, r0.xy, 0, int2(-4, 4)).x;
    r6.x = t2.SampleLevel(s0_s, r0.xy, 0, int2(4, 4)).x;
    r6.y = cmp(r3.w < r3.z);
    r6.y = r6.y ? -4 : 4;
    r6.w = cmp(r6.x < r5.w);
    r7.y = r6.w ? -4 : 4;
    r3.z = max(r3.z, r3.w);
    r3.w = max(r6.x, r5.w);
    r5.w = cmp(r3.w < r3.z);
    r6.z = -4;
    r7.z = 4;
    r6.xy = r5.ww ? r6.yz : r7.yz;
    r7.x = max(r3.z, r3.w);
    r3.z = cmp(r5.x < r7.x);
    r7.yz = cb0[19].zw * r6.xy;
    r5.yz = float2(0,0);
    r5.xyz = r3.zzz ? r7.xyz : r5.xyz;
    r3.xzw = cb1[123].xyw * r3.xxx;
    r3.xzw = r0.www * cb1[122].xyw + r3.xzw;
    r3.xzw = r5.xxx * cb1[124].xyw + r3.xzw;
    r3.xzw = cb1[125].xyw + r3.xzw;
    r3.xz = r3.zx / r3.ww;
    r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
    r2.yz = r2.wz + -r3.xz;
    r0.xy = r5.yz + r0.xy;
    r0.xy = t3.SampleLevel(s1_s, r0.xy, 0).xy;
    r0.w = cmp(0 < r0.x);
    r0.xy = r0.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r0.xy = r0.ww ? r0.xy : r2.yz;
    r2.yz = cb0[23].xy * r0.yx;
    r0.w = dot(r2.yz, r2.yz);
    r0.w = sqrt(r0.w);
    r2.xy = float2(0,-1) + r2.wx;
    r0.xy = r2.xy + -r0.xy;
    r2.x = max(abs(r0.y), abs(r0.x));
    r2.x = cmp(r2.x >= 1);
    r4.xyzw = (int4)r4.xyzw;
    r5.xyzw = (int4)r4.zwzw + int4(0,-1,-1,0);
    r5.xyzw = max(asint(cb0[20].xyxy), (int4)r5.xyzw);
    r5.xyzw = min(asint(cb0[20].zwzw), (int4)r5.zwxy);
    r6.xy = r5.zw;
    r6.zw = float2(0,0);
    r6.xyzw = t1.Load(r6.xyz).xyzw;
    r7.x = dot(r6.xzy, float3(1,1,2));
    r7.y = dot(r6.xz, float2(2,-2));
    r7.z = dot(r6.xzy, float3(-1,-1,2));
    r5.zw = float2(0,0);
    r5.xyzw = t1.Load(r5.xyz).xyzw;
    r6.x = dot(r5.xzy, float3(1,1,2));
    r6.y = dot(r5.xz, float2(2,-2));
    r6.z = dot(r5.xzy, float3(-1,-1,2));
    r2.yz = max(asint(cb0[20].xy), (int2)r4.zw);
    r8.xy = min(asint(cb0[20].zw), (int2)r2.yz);
    r8.zw = float2(0,0);
    r8.xyzw = t1.Load(r8.xyz).xyzw;
    r5.x = dot(r8.xzy, float3(1,1,2));
    r5.y = dot(r8.xz, float2(2,-2));
    r5.z = dot(r8.xzy, float3(-1,-1,2));
    r4.xyzw = (int4)r4.xyzw + int4(1,0,0,1);
    r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
    r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
    r9.xy = r4.zw;
    r9.zw = float2(0,0);
    r9.xyzw = t1.Load(r9.xyz).xyzw;
    r10.x = dot(r9.xzy, float3(1,1,2));
    r10.y = dot(r9.xz, float2(2,-2));
    r10.z = dot(r9.xzy, float3(-1,-1,2));
    r4.zw = float2(0,0);
    r4.xyzw = t1.Load(r4.xyz).xyzw;
    r9.x = dot(r4.xzy, float3(1,1,2));
    r9.y = dot(r4.xz, float2(2,-2));
    r9.z = dot(r4.xzy, float3(-1,-1,2));
    r2.y = cmp(1 < abs(r8.w));
    r2.z = rcp(abs(r8.w));
    r2.y = r2.y ? r2.z : 1;
    r2.z = r8.w + -r6.w;
    r2.z = saturate(-r2.z * r2.y + 1);
    r2.w = cb0[10].x * r2.z;
    r3.x = r8.w + -r5.w;
    r3.x = saturate(-r3.x * r2.y + 1);
    r3.x = cb0[11].x * r3.x;
    r4.xyz = r3.xxx * r6.xyz;
    r4.xyz = r2.www * r7.xyz + r4.xyz;
    r2.z = cb0[10].x * r2.z + r3.x;
    r3.xzw = cb0[12].xxx * r5.xyz + r4.xyz;
    r2.z = cb0[12].x + r2.z;
    r2.w = -r9.w + r8.w;
    r2.w = saturate(-r2.w * r2.y + 1);
    r4.x = cb0[13].x * r2.w;
    r3.xzw = r4.xxx * r10.xyz + r3.xzw;
    r2.z = cb0[13].x * r2.w + r2.z;
    r2.w = r8.w + -r4.w;
    r2.w = saturate(-r2.w * r2.y + 1);
    r4.x = cb0[14].x * r2.w;
    r3.xzw = r4.xxx * r9.xyz + r3.xzw;
    r2.z = cb0[14].x * r2.w + r2.z;
    r2.z = rcp(r2.z);
    r8.xyz = r3.xzw * r2.zzz;
    r4.xyz = min(r6.xyz, r5.xyz);
    r4.xyz = min(r7.xyz, r4.xyz);
    r2.w = min(r8.w, r5.w);
    r2.w = min(r6.w, r2.w);
    r11.xyz = min(r10.xyz, r9.xyz);
    r4.xyz = min(r11.xyz, r4.xyz);
    r3.z = min(r9.w, r4.w);
    r2.w = min(r3.z, r2.w);
    r5.xyz = max(r6.xyz, r5.xyz);
    r5.xyz = max(r7.xyz, r5.xyz);
    r3.z = max(r8.w, r5.w);
    r3.z = max(r6.w, r3.z);
    r6.xyz = max(r10.xyz, r9.xyz);
    r5.xyz = max(r6.xyz, r5.xyz);
    r3.w = max(r9.w, r4.w);
    r3.z = max(r3.z, r3.w);
    r0.xy = r0.xy * cb0[18].yx + cb0[18].wz;
    r0.xy = max(cb0[22].yx, r0.xy);
    r0.xy = min(cb0[22].wz, r0.xy);
    r6.xy = r0.yx * cb0[21].xy + float2(-0.5,-0.5);
    r6.xy = floor(r6.xy);
    r7.xyzw = float4(0.5,0.5,-0.5,-0.5) + r6.xyxy;
    r0.xy = r0.xy * cb0[21].yx + -r7.yx;
    r6.zw = r0.yx * r0.yx;
    r9.xy = r6.zw * r0.yx;
    r9.zw = r6.wz * r0.xy + r0.xy;
    r9.zw = -r9.zw * float2(0.5,0.5) + r6.wz;
    r10.xy = float2(2.5,2.5) * r6.wz;
    r9.xy = r9.yx * float2(1.5,1.5) + -r10.xy;
    r9.xy = float2(1,1) + r9.xy;
    r0.xy = r6.zw * r0.yx + -r6.zw;
    r6.zw = float2(0.5,0.5) * r0.xy;
    r10.xy = float2(1,1) + -r9.wz;
    r10.xy = r10.xy + -r9.yx;
    r0.xy = -r0.xy * float2(0.5,0.5) + r10.xy;
    r9.xy = r9.xy + r0.yx;
    r0.xy = r0.xy / r9.yx;
    r0.xy = r7.xy + r0.xy;
    r6.xy = float2(2.5,2.5) + r6.xy;
    r7.xy = cb0[21].wz * r7.wz;
    r10.zw = cb0[21].wz * r0.yx;
    r0.xy = cb0[21].zw * r6.xy;
    r6.xy = r9.yx * r9.zw;
    r3.w = r9.y * r9.x;
    r7.zw = r9.xy * r6.zw;
    r4.w = r6.x + r6.y;
    r4.w = r9.y * r9.x + r4.w;
    r4.w = r6.z * r9.x + r4.w;
    r4.w = r6.w * r9.y + r4.w;
    r4.w = 1 / r4.w;
    r10.xy = max(cb0[22].yx, r7.xy);
    r9.xyzw = t5.SampleLevel(s2_s, r10.wx, 0).xyzw;
    r11.xyzw = t5.SampleLevel(s2_s, r10.yz, 0).xyzw;
    r11.xyzw = r11.xyzw * r6.yyyy;
    r6.xyzw = r9.xyzw * r6.xxxx + r11.xyzw;
    r9.xyzw = t5.SampleLevel(s2_s, r10.wz, 0).xyzw;
    r6.xyzw = r9.xyzw * r3.wwww + r6.xyzw;
    r10.xy = min(cb0[22].zw, r0.xy);
    r9.xyzw = t5.SampleLevel(s2_s, r10.xz, 0).xyzw;
    r6.xyzw = r9.xyzw * r7.zzzz + r6.xyzw;
    r9.xyzw = t5.SampleLevel(s2_s, r10.wy, 0).xyzw;
    r6.xyzw = r9.xyzw * r7.wwww + r6.xyzw;
    r6.xyzw = r6.xyzw * r4.wwww;
    r6.xyz = cb0[0].xxx * r6.xyz;
    r7.x = dot(r6.xzy, float3(1,1,2));
    r7.y = dot(r6.xz, float2(2,-2));
    r7.z = dot(r6.xzy, float3(-1,-1,2));
    r0.x = cmp(asint(cb0[0].z) != 0);
    r0.x = (int)r0.x | (int)r2.x;
    r4.xyz = max(r7.xyz, r4.xyz);
    r4.xyz = min(r4.xyz, r5.xyz);
    r0.y = max(r6.w, r2.w);
    r4.w = min(r0.y, r3.z);
    r0.y = 0.0250000004 * r0.w;
    r0.y = min(1, r0.y);
    r0.w = 0.200000003 + -cb0[0].y;
    r0.y = r0.y * r0.w + cb0[0].y;
    r0.w = 0.00999999978 * r7.x;
    r2.x = r3.x * r2.z + -r7.x;
    r0.w = saturate(r0.w / abs(r2.x));
    r0.y = max(r0.y, r0.w);
    r0.w = r8.w + -r4.w;
    r0.w = saturate(-abs(r0.w) * r2.y + 1);
    r0.y = -1 + r0.y;
    r0.y = r3.y ? -0.75 : r0.y;
    r0.y = r0.w * r0.y + 1;
    r0.y = cb0[0].z ? 1 : r0.y;
    r2.xyzw = r0.xxxx ? r8.xyzw : r4.xyzw;
    r0.x = r8.x * r0.z + 4;
    r0.z = r2.x * r0.z + 4;
    r0.xz = rcp(r0.xz);
    r0.w = 1 + -r0.y;
    r3.x = r0.w * r0.z;
    r0.x = r0.y * r0.x;
    r0.y = r0.w * r0.z + r0.x;
    r0.y = rcp(r0.y);
    r0.z = r3.x * r0.y;
    r0.x = r0.x * r0.y;
    r2.xyzw = r2.xyzw * r0.zzzz;
    r0.yzw = r8.xyz * r0.xxx + r2.xyz;
    r0.x = r8.w * r0.x + r2.w;
    r2.xyz = float3(0.25,0.25,0.25) * r0.yzw;
    r3.yz = r2.xx + r2.yz;
    r3.x = -r0.w * 0.25 + r3.y;
    r0.y = r0.y * 0.25 + -r2.y;
    r3.w = -r0.w * 0.25 + r0.y;
    r0.yzw = min(float3(0,0,0), -r3.xzw);
    r2.xyz = -r0.yzw;
    r0.y = cmp(r0.x != r0.x);
    r2.w = r0.y ? 0 : r0.x;
    r0.xyzw = min(float4(65504,65504,65504,65504), r2.xyzw);
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