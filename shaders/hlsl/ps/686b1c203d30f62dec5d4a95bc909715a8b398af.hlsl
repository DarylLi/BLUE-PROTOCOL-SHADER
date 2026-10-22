// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

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
  float4 cb0[7];
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
  r0.w = t4.SampleLevel(s1_s, r0.xy, 0).x;
  r0.w = 100 * r0.w;
  r0.w = cmp(r0.z < r0.w);
  if (r0.w != 0) {
    if (-1 != 0) discard;
    return;
  }
  r1.xy = -cb1[129].xy + v0.xy;
  r0.z = 9.99999975e-006 * r0.z;
  r1.zw = (int2)r1.xy;
  r0.w = (int)cb0[6].z;
  r2.xy = (int2)r0.ww ^ (int2)r1.zw;
  r2.zw = max((int2)-r1.zw, (int2)r1.zw);
  r3.x = max((int)-r0.w, (int)r0.w);
  uiDest.zw = (uint2)r2.zw / (uint2)r3.xx;
  r2.zw = uiDest.zw;
  r3.xy = -(int2)r2.zw;
  r2.xy = (int2)r2.xy & int2(0x80000000,0x80000000);
  r2.xy = r2.xy ? r3.xy : r2.zw;
  r2.zw = (int2)r0.ww * (int2)r2.xy;
  r1.zw = cmp((int2)r1.zw == (int2)r2.zw);
  r3.xy = r1.zw ? float2(-1,-1) : float2(1,1);
  r0.x = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.x = cmp((int)r0.x == 10);
  r0.yw = max(int2(0,0), (int2)r2.xy);
  r3.z = 0;
  r4.xyzw = (int4)r2.xyxy + (int4)r3.xzxy;
  r4.xyzw = max(int4(0,0,0,0), (int4)r4.xyzw);
  r1.zw = (int2)r2.xy + (int2)r3.zy;
  r1.zw = max(int2(0,0), (int2)r1.zw);
  r2.xy = max(asuint(cb0[1].xy), (uint2)r0.yw);
  r2.xy = min(asuint(cb0[1].zw), (uint2)r2.xy);
  r2.zw = float2(0,0);
  r3.zw = t3.Load(r2.xyw).xy;
  r4.xyzw = max(asuint(cb0[1].xyxy), (uint4)r4.xyzw);
  r5.xy = min(asuint(cb0[1].zw), (uint2)r4.xy);
  r5.zw = float2(0,0);
  r6.xy = t3.Load(r5.xyw).yx;
  r4.xy = min(asuint(cb0[1].zw), (uint2)r4.zw);
  r4.zw = float2(0,0);
  r7.xy = t3.Load(r4.xyw).xy;
  r1.zw = max(asuint(cb0[1].xy), (uint2)r1.zw);
  r8.xy = min(asuint(cb0[1].zw), (uint2)r1.zw);
  r8.zw = float2(0,0);
  r1.zw = t3.Load(r8.xyw).xy;
  r7.z = max(r6.x, r3.w);
  r7.w = max(r7.y, r1.w);
  r7.z = max(r7.z, r7.w);
  r7.z = min(r7.z, r0.z);
  r9.x = r3.w;
  r9.y = r6.x;
  r9.z = r7.y;
  r9.w = r1.w;
  r10.xyzw = -r9.xyzw + r7.zzzz;
  r11.xy = max(abs(r10.xz), abs(r10.yw));
  r7.w = max(r11.x, r11.y);
  r11.x = 0.100000001 * r7.z;
  r7.w = cmp(r11.x < r7.w);
  if (r7.w != 0) {
    r6.x = r3.z;
    r6.z = r7.x;
    r6.w = r1.z;
    r6.xyzw = cmp(r6.xyzw < r0.zzzz);
    r6.xy = (int2)r6.zw | (int2)r6.xy;
    r0.z = (int)r6.y | (int)r6.x;
    r2.xyzw = t2.Load(r2.xyz).xyzw;
    r5.xyzw = t2.Load(r5.xyz).xyzw;
    r4.xyzw = t2.Load(r4.xyz).xyzw;
    r6.xyzw = t2.Load(r8.xyz).xyzw;
    r8.xyzw = cmp(float4(500,500,500,500) < r9.xyzw);
    r7.xw = (int2)r8.zw | (int2)r8.xy;
    r1.z = (int)r7.w | (int)r7.x;
    r7.xw = r8.zw ? r8.xy : 0;
    r3.z = r7.w ? r7.x : 0;
    r3.z = ~(int)r3.z;
    r1.z = (int)r1.z & (int)r3.z;
    r3.z = cmp(1 < r7.z);
    r1.z = r3.z ? r1.z : 0;
    r3.z = -0.00100000005 + r7.z;
    r3.w = cmp(r3.z < r3.w);
    r8.xyzw = r3.wwww ? r2.xyzw : 0;
    r7.x = r3.w ? 1.000000 : 0;
    r7.z = cmp(r3.z < r9.y);
    r9.xyzw = r8.xyzw + r5.xyzw;
    r3.w = r3.w ? 2 : 1;
    r8.xyzw = r7.zzzz ? r9.xyzw : r8.xyzw;
    r3.w = r7.z ? r3.w : r7.x;
    r7.x = cmp(r3.z < r7.y);
    r9.xyzw = r8.xyzw + r4.xyzw;
    r7.y = 1 + r3.w;
    r8.xyzw = r7.xxxx ? r9.xyzw : r8.xyzw;
    r7.x = r7.x ? r7.y : r3.w;
    r1.w = cmp(r3.z < r1.w);
    r9.xyzw = r8.xyzw + r6.xyzw;
    r11.x = 1 + r7.x;
    r8.xyz = r1.www ? r9.xyz : r8.xyz;
    r11.y = r9.w;
    r7.y = r8.w;
    r3.zw = r1.ww ? r11.xy : r7.xy;
    r7.xyz = (int3)r1.zzz & (int3)r8.xyz;
    r1.zw = (int2)r1.zz & (int2)r3.zw;
    r7.xyz = r0.xxx ? r7.xyz : 0;
    r1.zw = r0.xx ? r1.zw : 0;
    r3.z = ~(int)r0.x;
    r3.w = cmp(r1.z == 0.000000);
    r3.w = r0.x ? r3.w : 0;
    r0.z = r3.w ? r0.z : 0;
    r0.z = (int)r0.z | (int)r3.z;
    r8.xyzw = abs(r10.xyzw) * float4(10000,10000,10000,10000) + float4(1,1,1,1);
    r8.xyzw = float4(1,1,1,1) / r8.xyzw;
    r3.z = dot(r8.xyzw, float4(1,1,1,1));
    r8.xyzw = r8.xyzw / r3.zzzz;
    r3.z = cmp(0 < r3.z);
    r9.x = r3.z ? 1.000000 : 0;
    r5.xyzw = r8.yyyy * r5.xyzw;
    r2.xyzw = r8.xxxx * r2.xyzw + r5.xyzw;
    r2.xyzw = r8.zzzz * r4.xyzw + r2.xyzw;
    r2.xyzw = r8.wwww * r6.xyzw + r2.xyzw;
    r4.xyz = r0.zzz ? r2.xyz : r7.xyz;
    r9.y = r2.w;
    r1.zw = r0.zz ? r9.xy : r1.zw;
    r4.w = r1.w;
  } else {
    r0.yz = (uint2)r0.yw;
    r0.yz = float2(0.25,0.25) + r0.yz;
    r2.xy = (int2)r3.xy;
    r2.xy = r2.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r0.yz = r2.xy * float2(0.5,0.5) + r0.yz;
    r0.yz = cb0[5].zw * r0.yz;
    r0.yz = max(cb0[2].xy, r0.yz);
    r0.yz = min(cb0[2].zw, r0.yz);
    r4.xyzw = t2.SampleLevel(s1_s, r0.yz, 0).xyzw;
    r1.z = 1;
  }
  r0.y = cmp(0 < cb0[6].x);
  r0.x = ~(int)r0.x;
  r0.x = r0.x ? r0.y : 0;
  if (r0.x != 0) {
    r0.xy = cb1[132].zw * r1.xy;
    r0.xy = cb1[132].xy * r0.xy;
    r0.xy = cb0[5].zw * r0.xy;
    r1.y = cb1[132].w * cb1[132].w;
    r1.x = 1;
    r0.zw = cb1[132].zx * r1.xy;
    r0.zw = cb0[6].zz * r0.zw;
    r1.xy = (int2)v0.xy;
    r2.xy = (int2)r1.xy * int2(0x19660d,0x19660d);
    r2.z = asint(cb1[144].y) * 0x0019660d;
    r1.xyw = (int3)r2.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r1.x = mad((int)r1.y, (int)r1.w, (int)r1.x);
    r1.y = mad((int)r1.w, (int)r1.x, (int)r1.y);
    r1.w = mad((int)r1.x, (int)r1.y, (int)r1.w);
    r2.x = mad((int)r1.y, (int)r1.w, (int)r1.x);
    r2.y = mad((int)r1.w, (int)r2.x, (int)r1.y);
    r1.xy = (uint2)r2.xy >> int2(16,16);
    r1.xy = (uint2)r1.xy;
    r1.xy = r1.xy * float2(3.05175781e-005,3.05175781e-005) + float2(-1,-1);
    r1.w = dot(r1.xy, r1.xy);
    r1.w = rsqrt(r1.w);
    r1.xy = r1.xy * r1.ww;
    r0.zw = r1.xy * r0.zw;
    r2.xy = cb0[6].xx * r0.zw;
    r0.zw = cb0[6].yy * r0.xy + r2.xy;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r3.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r0.zw = cb0[6].yy * r0.xy + -r2.xy;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r5.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r2.z = -r2.x;
    r0.zw = cb0[6].yy * r0.xy + r2.yz;
    r0.zw = max(cb0[2].xy, r0.zw);
    r0.zw = min(cb0[2].zw, r0.zw);
    r6.xyzw = t2.SampleLevel(s1_s, r0.zw, 0).xyzw;
    r0.xy = cb0[6].yy * r0.xy + -r2.yz;
    r0.xy = max(cb0[2].xy, r0.xy);
    r0.xy = min(cb0[2].zw, r0.xy);
    r0.xyzw = t2.SampleLevel(s1_s, r0.xy, 0).xyzw;
    r1.x = cmp(0 < r1.z);
    r1.y = r4.w / r1.z;
    r1.x = r1.x ? -r1.y : -1;
    r1.y = r3.w + r1.x;
    r1.y = -7.21347523 * abs(r1.y);
    r1.y = exp2(r1.y);
    r1.w = r1.z + r1.y;
    r2.xyzw = r3.xyzw * r1.yyyy + r4.xyzw;
    r1.y = r5.w + r1.x;
    r1.y = -7.21347523 * abs(r1.y);
    r1.y = exp2(r1.y);
    r1.w = r1.w + r1.y;
    r2.xyzw = r5.xyzw * r1.yyyy + r2.xyzw;
    r1.y = r6.w + r1.x;
    r1.y = -7.21347523 * abs(r1.y);
    r1.y = exp2(r1.y);
    r1.w = r1.w + r1.y;
    r2.xyzw = r6.xyzw * r1.yyyy + r2.xyzw;
    r1.x = r1.x + r0.w;
    r1.x = -7.21347523 * abs(r1.x);
    r1.x = exp2(r1.x);
    r1.z = r1.w + r1.x;
    r4.xyzw = r0.xyzw * r1.xxxx + r2.xyzw;
  }
  r0.x = cmp(0 < r1.z);
  r0.y = ~(int)r0.x;
  r1.xyzw = r4.xyzw / r1.zzzz;
  if (r0.y != 0) discard;
  o0.xyzw = r0.xxxx ? r1.xyzw : float4(0,0,0,1);
  return;
}