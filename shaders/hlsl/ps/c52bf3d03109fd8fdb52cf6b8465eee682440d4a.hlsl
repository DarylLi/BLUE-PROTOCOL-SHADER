// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[45].xyzw * v0.yyyy;
  r0.xyzw = v0.xxxx * cb1[44].xyzw + r0.xyzw;
  r1.xyzw = cb1[46].xyzw * float4(0.5,0.5,0.5,0.5) + r0.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = -cb1[67].xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xy = cb1[132].zw * cb1[130].xy;
  r2.zw = -cb1[129].xy + v0.xy;
  r2.zw = cb1[132].zw * r2.zw;
  r2.zw = cb1[132].xy * r2.zw;
  r2.zw = cb0[5].zw * r2.zw;
  r2.zw = cb0[6].yy * r2.zw;
  r3.xy = cb0[4].yy * r2.zw;
  r2.xy = r3.xy * r2.xy + cb0[3].xy;
  r1.w = t2.SampleLevel(s0_s, r2.xy, 0).x;
  r1.w = 100 * r1.w;
  r1.xyz = r1.xyz * r1.www + cb1[67].xyz;
  r1.yw = cb1[5].zw * r1.yy;
  r1.xy = r1.xx * cb1[4].zw + r1.yw;
  r1.xy = r1.zz * cb1[6].zw + r1.xy;
  r1.xy = cb1[7].zw + r1.xy;
  r1.x = r1.x / r1.y;
  r0.xyzw = r1.xxxx * cb1[46].xyzw + r0.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r0.xyz = cb1[67].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 9.99999975e-006 * r0.x;
  r1.z = cb1[144].y;
  r1.xy = (int2)v0.xy;
  r0.yzw = mad((int3)r1.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.y = mad((int)r0.z, (int)r0.w, (int)r0.y);
  r0.z = mad((int)r0.w, (int)r0.y, (int)r0.z);
  r0.w = mad((int)r0.y, (int)r0.z, (int)r0.w);
  r2.x = mad((int)r0.z, (int)r0.w, (int)r0.y);
  r2.y = mad((int)r0.w, (int)r2.x, (int)r0.z);
  r0.yz = (uint2)r2.xy >> int2(16,16);
  r0.yz = (uint2)r0.yz;
  r0.yz = r0.yz * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  r2.y = cb1[132].w * cb1[132].w;
  r2.x = 1;
  r2.xy = cb1[132].zx * r2.xy;
  r2.xy = cb0[6].zz * r2.xy;
  r0.yz = r2.xy * r0.yz;
  r0.yz = r0.yz * cb0[6].xx + r2.zw;
  r0.yz = max(cb0[2].xy, r0.yz);
  r0.yz = min(cb0[2].zw, r0.yz);
  r0.w = t1.SampleLevel(s0_s, r0.yz, 0).x;
  r3.xyzw = t0.SampleLevel(s0_s, r0.yz, 0).xyzw;
  r0.y = cmp(r0.w < r0.x);
  r0.z = r0.y ? 1.000000 : 0;
  r4.xzw = asint(cb1[144].yyy) + int3(8,16,32);
  r1.w = r4.x;
  r5.xyz = mad((int3)r1.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r4.xy = r1.xy;
  r0.w = mad((int)r5.y, (int)r5.z, (int)r5.x);
  r1.x = mad((int)r5.z, (int)r0.w, (int)r5.y);
  r1.y = mad((int)r0.w, (int)r1.x, (int)r5.z);
  r5.x = mad((int)r1.x, (int)r1.y, (int)r0.w);
  r5.y = mad((int)r1.y, (int)r5.x, (int)r1.x);
  r1.xy = (uint2)r5.xy >> int2(16,16);
  r1.xy = (uint2)r1.xy;
  r1.xy = r1.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = rsqrt(r0.w);
  r1.xy = r1.xy * r0.ww;
  r1.xy = r1.xy * r2.xy;
  r1.xy = r1.xy * cb0[6].xx + r2.zw;
  r1.xy = max(cb0[2].xy, r1.xy);
  r1.xy = min(cb0[2].zw, r1.xy);
  r0.w = t1.SampleLevel(s0_s, r1.xy, 0).x;
  r1.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.w = cmp(r0.w < r0.x);
  r5.x = r0.y ? 2 : 1;
  r3.xyzw = r0.yyyy ? r3.xyzw : 0;
  r0.y = r0.w ? r5.x : r0.z;
  r0.z = 1 + r0.y;
  r5.xyz = mad((int3)r4.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r4.xyz = mad((int3)r4.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r4.w = mad((int)r5.y, (int)r5.z, (int)r5.x);
  r5.x = mad((int)r5.z, (int)r4.w, (int)r5.y);
  r5.y = mad((int)r4.w, (int)r5.x, (int)r5.z);
  r6.x = mad((int)r5.x, (int)r5.y, (int)r4.w);
  r6.y = mad((int)r5.y, (int)r6.x, (int)r5.x);
  r5.xy = (uint2)r6.xy >> int2(16,16);
  r5.xy = (uint2)r5.xy;
  r5.xy = r5.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r4.w = dot(r5.xy, r5.xy);
  r4.w = rsqrt(r4.w);
  r5.xy = r5.xy * r4.ww;
  r5.xy = r5.xy * r2.xy;
  r5.xy = r5.xy * cb0[6].xx + r2.zw;
  r5.xy = max(cb0[2].xy, r5.xy);
  r5.xy = min(cb0[2].zw, r5.xy);
  r4.w = t1.SampleLevel(s0_s, r5.xy, 0).x;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xy, 0).xyzw;
  r4.w = cmp(r4.w < r0.x);
  r0.y = r4.w ? r0.z : r0.y;
  r0.z = 1 + r0.y;
  r4.x = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r4.y = mad((int)r4.z, (int)r4.x, (int)r4.y);
  r4.z = mad((int)r4.x, (int)r4.y, (int)r4.z);
  r6.x = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r6.y = mad((int)r4.z, (int)r6.x, (int)r4.y);
  r4.xy = (uint2)r6.xy >> int2(16,16);
  r4.xy = (uint2)r4.xy;
  r4.xy = r4.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r4.z = dot(r4.xy, r4.xy);
  r4.z = rsqrt(r4.z);
  r4.xy = r4.xy * r4.zz;
  r2.xy = r4.xy * r2.xy;
  r2.xy = r2.xy * cb0[6].xx + r2.zw;
  r2.xy = max(cb0[2].xy, r2.xy);
  r2.xy = min(cb0[2].zw, r2.xy);
  r2.z = t1.SampleLevel(s0_s, r2.xy, 0).x;
  r6.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
  r0.x = cmp(r2.z < r0.x);
  r0.y = r0.x ? r0.z : r0.y;
  r0.z = cmp(0 < r0.y);
  r2.x = ~(int)r0.z;
  if (r2.x != 0) discard;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r1.xyzw = r0.wwww ? r1.xyzw : r3.xyzw;
  r2.xyzw = r1.xyzw + r5.xyzw;
  r1.xyzw = r4.wwww ? r2.xyzw : r1.xyzw;
  r2.xyzw = r1.xyzw + r6.xyzw;
  r1.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.xyzw = r1.xyzw / r0.yyyy;
  o0.xyzw = r0.zzzz ? r1.xyzw : float4(0,0,0,1);
  return;
}