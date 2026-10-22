// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r1.x = t0.Load(r1.xyz).x;
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * cb1[46].xyzw + r2.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[67].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 9.99999975e-006 * r1.x;
  r1.yz = (int2)r0.zw;
  r1.w = (int)cb0[4].z;
  r2.xy = (int2)r1.ww ^ (int2)r1.yz;
  r2.zw = max((int2)-r1.yz, (int2)r1.yz);
  r3.x = max((int)-r1.w, (int)r1.w);
  uiDest.zw = (uint2)r2.zw / (uint2)r3.xx;
  r2.zw = uiDest.zw;
  r3.xy = -(int2)r2.zw;
  r2.xy = (int2)r2.xy & int2(0x80000000,0x80000000);
  r2.xy = r2.xy ? r3.xy : r2.zw;
  r2.zw = (int2)r1.ww * (int2)r2.xy;
  r1.yz = cmp((int2)r1.yz == (int2)r2.zw);
  r3.xy = r1.yz ? float2(-1,-1) : float2(1,1);
  r0.x = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.x = cmp((int)r0.x == 10);
  r1.yz = max(int2(0,0), (int2)r2.xy);
  r3.z = 0;
  r4.xyzw = (int4)r2.xyxy + (int4)r3.xzxy;
  r4.xyzw = max(int4(0,0,0,0), (int4)r4.xyzw);
  r2.xy = (int2)r2.xy + (int2)r3.zy;
  r2.xy = max(int2(0,0), (int2)r2.xy);
  r2.zw = max(asuint(cb0[1].xy), (uint2)r1.yz);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r2.zw);
  r5.zw = float2(0,0);
  r2.zw = t3.Load(r5.xyw).xy;
  r4.xyzw = max(asuint(cb0[1].xyxy), (uint4)r4.xyzw);
  r6.xy = min(asuint(cb0[1].zw), (uint2)r4.xy);
  r6.zw = float2(0,0);
  r7.xy = t3.Load(r6.xyw).yx;
  r4.xy = min(asuint(cb0[1].zw), (uint2)r4.zw);
  r4.zw = float2(0,0);
  r3.zw = t3.Load(r4.xyw).xy;
  r2.xy = max(asuint(cb0[1].xy), (uint2)r2.xy);
  r8.xy = min(asuint(cb0[1].zw), (uint2)r2.xy);
  r8.zw = float2(0,0);
  r2.xy = t3.Load(r8.xyw).xy;
  r0.y = max(r7.x, r2.w);
  r1.w = max(r3.w, r2.y);
  r0.y = max(r1.w, r0.y);
  r0.y = min(r1.x, r0.y);
  r9.y = r7.x;
  r9.z = r3.w;
  r9.xw = r2.wy;
  r10.xyzw = -r9.xyzw + r0.yyyy;
  r11.xy = max(abs(r10.xz), abs(r10.yw));
  r1.w = max(r11.x, r11.y);
  r11.x = 0.100000001 * r0.y;
  r1.w = cmp(r11.x < r1.w);
  if (r1.w != 0) {
    r7.z = r3.z;
    r7.xw = r2.zx;
    r7.xyzw = cmp(r7.xyzw < r1.xxxx);
    r1.xw = (int2)r7.zw | (int2)r7.xy;
    r1.x = (int)r1.w | (int)r1.x;
    r5.xyzw = t2.Load(r5.xyz).xyzw;
    r6.xyzw = t2.Load(r6.xyz).xyzw;
    r4.xyzw = t2.Load(r4.xyz).xyzw;
    r7.xyzw = t2.Load(r8.xyz).xyzw;
    r8.xyzw = cmp(float4(500,500,500,500) < r9.xyzw);
    r2.xz = (int2)r8.zw | (int2)r8.xy;
    r1.w = (int)r2.z | (int)r2.x;
    r2.xz = r8.zw ? r8.xy : 0;
    r2.x = (int)r2.z & (int)r2.x;
    r2.x = ~(int)r2.x;
    r1.w = r1.w ? r2.x : 0;
    r2.x = cmp(1 < r0.y);
    r1.w = r1.w ? r2.x : 0;
    r0.y = -0.00100000005 + r0.y;
    r2.x = cmp(r0.y < r2.w);
    r8.xyzw = r2.xxxx ? r5.xyzw : 0;
    r2.z = r2.x ? 1.000000 : 0;
    r2.w = cmp(r0.y < r9.y);
    r9.xyzw = r8.xyzw + r6.xyzw;
    r2.x = r2.x ? 2 : 1;
    r8.xyzw = r2.wwww ? r9.xyzw : r8.xyzw;
    r2.x = r2.w ? r2.x : r2.z;
    r2.z = cmp(r0.y < r3.w);
    r9.xyzw = r8.xyzw + r4.xyzw;
    r2.w = 1 + r2.x;
    r8.xyzw = r2.zzzz ? r9.xyzw : r8.xyzw;
    r9.x = r2.z ? r2.w : r2.x;
    r0.y = cmp(r0.y < r2.y);
    r2.xyzw = r8.xyzw + r7.xyzw;
    r11.x = 1 + r9.x;
    r2.xyz = r0.yyy ? r2.xyz : r8.xyz;
    r11.y = r2.w;
    r9.y = r8.w;
    r3.zw = r0.yy ? r11.xy : r9.xy;
    r2.xyz = r1.www ? r2.xyz : 0;
    r3.zw = r1.ww ? r3.zw : 0;
    r2.xyz = r0.xxx ? r2.xyz : 0;
    r3.zw = r0.xx ? r3.zw : 0;
    r0.y = ~(int)r0.x;
    r1.w = cmp(r3.z == 0.000000);
    r1.w = r0.x ? r1.w : 0;
    r1.x = r1.w ? r1.x : 0;
    r0.y = (int)r0.y | (int)r1.x;
    r8.xyzw = abs(r10.xyzw) * float4(10000,10000,10000,10000) + float4(1,1,1,1);
    r8.xyzw = float4(1,1,1,1) / r8.xyzw;
    r1.x = dot(r8.xyzw, float4(1,1,1,1));
    r8.xyzw = r8.xyzw / r1.xxxx;
    r1.x = cmp(0 < r1.x);
    r9.x = r1.x ? 1.000000 : 0;
    r6.xyzw = r8.yyyy * r6.xyzw;
    r5.xyzw = r8.xxxx * r5.xyzw + r6.xyzw;
    r4.xyzw = r8.zzzz * r4.xyzw + r5.xyzw;
    r4.xyzw = r8.wwww * r7.xyzw + r4.xyzw;
    r2.xyz = r0.yyy ? r4.xyz : r2.xyz;
    r9.y = r4.w;
    r1.xw = r0.yy ? r9.xy : r3.zw;
    r2.w = r1.w;
  } else {
    r1.yz = (uint2)r1.yz;
    r1.yz = float2(0.25,0.25) + r1.yz;
    r3.xy = (int2)r3.xy;
    r3.xy = r3.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r1.yz = r3.xy * float2(0.5,0.5) + r1.yz;
    r1.yz = cb0[3].zw * r1.yz;
    r1.yz = max(cb0[2].xy, r1.yz);
    r1.yz = min(cb0[2].zw, r1.yz);
    r2.xyzw = t2.SampleLevel(s1_s, r1.yz, 0).xyzw;
    r1.x = 1;
  }
  r0.y = cmp(0 < cb0[4].x);
  r0.x = ~(int)r0.x;
  r0.x = r0.x ? r0.y : 0;
  if (r0.x != 0) {
    r0.xy = cb1[132].zw * r0.zw;
    r0.xy = cb1[132].xy * r0.xy;
    r0.xy = cb0[3].zw * r0.xy;
    r3.y = cb1[132].w * cb1[132].w;
    r3.x = 1;
    r0.zw = cb1[132].zx * r3.xy;
    r0.zw = cb0[4].zz * r0.zw;
    r1.yz = (int2)v0.xy;
    r3.xy = (int2)r1.yz * int2(0x19660d,0x19660d);
    r3.z = asint(cb1[144].y) * 0x0019660d;
    r1.yzw = (int3)r3.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r1.y = mad((int)r1.z, (int)r1.w, (int)r1.y);
    r1.z = mad((int)r1.w, (int)r1.y, (int)r1.z);
    r1.w = mad((int)r1.y, (int)r1.z, (int)r1.w);
    r3.x = mad((int)r1.z, (int)r1.w, (int)r1.y);
    r3.y = mad((int)r1.w, (int)r3.x, (int)r1.z);
    r1.yz = (uint2)r3.xy >> int2(16,16);
    r1.yz = (uint2)r1.yz;
    r1.yz = r1.yz * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
    r1.w = dot(r1.yz, r1.yz);
    r1.w = rsqrt(r1.w);
    r1.yz = r1.yz * r1.ww;
    r0.zw = r1.yz * r0.zw;
    r3.xy = cb0[4].xx * r0.zw;
    r0.zw = cb0[4].yy * r0.xy + r3.xy;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r4.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r0.zw = cb0[4].yy * r0.xy + -r3.xy;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r5.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r3.z = -r3.x;
    r0.zw = cb0[4].yy * r0.xy + r3.yz;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r6.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r0.xy = cb0[4].yy * r0.xy + -r3.yz;
    r0.xy = max(cb0[2].xy, r0.xy);
    r0.xy = min(cb0[2].zw, r0.xy);
    r0.xyzw = t2.SampleLevel(s1_s, r0.xy, 0).xyzw;
    r1.y = cmp(0 < r1.x);
    r1.z = r2.w / r1.x;
    r1.y = r1.y ? -r1.z : -1;
    r1.z = r4.w + r1.y;
    r1.z = -7.21347523 * abs(r1.z);
    r1.z = exp2(r1.z);
    r1.w = r1.x + r1.z;
    r3.xyzw = r4.xyzw * r1.zzzz + r2.xyzw;
    r1.z = r5.w + r1.y;
    r1.z = -7.21347523 * abs(r1.z);
    r1.z = exp2(r1.z);
    r1.w = r1.w + r1.z;
    r3.xyzw = r5.xyzw * r1.zzzz + r3.xyzw;
    r1.z = r6.w + r1.y;
    r1.z = -7.21347523 * abs(r1.z);
    r1.z = exp2(r1.z);
    r1.w = r1.w + r1.z;
    r3.xyzw = r6.xyzw * r1.zzzz + r3.xyzw;
    r1.y = r1.y + r0.w;
    r1.y = -7.21347523 * abs(r1.y);
    r1.y = exp2(r1.y);
    r1.x = r1.w + r1.y;
    r2.xyzw = r0.xyzw * r1.yyyy + r3.xyzw;
  }
  r0.x = cmp(0 < r1.x);
  r0.y = ~(int)r0.x;
  r1.xyzw = r2.xyzw / r1.xxxx;
  if (r0.y != 0) discard;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  return;
}