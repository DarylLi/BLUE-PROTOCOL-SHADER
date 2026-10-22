// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadIDInGroup.x >> 3;
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.w = (((uint)vThreadIDInGroup.x << 0) & bitmask.w) | ((uint)r0.x & ~bitmask.w);
  if (3 == 0) r0.z = 0; else if (3+1 < 32) {   r0.z = (uint)vThreadIDInGroup.x << (32-(3 + 1)); r0.z = (uint)r0.z >> (32-3);  } else r0.z = (uint)vThreadIDInGroup.x >> 1;
  r0.zw = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r0.zw);
  r1.xy = (uint2)r0.zw;
  r1.zw = r1.xy * cb0[3].zw + cb0[10].xy;
  r1.xy = cb0[3].zw * r1.xy;
  r1.z = r1.w * 543.309998 + r1.z;
  r1.z = sin(r1.z);
  r1.z = 493013 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * cb0[11].x + cb0[11].y;
  r2.xyzw = r1.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r1.xy = r1.xy * cb0[3].xy + float2(0.5,0.5);
  r2.xyzw = r2.xyzw / cb0[4].xyxy;
  r2.xyzw = r2.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r3.xyzw = cmp(float4(0,0,0,0) < r2.zwzw);
  r4.xyzw = cmp(r2.zwzw < float4(0,0,0,0));
  r3.xyzw = (int4)-r3.xyzw + (int4)r4.xyzw;
  r3.xyzw = (int4)r3.xyzw;
  r4.xyzw = saturate(-cb0[0].zzzz + abs(r2.zwzw));
  r3.xyzw = r4.xyzw * r3.xyzw;
  r2.xyzw = -r3.xyzw * cb0[0].xxyy + r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r2.xyzw = r2.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r2.xyzw = cb0[3].zwzw * r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r3.xyzw = trunc(r2.xyzw);
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r4.xy = float2(1,1) / cb0[3].xy;
  r3.xyzw = r4.xyxy * r3.xyzw;
  r5.xyzw = t0.Gather(s0_s, r3.xy).xyzw;
  r3.xyzw = t0.Gather(s0_s, r3.zw).xyzw;
  r4.zw = r5.xw * r5.xw;
  r5.xy = r5.zy * r5.zy + -r4.wz;
  r4.zw = r2.xx * r5.xy + r4.wz;
  r1.w = r4.w + -r4.z;
  r5.x = r2.y * r1.w + r4.z;
  r2.xy = r3.xw * r3.xw;
  r3.xy = r3.zy * r3.zy + -r2.yx;
  r2.xy = r2.zz * r3.xy + r2.yx;
  r1.w = r2.y + -r2.x;
  r5.y = r2.w * r1.w + r2.x;
  r2.xy = trunc(r1.xy);
  r1.xy = -r2.xy + r1.xy;
  r2.xy = r2.xy * r4.xy;
  r2.xyzw = t0.Gather(s0_s, r2.xy).xyzw;
  r2.xw = r2.xw * r2.xw;
  r2.yz = r2.zy * r2.zy + -r2.wx;
  r1.xw = r1.xx * r2.yz + r2.wx;
  r1.w = r1.w + -r1.x;
  r5.z = r1.y * r1.w + r1.x;
  r1.xyz = r5.xyz * r1.zzz;
  r2.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r1.xyz);
  r2.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r1.xyz);
  r2.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r1.xyz);
  r1.xyz = float3(25,25,25) * r2.xyz;
  r1.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.zwww, r1.xyzw
  r0.xy = (int2)r0.zw + int2(8,8);
  r1.xyzw = (uint4)r0.xwxy;
  r2.xyzw = cb0[3].zwzw * r1.xyzw;
  r1.xyzw = r1.xyzw * cb0[3].zwzw + cb0[10].xyxy;
  r1.xy = r1.yw * float2(543.309998,543.309998) + r1.xz;
  r1.xy = sin(r1.xy);
  r1.xy = float2(493013,493013) * r1.xy;
  r1.xy = frac(r1.xy);
  r1.xy = r1.xy * cb0[11].xx + cb0[11].yy;
  r3.xyzw = r2.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r3.xyzw = r3.xyzw / cb0[4].xyxy;
  r3.xyzw = r3.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r5.xyzw = cmp(float4(0,0,0,0) < r3.zwzw);
  r6.xyzw = cmp(r3.zwzw < float4(0,0,0,0));
  r5.xyzw = (int4)-r5.xyzw + (int4)r6.xyzw;
  r5.xyzw = (int4)r5.xyzw;
  r6.xyzw = saturate(-cb0[0].zzzz + abs(r3.zwzw));
  r5.xyzw = r6.xyzw * r5.xyzw;
  r3.xyzw = -r5.xyzw * cb0[0].xxyy + r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r3.xyzw = r3.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r3.xyzw = cb0[3].zwzw * r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r5.xyzw + r3.xyzw;
  r5.xyzw = r5.xyzw * r4.xyxy;
  r6.xyzw = t0.Gather(s0_s, r5.xy).xyzw;
  r5.xyzw = t0.Gather(s0_s, r5.zw).xyzw;
  r1.zw = r6.xw * r6.xw;
  r4.zw = r6.zy * r6.zy + -r1.wz;
  r1.zw = r3.xx * r4.zw + r1.wz;
  r0.z = r1.w + -r1.z;
  r6.x = r3.y * r0.z + r1.z;
  r1.zw = r5.xw * r5.xw;
  r3.xy = r5.zy * r5.zy + -r1.wz;
  r1.zw = r3.zz * r3.xy + r1.wz;
  r0.z = r1.w + -r1.z;
  r6.y = r3.w * r0.z + r1.z;
  r3.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = r2.zwzw * cb0[3].xyxy + -cb0[4].zwzw;
  r2.xyzw = r2.xyzw / cb0[4].xyxy;
  r2.xyzw = r2.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r5.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r5.xyzw + r3.xyzw;
  r5.xyzw = r5.xyzw * r4.xyxy;
  r7.xyzw = t0.Gather(s0_s, r5.xy).xyzw;
  r5.xyzw = t0.Gather(s0_s, r5.zw).xyzw;
  r1.zw = r7.xw * r7.xw;
  r4.zw = r7.zy * r7.zy + -r1.wz;
  r1.zw = r3.xx * r4.zw + r1.wz;
  r0.z = r1.w + -r1.z;
  r6.z = r3.y * r0.z + r1.z;
  r1.xzw = r6.xyz * r1.xxx;
  r6.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r1.xzw);
  r6.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r1.xzw);
  r6.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r1.xzw);
  r6.xyz = float3(25,25,25) * r6.xyz;
  r6.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xwww, r6.xyzw
  r6.xyzw = cmp(float4(0,0,0,0) < r2.zwzw);
  r7.xyzw = cmp(r2.zwzw < float4(0,0,0,0));
  r6.xyzw = (int4)-r6.xyzw + (int4)r7.xyzw;
  r6.xyzw = (int4)r6.xyzw;
  r7.xyzw = saturate(-cb0[0].zzzz + abs(r2.zwzw));
  r6.xyzw = r7.xyzw * r6.xyzw;
  r2.xyzw = -r6.xyzw * cb0[0].xxyy + r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r2.xyzw = r2.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r2.xyzw = cb0[3].zwzw * r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = trunc(r2.xyzw);
  r2.xyzw = -r6.xyzw + r2.xyzw;
  r6.xyzw = r6.xyzw * r4.xyxy;
  r7.xyzw = t0.Gather(s0_s, r6.xy).xyzw;
  r6.xyzw = t0.Gather(s0_s, r6.zw).xyzw;
  r0.zw = r7.xw * r7.xw;
  r1.xz = r7.zy * r7.zy + -r0.wz;
  r0.zw = r2.xx * r1.xz + r0.wz;
  r0.w = r0.w + -r0.z;
  r7.x = r2.y * r0.w + r0.z;
  r0.zw = r6.xw * r6.xw;
  r1.xz = r6.zy * r6.zy + -r0.wz;
  r0.zw = r2.zz * r1.xz + r0.wz;
  r0.w = r0.w + -r0.z;
  r7.y = r2.w * r0.w + r0.z;
  r0.zw = r5.xw * r5.xw;
  r1.xz = r5.zy * r5.zy + -r0.wz;
  r0.zw = r3.zz * r1.xz + r0.wz;
  r0.w = r0.w + -r0.z;
  r7.z = r3.w * r0.w + r0.z;
  r1.xyz = r7.xyz * r1.yyy;
  r2.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r1.xyz);
  r2.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r1.xyz);
  r2.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r1.xyz);
  r1.xyz = float3(25,25,25) * r2.xyz;
  r1.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  r1.y = (uint)r0.y;
  r2.x = (int)r0.x + -8;
  r2.yzw = r0.yyy;
  r1.x = (uint)r2.x;
  r0.xy = cb0[3].zw * r1.xy;
  r0.zw = r1.xy * cb0[3].zw + cb0[10].xy;
  r0.z = r0.w * 543.309998 + r0.z;
  r0.z = sin(r0.z);
  r0.z = 493013 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * cb0[11].x + cb0[11].y;
  r1.xy = r0.xy * cb0[3].xy + float2(0.5,0.5);
  r3.xyzw = r0.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r3.xyzw = r3.xyzw / cb0[4].xyxy;
  r3.xyzw = r3.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r0.xy = trunc(r1.xy);
  r1.xy = r1.xy + -r0.xy;
  r0.xy = r0.xy * r4.xy;
  r5.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r0.xy = r5.xw * r5.xw;
  r1.zw = r5.zy * r5.zy + -r0.yx;
  r0.xy = r1.xx * r1.zw + r0.yx;
  r0.y = r0.y + -r0.x;
  r1.z = r1.y * r0.y + r0.x;
  r5.xyzw = cmp(float4(0,0,0,0) < r3.zwzw);
  r6.xyzw = cmp(r3.zwzw < float4(0,0,0,0));
  r5.xyzw = (int4)-r5.xyzw + (int4)r6.xyzw;
  r5.xyzw = (int4)r5.xyzw;
  r6.xyzw = saturate(-cb0[0].zzzz + abs(r3.zwzw));
  r5.xyzw = r6.xyzw * r5.xyzw;
  r3.xyzw = -r5.xyzw * cb0[0].xxyy + r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r3.xyzw = r3.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r3.xyzw = cb0[3].zwzw * r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r5.xyzw + r3.xyzw;
  r4.xyzw = r5.xyzw * r4.xyxy;
  r5.xyzw = t0.Gather(s0_s, r4.xy).xyzw;
  r4.xyzw = t0.Gather(s0_s, r4.zw).xyzw;
  r0.xy = r5.xw * r5.xw;
  r5.xy = r5.zy * r5.zy + -r0.yx;
  r0.xy = r3.xx * r5.xy + r0.yx;
  r0.y = r0.y + -r0.x;
  r1.x = r3.y * r0.y + r0.x;
  r0.xy = r4.xw * r4.xw;
  r3.xy = r4.zy * r4.zy + -r0.yx;
  r0.xy = r3.zz * r3.xy + r0.yx;
  r0.y = r0.y + -r0.x;
  r1.y = r3.w * r0.y + r0.x;
  r0.xyz = r1.xyz * r0.zzz;
  r1.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r0.xyz);
  r1.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r0.xyz);
  r1.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r0.xyz);
  r0.xyz = float3(25,25,25) * r1.xyz;
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyzw, r0.xyzw
  return;
}