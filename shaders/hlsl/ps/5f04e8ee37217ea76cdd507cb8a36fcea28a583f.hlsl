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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r3.yzw = r3.xyz * r0.www;
  r2.xy = v0.zw * r2.zz;
  r4.xy = float2(1,1000) + -r2.zz;
  r4.xy = cb0[29].zz * r4.xy + r2.zz;
  r0.w = cb0[28].z * r4.x;
  r1.w = cb0[27].y * r2.z;
  r1.w = cb0[29].x * r1.w;
  r0.x = cb0[30].w;
  r0.z = 1;
  r4.xzw = r3.yzw * r0.xyz;
  r2.xyw = r1.www * r4.xzw + r2.xyz;
  r4.xz = v0.xy * cb0[28].xy + cb0[30].xy;
  r4.xz = t3.Sample(s1_s, r4.xz).xy;
  r4.xzw = r4.xzx * float3(2,2,2) + float3(-1,-1,-1);
  r5.xyw = r4.xzw * r0.www;
  r0.z = 1 / r2.w;
  r0.xyzw = r0.xyxy * r0.zzzz;
  r5.z = -r5.y;
  r0.xyzw = r5.xyzw * r0.xyzw;
  r4.xz = r2.xy / r2.ww;
  r1.w = 0.0799999982 * r4.y;
  r5.xyz = r3.yzw * r1.www;
  r6.xyzw = float4(0.0833333358,0.166666672,0.25,0.5) * cb0[31].zzzz;
  r6.xyzw = log2(r6.xyzw);
  r7.xyzw = r0.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r4.xzxz;
  r8.xyzw = -r0.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r4.xzxz;
  r9.xyzw = cb0[47].xyxy * r7.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r9.xy, r6.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r10.z = r3.w + r1.w;
  r11.xyzw = cb0[47].xyxy * r8.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r11.xy, r6.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r12.z = r3.w + r1.w;
  r10.xy = r10.zz * r7.xy;
  r12.xy = r12.zz * r8.xy;
  r10.xyz = r10.xyz + -r2.xyw;
  r10.xyz = r10.xyz * r1.xyz;
  r12.xyz = r12.xyz + -r2.xyw;
  r12.xyz = r12.xyz * r1.xyz;
  r1.w = dot(r10.xyz, r5.xyz);
  r3.w = dot(r10.xyz, r10.xyz);
  r7.x = saturate(r1.w / r3.w);
  r1.w = dot(r12.xyz, r5.xyz);
  r3.w = dot(r12.xyz, r12.xyz);
  r7.y = saturate(r1.w / r3.w);
  r1.w = t4.SampleLevel(s2_s, r9.zw, r6.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r9.z = r3.w + r1.w;
  r1.w = t4.SampleLevel(s2_s, r11.zw, r6.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r10.z = r3.w + r1.w;
  r9.xy = r9.zz * r7.zw;
  r10.xy = r10.zz * r8.zw;
  r8.xyz = r9.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r9.xyz = r10.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r1.w = dot(r8.xyz, r5.xyz);
  r3.w = dot(r8.xyz, r8.xyz);
  r6.x = saturate(r1.w / r3.w);
  r1.w = dot(r9.xyz, r5.xyz);
  r3.w = dot(r9.xyz, r9.xyz);
  r6.y = saturate(r1.w / r3.w);
  r4.yw = max(r7.xy, r6.xy);
  r4.yw = float2(1,1) + -r4.yw;
  r1.w = r4.y * r4.y + 9.99999975e-005;
  r1.w = r4.w * r4.w + r1.w;
  r7.xyzw = float4(0.405999988,0.405999988,0.569800019,0.569800019) * r0.xyzw;
  r4.yw = r7.xy + r7.zw;
  r6.xy = r4.yw * float2(0.5,0.5) + r4.xz;
  r7.xy = -r4.yw * float2(0.5,0.5) + r4.xz;
  r7.zw = cb0[47].xy * r6.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.zw, r6.z).x;
  r5.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r8.z = r5.w + r3.w;
  r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.zw, r6.z).x;
  r5.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r9.z = r5.w + r3.w;
  r8.xy = r8.zz * r6.xy;
  r9.xy = r9.zz * r7.xy;
  r6.xyz = r8.xyz + -r2.xyw;
  r6.xyz = r6.xyz * r1.xyz;
  r7.xyz = r9.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r3.w = dot(r6.xyz, r5.xyz);
  r5.w = dot(r6.xyz, r6.xyz);
  r6.x = saturate(r3.w / r5.w);
  r3.w = dot(r7.xyz, r5.xyz);
  r5.w = dot(r7.xyz, r7.xyz);
  r6.y = saturate(r3.w / r5.w);
  r7.xy = r4.xz + r4.yw;
  r4.yw = r4.xz + -r4.yw;
  r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.zw, r6.w).x;
  r5.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r8.z = r5.w + r3.w;
  r7.zw = cb0[47].xy * r4.yw + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.zw, r6.w).x;
  r5.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r9.z = r5.w + r3.w;
  r8.xy = r8.zz * r7.xy;
  r9.xy = r9.zz * r4.yw;
  r7.xyz = r8.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r8.xyz = r9.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r3.w = dot(r7.xyz, r5.xyz);
  r4.y = dot(r7.xyz, r7.xyz);
  r7.x = saturate(r3.w / r4.y);
  r3.w = dot(r8.xyz, r5.xyz);
  r4.y = dot(r8.xyz, r8.xyz);
  r7.y = saturate(r3.w / r4.y);
  r4.yw = max(r7.xy, r6.xy);
  r4.yw = float2(1,1) + -r4.yw;
  r1.w = r4.y * r4.y + r1.w;
  r1.w = r4.w * r4.w + r1.w;
  r0.xyzw = float4(-0.579999983,-0.579999983,0.81400001,0.81400001) * r0.xyzw;
  r0.xy = r0.xy + r0.zw;
  r0.zw = float2(0.416666657,0.833333313) * cb0[31].zz;
  r0.zw = log2(r0.zw);
  r4.yw = r0.xy * float2(0.5,0.5) + r4.xz;
  r6.xy = -r0.xy * float2(0.5,0.5) + r4.xz;
  r6.zw = cb0[47].xy * r4.yw + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r6.zw, r0.z).x;
  r5.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r7.z = r5.w + r3.w;
  r6.zw = cb0[47].xy * r6.xy + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r6.zw, r0.z).x;
  r3.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r8.z = r3.w + r0.z;
  r7.xy = r7.zz * r4.yw;
  r8.xy = r8.zz * r6.xy;
  r6.xyz = r7.xyz + -r2.xyw;
  r6.xyz = r6.xyz * r1.xyz;
  r7.xyz = r8.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r0.z = dot(r6.xyz, r5.xyz);
  r3.w = dot(r6.xyz, r6.xyz);
  r6.x = saturate(r0.z / r3.w);
  r0.z = dot(r7.xyz, r5.xyz);
  r3.w = dot(r7.xyz, r7.xyz);
  r6.y = saturate(r0.z / r3.w);
  r4.yw = r4.xz + r0.xy;
  r0.xy = r4.xz + -r0.xy;
  r4.xz = cb0[47].xy * r4.yw + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r4.xz, r0.w).x;
  r3.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r7.z = r3.w + r0.z;
  r4.xz = cb0[47].xy * r0.xy + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r4.xz, r0.w).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r8.z = r0.w + r0.z;
  r7.xy = r7.zz * r4.yw;
  r8.xy = r8.zz * r0.xy;
  r0.xyz = r7.xyz + -r2.xyw;
  r0.xyz = r0.xyz * r1.xyz;
  r2.xyw = r8.xyz + -r2.xyw;
  r1.xyz = r2.xyw * r1.xyz;
  r0.w = dot(r0.xyz, r5.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = saturate(r0.w / r0.x);
  r0.z = dot(r1.xyz, r5.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.y = saturate(r0.z / r0.w);
  r0.xy = max(r6.xy, r0.xy);
  r0.xy = float2(1,1) + -r0.xy;
  r0.x = r0.x * r0.x + r1.w;
  r0.x = r0.y * r0.y + r0.x;
  r0.y = 0.166663885 * r0.x;
  r0.z = saturate(r2.z * cb0[31].x + cb0[31].y);
  r0.x = -r0.x * 0.166663885 + 1;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = log2(r0.x);
  r0.x = cb0[27].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  r3.x = -r0.x * cb0[27].w + 1;
  r0.xyz = ddx_fine(r3.xyz);
  r1.xyz = ddy_fine(r3.xyz);
  r2.xy = (uint2)v1.xy;
  bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.x = (((uint)r2.x << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.y = (((uint)r2.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  r2.xy = (int2)r2.xy + int2(-1,-1);
  r2.xy = (int2)r2.xy;
  r0.xyz = -r0.xyz * r2.xxx + r3.xyz;
  r1.xyz = -r1.xyz * r2.yyy + r3.xyz;
  r2.x = dot(r3.yz, r3.yz);
  r2.x = 1 + -r2.x;
  r2.z = sqrt(r2.x);
  r2.w = dot(r0.yz, r0.yz);
  r2.w = 1 + -r2.w;
  r0.w = sqrt(r2.w);
  r2.w = dot(r1.yz, r1.yz);
  r2.w = 1 + -r2.w;
  r1.w = sqrt(r2.w);
  r2.xy = r3.yz;
  r0.y = saturate(dot(r2.xyz, r0.yzw));
  r0.y = r0.y * r0.y;
  r0.z = saturate(dot(r2.xyz, r1.yzw));
  r0.z = r0.z * r0.z;
  r0.yw = r0.yz * r0.yz;
  r0.z = r0.z * r0.z + r0.y;
  r0.z = 1 + r0.z;
  r0.z = 1 / r0.z;
  r0.yw = r0.yw * r0.zz;
  r0.x = r0.y * r0.x;
  r0.x = r0.z * r3.x + r0.x;
  o0.xyzw = r0.wwww * r1.xxxx + r0.xxxx;
  return;
}