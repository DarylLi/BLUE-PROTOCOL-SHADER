// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[67];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[17].zw + v0.xy;
  r0.xy = cb0[18].xy * r0.xy;
  r0.xy = floor(r0.xy);
  r0.zw = -r0.xy * cb0[18].zw + v0.xy;
  r0.zw = -cb0[17].zw + r0.zw;
  r1.xy = cb0[18].xy * r0.zw;
  r0.zw = -r0.wz * cb0[18].yx + float2(1,1);
  r2.yz = r0.zw * r1.xy;
  r2.w = r1.y * r1.x;
  r2.x = r0.z * r0.w;
  r0.zw = cb0[18].zw * r0.xy;
  r0.xy = r0.xy * cb0[18].zw + cb0[17].zw;
  r0.xy = cb0[17].xy * float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[18].zw * float2(0.5,0.5) + r0.zw;
  r1.xy = -cb1[66].wz + r0.zw;
  r1.xy = r1.xy / cb1[66].xy;
  r3.xyzw = t1.SampleLevel(s1_s, r0.zw, 0).xyzw;
  r1.xy = r3.ww * r1.xy;
  r1.yzw = cb1[49].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
  r1.xyz = r3.www * cb1[50].xyz + r1.xyz;
  r1.xyz = cb1[51].xyz + r1.xyz;
  r1.w = 1;
  r4.xyzw = t0.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r5.xy = v0.zw * r4.ww;
  r5.yzw = cb1[49].xyz * r5.yyy;
  r5.xyz = r5.xxx * cb1[48].xyz + r5.yzw;
  r5.xyz = r4.www * cb1[50].xyz + r5.xyz;
  r5.xyz = cb1[51].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r4.xyz);
  r5.w = -r5.x;
  r5.xyz = r4.xyz;
  r1.x = dot(r5.xyzw, r1.xyzw);
  r1.x = 1000 * abs(r1.x);
  r1.x = r1.x / r3.w;
  r1.x = 9.99999975e-005 + r1.x;
  r1.x = 10 / r1.x;
  r1.x = min(1, r1.x);
  r4.xy = cb0[18].zw + r0.zw;
  r6.xy = -cb1[66].wz + r4.xy;
  r7.xyzw = t1.SampleLevel(s1_s, r4.xy, 0).xyzw;
  r4.xy = r6.xy / cb1[66].xy;
  r4.xy = r4.xy * r7.ww;
  r6.xyz = cb1[49].xyz * r4.yyy;
  r4.xyz = r4.xxx * cb1[48].xyz + r6.xyz;
  r4.xyz = r7.www * cb1[50].xyz + r4.xyz;
  r6.xyz = cb1[51].xyz + r4.xyz;
  r6.w = 1;
  r3.w = dot(r5.xyzw, r6.xyzw);
  r3.w = 1000 * abs(r3.w);
  r3.w = r3.w / r7.w;
  r3.w = 9.99999975e-005 + r3.w;
  r3.w = 10 / r3.w;
  r1.w = min(1, r3.w);
  r6.xw = cb0[18].zw;
  r6.yz = float2(0,0);
  r8.xyzw = r6.xyzw + r0.zwzw;
  r6.xyzw = r6.xyzw + r0.xyxy;
  r9.xyzw = -cb1[66].wzwz + r8.xyzw;
  r9.xyzw = r9.xyzw / cb1[66].xyxy;
  r10.xyzw = t1.SampleLevel(s1_s, r8.xy, 0).xyzw;
  r8.xyzw = t1.SampleLevel(s1_s, r8.zw, 0).xyzw;
  r0.zw = r10.ww * r9.xy;
  r4.xy = r9.zw * r8.ww;
  r9.xyz = cb1[49].xyz * r0.www;
  r9.xyz = r0.zzz * cb1[48].xyz + r9.xyz;
  r9.xyz = r10.www * cb1[50].xyz + r9.xyz;
  r9.xyz = cb1[51].xyz + r9.xyz;
  r9.w = 1;
  r0.z = dot(r5.xyzw, r9.xyzw);
  r0.z = 1000 * abs(r0.z);
  r0.z = r0.z / r10.w;
  r0.z = 9.99999975e-005 + r0.z;
  r0.z = 10 / r0.z;
  r1.y = min(1, r0.z);
  r9.xyz = cb1[49].xyz * r4.yyy;
  r4.xyz = r4.xxx * cb1[48].xyz + r9.xyz;
  r4.xyz = r8.www * cb1[50].xyz + r4.xyz;
  r9.xyz = cb1[51].xyz + r4.xyz;
  r9.w = 1;
  r0.z = dot(r5.xyzw, r9.xyzw);
  r0.z = 1000 * abs(r0.z);
  r0.z = r0.z / r8.w;
  r0.z = 9.99999975e-005 + r0.z;
  r0.z = 10 / r0.z;
  r1.z = min(1, r0.z);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.zw = cb0[18].zw + r0.xy;
  r2.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r2.x = dot(r2.xyz, r5.xyz);
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r2.w = dot(r0.xyz, r5.xyz);
  r0.xyz = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
  r4.xyz = t0.SampleLevel(s0_s, r6.zw, 0).xyz;
  r2.z = dot(r4.xyz, r5.xyz);
  r2.y = dot(r0.xyz, r5.xyz);
  o0.w = r4.w;
  r0.xyzw = max(float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005), r2.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = r0.yyy * r10.xyz;
  r1.xyz = r0.xxx * r3.xyz + r1.xyz;
  r1.xyz = r0.zzz * r8.xyz + r1.xyz;
  r1.xyz = r0.www * r7.xyz + r1.xyz;
  r0.x = dot(r0.xyzw, float4(1,1,1,1));
  r0.x = max(9.99999975e-006, r0.x);
  r0.x = 1 / r0.x;
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r1.x = max(9.99999975e-005, r0.w);
  r0.xyz = r0.xyz / r1.xxx;
  o0.xyz = r0.xyz * r0.www;
  return;
}