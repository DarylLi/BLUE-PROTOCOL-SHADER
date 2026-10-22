// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float2 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[6].zw * v0.xy;
  r0.zw = (int2)v0.xy;
  r1.xyzw = (int4)r0.zwzw ^ asint(cb0[8].yyyy);
  r2.xyzw = max((int4)-r0.zwzw, (int4)r0.zwzw);
  r3.x = max(asint(-cb0[8].y), asint(cb0[8].y));
  uiDest.xyzw = (uint4)r2.xyzw / (uint4)r3.xxxx;
  r2.xyzw = uiDest.xyzw;
  r3.xyzw = -(int4)r2.zwzw;
  r1.xyzw = (int4)r1.xyzw & int4(0x80000000,0x80000000,0x80000000,0x80000000);
  r1.xyzw = r1.xyzw ? r3.xyzw : r2.xyzw;
  r0.zw = mad((int2)-r1.zw, asint(cb0[8].yy), (int2)r0.zw);
  r0.zw = cmp((int2)r0.zw == asint(cb0[7].xy));
  r0.z = r0.w ? r0.z : 0;
  r2.xy = r0.xy + r0.xy;
  r0.w = r0.x * 2 + -1;
  r3.x = -r0.y * 2 + 1;
  r3.yz = max(asuint(cb0[1].xy), (uint2)r1.zw);
  r4.xy = min(asuint(cb0[1].zw), (uint2)r3.yz);
  r4.zw = float2(0,0);
  r3.yz = t2.Load(r4.xyw).xy;
  r3.w = 100000 * r3.y;
  r5.x = cmp(cb1[31].w < 1);
  r5.y = r3.y * 100000 + cb1[65].w;
  r5.y = cb1[65].z * r5.y;
  r5.y = 1 / r5.y;
  r3.w = r3.w * cb1[30].z + cb1[31].z;
  r3.w = r5.x ? r5.y : r3.w;
  r5.xyz = cb1[123].xyw * r3.xxx;
  r5.xyz = r0.www * cb1[122].xyw + r5.xyz;
  r5.xyz = r3.www * cb1[124].xyw + r5.xyz;
  r5.xyz = cb1[125].xyw + r5.xyz;
  r3.xw = r5.xy / r5.zz;
  r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
  r2.yz = r2.zw + -r3.xw;
  r2.xw = float2(-1,0) + r2.xw;
  r2.xy = r2.xw + -r2.yz;
  r2.xy = float2(0.5,0.5) * r2.xy;
  r2.zw = r2.xy * float2(1,-1) + float2(0.5,0.5);
  r2.yz = cmp(float2(0,0) < r2.zw);
  r0.w = r2.z ? r2.y : 0;
  r2.xy = float2(0.5,0) + r2.xw;
  r2.zw = cmp(r2.xy < float2(1,1));
  r2.z = r2.w ? r2.z : 0;
  r0.w = r2.z ? r0.w : 0;
  r2.z = cmp(asint(cb0[8].x) == 2);
  if (r2.z != 0) {
    r2.z = ~(int)r0.w;
    r2.z = (int)r0.z | (int)r2.z;
    if (r2.z != 0) {
      o0.xyzw = t1.Load(r4.xyw).xyzw;
      o1.xy = r3.yz;
    } else {
      r2.zw = max(cb0[5].xy, r2.xy);
      r2.zw = min(cb0[5].zw, r2.zw);
      o0.xyzw = t3.SampleLevel(s0_s, r2.zw, 0).xyzw;
      r2.zw = t4.SampleLevel(s0_s, r2.zw, 0).xy;
      o1.xy = r2.zw;
    }
    return;
  } else {
    if (r0.w != 0) {
      if (r0.z != 0) {
        o0.xyzw = t1.Load(r4.xyz).xyzw;
        o1.xy = r3.yz;
      } else {
        r0.zw = max(cb0[5].xy, r2.xy);
        r0.zw = min(cb0[5].zw, r0.zw);
        r3.xyzw = t3.SampleLevel(s0_s, r0.zw, 0).xyzw;
        r0.zw = t4.SampleLevel(s0_s, r0.zw, 0).xy;
        r2.xy = asint(cb0[7].zw);
        r2.xy = v0.xy + r2.xy;
        r4.xy = (int2)r2.xy;
        r4.zw = float2(0,0);
        r2.x = t0.Load(r4.xyz).x;
        r4.xy = (int2)r1.zw;
        r6.xyzw = cb1[45].xyzw * r4.yyyy;
        r4.xyzw = r4.xxxx * cb1[44].xyzw + r6.xyzw;
        r4.xyzw = r2.xxxx * cb1[46].xyzw + r4.xyzw;
        r4.xyzw = cb1[47].xyzw + r4.xyzw;
        r4.xyz = r4.xyz / r4.www;
        r4.xyz = -cb1[70].xyz + r4.xyz;
        r4.xyz = -cb1[67].xyz + r4.xyz;
        r2.x = dot(r4.xyz, r4.xyz);
        r2.x = sqrt(r2.x);
        r2.y = 9.99999997e-007 * r2.x;
        r4.x = r2.x * 9.99999975e-006 + -r0.w;
        r2.y = cmp(r2.y < abs(r4.x));
        if (r2.y != 0) {
          r4.xyzw = (int4)r1.zwzw + int4(1,0,1,1);
          r4.xyzw = max(asuint(cb0[1].xyxy), (uint4)r4.xyzw);
          r4.xyzw = min(asuint(cb0[1].zwzw), (uint4)r4.zwxy);
          r6.xy = r4.zw;
          r6.zw = float2(0,0);
          r7.xy = t2.Load(r6.xyw).xy;
          r2.y = r2.x * 9.99999975e-006 + -r7.y;
          r7.z = cmp(abs(r2.y) < 100000000);
          if (r7.z != 0) {
            r3.xyzw = t1.Load(r6.xyz).xyzw;
            r0.zw = r7.xy;
            r2.y = abs(r2.y);
          } else {
            r2.y = 100000000;
          }
          r4.zw = float2(0,0);
          r6.xy = t2.Load(r4.xyw).xy;
          r6.z = r2.x * 9.99999975e-006 + -r6.y;
          r6.w = cmp(abs(r6.z) < r2.y);
          if (r6.w != 0) {
            r3.xyzw = t1.Load(r4.xyz).xyzw;
            r0.zw = r6.xy;
            r2.y = abs(r6.z);
          }
          r4.xyzw = (int4)r1.zwzw + int4(0,1,-1,1);
          r4.xyzw = max(asuint(cb0[1].xyxy), (uint4)r4.xyzw);
          r4.xyzw = min(asuint(cb0[1].zwzw), (uint4)r4.zwxy);
          r6.xy = r4.zw;
          r6.zw = float2(0,0);
          r7.xy = t2.Load(r6.xyw).xy;
          r7.z = r2.x * 9.99999975e-006 + -r7.y;
          r7.w = cmp(abs(r7.z) < r2.y);
          if (r7.w != 0) {
            r3.xyzw = t1.Load(r6.xyz).xyzw;
            r0.zw = r7.xy;
            r2.y = abs(r7.z);
          }
          r4.zw = float2(0,0);
          r6.xy = t2.Load(r4.xyw).xy;
          r6.z = r2.x * 9.99999975e-006 + -r6.y;
          r6.w = cmp(abs(r6.z) < r2.y);
          if (r6.w != 0) {
            r3.xyzw = t1.Load(r4.xyz).xyzw;
            r0.zw = r6.xy;
            r2.y = abs(r6.z);
          }
          r4.xyzw = (int4)r1.zwzw + int4(-1,0,-1,-1);
          r4.xyzw = max(asuint(cb0[1].xyxy), (uint4)r4.xyzw);
          r4.xyzw = min(asuint(cb0[1].zwzw), (uint4)r4.zwxy);
          r6.xy = r4.zw;
          r6.zw = float2(0,0);
          r7.xy = t2.Load(r6.xyw).xy;
          r7.z = r2.x * 9.99999975e-006 + -r7.y;
          r7.w = cmp(abs(r7.z) < r2.y);
          if (r7.w != 0) {
            r3.xyzw = t1.Load(r6.xyz).xyzw;
            r0.zw = r7.xy;
            r2.y = abs(r7.z);
          }
          r4.zw = float2(0,0);
          r6.xy = t2.Load(r4.xyw).xy;
          r6.z = r2.x * 9.99999975e-006 + -r6.y;
          r6.w = cmp(abs(r6.z) < r2.y);
          if (r6.w != 0) {
            r3.xyzw = t1.Load(r4.xyz).xyzw;
            r0.zw = r6.xy;
            r2.y = abs(r6.z);
          }
          r1.xyzw = (int4)r1.xyzw + int4(0,-1,1,-1);
          r1.xyzw = max(asuint(cb0[1].xyxy), (uint4)r1.xyzw);
          r1.xyzw = min(asuint(cb0[1].zwzw), (uint4)r1.zwxy);
          r4.xy = r1.zw;
          r4.zw = float2(0,0);
          r6.xy = t2.Load(r4.xyw).xy;
          r6.z = r2.x * 9.99999975e-006 + -r6.y;
          r6.w = cmp(abs(r6.z) < r2.y);
          if (r6.w != 0) {
            r3.xyzw = t1.Load(r4.xyz).xyzw;
            r0.zw = r6.xy;
            r2.y = abs(r6.z);
          }
          r1.zw = float2(0,0);
          r4.xy = t2.Load(r1.xyw).xy;
          r2.x = r2.x * 9.99999975e-006 + -r4.y;
          r2.x = cmp(abs(r2.x) < r2.y);
          if (r2.x != 0) {
            r3.xyzw = t1.Load(r1.xyz).xyzw;
            r0.zw = r4.xy;
          }
        }
        r1.xyzw = (int4)r3.xyzw & int4(0x7f800000,0x7f800000,0x7f800000,0x7f800000);
        r1.xyzw = cmp((int4)r1.xyzw != int4(0x7f800000,0x7f800000,0x7f800000,0x7f800000));
        r1.xy = r1.zw ? r1.xy : 0;
        r1.x = r1.y ? r1.x : 0;
        r1.yz = (int2)r0.zw & int2(0x7f800000,0x7f800000);
        r1.yz = cmp((int2)r1.yz != int2(0x7f800000,0x7f800000));
        r1.y = r1.z ? r1.y : 0;
        r1.x = r1.y ? r1.x : 0;
        o0.xyzw = r1.xxxx ? r3.xyzw : float4(0,0,0,1);
        o1.xy = r1.xx ? r0.zw : float2(1000,1000);
      }
    } else {
      r0.xy = max(cb0[2].xy, r0.xy);
      r0.xy = min(cb0[2].zw, r0.xy);
      o0.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
      r0.xy = t2.SampleLevel(s0_s, r0.xy, 0).xy;
      o1.xy = r0.xy;
    }
  }
  return;
}