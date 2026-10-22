// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.z = t0.Load(r1.xyz).x;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.x = t3.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = 100 * r0.x;
  r0.x = cmp(r0.z < r0.x);
  if (r0.x != 0) {
    if (-1 != 0) discard;
    return;
  }
  r0.xy = -cb1[129].xy + v0.xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.xy = cb1[132].xy * r0.xy;
  r0.xy = cb0[5].zw * r0.xy;
  r0.xy = cb0[6].yy * r0.xy;
  r1.y = cb1[132].w * cb1[132].w;
  r1.x = 1;
  r1.xy = cb1[132].zx * r1.xy;
  r1.xy = cb0[6].zz * r1.xy;
  r2.xy = (int2)v0.xy;
  r2.z = cb1[144].y;
  r3.xyz = mad((int3)r2.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.w = mad((int)r3.y, (int)r3.z, (int)r3.x);
  r1.z = mad((int)r3.z, (int)r0.w, (int)r3.y);
  r1.w = mad((int)r0.w, (int)r1.z, (int)r3.z);
  r3.x = mad((int)r1.z, (int)r1.w, (int)r0.w);
  r3.y = mad((int)r1.w, (int)r3.x, (int)r1.z);
  r1.zw = (uint2)r3.xy >> int2(16,16);
  r1.zw = (uint2)r1.zw;
  r1.zw = r1.zw * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r3.xzw = asint(cb1[144].yyy) + int3(8,16,32);
  r2.w = r3.x;
  r4.xyz = mad((int3)r2.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.w = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r2.z = mad((int)r4.z, (int)r0.w, (int)r4.y);
  r2.w = mad((int)r0.w, (int)r2.z, (int)r4.z);
  r4.x = mad((int)r2.z, (int)r2.w, (int)r0.w);
  r4.y = mad((int)r2.w, (int)r4.x, (int)r2.z);
  r2.zw = (uint2)r4.xy >> int2(16,16);
  r2.zw = (uint2)r2.zw;
  r2.zw = r2.zw * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r3.xy = r2.xy;
  r4.xyz = mad((int3)r3.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.w = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r2.x = mad((int)r4.z, (int)r0.w, (int)r4.y);
  r2.y = mad((int)r0.w, (int)r2.x, (int)r4.z);
  r4.x = mad((int)r2.x, (int)r2.y, (int)r0.w);
  r4.y = mad((int)r2.y, (int)r4.x, (int)r2.x);
  r2.xy = (uint2)r4.xy >> int2(16,16);
  r2.xy = (uint2)r2.xy;
  r2.xy = r2.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r3.xyz = mad((int3)r3.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r0.w = mad((int)r3.y, (int)r3.z, (int)r3.x);
  r3.x = mad((int)r3.z, (int)r0.w, (int)r3.y);
  r3.y = mad((int)r0.w, (int)r3.x, (int)r3.z);
  r4.x = mad((int)r3.x, (int)r3.y, (int)r0.w);
  r4.y = mad((int)r3.y, (int)r4.x, (int)r3.x);
  r3.xy = (uint2)r4.xy >> int2(16,16);
  r3.xy = (uint2)r3.xy;
  r3.xy = r3.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = rsqrt(r0.w);
  r1.zw = r1.zw * r0.ww;
  r0.w = dot(r2.zw, r2.zw);
  r0.w = rsqrt(r0.w);
  r2.zw = r2.zw * r0.ww;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = rsqrt(r0.w);
  r2.xy = r2.xy * r0.ww;
  r0.w = dot(r3.xy, r3.xy);
  r0.w = rsqrt(r0.w);
  r3.xy = r3.xy * r0.ww;
  r1.zw = r1.zw * r1.xy;
  r2.xyzw = r2.xyzw * r1.xyxy;
  r1.xy = r3.xy * r1.xy;
  r1.zw = r1.zw * cb0[6].xx + r0.xy;
  r2.zw = r2.zw * cb0[6].xx + r0.xy;
  r2.xy = r2.xy * cb0[6].xx + r0.xy;
  r0.xy = r1.xy * cb0[6].xx + r0.xy;
  r0.z = 9.99999975e-006 * r0.z;
  r1.xy = max(cb0[2].xy, r1.zw);
  r1.xy = min(cb0[2].zw, r1.xy);
  r3.xyzw = t1.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r0.w = t2.SampleLevel(s0_s, r1.xy, 0).x;
  r1.xy = max(cb0[2].xy, r2.zw);
  r1.xy = min(cb0[2].zw, r1.xy);
  r4.xyzw = t1.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.x = t2.SampleLevel(s0_s, r1.xy, 0).x;
  r1.yz = max(cb0[2].xy, r2.xy);
  r1.yz = min(cb0[2].zw, r1.yz);
  r2.xyzw = t1.SampleLevel(s0_s, r1.yz, 0).xyzw;
  r1.y = t2.SampleLevel(s0_s, r1.yz, 0).x;
  r0.xy = max(cb0[2].xy, r0.xy);
  r0.xy = min(cb0[2].zw, r0.xy);
  r5.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
  r0.xy = cmp(r0.xw < r0.zz);
  r3.xyzw = r0.yyyy ? r3.xyzw : 0;
  r0.w = r0.y ? 1.000000 : 0;
  r1.x = cmp(r1.x < r0.z);
  r4.xyzw = r3.xyzw + r4.xyzw;
  r0.y = r0.y ? 2 : 1;
  r3.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r0.y = r1.x ? r0.y : r0.w;
  r0.w = cmp(r1.y < r0.z);
  r1.xyzw = r3.xyzw + r2.xyzw;
  r2.x = 1 + r0.y;
  r1.xyzw = r0.wwww ? r1.xyzw : r3.xyzw;
  r0.y = r0.w ? r2.x : r0.y;
  r2.xyzw = r1.xyzw + r5.xyzw;
  r0.z = 1 + r0.y;
  r1.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r0.x = r0.x ? r0.z : r0.y;
  r0.y = cmp(0 < r0.x);
  r0.z = ~(int)r0.y;
  r1.xyzw = r1.xyzw / r0.xxxx;
  if (r0.z != 0) discard;
  o0.xyzw = r0.yyyy ? r1.xyzw : float4(0,0,0,1);
  return;
}