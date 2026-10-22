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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = cb1[132].zw * r0.zw;
  r0.zw = cb1[132].xy * r0.zw;
  r0.zw = cb0[5].zw * r0.zw;
  r0.zw = cb0[6].yy * r0.zw;
  r1.xy = cb0[4].yy * r0.zw;
  r1.zw = cb1[132].zw * cb1[130].xy;
  r1.zw = r1.xy * r1.zw + cb0[3].xy;
  r1.z = t2.SampleLevel(s0_s, r1.zw, 0).x;
  r1.z = 100 * r1.z;
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r3.xyzw = cb1[46].xyzw * float4(0.5,0.5,0.5,0.5) + r2.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r3.xyz = -cb1[70].xyz + r3.xyz;
  r3.xyz = -cb1[67].xyz + r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r3.xyz = r3.xyz * r1.zzz + cb1[67].xyz;
  r1.zw = cb1[5].zw * r3.yy;
  r1.zw = r3.xx * cb1[4].zw + r1.zw;
  r1.zw = r3.zz * cb1[6].zw + r1.zw;
  r1.zw = cb1[7].zw + r1.zw;
  r1.z = r1.z / r1.w;
  r2.xyzw = r1.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb1[70].xyz + r2.xyz;
  r2.xyz = cb1[67].xyz + -r2.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r1.z);
  r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = 100 * r0.x;
  r0.x = cmp(r1.z < r0.x);
  if (r0.x != 0) {
    if (-1 != 0) discard;
    return;
  }
  r0.x = cb1[132].w * cb1[132].w;
  r0.y = 1;
  r0.xy = cb1[132].xz * r0.xy;
  r0.xy = cb0[6].zz * r0.xy;
  r2.xy = (int2)v0.xy;
  r2.z = cb1[144].y;
  r3.xyz = mad((int3)r2.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r1.w = mad((int)r3.y, (int)r3.z, (int)r3.x);
  r2.z = mad((int)r3.z, (int)r1.w, (int)r3.y);
  r3.x = mad((int)r1.w, (int)r2.z, (int)r3.z);
  r4.y = mad((int)r2.z, (int)r3.x, (int)r1.w);
  r4.x = mad((int)r3.x, (int)r4.y, (int)r2.z);
  r3.xy = (uint2)r4.xy >> int2(16,16);
  r3.xy = (uint2)r3.xy;
  r3.xy = r3.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r4.xzw = asint(cb1[144].yyy) + int3(8,16,32);
  r2.w = r4.x;
  r5.xyz = mad((int3)r2.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r1.w = mad((int)r5.y, (int)r5.z, (int)r5.x);
  r2.z = mad((int)r5.z, (int)r1.w, (int)r5.y);
  r2.w = mad((int)r1.w, (int)r2.z, (int)r5.z);
  r5.y = mad((int)r2.z, (int)r2.w, (int)r1.w);
  r5.x = mad((int)r2.w, (int)r5.y, (int)r2.z);
  r2.zw = (uint2)r5.xy >> int2(16,16);
  r2.zw = (uint2)r2.zw;
  r2.zw = r2.zw * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r4.xy = r2.xy;
  r5.xyz = mad((int3)r4.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r1.w = mad((int)r5.y, (int)r5.z, (int)r5.x);
  r2.x = mad((int)r5.z, (int)r1.w, (int)r5.y);
  r2.y = mad((int)r1.w, (int)r2.x, (int)r5.z);
  r5.y = mad((int)r2.x, (int)r2.y, (int)r1.w);
  r5.x = mad((int)r2.y, (int)r5.y, (int)r2.x);
  r2.xy = (uint2)r5.xy >> int2(16,16);
  r2.xy = (uint2)r2.xy;
  r2.xy = r2.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r4.xyz = mad((int3)r4.xyw, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
  r1.w = mad((int)r4.y, (int)r4.z, (int)r4.x);
  r3.z = mad((int)r4.z, (int)r1.w, (int)r4.y);
  r3.w = mad((int)r1.w, (int)r3.z, (int)r4.z);
  r4.y = mad((int)r3.z, (int)r3.w, (int)r1.w);
  r4.x = mad((int)r3.w, (int)r4.y, (int)r3.z);
  r3.zw = (uint2)r4.xy >> int2(16,16);
  r3.zw = (uint2)r3.zw;
  r3.zw = r3.zw * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = rsqrt(r1.w);
  r3.xy = r3.xy * r1.ww;
  r1.w = dot(r2.zw, r2.zw);
  r1.w = rsqrt(r1.w);
  r2.zw = r2.zw * r1.ww;
  r1.w = dot(r2.xy, r2.xy);
  r1.w = rsqrt(r1.w);
  r2.xy = r2.xy * r1.ww;
  r1.w = dot(r3.zw, r3.zw);
  r1.w = rsqrt(r1.w);
  r3.zw = r3.zw * r1.ww;
  r3.xy = r3.xy * r0.xy;
  r3.xy = cb0[6].xx * r3.xy;
  r2.xyzw = r2.xyzw * r0.xyxy;
  r2.xyzw = cb0[6].xxxx * r2.xyzw;
  r0.xy = r3.zw * r0.xy;
  r0.xy = cb0[6].xx * r0.xy;
  r1.w = 9.99999975e-006 * r1.z;
  r3.zw = r0.zw * cb0[4].yy + r3.yx;
  r4.xy = r0.zw * cb0[4].yy + r2.wz;
  r4.zw = r0.zw * cb0[4].yy + r2.yx;
  r0.zw = r0.zw * cb0[4].yy + r0.yx;
  r3.zw = cb0[5].xy * r3.zw;
  r3.zw = (uint2)r3.zw;
  r3.zw = max(asuint(cb0[1].xy), (uint2)r3.zw);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r3.zw);
  r5.zw = float2(0,0);
  r6.xyzw = t0.Load(r5.xyw).xyzw;
  r3.zw = t1.Load(r5.xyz).xy;
  r4.xy = cb0[5].xy * r4.xy;
  r4.xy = (uint2)r4.xy;
  r4.xy = max(asuint(cb0[1].xy), (uint2)r4.xy);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r4.xy);
  r5.zw = float2(0,0);
  r7.xyzw = t0.Load(r5.xyw).xyzw;
  r4.xy = t1.Load(r5.xyz).xy;
  r4.zw = cb0[5].xy * r4.zw;
  r4.zw = (uint2)r4.zw;
  r4.zw = max(asuint(cb0[1].xy), (uint2)r4.zw);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r4.zw);
  r5.zw = float2(0,0);
  r8.xyzw = t0.Load(r5.xyw).xyzw;
  r4.zw = t1.Load(r5.xyz).xy;
  r0.zw = cb0[5].xy * r0.zw;
  r0.zw = (uint2)r0.zw;
  r0.zw = max(asuint(cb0[1].xy), (uint2)r0.zw);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r0.zw);
  r5.zw = float2(0,0);
  r9.xyzw = t0.Load(r5.xyw).xyzw;
  r0.zw = t1.Load(r5.xyz).xy;
  r1.z = cmp(r1.z >= 6.4512e+011);
  r5.x = -0.00100000005 + r3.z;
  r5.x = cmp(0 != r5.x);
  r5.x = (int)r1.z | (int)r5.x;
  r5.x = r5.x ? 1.000000 : 0;
  r5.x = cmp(r5.x < r1.w);
  r3.z = cmp(r3.z < r3.w);
  r3.z = r3.z ? r5.x : 0;
  r5.xyzw = r3.zzzz ? r6.xyzw : 0;
  r3.w = r3.z ? 1.000000 : 0;
  r6.x = -0.00100000005 + r4.x;
  r6.x = cmp(0 != r6.x);
  r6.x = (int)r1.z | (int)r6.x;
  r6.x = r6.x ? 1.000000 : 0;
  r6.x = cmp(r6.x < r1.w);
  r4.x = cmp(r4.x < r4.y);
  r4.x = r4.x ? r6.x : 0;
  r6.xyzw = r5.xyzw + r7.xyzw;
  r3.z = r3.z ? 2 : 1;
  r5.xyzw = r4.xxxx ? r6.xyzw : r5.xyzw;
  r3.z = r4.x ? r3.z : r3.w;
  r3.w = -0.00100000005 + r4.z;
  r3.w = cmp(0 != r3.w);
  r3.w = (int)r1.z | (int)r3.w;
  r3.w = r3.w ? 1.000000 : 0;
  r3.w = cmp(r3.w < r1.w);
  r4.x = cmp(r4.z < r4.w);
  r3.w = r3.w ? r4.x : 0;
  r4.xyzw = r5.xyzw + r8.xyzw;
  r6.x = 1 + r3.z;
  r4.xyzw = r3.wwww ? r4.xyzw : r5.xyzw;
  r3.z = r3.w ? r6.x : r3.z;
  r3.w = -0.00100000005 + r0.z;
  r3.w = cmp(0 != r3.w);
  r1.z = (int)r1.z | (int)r3.w;
  r1.z = r1.z ? 1.000000 : 0;
  r1.z = cmp(r1.z < r1.w);
  r0.z = cmp(r0.z < r0.w);
  r0.z = r0.z ? r1.z : 0;
  r5.xyzw = r4.xyzw + r9.xyzw;
  r0.w = 1 + r3.z;
  r4.xyzw = r0.zzzz ? r5.xyzw : r4.xyzw;
  r0.z = r0.z ? r0.w : r3.z;
  r0.w = cmp(0 < r0.z);
  if (r0.w != 0) {
    o0.xyzw = r4.xyzw / r0.zzzz;
  } else {
    r0.zw = r3.xy * float2(3,3) + r1.xy;
    r2.zw = r2.zw * float2(3,3) + r1.xy;
    r2.xy = r2.xy * float2(3,3) + r1.xy;
    r0.xy = r0.xy * float2(3,3) + r1.xy;
    r0.zw = cb0[5].xy * r0.zw;
    r0.zw = (uint2)r0.zw;
    r0.zw = max(asuint(cb0[1].xy), (uint2)r0.zw);
    r3.xy = min(asuint(cb0[1].zw), (uint2)r0.zw);
    r3.zw = float2(0,0);
    r5.xyzw = t0.Load(r3.xyw).xyzw;
    r0.zw = t1.Load(r3.xyz).xy;
    r1.xy = cb0[5].xy * r2.zw;
    r1.xy = (uint2)r1.xy;
    r1.xy = max(asuint(cb0[1].xy), (uint2)r1.xy);
    r3.xy = min(asuint(cb0[1].zw), (uint2)r1.xy);
    r3.zw = float2(0,0);
    r6.xyzw = t0.Load(r3.xyw).xyzw;
    r1.xy = t1.Load(r3.xyz).xy;
    r2.xy = cb0[5].xy * r2.xy;
    r2.xy = (uint2)r2.xy;
    r2.xy = max(asuint(cb0[1].xy), (uint2)r2.xy);
    r2.xy = min(asuint(cb0[1].zw), (uint2)r2.xy);
    r2.zw = float2(0,0);
    r3.xyzw = t0.Load(r2.xyw).xyzw;
    r2.xy = t1.Load(r2.xyz).xy;
    r0.xy = cb0[5].xy * r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.xy = max(asuint(cb0[1].xy), (uint2)r0.xy);
    r7.xy = min(asuint(cb0[1].zw), (uint2)r0.xy);
    r7.zw = float2(0,0);
    r8.xyzw = t0.Load(r7.xyw).xyzw;
    r0.xy = t1.Load(r7.xyz).xy;
    r1.z = -0.00100000005 + r0.z;
    r1.z = cmp(r1.z < r1.w);
    r0.z = cmp(r0.z < r0.w);
    r0.z = r0.z ? r1.z : 0;
    r5.xyzw = r5.xyzw + r4.xyzw;
    r4.xyzw = r0.zzzz ? r5.xyzw : r4.xyzw;
    r0.w = r0.z ? 1.000000 : 0;
    r1.z = -0.00100000005 + r1.x;
    r1.z = cmp(r1.z < r1.w);
    r1.x = cmp(r1.x < r1.y);
    r1.x = r1.x ? r1.z : 0;
    r5.xyzw = r4.xyzw + r6.xyzw;
    r0.z = r0.z ? 2 : 1;
    r4.xyzw = r1.xxxx ? r5.xyzw : r4.xyzw;
    r0.z = r1.x ? r0.z : r0.w;
    r0.w = -0.00100000005 + r2.x;
    r0.w = cmp(r0.w < r1.w);
    r1.x = cmp(r2.x < r2.y);
    r0.w = r0.w ? r1.x : 0;
    r2.xyzw = r4.xyzw + r3.xyzw;
    r1.x = 1 + r0.z;
    r2.xyzw = r0.wwww ? r2.xyzw : r4.xyzw;
    r0.z = r0.w ? r1.x : r0.z;
    r0.w = -0.00100000005 + r0.x;
    r0.w = cmp(r0.w < r1.w);
    r0.x = cmp(r0.x < r0.y);
    r0.x = r0.x ? r0.w : 0;
    r1.xyzw = r2.xyzw + r8.xyzw;
    r0.y = 1 + r0.z;
    r1.xyzw = r0.xxxx ? r1.xyzw : r2.xyzw;
    r0.x = r0.x ? r0.y : r0.z;
    r0.y = cmp(0 < r0.x);
    r0.z = ~(int)r0.y;
    r1.xyzw = r1.xyzw / r0.xxxx;
    if (r0.z != 0) discard;
    o0.xyzw = r0.yyyy ? r1.xyzw : float4(0,0,0,1);
  }
  return;
}