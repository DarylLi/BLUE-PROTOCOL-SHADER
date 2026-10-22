// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[38];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)vThreadIDInGroupFlattened.x >> 1;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(2,3,4,5);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.z = (((uint)r1.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.w = (((uint)r1.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.x = (int)r0.z + (int)r0.x;
  r2.x = (int)r0.w + (int)r0.y;
  r2.yzw = mad((int3)r1.www, int3(4,4,4), (int3)r0.xxx);
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r1.xy = cmp((uint2)r0.xw < asuint(cb0[24].xy));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = (uint2)r0.xw;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r1.xy = cb0[25].xy * r1.xy;
    r2.xy = r1.xy + r1.xy;
    r1.xy = r1.xy * cb0[3].xy + cb0[7].xy;
    r1.zw = floor(r1.xy);
    r1.zw = float2(0.5,0.5) + r1.zw;
    r3.xy = (uint2)r1.zw;
    r3.xy = (int2)r3.xy + asint(cb0[2].xy);
    r3.zw = float2(0,0);
    r4.xy = t3.Load(r3.xyw).xy;
    r4.z = t4.Load(r3.xyw).x;
    r4.xy = r4.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
    r2.yz = r2.wz + -r4.xy;
    r4.xy = cb0[0].zw * r1.xy;
    r4.xy = max(cb0[20].zw, r4.xy);
    r4.xy = min(cb0[21].xy, r4.xy);
    r4.x = t2.SampleLevel(s1_s, r4.xy, 0).x;
    r2.xw = float2(-1,0) + r2.xw;
    r2.xw = r2.xw + -r2.zy;
    r2.xw = cb0[24].zw * r2.xw;
    r2.x = dot(r2.xw, r2.xw);
    r2.x = sqrt(r2.x);
    r2.w = t1.Load(r3.xyz).y;
    r2.w = (int)r2.w & 8;
    r3.x = cmp(asint(cb0[37].x) != 0);
    r3.y = max(abs(r2.z), abs(r2.y));
    r3.y = cmp(r3.y >= 1);
    r3.z = cmp(r4.z < 0.5);
    r3.x = (int)r3.y | (int)r3.x;
    r3.x = (int)r3.z | (int)r3.x;
    r1.xy = r1.xy + -r1.zw;
    r3.y = cb0[24].z * cb0[3].z;
    r3.z = r3.x ? 1 : r3.y;
    r4.yz = asuint(cb0[2].xy);
    r1.zw = r4.yz + r1.zw;
    r4.yz = cb0[0].zw * r1.zw;
    r4.yz = max(cb0[6].xy, r4.yz);
    r4.yz = min(cb0[6].zw, r4.yz);
    r4.yzw = t0.SampleLevel(s0_s, r4.yz, 0).xyz;
    r3.z = r3.z * r3.z;
    r3.w = dot(-r1.xy, -r1.xy);
    r3.w = r3.z * r3.w;
    r3.w = min(1, r3.w);
    r5.x = r3.w * 0.904999971 + -1.89999998;
    r3.w = r5.x * r3.w + 1;
    r5.xy = r4.zy + r4.zw;
    r5.x = r5.x + r5.y;
    r5.x = 4 + r5.x;
    r5.x = rcp(r5.x);
    r5.x = max(9.99999975e-005, r5.x);
    r6.x = dot(r4.ywz, float3(1,1,2));
    r6.y = dot(r4.yw, float2(2,-2));
    r6.z = dot(r4.ywz, float3(-1,-1,2));
    r7.xyz = min(float3(1,1,1), r6.xyz);
    r6.xyz = max(float3(-1,-1,-1), r6.xyz);
    r8.xyzw = float4(0,-1,-1,0) + r1.zwzw;
    r8.xyzw = cb0[0].zwzw * r8.xyzw;
    r8.xyzw = max(cb0[6].xyxy, r8.xyzw);
    r8.xyzw = min(cb0[6].zwzw, r8.xyzw);
    r9.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
    r10.xyzw = float4(0,-1,-1,0) + -r1.xyxy;
    r5.z = dot(r10.xy, r10.xy);
    r5.yz = r5.xz * r3.wz;
    r5.z = min(1, r5.z);
    r5.w = r5.z * 0.904999971 + -1.89999998;
    r5.z = r5.w * r5.z + 1;
    r8.xy = r9.yx + r9.yz;
    r5.w = r8.x + r8.y;
    r5.w = 4 + r5.w;
    r5.w = rcp(r5.w);
    r5.w = max(9.99999975e-005, r5.w);
    r5.z = r5.z * r5.w;
    r11.xyzw = r5.zzzz * r9.xyzx;
    r11.xyzw = r5.yyyy * r4.yzwy + r11.xyzw;
    r3.w = r3.w * r5.x + r5.z;
    r5.x = dot(r9.xzy, float3(1,1,2));
    r5.y = dot(r9.xz, float2(2,-2));
    r5.z = dot(r9.xzy, float3(-1,-1,2));
    r4.yzw = min(r7.xyz, r5.xyz);
    r5.xyz = max(r6.xyz, r5.xyz);
    r6.xyz = t0.SampleLevel(s0_s, r8.zw, 0).xyz;
    r5.w = dot(r10.zw, r10.zw);
    r5.w = r5.w * r3.z;
    r5.w = min(1, r5.w);
    r6.w = r5.w * 0.904999971 + -1.89999998;
    r5.w = r6.w * r5.w + 1;
    r7.xy = r6.yx + r6.yz;
    r6.w = r7.x + r7.y;
    r6.w = 4 + r6.w;
    r6.w = rcp(r6.w);
    r6.w = max(9.99999975e-005, r6.w);
    r7.x = r6.w * r5.w;
    r7.xyzw = r7.xxxx * r6.xyzx + r11.xyzw;
    r3.w = r5.w * r6.w + r3.w;
    r8.x = dot(r6.xzy, float3(1,1,2));
    r8.y = dot(r6.xz, float2(2,-2));
    r8.z = dot(r6.xzy, float3(-1,-1,2));
    r4.yzw = min(r8.xyz, r4.yzw);
    r5.xyz = max(r8.xyz, r5.xyz);
    r6.xyzw = float4(1,0,0,1) + r1.zwzw;
    r6.xyzw = cb0[0].zwzw * r6.xyzw;
    r6.xyzw = max(cb0[6].xyxy, r6.xyzw);
    r6.xyzw = min(cb0[6].zwzw, r6.xyzw);
    r8.xyz = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
    r9.xyzw = float4(1,0,0,1) + -r1.xyxy;
    r5.w = dot(r9.xy, r9.xy);
    r5.w = r5.w * r3.z;
    r5.w = min(1, r5.w);
    r6.x = r5.w * 0.904999971 + -1.89999998;
    r5.w = r6.x * r5.w + 1;
    r6.xy = r8.yx + r8.yz;
    r6.x = r6.x + r6.y;
    r6.x = 4 + r6.x;
    r6.x = rcp(r6.x);
    r6.x = max(9.99999975e-005, r6.x);
    r6.y = r6.x * r5.w;
    r7.xyzw = r6.yyyy * r8.xyzx + r7.xyzw;
    r3.w = r5.w * r6.x + r3.w;
    r10.x = dot(r8.xzy, float3(1,1,2));
    r10.y = dot(r8.xz, float2(2,-2));
    r10.z = dot(r8.xzy, float3(-1,-1,2));
    r4.yzw = min(r10.xyz, r4.yzw);
    r5.xyz = max(r10.xyz, r5.xyz);
    r6.xyz = t0.SampleLevel(s0_s, r6.zw, 0).xyz;
    r5.w = dot(r9.zw, r9.zw);
    r5.w = r5.w * r3.z;
    r5.w = min(1, r5.w);
    r6.w = r5.w * 0.904999971 + -1.89999998;
    r5.w = r6.w * r5.w + 1;
    r8.xy = r6.yx + r6.yz;
    r6.w = r8.x + r8.y;
    r6.w = 4 + r6.w;
    r6.w = rcp(r6.w);
    r6.w = max(9.99999975e-005, r6.w);
    r8.x = r6.w * r5.w;
    r7.xyzw = r8.xxxx * r6.xyzx + r7.xyzw;
    r3.w = r5.w * r6.w + r3.w;
    r8.x = dot(r6.xzy, float3(1,1,2));
    r8.y = dot(r6.xz, float2(2,-2));
    r8.z = dot(r6.xzy, float3(-1,-1,2));
    r4.yzw = min(r8.xyz, r4.yzw);
    r5.xyz = max(r8.xyz, r5.xyz);
    r6.xy = (uint2)r1.xy >> int2(30,30);
    r6.xy = (int2)r6.xy & int2(2,2);
    r6.xy = (int2)-r6.xy + int2(1,1);
    r6.xy = (int2)r6.xy;
    r1.zw = r6.xy + r1.zw;
    r1.zw = cb0[0].zw * r1.zw;
    r1.zw = max(cb0[6].xy, r1.zw);
    r1.zw = min(cb0[6].zw, r1.zw);
    r8.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
    r1.zw = r6.xy + -r1.xy;
    r1.z = dot(r1.zw, r1.zw);
    r1.z = r3.z * r1.z;
    r1.z = min(1, r1.z);
    r1.w = r1.z * 0.904999971 + -1.89999998;
    r1.z = r1.w * r1.z + 1;
    r6.xy = r8.yx + r8.yz;
    r1.w = r6.x + r6.y;
    r1.w = 4 + r1.w;
    r1.w = rcp(r1.w);
    r1.w = max(9.99999975e-005, r1.w);
    r3.z = r1.z * r1.w;
    r6.xyzw = r3.zzzz * r8.xyzx + r7.xyzw;
    r1.z = r1.z * r1.w + r3.w;
    r7.x = dot(r8.xzy, float3(1,1,2));
    r7.y = dot(r8.xz, float2(2,-2));
    r7.z = dot(r8.xzy, float3(-1,-1,2));
    r4.yzw = min(r7.xyz, r4.yzw);
    r5.xyz = max(r7.xyz, r5.xyz);
    r1.w = cmp(0 < r1.z);
    r1.z = rcp(r1.z);
    r1.z = r1.w ? r1.z : 0;
    r6.xyzw = r6.xyzw * r1.zzzz;
    r1.z = r3.y * r3.y;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = r1.z * r1.x;
    r1.x = min(1, r1.x);
    r1.y = r1.x * 0.899999976 + -1.89999998;
    r1.x = r1.y * r1.x + 1;
    r1.yz = cb0[29].wz * r2.yz + cb0[30].yx;
    r1.yz = cb0[29].yx * r1.yz;
    r1.yz = max(cb0[34].wz, r1.yz);
    r1.yz = min(cb0[35].yx, r1.yz);
    r2.yz = r1.zy * cb0[28].zw + float2(-0.5,-0.5);
    r2.yz = floor(r2.yz);
    r7.xyzw = float4(0.5,0.5,-0.5,-0.5) + r2.yzyz;
    r1.yz = r1.yz * cb0[28].wz + -r7.yx;
    r3.yz = r1.zy * r1.zy;
    r8.xy = r3.yz * r1.zy;
    r8.zw = r3.zy * r1.yz + r1.yz;
    r8.zw = -r8.zw * float2(0.5,0.5) + r3.zy;
    r9.xy = float2(2.5,2.5) * r3.zy;
    r8.xy = r8.yx * float2(1.5,1.5) + -r9.xy;
    r8.xy = float2(1,1) + r8.xy;
    r1.yz = r3.yz * r1.zy + -r3.yz;
    r3.yz = float2(0.5,0.5) * r1.yz;
    r9.xy = float2(1,1) + -r8.wz;
    r9.xy = r9.xy + -r8.yx;
    r1.yz = -r1.yz * float2(0.5,0.5) + r9.xy;
    r8.xy = r8.xy + r1.zy;
    r1.yz = r1.yz / r8.yx;
    r1.yz = r7.xy + r1.yz;
    r2.yz = float2(2.5,2.5) + r2.yz;
    r7.zw = cb0[29].xy * r7.zw;
    r7.xy = cb0[29].xy * r1.yz;
    r9.xy = cb0[29].xy * r2.yz;
    r1.yzw = r8.yxy * r8.zwx;
    r2.yz = r8.xy * r3.yz;
    r3.w = r1.y + r1.z;
    r3.w = r8.y * r8.x + r3.w;
    r3.y = r3.y * r8.x + r3.w;
    r3.y = r3.z * r8.y + r3.y;
    r3.y = 1 / r3.y;
    r8.xyzw = max(cb0[34].zwzw, r7.xwzy);
    r8.xyzw = min(cb0[35].xyxy, r8.xyzw);
    r10.xyz = t5.SampleLevel(s1_s, r8.xy, 0).xyz;
    r11.xyz = t6.SampleLevel(s1_s, r8.xy, 0).xyz;
    r3.zw = t7.SampleLevel(s1_s, r8.xy, 0).xy;
    r12.xyz = t5.SampleLevel(s1_s, r8.zw, 0).xyz;
    r12.xyz = r12.xyz * r1.zzz;
    r10.xyz = r10.xyz * r1.yyy + r12.xyz;
    r12.xyz = t6.SampleLevel(s1_s, r8.zw, 0).xyz;
    r12.xyzw = r12.xyzx * r1.zzzz;
    r11.xyzw = r11.xyzx * r1.yyyy + r12.xyzw;
    r7.zw = t7.SampleLevel(s1_s, r8.zw, 0).xy;
    r7.zw = r7.zw * r1.zz;
    r1.yz = r3.zw * r1.yy + r7.zw;
    r3.zw = max(cb0[34].zw, r7.xy);
    r3.zw = min(cb0[35].xy, r3.zw);
    r8.xyz = t5.SampleLevel(s1_s, r3.zw, 0).xyz;
    r8.xyz = r8.xyz * r1.www + r10.xyz;
    r10.xyz = t6.SampleLevel(s1_s, r3.zw, 0).xyz;
    r10.xyzw = r10.xyzx * r1.wwww + r11.xyzw;
    r3.zw = t7.SampleLevel(s1_s, r3.zw, 0).xy;
    r1.yz = r3.zw * r1.ww + r1.yz;
    r9.zw = r7.yx;
    r7.xyzw = max(cb0[34].zwzw, r9.xzwy);
    r7.xyzw = min(cb0[35].xyxy, r7.xyzw);
    r9.xyz = t5.SampleLevel(s1_s, r7.xy, 0).xyz;
    r8.xyz = r9.xyz * r2.yyy + r8.xyz;
    r9.xyz = t6.SampleLevel(s1_s, r7.xy, 0).xyz;
    r9.xyzw = r9.xyzx * r2.yyyy + r10.xyzw;
    r3.zw = t7.SampleLevel(s1_s, r7.xy, 0).xy;
    r1.yz = r3.zw * r2.yy + r1.yz;
    r10.xyz = t5.SampleLevel(s1_s, r7.zw, 0).xyz;
    r8.xyz = r10.xyz * r2.zzz + r8.xyz;
    r10.xyz = t6.SampleLevel(s1_s, r7.zw, 0).xyz;
    r9.xyzw = r10.xyzx * r2.zzzz + r9.xyzw;
    r3.zw = t7.SampleLevel(s1_s, r7.zw, 0).xy;
    r1.yz = r3.zw * r2.zz + r1.yz;
    r7.xyz = r8.xyz * r3.yyy;
    r8.xyzw = r9.xyzw * r3.yyyy;
    r1.yz = r1.yz * r3.yy;
    r3.yzw = min(float3(0,0,0), -r7.xyz);
    r7.xyzw = min(float4(0,0,0,0), -r8.xyzw);
    r1.yz = min(float2(0,0), -r1.yz);
    r7.xyzw = cb0[36].wwww * -r7.xyzw;
    r3.yzw = cb0[36].www * -r3.yzw;
    r8.x = dot(r3.ywz, float3(1,1,2));
    r8.y = dot(r3.yw, float2(2,-2));
    r8.z = dot(r3.ywz, float3(-1,-1,2));
    r8.xyz = max(r8.xyz, r4.yzw);
    r5.yzw = min(r8.xyz, r5.xyz);
    r8.xyz = float3(0.25,0.25,0.25) * r5.yzw;
    r9.yz = r8.xx + r8.yz;
    r9.x = -r5.w * 0.25 + r9.y;
    r1.w = r5.y * 0.25 + -r8.y;
    r9.w = -r5.w * 0.25 + r1.w;
    r1.w = r3.x ? 0 : r4.x;
    r2.y = 0.125 * r1.x;
    r2.y = max(0, r2.y);
    r2.z = -r1.z * r1.w;
    r4.z = -r1.z * r1.w + r2.y;
    r4.z = max(0, r4.z);
    r4.z = min(0.25, r4.z);
    r1.w = r2.y * r1.w + r2.z;
    r1.w = -0.25 + r1.w;
    r1.xw = max(float2(0.00499999989,0), r1.xw);
    r1.w = min(0.75, r1.w);
    r1.w = r4.z + r1.w;
    r1.w = r2.w ? 0 : r1.w;
    r2.z = cmp(0 < -r1.z);
    r1.z = rcp(-r1.z);
    r1.z = r2.z ? r1.z : 0;
    r2.z = r1.w + -r2.y;
    r2.z = max(0, r2.z);
    r2.y = min(r2.y, r1.w);
    r4.zw = r7.yw + r7.yz;
    r4.z = r4.z + r4.w;
    r4.z = r4.z * r1.z + 4;
    r4.z = rcp(r4.z);
    r4.z = max(9.99999975e-005, r4.z);
    r5.yz = r6.yw + r6.yz;
    r4.w = r5.y + r5.z;
    r5.y = 4 + r4.w;
    r5.y = rcp(r5.y);
    r5.y = max(9.99999975e-005, r5.y);
    r5.z = r4.z * r2.z;
    r2.y = r5.y * r2.y;
    r2.z = r2.z * r4.z + r2.y;
    r4.z = cmp(0 < r2.z);
    r2.z = rcp(r2.z);
    r2.z = r4.z ? r2.z : 0;
    r2.z = r2.z * r1.w;
    r4.z = r2.z * r5.z;
    r1.z = r4.z * r1.z;
    r2.y = r2.z * r2.y;
    r8.xyzw = r6.wyzw * r2.yyyy;
    r7.xyzw = r7.xyzw * r1.zzzz + r8.xyzw;
    r1.z = cmp(0 < r1.w);
    r2.y = rcp(r1.w);
    r1.z = r1.z ? r2.y : 0;
    r1.w = 255 * r1.w;
    r1.w = ceil(r1.w);
    r8.y = 0.00392156886 * r1.w;
    r1.z = r8.y * r1.z;
    r7.xyzw = r7.xyzw * r1.zzzz;
    r2.yz = r3.zy + r3.zw;
    r1.z = r2.y + r2.z;
    r2.y = cmp(-r1.y < 1);
    r1.y = r2.y ? -r1.y : 20;
    r2.y = r1.x + r1.y;
    r2.y = r4.x * r2.y;
    r2.y = saturate(r2.y / r1.y);
    r10.y = r2.y * r1.y;
    r1.y = r1.y * r2.y + r1.x;
    r1.y = r1.x / r1.y;
    r2.y = max(0.200000003, r1.y);
    r2.x = 0.0250000004 * r2.x;
    r2.x = min(1, r2.x);
    r2.y = r2.y + -r1.y;
    r1.y = r2.x * r2.y + r1.y;
    r2.x = r1.z + -r4.y;
    r2.y = r1.z + -r5.x;
    r2.x = min(abs(r2.x), abs(r2.y));
    r2.y = max(9.99999975e-005, r4.w);
    r2.y = max(r2.y, r1.z);
    r2.x = r2.x / r2.y;
    r2.x = 0.5 * r2.x;
    r2.x = min(1, r2.x);
    r2.x = r2.x * 0.800000012 + 0.200000003;
    r1.y = r2.x * r1.y;
    r2.x = 0.00999999978 * r1.z;
    r1.z = r4.w + -r1.z;
    r1.z = saturate(r2.x / abs(r1.z));
    r1.y = max(r1.y, r1.z);
    r10.x = r2.w ? 0.25 : r1.y;
    r1.yz = r3.xx ? float2(1,0) : r10.xy;
    r2.xy = r9.zx + r9.zw;
    r2.x = r2.x + r2.y;
    r2.x = 4 + r2.x;
    r2.x = rcp(r2.x);
    r2.x = max(9.99999975e-005, r2.x);
    r2.y = 1 + -r1.y;
    r2.z = r2.y * r2.x;
    r1.y = r1.y * r5.y;
    r2.x = r2.y * r2.x + r1.y;
    r2.y = cmp(0 < r2.x);
    r2.x = rcp(r2.x);
    r2.x = r2.y ? r2.x : 0;
    r2.y = r2.z * r2.x;
    r1.y = r2.x * r1.y;
    r3.xyzw = r6.xyzw * r1.yyyy;
    r2.xyzw = r9.xzwx * r2.yyyy + r3.xyzw;
    r1.x = r1.x + r1.z;
    r1.x = 255 * r1.x;
    r1.x = floor(r1.x);
    r1.x = 0.00392156886 * r1.x;
    r8.xzw = min(float3(1,1,1), r1.xxx);
    r1.xy = (int2)r0.xw * int2(0x19660d,0x19660d);
    r1.z = asint(cb1[144].y) * 0x0019660d;
    r1.xyz = (int3)r1.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r1.x = mad((int)r1.y, (int)r1.z, (int)r1.x);
    r1.y = mad((int)r1.z, (int)r1.x, (int)r1.y);
    r1.z = mad((int)r1.x, (int)r1.y, (int)r1.z);
    r1.x = mad((int)r1.y, (int)r1.z, (int)r1.x);
    r1.x = (uint)r1.x >> 16;
    r1.x = (uint)r1.x;
    r1.x = 1.52587891e-005 * r1.x;
    r1.x = frac(r1.x);
    r3.xyzw = cb0[36].xyzx * r7.wyzw;
    r3.xyzw = (int4)r3.xyzw & int4(0xff800000,0xff800000,0xff800000,0xff800000);
    r3.xyzw = r3.xyzw * r1.xxxx + r7.wyzw;
    r4.xyzw = cb0[36].xyzx * r2.wyzw;
    r4.xyzw = (int4)r4.xyzw & int4(0xff800000,0xff800000,0xff800000,0xff800000);
    r4.xyzw = r4.xyzw * r1.xxxx + r2.wyzw;
    r4.xyzw = min(float4(0,0,0,0), -r4.xyzw);
    r3.xyzw = min(float4(0,0,0,0), -r3.xyzw);
    r4.xyzw = min(float4(64512,64512,64512,64512), -r4.xyzw);
    r3.xyzw = min(float4(64512,64512,64512,64512), -r3.xyzw);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xwww, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.xwww, r8.xyzw
    r1.x = r1.w * 0.00392156886 + -0.125;
    r1.x = saturate(6 * r1.x);
    r1.y = cmp(0 < r1.w);
    r1.z = rcp(r8.y);
    r1.y = r1.y ? r1.z : 0;
    r3.xyzw = r7.xyzw * r1.yyyy;
    r1.yz = r2.yw + r2.yz;
    r1.y = r1.y + r1.z;
    r1.y = 4 + r1.y;
    r1.y = rcp(r1.y);
    r1.zw = r3.yw + r3.yz;
    r1.z = r1.z + r1.w;
    r1.z = 4 + r1.z;
    r1.z = rcp(r1.z);
    r1.yz = max(float2(9.99999975e-005,9.99999975e-005), r1.yz);
    r1.w = 1 + -r1.x;
    r4.x = r1.w * r1.y;
    r1.x = r1.x * r1.z;
    r1.y = r1.w * r1.y + r1.x;
    r1.z = cmp(0 < r1.y);
    r1.y = rcp(r1.y);
    r1.y = r1.z ? r1.y : 0;
    r1.z = r4.x * r1.y;
    r1.x = r1.x * r1.y;
    r3.xyzw = r3.xyzw * r1.xxxx;
    r1.xyzw = r2.xyzw * r1.zzzz + r3.xyzw;
    r1.xyzw = min(float4(0,0,0,0), -r1.xyzw);
    r1.xyzw = min(float4(64512,64512,64512,64512), -r1.xyzw);
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}