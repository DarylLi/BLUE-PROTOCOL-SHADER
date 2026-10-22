// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[70].xyyy);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[68].zw * r1.xy;
  r2.xy = r1.xy * cb0[68].zw + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.xyzw = r1.xyxy * cb0[68].zwzw + cb0[41].xyzw;
  r3.xyzw = max(cb0[33].xyxy, r2.xyzw);
  r3.xyzw = min(cb0[33].zwzw, r3.xyzw);
  r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyzw = r3.xyzw + -r2.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r2.xzw = r2.xxx * r4.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
  r3.xyz = r3.xyz * r2.yyy;
  r3.xyz = cb0[51].xyz * r3.xyz;
  r2.xyz = r2.xzw * cb0[50].xyz + r3.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[42].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[52].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[53].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[43].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[54].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[55].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[44].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[56].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[57].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[45].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[58].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[59].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[46].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[60].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[61].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[47].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[62].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[63].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[48].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[64].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[65].xyz + r2.xyz;
  r3.xyzw = r1.xyxy * cb0[68].zwzw + cb0[49].xyzw;
  r4.xyzw = max(cb0[33].xyxy, r3.xyzw);
  r4.xyzw = min(cb0[33].zwzw, r4.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
  r3.xyzw = r4.xyzw + -r3.xyzw;
  r3.xyzw = saturate(-abs(r3.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r3.xy = r3.xz * r3.yw;
  r3.xzw = r3.xxx * r5.xyz;
  r2.xyz = r3.xzw * cb0[66].xyz + r2.xyz;
  r3.xzw = t0.SampleLevel(s0_s, r4.zw, 0).xyz;
  r3.xyz = r3.yyy * r3.xzw;
  r2.xyz = r3.xyz * cb0[67].xyz + r2.xyz;
  r3.xy = max(cb0[33].xy, r1.zw);
  r3.xy = min(cb0[33].zw, r3.xy);
  r3.z = t0.SampleLevel(s0_s, r3.xy, 0).w;
  r1.xy = -r1.xy * cb0[68].zw + r3.xy;
  r1.xy = saturate(-abs(r1.xy) * cb0[27].xy + float2(1,1));
  r1.x = r1.x * r1.y;
  r2.w = r1.x * r3.z;
  r1.xy = max(cb0[40].xy, r1.zw);
  r1.xy = min(cb0[40].zw, r1.xy);
  r1.xyzw = t1.SampleLevel(s1_s, r1.xy, 0).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}