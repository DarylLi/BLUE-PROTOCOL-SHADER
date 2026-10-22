// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[34].xyyy);
  r1.xyzw = (int4)r0.xwxw;
  r1.xyzw = float4(0.5,0.5,0.5,0.5) + r1.xyzw;
  r2.xy = cb0[29].xx * r1.zw;
  r2.zw = cb1[132].zw * r2.xy;
  r3.x = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r3.y = r3.x * cb1[65].x + cb1[65].y;
  r3.z = r3.x * cb1[65].z + -cb1[65].w;
  r3.z = 1 / r3.z;
  r4.z = r3.y + r3.z;
  r3.y = r4.z * cb0[31].x + cb0[31].y;
  r3.z = cmp(r3.y < 1);
  if (r3.z != 0) {
    r3.zw = r1.zw * cb0[29].xx + -cb1[129].xy;
    r3.zw = r3.zw * cb1[130].zw + float2(-0.5,-0.5);
    r3.zw = r3.zw * r4.zz;
    r5.y = cb0[30].w * cb0[28].w;
    r6.x = 1 / cb0[30].w;
    r6.y = 1 / r5.y;
    r6.z = 1;
    r7.xyzw = r1.zwzw * cb0[29].xxxx + float4(-1,0,0,-1);
    r7.xyzw = cb1[132].zwzw * r7.xyzw;
    r4.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
    r5.w = t0.SampleLevel(s0_s, r7.zw, 0).x;
    r1.xyzw = r1.xyzw * cb0[29].xxxx + float4(1,0,0,1);
    r7.xyzw = cb1[132].zwzw * r1.xyzw;
    r6.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
    r7.x = t0.SampleLevel(s0_s, r7.zw, 0).x;
    r4.w = -r4.w + r3.x;
    r6.w = r6.w + -r3.x;
    r7.y = cmp(abs(r4.w) < abs(r6.w));
    r4.w = r7.y ? r4.w : r6.w;
    r5.w = -r5.w + r3.x;
    r6.w = r7.x + -r3.x;
    r7.x = cmp(abs(r5.w) < abs(r6.w));
    r5.w = r7.x ? r5.w : r6.w;
    r7.xyzw = cb1[45].xyzw * r2.yyyy;
    r7.xyzw = r2.xxxx * cb1[44].xyzw + r7.xyzw;
    r7.xyzw = r3.xxxx * cb1[46].xyzw + r7.xyzw;
    r7.xyzw = cb1[47].xyzw + r7.xyzw;
    r7.xyz = r7.yzx / r7.www;
    r2.x = r4.w + r3.x;
    r8.xyzw = cb1[45].xyzw * r1.yyyy;
    r8.xyzw = r1.xxxx * cb1[44].xyzw + r8.xyzw;
    r8.xyzw = r2.xxxx * cb1[46].xyzw + r8.xyzw;
    r8.xyzw = cb1[47].xyzw + r8.xyzw;
    r8.xyz = r8.zxy / r8.www;
    r8.xyz = r8.xyz + -r7.yzx;
    r1.x = r5.w + r3.x;
    r9.xyzw = cb1[45].xyzw * r1.wwww;
    r9.xyzw = r1.zzzz * cb1[44].xyzw + r9.xyzw;
    r1.xyzw = r1.xxxx * cb1[46].xyzw + r9.xyzw;
    r1.xyzw = cb1[47].xyzw + r1.xyzw;
    r1.xyz = r1.yzx / r1.www;
    r1.xyz = r1.xyz + -r7.xyz;
    r7.xyz = r8.xyz * r1.xyz;
    r1.xyz = r8.zxy * r1.yzx + -r7.xyz;
    r7.xyz = cb1[13].xyz * r1.yyy;
    r1.xyw = r1.xxx * cb1[12].xyz + r7.xyz;
    r1.xyz = r1.zzz * cb1[14].xyz + r1.xyw;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
    r4.xy = float2(2,-2) * r3.zw;
    r2.xy = float2(1,1000) + -r4.zz;
    r2.xy = cb0[29].zz * r2.xy + r4.zz;
    r1.w = cb0[28].z * r2.x;
    r2.x = cb0[27].y * r4.z;
    r2.x = cb0[29].x * r2.x;
    r5.x = cb0[30].w;
    r5.z = 1;
    r3.xzw = r5.xyz * r1.xyz;
    r3.xzw = r2.xxx * r3.xzw + r4.xyz;
    r2.xz = r2.zw * cb0[28].xy + cb0[30].xy;
    r2.xz = t1.SampleLevel(s1_s, r2.xz, 0).xy;
    r2.xzw = r2.xzx * float3(2,2,2) + float3(-1,-1,-1);
    r4.xyw = r2.xzw * r1.www;
    r1.w = 1 / r3.w;
    r5.xyzw = r5.xyxy * r1.wwww;
    r4.z = -r4.y;
    r4.xyzw = r5.xyzw * r4.xyzw;
    r2.xz = r3.xz / r3.ww;
    r1.w = 0.0799999982 * r2.y;
    r1.xyz = r1.xyz * r1.www;
    r5.xyzw = float4(0.0833333358,0.166666672,0.25,0.5) * cb0[31].zzzz;
    r5.xyzw = log2(r5.xyzw);
    r7.xyzw = r4.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r2.xzxz;
    r8.xyzw = -r4.zwzw * float4(-0.215000004,-0.215000004,-0.430000007,-0.430000007) + r2.xzxz;
    r9.xyzw = cb0[47].xyxy * r7.xyzw + cb0[47].zwzw;
    r1.w = t2.SampleLevel(s2_s, r9.xy, r5.x).x;
    r2.y = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r10.z = r2.y + r1.w;
    r11.xyzw = cb0[47].xyxy * r8.xyzw + cb0[47].zwzw;
    r1.w = t2.SampleLevel(s2_s, r11.xy, r5.x).x;
    r2.y = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r12.z = r2.y + r1.w;
    r10.xy = r10.zz * r7.xy;
    r12.xy = r12.zz * r8.xy;
    r10.xyz = r10.xyz + -r3.xzw;
    r10.xyz = r10.xyz * r6.xyz;
    r12.xyz = r12.xyz + -r3.xzw;
    r12.xyz = r12.xyz * r6.xyz;
    r1.w = dot(r10.xyz, r1.xyz);
    r2.y = dot(r10.xyz, r10.xyz);
    r7.x = saturate(r1.w / r2.y);
    r1.w = dot(r12.xyz, r1.xyz);
    r2.y = dot(r12.xyz, r12.xyz);
    r7.y = saturate(r1.w / r2.y);
    r1.w = t2.SampleLevel(s2_s, r9.zw, r5.y).x;
    r2.y = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r9.z = r2.y + r1.w;
    r1.w = t2.SampleLevel(s2_s, r11.zw, r5.y).x;
    r2.y = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r10.z = r2.y + r1.w;
    r9.xy = r9.zz * r7.zw;
    r10.xy = r10.zz * r8.zw;
    r8.xyz = r9.xyz + -r3.xzw;
    r8.xyz = r8.xyz * r6.xyz;
    r9.xyz = r10.xyz + -r3.xzw;
    r9.xyz = r9.xyz * r6.xyz;
    r1.w = dot(r8.xyz, r1.xyz);
    r2.y = dot(r8.xyz, r8.xyz);
    r5.x = saturate(r1.w / r2.y);
    r1.w = dot(r9.xyz, r1.xyz);
    r2.y = dot(r9.xyz, r9.xyz);
    r5.y = saturate(r1.w / r2.y);
    r2.yw = max(r7.xy, r5.xy);
    r2.yw = float2(1,1) + -r2.yw;
    r1.w = r2.y * r2.y + 9.99999975e-005;
    r1.w = r2.w * r2.w + r1.w;
    r7.xyzw = float4(0.405999988,0.405999988,0.569800019,0.569800019) * r4.xyzw;
    r2.yw = r7.xy + r7.zw;
    r5.xy = r2.yw * float2(0.5,0.5) + r2.xz;
    r7.xy = -r2.yw * float2(0.5,0.5) + r2.xz;
    r7.zw = cb0[47].xy * r5.xy + cb0[47].zw;
    r6.w = t2.SampleLevel(s2_s, r7.zw, r5.z).x;
    r7.z = r6.w * cb1[65].x + cb1[65].y;
    r6.w = r6.w * cb1[65].z + -cb1[65].w;
    r6.w = 1 / r6.w;
    r8.z = r7.z + r6.w;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r5.z = t2.SampleLevel(s2_s, r7.zw, r5.z).x;
    r6.w = r5.z * cb1[65].x + cb1[65].y;
    r5.z = r5.z * cb1[65].z + -cb1[65].w;
    r5.z = 1 / r5.z;
    r9.z = r6.w + r5.z;
    r8.xy = r8.zz * r5.xy;
    r9.xy = r9.zz * r7.xy;
    r5.xyz = r8.xyz + -r3.xzw;
    r5.xyz = r5.xyz * r6.xyz;
    r7.xyz = r9.xyz + -r3.xzw;
    r7.xyz = r7.xyz * r6.xyz;
    r6.w = dot(r5.xyz, r1.xyz);
    r5.x = dot(r5.xyz, r5.xyz);
    r5.x = saturate(r6.w / r5.x);
    r5.z = dot(r7.xyz, r1.xyz);
    r6.w = dot(r7.xyz, r7.xyz);
    r5.y = saturate(r5.z / r6.w);
    r7.xy = r2.xz + r2.yw;
    r2.yw = r2.xz + -r2.yw;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r5.z = t2.SampleLevel(s2_s, r7.zw, r5.w).x;
    r6.w = r5.z * cb1[65].x + cb1[65].y;
    r5.z = r5.z * cb1[65].z + -cb1[65].w;
    r5.z = 1 / r5.z;
    r8.z = r6.w + r5.z;
    r7.zw = cb0[47].xy * r2.yw + cb0[47].zw;
    r5.z = t2.SampleLevel(s2_s, r7.zw, r5.w).x;
    r5.w = r5.z * cb1[65].x + cb1[65].y;
    r5.z = r5.z * cb1[65].z + -cb1[65].w;
    r5.z = 1 / r5.z;
    r9.z = r5.w + r5.z;
    r8.xy = r8.zz * r7.xy;
    r9.xy = r9.zz * r2.yw;
    r7.xyz = r8.xyz + -r3.xzw;
    r7.xyz = r7.xyz * r6.xyz;
    r8.xyz = r9.xyz + -r3.xzw;
    r8.xyz = r8.xyz * r6.xyz;
    r2.y = dot(r7.xyz, r1.xyz);
    r2.w = dot(r7.xyz, r7.xyz);
    r7.x = saturate(r2.y / r2.w);
    r2.y = dot(r8.xyz, r1.xyz);
    r2.w = dot(r8.xyz, r8.xyz);
    r7.y = saturate(r2.y / r2.w);
    r2.yw = max(r7.xy, r5.xy);
    r2.yw = float2(1,1) + -r2.yw;
    r1.w = r2.y * r2.y + r1.w;
    r1.w = r2.w * r2.w + r1.w;
    r4.xyzw = float4(-0.579999983,-0.579999983,0.81400001,0.81400001) * r4.xyzw;
    r2.yw = r4.xy + r4.zw;
    r4.xy = float2(0.416666657,0.833333313) * cb0[31].zz;
    r4.xy = log2(r4.xy);
    r4.zw = r2.yw * float2(0.5,0.5) + r2.xz;
    r5.xy = -r2.yw * float2(0.5,0.5) + r2.xz;
    r5.zw = cb0[47].xy * r4.zw + cb0[47].zw;
    r5.z = t2.SampleLevel(s2_s, r5.zw, r4.x).x;
    r5.w = r5.z * cb1[65].x + cb1[65].y;
    r5.z = r5.z * cb1[65].z + -cb1[65].w;
    r5.z = 1 / r5.z;
    r7.z = r5.w + r5.z;
    r5.zw = cb0[47].xy * r5.xy + cb0[47].zw;
    r4.x = t2.SampleLevel(s2_s, r5.zw, r4.x).x;
    r5.z = r4.x * cb1[65].x + cb1[65].y;
    r4.x = r4.x * cb1[65].z + -cb1[65].w;
    r4.x = 1 / r4.x;
    r8.z = r5.z + r4.x;
    r7.xy = r7.zz * r4.zw;
    r8.xy = r8.zz * r5.xy;
    r4.xzw = r7.xyz + -r3.xzw;
    r4.xzw = r4.xzw * r6.xyz;
    r5.xyz = r8.xyz + -r3.xzw;
    r5.xyz = r5.xyz * r6.xyz;
    r5.w = dot(r4.xzw, r1.xyz);
    r4.x = dot(r4.xzw, r4.xzw);
    r7.x = saturate(r5.w / r4.x);
    r4.x = dot(r5.xyz, r1.xyz);
    r4.z = dot(r5.xyz, r5.xyz);
    r7.y = saturate(r4.x / r4.z);
    r4.xz = r2.xz + r2.yw;
    r2.xy = r2.xz + -r2.yw;
    r2.zw = cb0[47].xy * r4.xz + cb0[47].zw;
    r2.z = t2.SampleLevel(s2_s, r2.zw, r4.y).x;
    r2.w = r2.z * cb1[65].x + cb1[65].y;
    r2.z = r2.z * cb1[65].z + -cb1[65].w;
    r2.z = 1 / r2.z;
    r5.z = r2.w + r2.z;
    r2.zw = cb0[47].xy * r2.xy + cb0[47].zw;
    r2.z = t2.SampleLevel(s2_s, r2.zw, r4.y).x;
    r2.w = r2.z * cb1[65].x + cb1[65].y;
    r2.z = r2.z * cb1[65].z + -cb1[65].w;
    r2.z = 1 / r2.z;
    r8.z = r2.w + r2.z;
    r5.xy = r5.zz * r4.xz;
    r8.xy = r8.zz * r2.xy;
    r2.xyz = r5.xyz + -r3.xzw;
    r2.xyz = r2.xyz * r6.xyz;
    r3.xzw = r8.xyz + -r3.xzw;
    r3.xzw = r3.xzw * r6.xyz;
    r2.w = dot(r2.xyz, r1.xyz);
    r2.x = dot(r2.xyz, r2.xyz);
    r2.x = saturate(r2.w / r2.x);
    r1.x = dot(r3.xzw, r1.xyz);
    r1.y = dot(r3.xzw, r3.xzw);
    r2.y = saturate(r1.x / r1.y);
    r1.xy = max(r7.xy, r2.xy);
    r1.xy = float2(1,1) + -r1.xy;
    r1.x = r1.x * r1.x + r1.w;
    r1.x = r1.y * r1.y + r1.x;
    r1.y = 0.166663885 * r1.x;
    r3.y = saturate(r3.y);
    r1.x = -r1.x * 0.166663885 + 1;
    r1.x = r3.y * r1.x + r1.y;
    r1.x = log2(r1.x);
    r1.x = cb0[27].x * r1.x;
    r1.x = exp2(r1.x);
    r1.x = 1 + -r1.x;
    r1.x = -r1.x * cb0[27].w + 1;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  return;
}