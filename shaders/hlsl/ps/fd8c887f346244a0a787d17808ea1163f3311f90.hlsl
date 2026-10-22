// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[67];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  linear noperspective float4 v5 : TEXCOORD5,
  linear noperspective float4 v6 : TEXCOORD6,
  linear noperspective float4 v7 : TEXCOORD7,
  linear noperspective float4 v8 : TEXCOORD8,
  linear noperspective float4 v9 : TEXCOORD9,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = max(cb0[33].xyxy, v1.xyzw);
  r0.xyzw = min(cb0[33].zwzw, r0.xyzw);
  r1.xyzw = -v1.xyzw + r0.xyzw;
  r1.xyzw = saturate(-abs(r1.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r1.xy = r1.xz * r1.yw;
  r2.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = r2.xyz * r1.yyy;
  r1.xyz = cb0[51].xyz * r1.xyz;
  r0.xyz = r0.xyz * cb0[50].xyz + r1.xyz;
  r1.xyzw = max(cb0[33].xyxy, v2.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v2.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[52].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[53].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v3.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v3.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[54].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[55].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v4.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v4.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[56].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[57].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v5.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v5.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[58].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[59].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v6.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v6.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[60].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[61].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v7.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v7.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[62].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[63].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v8.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v8.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[64].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[65].xyz + r0.xyz;
  r1.xy = max(cb0[33].xy, v9.xy);
  r1.xy = min(cb0[33].zw, r1.xy);
  r1.zw = -v9.xy + r1.xy;
  r2.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xy = saturate(-abs(r1.zw) * cb0[27].xy + float2(1,1));
  r0.w = r1.x * r1.y;
  r1.xyz = r0.www * r2.xyz;
  r0.xyz = r1.xyz * cb0[66].xyz + r0.xyz;
  r1.xy = max(cb0[33].xy, v0.xy);
  r1.xy = min(cb0[33].zw, r1.xy);
  r1.zw = -v0.xy + r1.xy;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).w;
  r1.yz = saturate(-abs(r1.zw) * cb0[27].xy + float2(1,1));
  r1.y = r1.y * r1.z;
  r0.w = r1.y * r1.x;
  r1.xy = max(cb0[40].xy, v0.xy);
  r1.xy = min(cb0[40].zw, r1.xy);
  r1.xyzw = t1.SampleLevel(s1_s, r1.xy, 0).xyzw;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}