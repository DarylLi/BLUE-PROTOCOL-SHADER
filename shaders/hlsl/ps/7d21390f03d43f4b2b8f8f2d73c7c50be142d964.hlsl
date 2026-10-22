// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v1.xy);
  r0.z = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.xy = float2(32.6650009,11.8149996) + r0.xy;
  r0.x = dot(r0.xy, float2(0.0671105608,0.00583714992));
  r0.x = frac(r0.x);
  r0.x = 52.9829178 * r0.x;
  r1.xy = frac(r0.zx);
  r0.xy = float2(-0.5,-0.5) + r1.xy;
  r0.xy = float2(0.5,0.5) * r0.xy;
  r0.zw = v0.xy * cb0[22].xy + cb0[22].zw;
  r2.xy = cb0[8].xy * r0.zw;
  r2.xy = floor(r2.xy);
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.zw = asuint(cb0[10].xy);
  r2.xy = r2.xy + -r2.zw;
  r0.xy = r2.xy * float2(0.0625,0.0625) + r0.xy;
  r0.xy = cb0[15].zw * r0.xy;
  r0.xy = min(cb0[21].zw, r0.xy);
  r2.xyzw = t1.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r3.xy = cb0[0].yy * r2.zw;
  r0.x = dot(r3.xy, r3.xy);
  r4.xyz = t0.SampleLevel(s0_s, v0.xy, 0).xyz;
  r0.y = cmp(r0.x < 0.25);
  if (r0.y != 0) {
    o0.xyz = r4.xyz;
    o0.w = 0;
  }
  if (r0.y == 0) {
    r2.xy = cb0[0].yy * r2.xy;
    r0.y = dot(r2.xy, r2.xy);
    r3.zw = -r3.xy;
    r2.xyzw = cb0[1].zwzw * r3.xyzw;
    r1.y = 0.400000006 * r0.x;
    r0.y = cmp(r1.y < r0.y);
    if (r0.y != 0) {
      r1.z = -r1.x;
      r3.xyzw = float4(0,0,1,1) + r1.xxzz;
      r3.xyzw = float4(0.5,0.5,0.5,0.5) * r3.xyzw;
      r3.xyzw = r3.xyzw * r2.xyzw + v0.xyxy;
      r3.xyzw = max(cb0[7].xyxy, r3.xyzw);
      r3.xyzw = min(cb0[7].zwzw, r3.xyzw);
      r5.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
      r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
      r3.xyz = r5.xyz + r3.xyz;
      r5.xyzw = float4(1,1,2,2) + r1.xxzz;
      r5.xyzw = float4(0.5,0.5,0.5,0.5) * r5.xyzw;
      r5.xyzw = r5.xyzw * r2.xyzw + v0.xyxy;
      r5.xyzw = max(cb0[7].xyxy, r5.xyzw);
      r5.xyzw = min(cb0[7].zwzw, r5.xyzw);
      r6.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
      r3.xyz = r6.xyz + r3.xyz;
      r5.xyz = t0.SampleLevel(s0_s, r5.zw, 0).xyz;
      r3.xyz = r5.xyz + r3.xyz;
      r3.xyz = float3(0.25,0.25,0.25) * r3.xyz;
    } else {
      r0.x = rsqrt(r0.x);
      r0.x = r0.x + r0.x;
      r0.yz = t2.SampleLevel(s1_s, r0.zw, 0).xz;
      r0.y = cb0[0].y * r0.y;
      r5.x = min(cb0[0].w, r0.y);
      r1.w = -r1.x;
      r6.xyzw = float4(0,0,1,1) + r1.xxww;
      r6.xyzw = float4(0.5,0.5,0.5,0.5) * r6.xyzw;
      r6.xyzw = r6.xyzw * r2.xyzw + v0.xyxy;
      r6.xyzw = max(cb0[7].xyxy, r6.xyzw);
      r6.xyzw = min(cb0[7].zwzw, r6.xyzw);
      r7.xyzw = r6.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r0.yw = t2.SampleLevel(s1_s, r7.xy, 0).xz;
      r8.xyz = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
      r0.y = cb0[0].y * r0.y;
      r5.y = min(cb0[0].w, r0.y);
      r0.y = r0.w + -r0.z;
      r1.yz = saturate(r0.yy * float2(1,-1) + float2(0.5,0.5));
      r6.xy = saturate(r5.xy * r0.xx);
      r0.y = dot(r1.yz, r6.xy);
      r1.yz = t2.SampleLevel(s1_s, r7.zw, 0).xz;
      r6.xyz = t0.SampleLevel(s0_s, r6.zw, 0).xyz;
      r1.y = cb0[0].y * r1.y;
      r5.z = min(cb0[0].w, r1.y);
      r1.y = r1.z + -r0.z;
      r7.xy = saturate(r1.yy * float2(1,-1) + float2(0.5,0.5));
      r7.zw = saturate(r5.xz * r0.xx);
      r1.y = dot(r7.xy, r7.zw);
      r0.w = cmp(r1.z < r0.w);
      r1.z = cmp(r5.y < r5.z);
      r3.w = r0.w ? r1.z : 0;
      r3.w = r3.w ? r1.y : r0.y;
      r0.w = (int)r0.w | (int)r1.z;
      r0.y = r0.w ? r1.y : r0.y;
      r6.xyz = r0.yyy * r6.xyz;
      r6.xyz = r3.www * r8.xyz + r6.xyz;
      r0.y = r3.w + r0.y;
      r7.xyzw = float4(1,1,2,2) + r1.xxww;
      r7.xyzw = float4(0.5,0.5,0.5,0.5) * r7.xyzw;
      r2.xyzw = r7.xyzw * r2.xyzw + v0.xyxy;
      r2.xyzw = max(cb0[7].xyxy, r2.xyzw);
      r2.xyzw = min(cb0[7].zwzw, r2.xyzw);
      r7.xyzw = r2.xyzw * cb0[22].xyxy + cb0[22].zwzw;
      r1.yz = t2.SampleLevel(s1_s, r7.xy, 0).xz;
      r8.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
      r0.w = cb0[0].y * r1.y;
      r5.w = min(cb0[0].w, r0.w);
      r0.w = r1.z + -r0.z;
      r1.yw = saturate(r0.ww * float2(1,-1) + float2(0.5,0.5));
      r2.xy = saturate(r0.xx * r5.xw + -r1.xx);
      r0.w = dot(r1.yw, r2.xy);
      r1.yw = t2.SampleLevel(s1_s, r7.zw, 0).xz;
      r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
      r1.y = cb0[0].y * r1.y;
      r5.y = min(cb0[0].w, r1.y);
      r0.z = r1.w + -r0.z;
      r7.xy = saturate(r0.zz * float2(1,-1) + float2(0.5,0.5));
      r0.xz = saturate(r0.xx * r5.xy + -r1.xx);
      r0.x = dot(r7.xy, r0.xz);
      r0.z = cmp(r1.w < r1.z);
      r1.x = cmp(r5.w < r5.y);
      r1.y = r0.z ? r1.x : 0;
      r1.y = r1.y ? r0.x : r0.w;
      r0.z = (int)r0.z | (int)r1.x;
      r0.x = r0.z ? r0.x : r0.w;
      r1.xzw = r0.xxx * r2.xyz;
      r1.xzw = r1.yyy * r8.xyz + r1.xzw;
      r1.xzw = r6.xyz + r1.xzw;
      r0.x = r1.y + r0.x;
      r0.x = r0.y + r0.x;
      r0.x = -r0.x * 0.25 + 1;
      r0.xyz = r0.xxx * r4.xyz;
      r3.xyz = r1.xzw * float3(0.25,0.25,0.25) + r0.xyz;
    }
    o0.xyz = r3.xyz;
    o0.w = 0;
  }
  return;
}