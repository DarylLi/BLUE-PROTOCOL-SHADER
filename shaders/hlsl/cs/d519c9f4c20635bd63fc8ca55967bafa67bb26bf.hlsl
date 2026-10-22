// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[77];
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
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = asuint(cb0[53].zw);
  r0.xy = r0.xy + r0.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[52].xy * r0.xy;
  r1.xy = r0.xy * cb0[52].xy + float2(-0.5,-0.5);
  r1.x = max(abs(r1.x), abs(r1.y));
  r1.x = cmp(r1.x >= 0.5);
  if (r1.x != 0) {
    return;
  }
  r1.x = t1.Load(float4(0,0,0,0)).x;
  r2.y = cb0[55].x * cb0[54].w;
  r1.yz = r0.zw * cb0[37].yz + -cb0[39].xy;
  r1.yz = r1.yz / cb0[38].zw;
  r1.yz = r1.yz * cb0[76].zw + cb0[76].xy;
  r1.w = r2.y * r2.y + 1;
  r1.w = sqrt(r1.w);
  r1.w = 1.41421354 / r1.w;
  r2.x = 1;
  r2.xy = r1.yz * r2.xy;
  r2.xy = r2.xy * r1.ww;
  r0.xy = r0.xy * cb0[52].xy + cb0[72].xy;
  r0.x = r0.y * 543.309998 + r0.x;
  r0.x = sin(r0.x);
  r0.x = 493013 * r0.x;
  r0.x = frac(r0.x);
  r3.xyz = t2.SampleLevel(s1_s, r0.zw, 0).xyz;
  r3.xyz = cb1[135].zzz * r3.xyz;
  r2.zw = cb0[58].zw * r0.zw + cb0[59].xy;
  r2.zw = max(cb0[50].zw, r2.zw);
  r2.zw = min(cb0[51].xy, r2.zw);
  r4.xyz = t3.SampleLevel(s2_s, r2.zw, 0).xyz;
  r4.xyz = cb1[135].zzz * r4.xyz;
  r1.yz = r1.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r1.yzw = t4.SampleLevel(s3_s, r1.yz, 0).xyz;
  r1.yzw = r1.yzw * cb0[75].xyz + cb0[69].xyz;
  r1.yzw = r4.xyz * r1.yzw;
  r1.yzw = r3.xyz * cb0[68].xyz + r1.yzw;
  r1.xyz = r1.yzw * r1.xxx;
  r2.xy = cb0[71].xx * r2.xy;
  r0.y = dot(r2.xy, r2.xy);
  r0.y = 1 + r0.y;
  r0.y = rcp(r0.y);
  r0.y = r0.y * r0.y;
  r1.xyz = r1.xyz * r0.yyy;
  r0.yz = cb0[66].zw * r0.zw + cb0[67].xy;
  r0.yz = max(cb0[65].zw, r0.yz);
  r0.yz = min(cb0[66].xy, r0.yz);
  r0.y = t0.SampleLevel(s0_s, r0.yz, 0).x;
  r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
  r3.xyz = cmp(r1.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r4.xyz = log2(r1.xyz);
  r4.xyz = float3(0.416666657,0.416666657,0.416666657) * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r4.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = r3.xyz ? r4.xyz : r2.xyz;
  r1.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(0.159301758,0.159301758,0.159301758) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r3.xyz = r1.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
  r1.xyz = r1.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
  r1.xyz = rcp(r1.xyz);
  r1.xyz = r3.xyz * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(78.84375,78.84375,78.84375) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * float3(0.96875,0.96875,0.96875) + float3(0.015625,0.015625,0.015625);
  r1.xyz = t5.SampleLevel(s4_s, r1.xyz, 0).xyz;
  r1.xyz = r1.xyz * float3(1.04999995,1.04999995,1.04999995) + -r2.xyz;
  r0.yzw = r0.yyy * r1.xyz + r2.xyz;
  r1.w = saturate(dot(r0.yzw, float3(0.298999995,0.587000012,0.114)));
  r0.x = r0.x * 0.00390625 + -0.001953125;
  r0.xyz = r0.yzw + r0.xxx;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r2.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r0.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.xyz = -r0.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r0.xyz = r2.xyz / r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(6.27739477,6.27739477,6.27739477) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = float3(10000,10000,10000) * r0.xyz;
  r0.xyz = max(float3(9.99999975e-005,9.99999975e-005,9.99999975e-005), r0.xyz);
  r0.xyz = min(float3(1000,1000,1000), r0.xyz);
  r0.xyz = float3(-9.99999975e-005,-9.99999975e-005,-9.99999975e-005) + r0.xyz;
  r0.xyz = float3(0.00100000016,0.00100000016,0.00100000016) * r0.xyz;
  r2.x = dot(float3(1.73125386,-0.604043067,-0.0801077113), r0.xyz);
  r2.y = dot(float3(-0.131618932,1.13484156,-0.00867943279), r0.xyz);
  r2.z = dot(float3(-0.0245682523,-0.125750408,1.06563699), r0.xyz);
  r1.xyz = float3(12.5,12.5,12.5) * r2.xyz;
  if (cb0[74].x != 0) {
    r0.xyz = log2(r1.xyz);
    r0.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r2.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r0.xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r0.xyz = -r0.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
    r0.xyz = r2.xyz / r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = float3(6.27739477,6.27739477,6.27739477) * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r0.xyz = float3(10000,10000,10000) * r0.xyz;
    r0.xyz = r0.xyz / cb0[73].www;
    r0.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r0.xyz);
    r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
    r0.xyz = max(float3(0.00313066994,0.00313066994,0.00313066994), r0.xyz);
    r0.xyz = log2(r0.xyz);
    r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r1.xyz = min(r2.xyz, r0.xyz);
  }
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[53].zwww);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}