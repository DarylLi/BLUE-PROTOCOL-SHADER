// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[28].xy + float2(-0.5,-0.5);
  r0.xy = floor(r0.xy);
  r1.xyzw = float4(0.5,0.5,-1.5,-1.5) + r0.xyxy;
  r2.xz = cb0[28].zw * r1.zw;
  r0.zw = v0.yx * cb0[28].yx + -r1.yx;
  r3.xyzw = float4(-1,-1,-2,-2) + r0.wzwz;
  r3.xyzw = r3.xyzw * r3.xyzw;
  r4.xyzw = float4(2,2,1,1) + r0.wzwz;
  r5.xyzw = float4(3.14159274,3.14159274,1.04719758,1.04719758) * r4.xyxy;
  r4.xyzw = r4.xyzw * r4.xyzw;
  r6.xyzw = sin(r5.xyzw);
  r1.zw = cos(r5.wz);
  r5.xy = -r6.xy * r6.zw;
  r5.xy = float2(-2,-2) * r5.xy;
  r3.xy = r5.xy / r3.xy;
  r5.xy = r0.wz * r0.wz;
  r0.zw = float2(-3,-3) + r0.zw;
  r0.zw = r0.zw * r0.zw;
  r5.zw = -r1.wz * float2(1.73205078,1.73205078) + -r6.zw;
  r5.zw = r6.xy * r5.zw;
  r5.xy = r5.zw / r5.xy;
  r5.xy = r5.xy + r3.xy;
  r3.xy = r3.xy / r5.xy;
  r1.xy = r3.xy + r1.xy;
  r2.yw = cb0[28].wz * r1.yx;
  r7.xyzw = max(cb0[34].xyxy, r2.xywz);
  r7.xyzw = min(cb0[34].zwzw, r7.xyzw);
  r8.xyz = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
  r7.xyz = t0.SampleLevel(s0_s, r7.zw, 0).xyz;
  r9.xyzw = float4(-0.5,-0.5,2.5,2.5) + r0.xyxy;
  r0.xy = float2(3.5,3.5) + r0.xy;
  r10.xw = cb0[28].zw * r0.xy;
  r9.xyzw = cb0[28].zwzw * r9.xyzw;
  r11.xyzw = max(cb0[34].xyxy, r9.xyxw);
  r11.xyzw = min(cb0[34].zwzw, r11.xyzw);
  r12.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
  r11.xyz = t0.SampleLevel(s0_s, r11.zw, 0).xyz;
  r0.xy = -r1.wz * float2(1.73205078,1.73205078) + r6.zw;
  r0.xy = -r6.xy * r0.xy;
  r0.xy = r0.xy / r4.zw;
  r1.x = r0.x * r0.y;
  r12.xyz = r12.xyz * r1.xxx;
  r3.xy = r6.xy * r6.zw;
  r3.xy = r3.xy / r4.xy;
  r4.xy = r3.xy * r5.yx;
  r4.xzw = r8.xyz * r4.xxx + r12.xyz;
  r2.xz = r9.xz;
  r8.xyzw = max(cb0[34].xyxy, r2.xyzy);
  r10.y = r2.y;
  r2.xz = max(cb0[34].xy, r10.xy);
  r2.xz = min(cb0[34].zw, r2.xz);
  r12.xyz = t0.SampleLevel(s0_s, r2.xz, 0).xyz;
  r8.xyzw = min(cb0[34].zwzw, r8.xyzw);
  r13.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
  r8.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
  r2.xz = r0.xy * r5.yx;
  r4.xzw = r13.xyz * r2.xxx + r4.xzw;
  r5.zw = r1.zw * float2(1.73205078,1.73205078) + -r6.wz;
  r1.yz = r1.zw * float2(1.73205078,1.73205078) + r6.wz;
  r1.yz = -r6.yx * r1.yz;
  r5.zw = r6.yx * r5.zw;
  r3.zw = r5.zw / r3.wz;
  r0.zw = r1.yz / r0.zw;
  r1.yz = r3.zw * r0.xy;
  r4.xzw = r11.xyz * r1.yyy + r4.xzw;
  r4.xyz = r7.xyz * r4.yyy + r4.xzw;
  r10.yz = r9.yw;
  r6.xyzw = max(cb0[34].xyxy, r9.zyzw);
  r6.xyzw = min(cb0[34].zwzw, r6.xyzw);
  r10.x = r2.w;
  r1.yw = max(cb0[34].xy, r2.wy);
  r1.yw = min(cb0[34].zw, r1.yw);
  r2.xyw = t0.SampleLevel(s0_s, r1.yw, 0).xyz;
  r7.xyzw = max(cb0[34].xyxy, r10.xyxz);
  r1.yw = max(cb0[34].xy, r10.xw);
  r1.yw = min(cb0[34].zw, r1.yw);
  r9.xyz = t0.SampleLevel(s0_s, r1.yw, 0).xyz;
  r7.xyzw = min(cb0[34].zwzw, r7.xyzw);
  r10.xyz = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
  r7.xyz = t0.SampleLevel(s0_s, r7.zw, 0).xyz;
  r4.xyz = r10.xyz * r2.zzz + r4.xyz;
  r1.y = r5.x * r5.y;
  r2.xyz = r2.xyw * r1.yyy + r4.xyz;
  r1.yw = r5.xy * r3.zw;
  r2.xyz = r7.xyz * r1.yyy + r2.xyz;
  r4.xy = r5.xy * r0.zw;
  r2.xyz = r9.xyz * r4.xxx + r2.xyz;
  r4.xzw = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
  r6.xyz = t0.SampleLevel(s0_s, r6.zw, 0).xyz;
  r2.xyz = r4.xzw * r1.zzz + r2.xyz;
  r1.yzw = r8.xyz * r1.www + r2.xyz;
  r2.x = r3.w * r3.z;
  r1.yzw = r6.xyz * r2.xxx + r1.yzw;
  r1.yzw = r12.xyz * r4.yyy + r1.yzw;
  r1.x = r3.x * r5.y + r1.x;
  r1.x = r0.x * r5.y + r1.x;
  r0.x = r0.x * r3.z + r1.x;
  r0.x = r3.y * r5.x + r0.x;
  r0.x = r0.y * r5.x + r0.x;
  r0.x = r5.x * r5.y + r0.x;
  r0.x = r5.x * r3.z + r0.x;
  r0.x = r5.x * r0.z + r0.x;
  r0.x = r0.y * r3.w + r0.x;
  r0.x = r5.y * r3.w + r0.x;
  r0.x = r3.w * r3.z + r0.x;
  r0.x = r5.y * r0.w + r0.x;
  o0.xyz = r1.yzw / r0.xxx;
  o0.w = 0;
  return;
}