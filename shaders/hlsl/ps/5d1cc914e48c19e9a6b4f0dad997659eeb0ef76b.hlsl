// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.y = cb0[30].w * cb0[28].w;
  r1.x = 1 / cb0[30].w;
  r1.y = 1 / r0.y;
  r1.z = 1;
  r0.w = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r2.z = r1.w + r0.w;
  r0.w = t2.SampleLevel(s0_s, v0.xy, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r0.w = cmp((int)r0.w != 7);
  if (r0.w != 0) {
    r3.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  } else {
    r3.xyz = float3(0,0,0);
  }
  r4.xyz = cb1[13].xyz * r3.yyy;
  r3.xyw = r3.xxx * cb1[12].xyz + r4.xyz;
  r3.xyz = r3.zzz * cb1[14].xyz + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xy = v0.zw * r2.zz;
  r4.xy = float2(1,1000) + -r2.zz;
  r4.xy = cb0[29].zz * r4.xy + r2.zz;
  r0.w = cb0[28].z * r4.x;
  r1.w = cb0[27].y * r2.z;
  r1.w = cb0[29].x * r1.w;
  r0.x = cb0[30].w;
  r0.z = 1;
  r4.xzw = r3.xyz * r0.xyz;
  r2.xyw = r1.www * r4.xzw + r2.xyz;
  r4.xz = v0.xy * cb0[28].xy + cb0[30].xy;
  r4.xz = t3.Sample(s1_s, r4.xz).xy;
  r4.xzw = r4.xxz * float3(2,2,2) + float3(-1,-1,-1);
  r5.yzw = r4.xzw * r0.www;
  r0.z = 1 / r2.w;
  r0.xyzw = r0.xyxy * r0.zzzz;
  r5.x = -r5.w;
  r0.xyzw = r5.xyzw * r0.xyzw;
  r4.xz = r2.xy / r2.ww;
  r1.w = 0.0799999982 * r4.y;
  r3.xyz = r3.xyz * r1.www;
  r5.xyzw = float4(0.0555555597,0.111111119,0.166666672,0.333333343) * cb0[31].zzzz;
  r5.xyzw = log2(r5.xyzw);
  r6.xyzw = r0.xyxy * float4(-0.143333346,-0.143333346,-0.430000007,-0.430000007) + r4.xzxz;
  r7.xyzw = -r0.xyxy * float4(-0.143333346,-0.143333346,-0.430000007,-0.430000007) + r4.xzxz;
  r8.xyzw = cb0[47].xyxy * r6.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r8.xy, r5.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r9.z = r3.w + r1.w;
  r10.xyzw = cb0[47].xyxy * r7.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r10.xy, r5.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r11.z = r3.w + r1.w;
  r9.xy = r9.zz * r6.xy;
  r11.xy = r11.zz * r7.xy;
  r9.xyz = r9.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r11.xyz = r11.xyz + -r2.xyw;
  r11.xyz = r11.xyz * r1.xyz;
  r1.w = dot(r9.xyz, r3.xyz);
  r3.w = dot(r9.xyz, r9.xyz);
  r6.x = saturate(r1.w / r3.w);
  r1.w = dot(r11.xyz, r3.xyz);
  r3.w = dot(r11.xyz, r11.xyz);
  r6.y = saturate(r1.w / r3.w);
  r4.yw = r0.xy * float2(-0.286666691,-0.286666691) + r4.xz;
  r7.xy = -r0.xy * float2(-0.286666691,-0.286666691) + r4.xz;
  r8.xy = cb0[47].xy * r4.yw + cb0[47].zw;
  r1.w = t4.SampleLevel(s2_s, r8.xy, r5.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r9.z = r3.w + r1.w;
  r8.xy = cb0[47].xy * r7.xy + cb0[47].zw;
  r1.w = t4.SampleLevel(s2_s, r8.xy, r5.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r11.z = r3.w + r1.w;
  r9.xy = r9.zz * r4.yw;
  r11.xy = r11.zz * r7.xy;
  r9.xyz = r9.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r11.xyz = r11.xyz + -r2.xyw;
  r11.xyz = r11.xyz * r1.xyz;
  r1.w = dot(r9.xyz, r3.xyz);
  r3.w = dot(r9.xyz, r9.xyz);
  r5.x = saturate(r1.w / r3.w);
  r1.w = dot(r11.xyz, r3.xyz);
  r3.w = dot(r11.xyz, r11.xyz);
  r5.y = saturate(r1.w / r3.w);
  r4.yw = max(r6.xy, r5.xy);
  r1.w = t4.SampleLevel(s2_s, r8.zw, r5.z).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r8.z = r3.w + r1.w;
  r1.w = t4.SampleLevel(s2_s, r10.zw, r5.z).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r9.z = r3.w + r1.w;
  r8.xy = r8.zz * r6.zw;
  r9.xy = r9.zz * r7.zw;
  r6.xyz = r8.xyz + -r2.xyw;
  r6.xyz = r6.xyz * r1.xyz;
  r7.xyz = r9.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r1.w = dot(r6.xyz, r3.xyz);
  r3.w = dot(r6.xyz, r6.xyz);
  r5.x = saturate(r1.w / r3.w);
  r1.w = dot(r7.xyz, r3.xyz);
  r3.w = dot(r7.xyz, r7.xyz);
  r5.y = saturate(r1.w / r3.w);
  r4.yw = max(r5.xy, r4.yw);
  r4.yw = float2(1,1) + -r4.yw;
  r1.w = r4.y * r4.y + 9.99999975e-005;
  r1.w = r4.w * r4.w + r1.w;
  r6.xyzw = float4(0.569800019,0.569800019,-0.579999983,-0.579999983) * r0.xyzw;
  r0.zw = r0.zw * float2(0.405999988,0.405999988) + r6.xy;
  r7.xyzw = r0.zwzw * float4(0.333333343,0.333333343,0.666666687,0.666666687) + r4.xzxz;
  r8.xyzw = -r0.zwzw * float4(0.333333343,0.333333343,0.666666687,0.666666687) + r4.xzxz;
  r9.xyzw = cb0[47].xyxy * r7.xyzw + cb0[47].zwzw;
  r3.w = t4.SampleLevel(s2_s, r9.xy, r5.z).x;
  r4.y = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r10.z = r4.y + r3.w;
  r11.xyzw = cb0[47].xyxy * r8.xyzw + cb0[47].zwzw;
  r3.w = t4.SampleLevel(s2_s, r11.xy, r5.z).x;
  r4.y = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r5.z = r4.y + r3.w;
  r10.xy = r10.zz * r7.xy;
  r5.xy = r8.xy * r5.zz;
  r10.xyz = r10.xyz + -r2.xyw;
  r10.xyz = r10.xyz * r1.xyz;
  r5.xyz = r5.xyz + -r2.xyw;
  r5.xyz = r5.xyz * r1.xyz;
  r3.w = dot(r10.xyz, r3.xyz);
  r4.y = dot(r10.xyz, r10.xyz);
  r6.x = saturate(r3.w / r4.y);
  r3.w = dot(r5.xyz, r3.xyz);
  r4.y = dot(r5.xyz, r5.xyz);
  r6.y = saturate(r3.w / r4.y);
  r3.w = t4.SampleLevel(s2_s, r9.zw, r5.w).x;
  r4.y = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r5.z = r4.y + r3.w;
  r3.w = t4.SampleLevel(s2_s, r11.zw, r5.w).x;
  r4.y = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r9.z = r4.y + r3.w;
  r5.xy = r7.zw * r5.zz;
  r9.xy = r9.zz * r8.zw;
  r5.xyz = r5.xyz + -r2.xyw;
  r5.xyz = r5.xyz * r1.xyz;
  r7.xyz = r9.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r3.w = dot(r5.xyz, r3.xyz);
  r4.y = dot(r5.xyz, r5.xyz);
  r5.x = saturate(r3.w / r4.y);
  r3.w = dot(r7.xyz, r3.xyz);
  r4.y = dot(r7.xyz, r7.xyz);
  r5.y = saturate(r3.w / r4.y);
  r4.yw = max(r6.xy, r5.xy);
  r5.xyzw = float4(0.5,0.277777791,0.555555582,0.833333313) * cb0[31].zzzz;
  r5.xyzw = log2(r5.xyzw);
  r6.xy = r4.xz + r0.zw;
  r0.zw = r4.xz + -r0.zw;
  r7.xy = cb0[47].xy * r6.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.xy, r5.x).x;
  r7.x = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r7.z = r7.x + r3.w;
  r8.xy = cb0[47].xy * r0.zw + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r8.xy, r5.x).x;
  r5.x = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r8.z = r5.x + r3.w;
  r7.xy = r7.zz * r6.xy;
  r8.xy = r8.zz * r0.zw;
  r7.xyz = r7.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r8.xyz = r8.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r0.z = dot(r7.xyz, r3.xyz);
  r0.w = dot(r7.xyz, r7.xyz);
  r6.x = saturate(r0.z / r0.w);
  r0.z = dot(r8.xyz, r3.xyz);
  r0.w = dot(r8.xyz, r8.xyz);
  r6.y = saturate(r0.z / r0.w);
  r0.zw = max(r6.xy, r4.yw);
  r0.zw = float2(1,1) + -r0.zw;
  r0.z = r0.z * r0.z + r1.w;
  r0.z = r0.w * r0.w + r0.z;
  r0.xy = r0.xy * float2(0.81400001,0.81400001) + r6.zw;
  r6.xyzw = r0.xyxy * float4(0.333333343,0.333333343,0.666666687,0.666666687) + r4.xzxz;
  r7.xyzw = -r0.xyxy * float4(0.333333343,0.333333343,0.666666687,0.666666687) + r4.xzxz;
  r8.xyzw = cb0[47].xyxy * r6.xyzw + cb0[47].zwzw;
  r0.w = t4.SampleLevel(s2_s, r8.xy, r5.y).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r9.z = r1.w + r0.w;
  r10.xyzw = cb0[47].xyxy * r7.xyzw + cb0[47].zwzw;
  r0.w = t4.SampleLevel(s2_s, r10.xy, r5.y).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r11.z = r1.w + r0.w;
  r9.xy = r9.zz * r6.xy;
  r11.xy = r11.zz * r7.xy;
  r9.xyz = r9.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r11.xyz = r11.xyz + -r2.xyw;
  r11.xyz = r11.xyz * r1.xyz;
  r0.w = dot(r9.xyz, r3.xyz);
  r1.w = dot(r9.xyz, r9.xyz);
  r5.x = saturate(r0.w / r1.w);
  r0.w = dot(r11.xyz, r3.xyz);
  r1.w = dot(r11.xyz, r11.xyz);
  r5.y = saturate(r0.w / r1.w);
  r0.w = t4.SampleLevel(s2_s, r8.zw, r5.z).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r8.z = r1.w + r0.w;
  r0.w = t4.SampleLevel(s2_s, r10.zw, r5.z).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r9.z = r1.w + r0.w;
  r8.xy = r8.zz * r6.zw;
  r9.xy = r9.zz * r7.zw;
  r6.xyz = r8.xyz + -r2.xyw;
  r6.xyz = r6.xyz * r1.xyz;
  r7.xyz = r9.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r0.w = dot(r6.xyz, r3.xyz);
  r1.w = dot(r6.xyz, r6.xyz);
  r6.x = saturate(r0.w / r1.w);
  r0.w = dot(r7.xyz, r3.xyz);
  r1.w = dot(r7.xyz, r7.xyz);
  r6.y = saturate(r0.w / r1.w);
  r4.yw = max(r6.xy, r5.xy);
  r5.xy = r4.xz + r0.xy;
  r0.xy = r4.xz + -r0.xy;
  r4.xz = cb0[47].xy * r5.xy + cb0[47].zw;
  r0.w = t4.SampleLevel(s2_s, r4.xz, r5.w).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r6.z = r1.w + r0.w;
  r4.xz = cb0[47].xy * r0.xy + cb0[47].zw;
  r0.w = t4.SampleLevel(s2_s, r4.xz, r5.w).x;
  r1.w = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r7.z = r1.w + r0.w;
  r6.xy = r6.zz * r5.xy;
  r7.xy = r7.zz * r0.xy;
  r0.xyw = r6.xyz + -r2.xyw;
  r0.xyw = r0.xyw * r1.xyz;
  r2.xyw = r7.xyz + -r2.xyw;
  r1.xyz = r2.xyw * r1.xyz;
  r1.w = dot(r0.xyw, r3.xyz);
  r0.x = dot(r0.xyw, r0.xyw);
  r0.x = saturate(r1.w / r0.x);
  r0.w = dot(r1.xyz, r3.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r0.y = saturate(r0.w / r1.x);
  r0.xy = max(r4.yw, r0.xy);
  r0.xy = float2(1,1) + -r0.xy;
  r0.x = r0.x * r0.x + r0.z;
  r0.x = r0.y * r0.y + r0.x;
  r0.y = 0.166663885 * r0.x;
  r0.z = saturate(r2.z * cb0[31].x + cb0[31].y);
  r0.x = -r0.x * 0.166663885 + 1;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = log2(r0.x);
  r0.x = cb0[27].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  o0.xyzw = -r0.xxxx * cb0[27].wwww + float4(1,1,1,1);
  return;
}