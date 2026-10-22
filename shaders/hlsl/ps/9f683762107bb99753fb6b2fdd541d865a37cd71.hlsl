// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t4 : register(t4);

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


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  linear noperspective float2 w0 : TEXCOORD3,
  linear noperspective float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD4,
  float4 v4 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = w0.xy * cb0[76].zw + cb0[76].xy;
  r1.xyzw = cmp(float4(0,0,0,0) < r0.xyxy);
  r2.xyzw = cmp(r0.xyxy < float4(0,0,0,0));
  r1.xyzw = (int4)-r1.xyzw + (int4)r2.xyzw;
  r1.xyzw = (int4)r1.xyzw;
  r2.xyzw = saturate(-cb0[79].zzzz + abs(r0.xyxy));
  r1.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = -r1.xyzw * cb0[79].xxyy + r0.xyxy;
  r1.xyzw = r1.xyzw * cb0[77].zwzw + cb0[77].xyxy;
  r1.xyzw = r1.xyzw * cb0[38].zwzw + cb0[39].xyxy;
  r1.xyzw = cb0[38].xyxy * r1.xyzw;
  r2.x = t1.Sample(s1_s, r1.xy).x;
  r2.y = t1.Sample(s1_s, r1.zw).y;
  r2.z = t1.Sample(s1_s, v0.xy).z;
  r1.xyz = cb1[135].zzz * r2.xyz;
  r0.zw = cb0[58].zw * v0.xy + cb0[59].xy;
  r0.zw = max(cb0[50].zw, r0.zw);
  r0.zw = min(cb0[51].xy, r0.zw);
  r2.xyz = t2.Sample(s2_s, r0.zw).xyz;
  r2.xyz = cb1[135].zzz * r2.xyz;
  r0.xy = r0.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xyz = t3.Sample(s3_s, r0.xy).xyz;
  r0.xyz = r0.xyz * cb0[75].xyz + cb0[69].xyz;
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = r1.xyz * cb0[68].xyz + r0.xyz;
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
  r0.xyz = t4.Sample(s4_s, r0.xyz).xyz;
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