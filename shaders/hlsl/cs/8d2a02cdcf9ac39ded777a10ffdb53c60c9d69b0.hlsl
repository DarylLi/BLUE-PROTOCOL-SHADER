// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadIDInGroup.x >> 3;
  bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.w = (((uint)vThreadIDInGroup.x << 0) & bitmask.w) | ((uint)r0.x & ~bitmask.w);
  if (3 == 0) r0.z = 0; else if (3+1 < 32) {   r0.z = (uint)vThreadIDInGroup.x << (32-(3 + 1)); r0.z = (uint)r0.z >> (32-3);  } else r0.z = (uint)vThreadIDInGroup.x >> 1;
  r0.zw = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r0.zw);
  r1.xy = (uint2)r0.zw;
  r1.xy = cb0[3].zw * r1.xy;
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
  r1.zw = float2(1,1) / cb0[3].xy;
  r3.xyzw = r3.xyzw * r1.zwzw;
  r4.xyzw = t0.Gather(s0_s, r3.xy).xyzw;
  r3.xyzw = t0.Gather(s0_s, r3.zw).xyzw;
  r4.xw = r4.xw * r4.xw;
  r4.yz = r4.zy * r4.zy + -r4.wx;
  r4.xy = r2.xx * r4.yz + r4.wx;
  r2.x = r4.y + -r4.x;
  r2.x = r2.y * r2.x + r4.x;
  r4.x = sqrt(r2.x);
  r2.xy = r3.xw * r3.xw;
  r3.xy = r3.zy * r3.zy + -r2.yx;
  r2.xy = r2.zz * r3.xy + r2.yx;
  r2.y = r2.y + -r2.x;
  r2.x = r2.w * r2.y + r2.x;
  r4.y = sqrt(r2.x);
  r4.w = 1;
  r2.xy = trunc(r1.xy);
  r1.xy = -r2.xy + r1.xy;
  r2.xy = r2.xy * r1.zw;
  r2.xyzw = t0.Gather(s0_s, r2.xy).xyzw;
  r2.xw = r2.xw * r2.xw;
  r2.yz = r2.zy * r2.zy + -r2.wx;
  r2.xy = r1.xx * r2.yz + r2.wx;
  r1.x = r2.y + -r2.x;
  r1.x = r1.y * r1.x + r2.x;
  r4.z = sqrt(r1.x);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.zwww, r4.xyzw
  r0.xy = (int2)r0.zw + int2(8,8);
  r2.xyzw = (uint4)r0.xwxy;
  r2.xyzw = cb0[3].zwzw * r2.xyzw;
  r3.xyzw = r2.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r3.xyzw = r3.xyzw / cb0[4].xyxy;
  r3.xyzw = r3.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r4.xyzw = cmp(float4(0,0,0,0) < r3.zwzw);
  r5.xyzw = cmp(r3.zwzw < float4(0,0,0,0));
  r4.xyzw = (int4)-r4.xyzw + (int4)r5.xyzw;
  r4.xyzw = (int4)r4.xyzw;
  r5.xyzw = saturate(-cb0[0].zzzz + abs(r3.zwzw));
  r4.xyzw = r5.xyzw * r4.xyzw;
  r3.xyzw = -r4.xyzw * cb0[0].xxyy + r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r3.xyzw = r3.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r3.xyzw = cb0[3].zwzw * r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r4.xyzw = r4.xyzw * r1.zwzw;
  r5.xyzw = t0.Gather(s0_s, r4.xy).xyzw;
  r4.xyzw = t0.Gather(s0_s, r4.zw).xyzw;
  r1.xy = r5.xw * r5.xw;
  r5.xy = r5.zy * r5.zy + -r1.yx;
  r1.xy = r3.xx * r5.xy + r1.yx;
  r0.z = r1.y + -r1.x;
  r0.z = r3.y * r0.z + r1.x;
  r5.x = sqrt(r0.z);
  r1.xy = r4.xw * r4.xw;
  r3.xy = r4.zy * r4.zy + -r1.yx;
  r1.xy = r3.zz * r3.xy + r1.yx;
  r0.z = r1.y + -r1.x;
  r0.z = r3.w * r0.z + r1.x;
  r5.y = sqrt(r0.z);
  r5.w = 1;
  r3.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = r2.zwzw * cb0[3].xyxy + -cb0[4].zwzw;
  r2.xyzw = r2.xyzw / cb0[4].xyxy;
  r2.xyzw = r2.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r4.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r4.xyzw = r4.xyzw * r1.zwzw;
  r6.xyzw = t0.Gather(s0_s, r4.xy).xyzw;
  r4.xyzw = t0.Gather(s0_s, r4.zw).xyzw;
  r1.xy = r6.xw * r6.xw;
  r6.xy = r6.zy * r6.zy + -r1.yx;
  r1.xy = r3.xx * r6.xy + r1.yx;
  r0.z = r1.y + -r1.x;
  r0.z = r3.y * r0.z + r1.x;
  r5.z = sqrt(r0.z);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xwww, r5.xyzw
  r5.xyzw = cmp(float4(0,0,0,0) < r2.zwzw);
  r6.xyzw = cmp(r2.zwzw < float4(0,0,0,0));
  r5.xyzw = (int4)-r5.xyzw + (int4)r6.xyzw;
  r5.xyzw = (int4)r5.xyzw;
  r6.xyzw = saturate(-cb0[0].zzzz + abs(r2.zwzw));
  r5.xyzw = r6.xyzw * r5.xyzw;
  r2.xyzw = -r5.xyzw * cb0[0].xxyy + r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r2.xyzw = r2.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r2.xyzw = cb0[3].zwzw * r2.xyzw;
  r2.xyzw = r2.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = trunc(r2.xyzw);
  r2.xyzw = -r5.xyzw + r2.xyzw;
  r5.xyzw = r5.xyzw * r1.zwzw;
  r6.xyzw = t0.Gather(s0_s, r5.xy).xyzw;
  r5.xyzw = t0.Gather(s0_s, r5.zw).xyzw;
  r0.zw = r6.xw * r6.xw;
  r1.xy = r6.zy * r6.zy + -r0.wz;
  r0.zw = r2.xx * r1.xy + r0.wz;
  r0.w = r0.w + -r0.z;
  r0.z = r2.y * r0.w + r0.z;
  r6.x = sqrt(r0.z);
  r0.zw = r5.xw * r5.xw;
  r1.xy = r5.zy * r5.zy + -r0.wz;
  r0.zw = r2.zz * r1.xy + r0.wz;
  r0.w = r0.w + -r0.z;
  r0.z = r2.w * r0.w + r0.z;
  r6.y = sqrt(r0.z);
  r0.zw = r4.xw * r4.xw;
  r1.xy = r4.zy * r4.zy + -r0.wz;
  r0.zw = r3.zz * r1.xy + r0.wz;
  r0.w = r0.w + -r0.z;
  r0.z = r3.w * r0.w + r0.z;
  r6.z = sqrt(r0.z);
  r6.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r6.xyzw
  r1.y = (uint)r0.y;
  r2.x = (int)r0.x + -8;
  r2.yzw = r0.yyy;
  r1.x = (uint)r2.x;
  r0.xy = cb0[3].zw * r1.xy;
  r0.zw = r0.xy * cb0[3].xy + float2(0.5,0.5);
  r3.xyzw = r0.xyxy * cb0[3].xyxy + -cb0[4].zwzw;
  r3.xyzw = r3.xyzw / cb0[4].xyxy;
  r3.xyzw = r3.xyzw * cb0[1].zwzw + cb0[1].xyxy;
  r0.xy = trunc(r0.zw);
  r0.zw = r0.zw + -r0.xy;
  r0.xy = r0.xy * r1.zw;
  r4.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
  r0.xy = r4.xw * r4.xw;
  r1.xy = r4.zy * r4.zy + -r0.yx;
  r0.xy = r0.zz * r1.xy + r0.yx;
  r0.y = r0.y + -r0.x;
  r0.x = r0.w * r0.y + r0.x;
  r0.z = sqrt(r0.x);
  r4.xyzw = cmp(float4(0,0,0,0) < r3.zwzw);
  r5.xyzw = cmp(r3.zwzw < float4(0,0,0,0));
  r4.xyzw = (int4)-r4.xyzw + (int4)r5.xyzw;
  r4.xyzw = (int4)r4.xyzw;
  r5.xyzw = saturate(-cb0[0].zzzz + abs(r3.zwzw));
  r4.xyzw = r5.xyzw * r4.xyzw;
  r3.xyzw = -r4.xyzw * cb0[0].xxyy + r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[2].zwzw + cb0[2].xyxy;
  r3.xyzw = r3.xyzw * cb0[4].xyxy + cb0[4].zwzw;
  r3.xyzw = cb0[3].zwzw * r3.xyzw;
  r3.xyzw = r3.xyzw * cb0[3].xyxy + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = trunc(r3.xyzw);
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r1.xyzw = r4.xyzw * r1.zwzw;
  r4.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Gather(s0_s, r1.zw).xyzw;
  r4.xw = r4.xw * r4.xw;
  r4.yz = r4.zy * r4.zy + -r4.wx;
  r4.xy = r3.xx * r4.yz + r4.wx;
  r3.x = r4.y + -r4.x;
  r3.x = r3.y * r3.x + r4.x;
  r0.x = sqrt(r3.x);
  r1.xw = r1.xw * r1.xw;
  r1.yz = r1.zy * r1.zy + -r1.wx;
  r1.xy = r3.zz * r1.yz + r1.wx;
  r1.y = r1.y + -r1.x;
  r1.x = r3.w * r1.y + r1.x;
  r0.y = sqrt(r1.x);
  r0.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyzw, r0.xyzw
  return;
}