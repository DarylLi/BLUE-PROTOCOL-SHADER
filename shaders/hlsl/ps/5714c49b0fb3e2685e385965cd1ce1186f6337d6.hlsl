// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

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


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  linear noperspective float2 w0 : TEXCOORD3,
  linear noperspective float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD4,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t1.Sample(s1_s, v0.xy).xyz;
  r0.xyz = cb1[135].zzz * r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xy = cb0[37].yz * v0.xy;
  r1.xy = floor(r1.xy);
  r1.xy = (uint2)r1.xy;
  r1.xy = (int2)r1.xy & int2(1,1);
  r1.xy = (uint2)r1.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r2.x = cb0[38].x * r1.x;
  r2.y = 0;
  r2.xy = v0.xy + r2.xy;
  r2.xyz = t1.Sample(s1_s, r2.xy).xyz;
  r3.xyz = cb1[135].zzz * r2.xyz;
  r1.z = 0;
  r1.zw = r1.zy * cb0[38].xy + v0.xy;
  r4.xyz = t1.Sample(s1_s, r1.zw).xyz;
  r5.xyz = cb1[135].zzz * r4.xyz;
  r3.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.y = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = ddx_fine(r0.xyz);
  r5.xyz = -r5.xyz * r1.xxx + r0.xyz;
  r6.xyz = ddy_fine(r0.xyz);
  r6.xyz = -r6.xyz * r1.yyy + r0.xyz;
  r1.z = ddx_fine(r0.w);
  r3.z = -r1.z * r1.x + r0.w;
  r1.x = ddy_fine(r0.w);
  r3.w = -r1.x * r1.y + r0.w;
  r1.xyzw = -r3.xyzw + r0.wwww;
  r1.xy = max(abs(r1.xz), abs(r1.yw));
  r0.w = max(r1.x, r1.y);
  r0.w = saturate(-v1.x * r0.w + 1);
  r0.w = cb0[71].y * -r0.w;
  r1.xyz = r2.xyz * cb1[135].zzz + r5.xyz;
  r1.xyz = r4.xyz * cb1[135].zzz + r1.xyz;
  r1.xyz = r1.xyz + r6.xyz;
  r1.xyz = -r0.xyz * float3(4,4,4) + r1.xyz;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r1.xy = cb0[58].zw * v0.xy + cb0[59].xy;
  r1.xy = max(cb0[50].zw, r1.xy);
  r1.xy = min(cb0[51].xy, r1.xy);
  r1.xyz = t2.Sample(s2_s, r1.xy).xyz;
  r1.xyz = cb1[135].zzz * r1.xyz;
  r2.xy = w0.xy * cb0[76].zw + cb0[76].xy;
  r2.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r2.xyz = t4.Sample(s4_s, r2.xy).xyz;
  r2.xyz = r2.xyz * cb0[75].xyz + cb0[69].xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r0.xyz = r0.xyz * cb0[68].xyz + r1.xyz;
  r1.xyz = t3.Sample(s3_s, v0.xy).xyz;
  r1.xyz = cb0[70].xxx * r1.xyz;
  r0.xyz = r1.xyz * float3(0.5,0.5,0.5) + r0.xyz;
  r0.xyz = v1.xxx * r0.xyz;
  r1.xy = cb0[71].xx * v1.yz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + r0.w;
  r0.w = rcp(r0.w);
  r0.w = r0.w * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xy = cb0[66].zw * v0.xy + cb0[67].xy;
  r1.xy = max(cb0[65].zw, r1.xy);
  r1.xy = min(cb0[66].xy, r1.xy);
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
  r2.xyz = cmp(r0.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r3.xyz = log2(r0.xyz);
  r3.xyz = float3(0.416666657,0.416666657,0.416666657) * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r3.xyz = r3.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r1.xyz = r2.xyz ? r3.xyz : r1.xyz;
  r0.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.159301758,0.159301758,0.159301758) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r2.xyz = r0.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
  r0.xyz = r0.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
  r0.xyz = rcp(r0.xyz);
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(78.84375,78.84375,78.84375) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(0.96875,0.96875,0.96875) + float3(0.015625,0.015625,0.015625);
  r0.xyz = t5.Sample(s5_s, r0.xyz).xyz;
  r0.xyz = r0.xyz * float3(1.04999995,1.04999995,1.04999995) + -r1.xyz;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.w = saturate(dot(r0.xyz, float3(0.298999995,0.587000012,0.114)));
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
    o0.xyz = min(r2.xyz, r1.xyz);
  } else {
    o0.xyz = r0.xyz;
  }
  return;
}