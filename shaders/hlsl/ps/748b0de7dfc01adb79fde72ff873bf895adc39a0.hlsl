// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[49];
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
  r4.xyz = r3.xxx * cb1[12].xyz + r4.xyz;
  r4.xyz = r3.zzz * cb1[14].xyz + r4.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.yzw = r4.xyz * r0.www;
  r2.xy = v0.zw * r2.zz;
  r5.xy = float2(1,1000) + -r2.zz;
  r5.xy = cb0[29].zz * r5.xy + r2.zz;
  r0.w = cb0[28].z * r5.x;
  r1.w = cb0[27].y * r2.z;
  r1.w = cb0[29].x * r1.w;
  r0.x = cb0[30].w;
  r0.z = 1;
  r5.xzw = r4.yzw * r0.xyz;
  r2.xyw = r1.www * r5.xzw + r2.xyz;
  r5.xz = v0.xy * cb0[28].xy + cb0[30].xy;
  r5.xz = t3.Sample(s1_s, r5.xz).xy;
  r5.xzw = r5.xzx * float3(2,2,2) + float3(-1,-1,-1);
  r6.xyw = r5.xzw * r0.www;
  r0.z = 1 / r2.w;
  r0.xyzw = r0.xyxy * r0.zzzz;
  r6.z = -r6.y;
  r0.xyzw = r6.xyzw * r0.xyzw;
  r5.xz = r2.xy / r2.ww;
  r1.w = 0.0799999982 * r5.y;
  r6.xyz = r4.yzw * r1.www;
  r7.xyzw = float4(0.0833333358,0.166666672,0.25,0.5) * cb0[31].zzzz;
  r7.xyzw = log2(r7.xyzw);
  r8.xyzw = r0.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r5.xzxz;
  r9.xyzw = -r0.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r5.xzxz;
  r10.xyzw = cb0[47].xyxy * r8.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r10.xy, r7.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r11.z = r3.w + r1.w;
  r12.xyzw = cb0[47].xyxy * r9.xyzw + cb0[47].zwzw;
  r1.w = t4.SampleLevel(s2_s, r12.xy, r7.x).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r13.z = r3.w + r1.w;
  r11.xy = r11.zz * r8.xy;
  r13.xy = r13.zz * r9.xy;
  r11.xyz = r11.xyz + -r2.xyw;
  r11.xyz = r11.xyz * r1.xyz;
  r13.xyz = r13.xyz + -r2.xyw;
  r13.xyz = r13.xyz * r1.xyz;
  r1.w = dot(r11.xyz, r6.xyz);
  r3.w = dot(r11.xyz, r11.xyz);
  r8.x = saturate(r1.w / r3.w);
  r1.w = dot(r13.xyz, r6.xyz);
  r3.w = dot(r13.xyz, r13.xyz);
  r8.y = saturate(r1.w / r3.w);
  r1.w = t4.SampleLevel(s2_s, r10.zw, r7.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r10.z = r3.w + r1.w;
  r1.w = t4.SampleLevel(s2_s, r12.zw, r7.y).x;
  r3.w = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r11.z = r3.w + r1.w;
  r10.xy = r10.zz * r8.zw;
  r11.xy = r11.zz * r9.zw;
  r9.xyz = r10.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r10.xyz = r11.xyz + -r2.xyw;
  r10.xyz = r10.xyz * r1.xyz;
  r1.w = dot(r9.xyz, r6.xyz);
  r3.w = dot(r9.xyz, r9.xyz);
  r7.x = saturate(r1.w / r3.w);
  r1.w = dot(r10.xyz, r6.xyz);
  r3.w = dot(r10.xyz, r10.xyz);
  r7.y = saturate(r1.w / r3.w);
  r5.yw = max(r8.xy, r7.xy);
  r5.yw = float2(1,1) + -r5.yw;
  r1.w = r5.y * r5.y + 9.99999975e-005;
  r1.w = r5.w * r5.w + r1.w;
  r8.xyzw = float4(0.405999988,0.405999988,0.569800019,0.569800019) * r0.xyzw;
  r5.yw = r8.xy + r8.zw;
  r7.xy = r5.yw * float2(0.5,0.5) + r5.xz;
  r8.xy = -r5.yw * float2(0.5,0.5) + r5.xz;
  r8.zw = cb0[47].xy * r7.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r8.zw, r7.z).x;
  r4.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r9.z = r4.w + r3.w;
  r8.zw = cb0[47].xy * r8.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r8.zw, r7.z).x;
  r4.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r10.z = r4.w + r3.w;
  r9.xy = r9.zz * r7.xy;
  r10.xy = r10.zz * r8.xy;
  r7.xyz = r9.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r8.xyz = r10.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r3.w = dot(r7.xyz, r6.xyz);
  r4.w = dot(r7.xyz, r7.xyz);
  r7.x = saturate(r3.w / r4.w);
  r3.w = dot(r8.xyz, r6.xyz);
  r4.w = dot(r8.xyz, r8.xyz);
  r7.y = saturate(r3.w / r4.w);
  r8.xy = r5.xz + r5.yw;
  r5.yw = r5.xz + -r5.yw;
  r8.zw = cb0[47].xy * r8.xy + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r8.zw, r7.w).x;
  r4.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r9.z = r4.w + r3.w;
  r8.zw = cb0[47].xy * r5.yw + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r8.zw, r7.w).x;
  r4.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r10.z = r4.w + r3.w;
  r9.xy = r9.zz * r8.xy;
  r10.xy = r10.zz * r5.yw;
  r8.xyz = r9.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r9.xyz = r10.xyz + -r2.xyw;
  r9.xyz = r9.xyz * r1.xyz;
  r3.w = dot(r8.xyz, r6.xyz);
  r4.w = dot(r8.xyz, r8.xyz);
  r8.x = saturate(r3.w / r4.w);
  r3.w = dot(r9.xyz, r6.xyz);
  r4.w = dot(r9.xyz, r9.xyz);
  r8.y = saturate(r3.w / r4.w);
  r5.yw = max(r8.xy, r7.xy);
  r5.yw = float2(1,1) + -r5.yw;
  r1.w = r5.y * r5.y + r1.w;
  r1.w = r5.w * r5.w + r1.w;
  r0.xyzw = float4(-0.579999983,-0.579999983,0.81400001,0.81400001) * r0.xyzw;
  r0.xy = r0.xy + r0.zw;
  r0.zw = float2(0.416666657,0.833333313) * cb0[31].zz;
  r0.zw = log2(r0.zw);
  r5.yw = r0.xy * float2(0.5,0.5) + r5.xz;
  r7.xy = -r0.xy * float2(0.5,0.5) + r5.xz;
  r7.zw = cb0[47].xy * r5.yw + cb0[47].zw;
  r3.w = t4.SampleLevel(s2_s, r7.zw, r0.z).x;
  r4.w = r3.w * cb1[65].x + cb1[65].y;
  r3.w = r3.w * cb1[65].z + -cb1[65].w;
  r3.w = 1 / r3.w;
  r8.z = r4.w + r3.w;
  r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r7.zw, r0.z).x;
  r3.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r9.z = r3.w + r0.z;
  r8.xy = r8.zz * r5.yw;
  r9.xy = r9.zz * r7.xy;
  r7.xyz = r8.xyz + -r2.xyw;
  r7.xyz = r7.xyz * r1.xyz;
  r8.xyz = r9.xyz + -r2.xyw;
  r8.xyz = r8.xyz * r1.xyz;
  r0.z = dot(r7.xyz, r6.xyz);
  r3.w = dot(r7.xyz, r7.xyz);
  r7.x = saturate(r0.z / r3.w);
  r0.z = dot(r8.xyz, r6.xyz);
  r3.w = dot(r8.xyz, r8.xyz);
  r7.y = saturate(r0.z / r3.w);
  r5.yw = r5.xz + r0.xy;
  r0.xy = r5.xz + -r0.xy;
  r5.xz = cb0[47].xy * r5.yw + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r5.xz, r0.w).x;
  r3.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r8.z = r3.w + r0.z;
  r5.xz = cb0[47].xy * r0.xy + cb0[47].zw;
  r0.z = t4.SampleLevel(s2_s, r5.xz, r0.w).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r9.z = r0.w + r0.z;
  r8.xy = r8.zz * r5.yw;
  r9.xy = r9.zz * r0.xy;
  r0.xyz = r8.xyz + -r2.xyw;
  r0.xyz = r0.xyz * r1.xyz;
  r2.xyw = r9.xyz + -r2.xyw;
  r1.xyz = r2.xyw * r1.xyz;
  r0.w = dot(r0.xyz, r6.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = saturate(r0.w / r0.x);
  r0.z = dot(r1.xyz, r6.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.y = saturate(r0.z / r0.w);
  r0.xy = max(r7.xy, r0.xy);
  r0.xy = float2(1,1) + -r0.xy;
  r0.x = r0.x * r0.x + r1.w;
  r0.x = r0.y * r0.y + r0.x;
  r0.y = 0.166663885 * r0.x;
  r1.xyzw = cb0[48].xyxy * float4(-0.5,0.5,0.5,0.5) + v0.xyxy;
  r5.xyzw = cb0[48].xyxy * float4(-0.5,-0.5,0.5,-0.5) + v0.xyxy;
  r0.z = t6.Sample(s3_s, r1.xy).x;
  r6.xyzw = t5.Sample(s3_s, r1.xy).xyzw;
  r0.w = r6.w * 131072 + -r2.z;
  r0.w = -abs(r0.w) * 0.00300000003 + 1;
  r0.w = max(0, r0.w);
  r2.xyw = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.x = saturate(dot(r2.xyw, r3.xyz));
  r1.y = r1.x * r0.w;
  r0.z = r0.z * r1.y + 9.99999975e-005;
  r0.w = r0.w * r1.x + 9.99999975e-005;
  r1.x = t6.Sample(s3_s, r1.zw).x;
  r6.xyzw = t5.Sample(s3_s, r1.zw).xyzw;
  r1.y = r6.w * 131072 + -r2.z;
  r1.y = -abs(r1.y) * 0.00300000003 + 1;
  r1.y = max(0, r1.y);
  r2.xyw = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = saturate(dot(r2.xyw, r3.xyz));
  r1.w = r1.y * r1.z;
  r0.z = r1.x * r1.w + r0.z;
  r0.w = r1.y * r1.z + r0.w;
  r1.x = t6.Sample(s3_s, r5.xy).x;
  r6.xyzw = t5.Sample(s3_s, r5.xy).xyzw;
  r1.y = r6.w * 131072 + -r2.z;
  r1.y = -abs(r1.y) * 0.00300000003 + 1;
  r1.y = max(0, r1.y);
  r2.xyw = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = saturate(dot(r2.xyw, r3.xyz));
  r1.w = r1.y * r1.z;
  r0.z = r1.x * r1.w + r0.z;
  r0.w = r1.y * r1.z + r0.w;
  r1.x = t6.Sample(s3_s, r5.zw).x;
  r5.xyzw = t5.Sample(s3_s, r5.zw).xyzw;
  r1.y = r5.w * 131072 + -r2.z;
  r1.y = -abs(r1.y) * 0.00300000003 + 1;
  r1.y = max(0, r1.y);
  r2.xyw = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.z = saturate(dot(r2.xyw, r3.xyz));
  r1.w = r1.y * r1.z;
  r0.z = r1.x * r1.w + r0.z;
  r0.w = r1.y * r1.z + r0.w;
  r0.z = r0.z / r0.w;
  r0.x = -r0.x * 0.166663885 + r0.z;
  r0.x = cb0[29].w * r0.x + r0.y;
  r0.y = saturate(r2.z * cb0[31].x + cb0[31].y);
  r0.z = 1 + -r0.x;
  r0.x = r0.y * r0.z + r0.x;
  r0.x = log2(abs(r0.x));
  r0.x = cb0[27].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  r4.x = -r0.x * cb0[27].w + 1;
  r0.xyz = ddx_fine(r4.xyz);
  r1.xyz = ddy_fine(r4.xyz);
  r2.xy = (uint2)v1.xy;
  bitmask.x = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.x = (((uint)r2.x << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r2.y = (((uint)r2.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  r2.xy = (int2)r2.xy + int2(-1,-1);
  r2.xy = (int2)r2.xy;
  r0.xyz = -r0.xyz * r2.xxx + r4.xyz;
  r1.xyz = -r1.xyz * r2.yyy + r4.xyz;
  r2.x = dot(r4.yz, r4.yz);
  r2.x = 1 + -r2.x;
  r2.z = sqrt(r2.x);
  r2.w = dot(r0.yz, r0.yz);
  r2.w = 1 + -r2.w;
  r0.w = sqrt(r2.w);
  r2.w = dot(r1.yz, r1.yz);
  r2.w = 1 + -r2.w;
  r1.w = sqrt(r2.w);
  r2.xy = r4.yz;
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
  r0.x = r0.z * r4.x + r0.x;
  o0.xyzw = r0.wwww * r1.xxxx + r0.xxxx;
  return;
}