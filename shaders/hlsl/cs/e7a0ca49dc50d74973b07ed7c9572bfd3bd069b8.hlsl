// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[155];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = r0.xy * float2(2,2) + cb1[129].xy;
  r0.zw = cb1[132].zw * r0.xy;
  r1.xy = float2(0.5,0.5) * cb1[132].zw;
  r1.zw = (uint2)vThreadGroupID.xy << int2(3,3);
  r1.zw = (int2)r1.zw + int2(9,9);
  r1.zw = cmp(asuint(cb0[0].zw) >= (uint2)r1.zw);
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r2.xyzw = t1.Gather(s0_s, r0.zw).xyzw;
    r1.zw = r2.wz * cb1[65].xx + cb1[65].yy;
    r2.zw = r2.wz * cb1[65].zz + -cb1[65].ww;
    r2.zw = float2(1,1) / r2.zw;
    r1.zw = r2.zw + r1.zw;
    r2.zw = -cb1[154].zz + r1.zw;
    r2.zw = r2.zw / r1.zw;
    r2.zw = cb0[1].xx * r2.zw;
    r1.zw = cb0[2].xx * -r1.zw;
    r1.zw = exp2(r1.zw);
    r1.zw = float2(1,1) + -r1.zw;
    r1.zw = cb0[2].yy * r1.zw;
    r1.zw = max(abs(r2.zw), r1.zw);
    r2.zw = cmp(r2.zw < float2(0,0));
    r1.zw = r2.zw ? -r1.zw : r1.zw;
    r1.zw = max(cb0[1].yy, r1.zw);
    r1.zw = min(cb0[1].zz, r1.zw);
    r2.zw = r2.xy * cb1[65].xx + cb1[65].yy;
    r2.xy = r2.xy * cb1[65].zz + -cb1[65].ww;
    r2.xy = float2(1,1) / r2.xy;
    r2.xy = r2.zw + r2.xy;
    r2.zw = -cb1[154].zz + r2.xy;
    r2.zw = r2.zw / r2.xy;
    r2.zw = cb0[1].xx * r2.zw;
    r2.xy = cb0[2].xx * -r2.xy;
    r2.xy = exp2(r2.xy);
    r2.xy = float2(1,1) + -r2.xy;
    r2.xy = cb0[2].yy * r2.xy;
    r2.xy = max(abs(r2.zw), r2.xy);
    r2.zw = cmp(r2.zw < float2(0,0));
    r2.xy = r2.zw ? -r2.xy : r2.xy;
    r2.xy = max(cb0[1].yy, r2.xy);
    r2.xy = min(cb0[1].zz, r2.xy);
    r3.xyzw = cb1[132].zwzw * float4(-0.5,-0.5,0.5,-0.5) + r0.zwzw;
    r4.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
    r3.xyz = t0.SampleLevel(s0_s, r3.zw, 0).xyz;
    r2.zw = cb1[132].zw * float2(-0.5,0.5) + r0.zw;
    r5.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
    r2.zw = r0.xy * cb1[132].zw + r1.xy;
    r6.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
    r2.z = min(r1.z, r1.w);
    r2.w = min(r2.x, r2.y);
    r7.w = min(r2.z, r2.w);
    r1.zw = r7.ww + -r1.zw;
    r8.xy = saturate(-r1.zw * float2(64,64) + float2(1,1));
    r1.zw = r7.ww + -r2.xy;
    r8.zw = saturate(-r1.zw * float2(64,64) + float2(1,1));
    r1.z = dot(float4(1,1,1,1), r8.xyzw);
    r1.z = rcp(r1.z);
    r2.xyz = r8.yyy * r3.xyz;
    r2.xyz = r4.xyz * r8.xxx + r2.xyz;
    r2.xyz = r5.xyz * r8.zzz + r2.xyz;
    r2.xyz = r6.xyz * r8.www + r2.xyz;
    r7.xyz = r2.xyz * r1.zzz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r7.xyzw
  } else {
    r2.xyzw = cb1[132].zwzw * float4(-0.5,-0.5,0.5,-0.5) + r0.zwzw;
    r2.xyzw = max(cb1[133].xyxy, r2.xyzw);
    r2.xyzw = min(cb1[133].zwzw, r2.xyzw);
    r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
    r1.z = t1.SampleLevel(s0_s, r2.xy, 0).x;
    r1.w = r1.z * cb1[65].x + cb1[65].y;
    r1.z = r1.z * cb1[65].z + -cb1[65].w;
    r1.z = 1 / r1.z;
    r1.z = r1.w + r1.z;
    r1.w = -cb1[154].z + r1.z;
    r1.w = r1.w / r1.z;
    r1.w = cb0[1].x * r1.w;
    r1.z = cb0[2].x * -r1.z;
    r1.z = exp2(r1.z);
    r1.z = 1 + -r1.z;
    r1.z = cb0[2].y * r1.z;
    r1.z = max(abs(r1.w), r1.z);
    r1.w = cmp(r1.w < 0);
    r1.z = r1.w ? -r1.z : r1.z;
    r1.z = max(cb0[1].y, r1.z);
    r1.z = min(cb0[1].z, r1.z);
    r4.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
    r1.w = t1.SampleLevel(s0_s, r2.zw, 0).x;
    r2.x = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r1.w = r2.x + r1.w;
    r2.x = -cb1[154].z + r1.w;
    r2.x = r2.x / r1.w;
    r2.x = cb0[1].x * r2.x;
    r1.w = cb0[2].x * -r1.w;
    r1.w = exp2(r1.w);
    r1.w = 1 + -r1.w;
    r1.w = cb0[2].y * r1.w;
    r1.w = max(abs(r2.x), r1.w);
    r2.x = cmp(r2.x < 0);
    r1.w = r2.x ? -r1.w : r1.w;
    r1.w = max(cb0[1].y, r1.w);
    r1.w = min(cb0[1].z, r1.w);
    r0.zw = cb1[132].zw * float2(-0.5,0.5) + r0.zw;
    r0.zw = max(cb1[133].xy, r0.zw);
    r0.zw = min(cb1[133].zw, r0.zw);
    r2.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
    r0.z = t1.SampleLevel(s0_s, r0.zw, 0).x;
    r0.w = r0.z * cb1[65].x + cb1[65].y;
    r0.z = r0.z * cb1[65].z + -cb1[65].w;
    r0.z = 1 / r0.z;
    r0.z = r0.w + r0.z;
    r0.w = -cb1[154].z + r0.z;
    r0.w = r0.w / r0.z;
    r0.w = cb0[1].x * r0.w;
    r0.z = cb0[2].x * -r0.z;
    r0.z = exp2(r0.z);
    r0.z = 1 + -r0.z;
    r0.z = cb0[2].y * r0.z;
    r0.z = max(abs(r0.w), r0.z);
    r0.w = cmp(r0.w < 0);
    r0.z = r0.w ? -r0.z : r0.z;
    r0.z = max(cb0[1].y, r0.z);
    r0.z = min(cb0[1].z, r0.z);
    r0.xy = r0.xy * cb1[132].zw + r1.xy;
    r0.xy = max(cb1[133].xy, r0.xy);
    r0.xy = min(cb1[133].zw, r0.xy);
    r5.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
    r0.x = t1.SampleLevel(s0_s, r0.xy, 0).x;
    r0.y = r0.x * cb1[65].x + cb1[65].y;
    r0.x = r0.x * cb1[65].z + -cb1[65].w;
    r0.x = 1 / r0.x;
    r0.x = r0.y + r0.x;
    r0.y = -cb1[154].z + r0.x;
    r0.y = r0.y / r0.x;
    r0.y = cb0[1].x * r0.y;
    r0.x = cb0[2].x * -r0.x;
    r0.x = exp2(r0.x);
    r0.x = 1 + -r0.x;
    r0.x = cb0[2].y * r0.x;
    r0.x = max(abs(r0.y), r0.x);
    r0.y = cmp(r0.y < 0);
    r0.x = r0.y ? -r0.x : r0.x;
    r0.x = max(cb0[1].y, r0.x);
    r0.x = min(cb0[1].z, r0.x);
    r0.y = min(r1.z, r1.w);
    r0.w = min(r0.z, r0.x);
    r6.w = min(r0.y, r0.w);
    r0.y = r6.w + -r1.z;
    r7.x = saturate(-r0.y * 64 + 1);
    r0.y = r6.w + -r1.w;
    r7.y = saturate(-r0.y * 64 + 1);
    r0.xy = r6.ww + -r0.xz;
    r7.z = saturate(-r0.y * 64 + 1);
    r7.w = saturate(-r0.x * 64 + 1);
    r0.x = dot(float4(1,1,1,1), r7.xyzw);
    r0.x = rcp(r0.x);
    r0.yzw = r7.yyy * r4.xyz;
    r0.yzw = r3.xyz * r7.xxx + r0.yzw;
    r0.yzw = r2.xyz * r7.zzz + r0.yzw;
    r0.yzw = r5.xyz * r7.www + r0.yzw;
    r6.xyz = r0.xxx * r0.yzw;
    r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
    r0.x = r0.y ? r0.x : 0;
    if (r0.x != 0) {
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyyy, r6.xyzw
    }
  }
  return;
}