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
  float4 cb0[80];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = asuint(cb0[53].zw);
  r0.xy = r0.xy + r0.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[52].xy * r0.xy;
  r0.xy = r0.xy * cb0[52].xy + float2(-0.5,-0.5);
  r0.x = max(abs(r0.x), abs(r0.y));
  r0.x = cmp(r0.x >= 0.5);
  if (r0.x != 0) {
    return;
  }
  r0.x = t1.Load(float4(0,0,0,0)).x;
  r1.xy = r0.zw * cb0[37].yz + -cb0[39].xy;
  r1.xy = r1.xy / cb0[38].zw;
  r1.xy = r1.xy * cb0[76].zw + cb0[76].xy;
  r2.xyzw = cmp(float4(0,0,0,0) < r1.xyxy);
  r3.xyzw = cmp(r1.xyxy < float4(0,0,0,0));
  r2.xyzw = (int4)-r2.xyzw + (int4)r3.xyzw;
  r2.xyzw = (int4)r2.xyzw;
  r3.xyzw = saturate(-cb0[79].zzzz + abs(r1.xyxy));
  r2.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = -r2.xyzw * cb0[79].xxyy + r1.xyxy;
  r2.xyzw = r2.xyzw * cb0[77].zwzw + cb0[77].xyxy;
  r2.xyzw = r2.xyzw * cb0[38].zwzw + cb0[39].xyxy;
  r2.xyzw = cb0[38].xyxy * r2.xyzw;
  r3.x = t2.SampleLevel(s1_s, r2.xy, 0).x;
  r3.y = t2.SampleLevel(s1_s, r2.zw, 0).y;
  r3.z = t2.SampleLevel(s1_s, r0.zw, 0).z;
  r2.xyz = cb1[135].zzz * r3.xyz;
  r1.zw = cb0[58].zw * r0.zw + cb0[59].xy;
  r1.zw = max(cb0[50].zw, r1.zw);
  r1.zw = min(cb0[51].xy, r1.zw);
  r3.xyz = t3.SampleLevel(s2_s, r1.zw, 0).xyz;
  r3.xyz = cb1[135].zzz * r3.xyz;
  r1.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r1.xyz = t4.SampleLevel(s3_s, r1.xy, 0).xyz;
  r1.xyz = r1.xyz * cb0[75].xyz + cb0[69].xyz;
  r1.xyz = r3.xyz * r1.xyz;
  r1.xyz = r2.xyz * cb0[68].xyz + r1.xyz;
  r1.xyz = r1.xyz * r0.xxx;
  r0.xy = cb0[66].zw * r0.zw + cb0[67].xy;
  r0.xy = max(cb0[65].zw, r0.xy);
  r0.xy = min(cb0[66].xy, r0.xy);
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.yzw = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r3.xyz = log2(r1.xyz);
  r3.xyz = float3(0.416666657,0.416666657,0.416666657) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r3.xyz = r3.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r0.yzw = r2.xyz ? r3.xyz : r0.yzw;
  r1.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(0.159301758,0.159301758,0.159301758) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyz = r1.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
  r1.xyz = r1.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
  r1.xyz = rcp(r1.xyz);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(78.84375,78.84375,78.84375) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * float3(0.96875,0.96875,0.96875) + float3(0.015625,0.015625,0.015625);
  r1.xyz = t5.SampleLevel(s4_s, r1.xyz, 0).xyz;
  r1.xyz = r1.xyz * float3(1.04999995,1.04999995,1.04999995) + -r0.yzw;
  r0.xyz = r0.xxx * r1.xyz + r0.yzw;
  r0.w = saturate(dot(r0.xyz, float3(0.298999995,0.587000012,0.114)));
  if (cb0[74].x != 0) {
    r1.xyz = log2(r0.xyz);
    r1.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r2.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r1.xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r1.xyz = -r1.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
    r1.xyz = r2.xyz / r1.xyz;
    r1.xyz = log2(r1.xyz);
    r1.xyz = float3(6.27739477,6.27739477,6.27739477) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = float3(10000,10000,10000) * r1.xyz;
    r1.xyz = r1.xyz / cb0[73].www;
    r1.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r1.xyz);
    r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
    r1.xyz = max(float3(0.00313066994,0.00313066994,0.00313066994), r1.xyz);
    r1.xyz = log2(r1.xyz);
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = min(r2.xyz, r1.xyz);
  }
  r1.xyzw = (int4)vThreadID.xyyy + asint(cb0[53].zwww);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}