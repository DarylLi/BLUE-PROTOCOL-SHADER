// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(0.0078125,0.0078125,0.0078125) * v0.xyx;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r0.xyz = r0.xyz * r0.xyy;
  r0.x = dot(r0.xyz, float3(20.390625,60.703125,2.42812085));
  r0.x = frac(r0.x);
  r1.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.x = r1.x * 0.99000001 + r0.x;
  r0.yzw = float3(0.99000001,0.99000001,0.99000001) * r1.yzw;
  o0.yzw = r0.yzw;
  r1.xyzw = float4(0.00100000005,0,0.00200000009,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.00300000003,0,0.00400000019,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.00500000035,0,0.00600000005,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.00700000022,0,0.00800000038,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.00900000054,0,0.0100000007,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.0110000009,0,0.0120000001,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r1.xyzw = float4(0.0130000003,0,0.0140000004,0) + v0.xyxy;
  r1.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r1.xyzw;
  r1.xyzw = frac(r1.xyzw);
  r1.xyzw = r1.xyzw * float4(128,128,128,128) + float4(-64.3406219,-72.4656219,-64.3406219,-72.4656219);
  r0.yzw = r1.xyx * r1.xyy;
  r1.xyz = r1.zwz * r1.zww;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.x;
  r0.yzw = float3(0.0150000006,0,0.0150000006) + v0.xyx;
  r0.yzw = float3(0.0078125,0.0078125,0.0078125) * r0.yzw;
  r0.yzw = frac(r0.yzw);
  r0.yzw = r0.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r0.yzw = r0.yzw * r0.yzz;
  r0.y = dot(r0.yzw, float3(20.390625,60.703125,2.42812085));
  r0.y = frac(r0.y);
  o0.x = r0.x + r0.y;
  return;
}