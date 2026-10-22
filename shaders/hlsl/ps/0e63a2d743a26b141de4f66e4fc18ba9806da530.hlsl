// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[132].zwzw * v1.xyxy;
  r1.xyzw = t2.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r2.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r2.y = t1.SampleLevel(s0_s, r0.zw, 0).w;
  r2.y = 255 * r2.y;
  r2.y = round(r2.y);
  r2.y = (uint)r2.y;
  r2.y = (int)r2.y & 15;
  r2.yz = cmp((int2)r2.yy == int2(12,13));
  r2.y = (int)r2.z | (int)r2.y;
  r2.zw = cb1[132].zw * cb0[2].xx;
  r3.x = cmp(0 < r1.x);
  if (r3.x != 0) {
    r3.x = t3.SampleLevel(s1_s, r0.zw, 0).w;
    r4.xy = r2.zw * r1.xx;
    r5.xy = -r4.xy;
    r5.z = 0;
    r6.xyzw = r4.xyxy * float4(-0.709999979,-0.709999979,0.709999979,-0.709999979) + r0.zwzw;
    r5.xyzw = v1.xyxy * cb1[132].zwzw + r5.zyxz;
    r4.z = 0;
    r7.xyzw = v1.xyxy * cb1[132].zwzw + r4.xzzy;
    r4.xyzw = r4.xyxy * float4(-0.709999979,0.709999979,0.709999979,0.709999979) + r0.zwzw;
    r3.yz = t2.SampleLevel(s0_s, r6.xy, 0).xy;
    r3.y = cmp(0 < r3.y);
    r3.w = cmp(r1.y < r3.z);
    r3.y = r3.w ? r3.y : 0;
    r3.y = r3.y ? r3.z : r1.y;
    r3.zw = t2.SampleLevel(s0_s, r5.xy, 0).xy;
    r3.z = cmp(0 < r3.z);
    r5.x = cmp(r1.y < r3.w);
    r3.z = r3.z ? r5.x : 0;
    r3.z = r3.z ? r3.w : r1.y;
    r5.xy = t2.SampleLevel(s0_s, r6.zw, 0).xy;
    r3.w = cmp(0 < r5.x);
    r5.x = cmp(r1.y < r5.y);
    r3.w = r3.w ? r5.x : 0;
    r3.w = r3.w ? r5.y : r1.y;
    r5.xy = t2.SampleLevel(s0_s, r5.zw, 0).xy;
    r5.x = cmp(0 < r5.x);
    r5.z = cmp(r1.y < r5.y);
    r5.x = r5.z ? r5.x : 0;
    r5.x = r5.x ? r5.y : r1.y;
    r5.yz = t2.SampleLevel(s0_s, r7.xy, 0).xy;
    r5.y = cmp(0 < r5.y);
    r5.w = cmp(r1.y < r5.z);
    r5.y = r5.w ? r5.y : 0;
    r5.y = r5.y ? r5.z : r1.y;
    r4.xy = t2.SampleLevel(s0_s, r4.xy, 0).xy;
    r4.x = cmp(0 < r4.x);
    r5.z = cmp(r1.y < r4.y);
    r4.x = r4.x ? r5.z : 0;
    r4.x = r4.x ? r4.y : r1.y;
    r5.zw = t2.SampleLevel(s0_s, r7.zw, 0).xy;
    r4.y = cmp(0 < r5.z);
    r5.z = cmp(r1.y < r5.w);
    r4.y = r4.y ? r5.z : 0;
    r4.y = r4.y ? r5.w : r1.y;
    r4.zw = t2.SampleLevel(s0_s, r4.zw, 0).xy;
    r4.z = cmp(0 < r4.z);
    r5.z = cmp(r1.y < r4.w);
    r4.z = r4.z ? r5.z : 0;
    r4.z = r4.z ? r4.w : r1.y;
    r4.w = r3.y + -r3.w;
    r5.x = r5.x + -r5.y;
    r4.w = r5.x * 2 + r4.w;
    r4.w = r4.w + r4.x;
    r4.w = r4.w + -r4.z;
    r3.yz = -r4.xy + r3.yz;
    r3.y = r3.z * 2 + r3.y;
    r3.y = r3.y + r3.w;
    r3.y = r3.y + -r4.z;
    r3.y = r3.y * r3.y;
    r3.y = r4.w * r4.w + r3.y;
    r3.y = cb0[2].w * r3.y;
    r3.y = sqrt(r3.y);
    r3.y = 1 + -r3.y;
    r3.y = r3.y * r1.z;
    r1.y = r3.x;
    r3.x = -1;
  } else {
    if (r2.y == 0) {
      r4.zw = v1.xy * cb1[132].zw + -r2.zw;
      r4.xy = v1.xy * cb1[132].zw + r2.zw;
      r3.z = t2.SampleLevel(s0_s, r4.zw, 0).x;
      r3.w = cmp(0 < r3.z);
      if (r3.w != 0) {
        r1.x = r3.z + r1.x;
        r1.y = t3.SampleLevel(s1_s, r4.zw, 0).w;
        r1.z = 1;
      } else {
        r1.yz = float2(0,0);
      }
      r3.z = t2.SampleLevel(s0_s, r4.xw, 0).x;
      r3.w = cmp(0 < r3.z);
      if (r3.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r3.z + r1.x;
        r3.z = t3.SampleLevel(s1_s, r4.xw, 0).w;
        r1.y = r3.z + r1.y;
      }
      r3.z = t2.SampleLevel(s0_s, r4.zy, 0).x;
      r3.w = cmp(0 < r3.z);
      if (r3.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r3.z + r1.x;
        r3.z = t3.SampleLevel(s1_s, r4.zy, 0).w;
        r1.y = r3.z + r1.y;
      }
      r3.z = t2.SampleLevel(s0_s, r4.xy, 0).x;
      r3.w = cmp(0 < r3.z);
      if (r3.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r3.z + r1.x;
        r3.z = t3.SampleLevel(s1_s, r4.xy, 0).w;
        r1.y = r3.z + r1.y;
      }
      r3.x = cmp(0 < r1.z);
      r3.zw = r1.xy / r1.zz;
      r1.xy = r3.xx ? r3.zw : r1.xy;
    } else {
      r1.y = 0;
      r3.x = 0;
    }
    r3.y = 1;
  }
  if (r3.x != 0) {
    r4.xy = r2.zw * r1.xx;
    r5.xy = -r4.xy;
    r5.z = 0;
    r6.xyzw = r4.xyxy * float4(-0.709999979,-0.709999979,0.709999979,-0.709999979) + r0.zwzw;
    r5.xyzw = v1.xyxy * cb1[132].zwzw + r5.zyxz;
    r4.z = 0;
    r7.xyzw = v1.xyxy * cb1[132].zwzw + r4.xzzy;
    r0.xyzw = r4.xyxy * float4(-0.709999979,0.709999979,0.709999979,0.709999979) + r0.xyzw;
    r1.z = r2.y ? r2.x : 0;
    r3.xz = t2.SampleLevel(s0_s, r6.xy, 0).xw;
    r2.z = t1.SampleLevel(s0_s, r6.xy, 0).w;
    r2.z = 255 * r2.z;
    r2.z = round(r2.z);
    r2.z = (uint)r2.z;
    r2.z = (int)r2.z & 15;
    r2.w = cmp(0 < r3.x);
    if (r2.w != 0) {
      r3.x = t0.SampleLevel(s0_s, r6.xy, 0).x;
      r3.w = 1;
      r4.xyz = r3.xzw;
    } else {
      r4.xyz = float3(0,0,0);
      r3.x = r1.z;
    }
    r2.z = cmp((int)r2.z == 14);
    r2.w = cmp(r3.x < r1.z);
    r2.z = (int)r2.w | (int)r2.z;
    r2.z = r2.z ? r1.z : r3.x;
    r3.xz = t2.SampleLevel(s0_s, r5.xy, 0).xw;
    r2.w = t1.SampleLevel(s0_s, r5.xy, 0).w;
    r2.w = 255 * r2.w;
    r2.w = round(r2.w);
    r2.w = (uint)r2.w;
    r2.w = (int)r2.w & 15;
    r3.x = cmp(0 < r3.x);
    if (r3.x != 0) {
      r3.x = t0.SampleLevel(s0_s, r5.xy, 0).x;
      r4.x = r4.x + r3.x;
      r4.y = r4.y + r3.z;
      r4.z = 1 + r4.z;
    } else {
      r3.x = r1.z;
    }
    r2.w = cmp((int)r2.w == 14);
    r3.z = cmp(r3.x < r1.z);
    r2.w = (int)r2.w | (int)r3.z;
    r2.w = r2.w ? r1.z : r3.x;
    r3.xz = t2.SampleLevel(s0_s, r6.zw, 0).xw;
    r3.w = t1.SampleLevel(s0_s, r6.zw, 0).w;
    r3.w = 255 * r3.w;
    r3.w = round(r3.w);
    r3.w = (uint)r3.w;
    r3.w = (int)r3.w & 15;
    r3.x = cmp(0 < r3.x);
    if (r3.x != 0) {
      r3.x = t0.SampleLevel(s0_s, r6.zw, 0).x;
      r4.x = r4.x + r3.x;
      r4.y = r4.y + r3.z;
      r4.z = 1 + r4.z;
    } else {
      r3.x = r1.z;
    }
    r3.z = cmp((int)r3.w == 14);
    r3.w = cmp(r3.x < r1.z);
    r3.z = (int)r3.w | (int)r3.z;
    r3.x = r3.z ? r1.z : r3.x;
    r3.zw = t2.SampleLevel(s0_s, r5.zw, 0).xw;
    r4.w = t1.SampleLevel(s0_s, r5.zw, 0).w;
    r4.w = 255 * r4.w;
    r4.w = round(r4.w);
    r4.w = (uint)r4.w;
    r4.w = (int)r4.w & 15;
    r3.z = cmp(0 < r3.z);
    if (r3.z != 0) {
      r3.z = t0.SampleLevel(s0_s, r5.zw, 0).x;
      r4.x = r4.x + r3.z;
      r4.y = r4.y + r3.w;
      r4.z = 1 + r4.z;
    } else {
      r3.z = r1.z;
    }
    r3.w = cmp((int)r4.w == 14);
    r4.w = cmp(r3.z < r1.z);
    r3.w = (int)r3.w | (int)r4.w;
    r3.z = r3.w ? r1.z : r3.z;
    r5.xy = t2.SampleLevel(s0_s, r7.xy, 0).xw;
    r3.w = t1.SampleLevel(s0_s, r7.xy, 0).w;
    r3.w = 255 * r3.w;
    r3.w = round(r3.w);
    r3.w = (uint)r3.w;
    r3.w = (int)r3.w & 15;
    r4.w = cmp(0 < r5.x);
    if (r4.w != 0) {
      r4.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
      r4.x = r4.x + r4.w;
      r4.y = r5.y + r4.y;
      r4.z = 1 + r4.z;
    } else {
      r4.w = r1.z;
    }
    r3.w = cmp((int)r3.w == 14);
    r5.x = cmp(r4.w < r1.z);
    r3.w = (int)r3.w | (int)r5.x;
    r3.w = r3.w ? r1.z : r4.w;
    r5.xy = t2.SampleLevel(s0_s, r0.xy, 0).xw;
    r4.w = t1.SampleLevel(s0_s, r0.xy, 0).w;
    r4.w = 255 * r4.w;
    r4.w = round(r4.w);
    r4.w = (uint)r4.w;
    r4.w = (int)r4.w & 15;
    r5.x = cmp(0 < r5.x);
    if (r5.x != 0) {
      r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
      r4.x = r4.x + r0.x;
      r4.y = r5.y + r4.y;
      r4.z = 1 + r4.z;
    } else {
      r0.x = r1.z;
    }
    r0.y = cmp((int)r4.w == 14);
    r4.w = cmp(r0.x < r1.z);
    r0.y = (int)r0.y | (int)r4.w;
    r0.x = r0.y ? r1.z : r0.x;
    r5.xy = t2.SampleLevel(s0_s, r7.zw, 0).xw;
    r0.y = t1.SampleLevel(s0_s, r7.zw, 0).w;
    r0.y = 255 * r0.y;
    r0.y = round(r0.y);
    r0.y = (uint)r0.y;
    r0.y = (int)r0.y & 15;
    r4.w = cmp(0 < r5.x);
    if (r4.w != 0) {
      r4.w = t0.SampleLevel(s0_s, r7.zw, 0).x;
      r4.x = r4.x + r4.w;
      r4.y = r5.y + r4.y;
      r4.z = 1 + r4.z;
    } else {
      r4.w = r1.z;
    }
    r0.y = cmp((int)r0.y == 14);
    r5.x = cmp(r4.w < r1.z);
    r0.y = (int)r0.y | (int)r5.x;
    r0.y = r0.y ? r1.z : r4.w;
    r5.xy = t2.SampleLevel(s0_s, r0.zw, 0).xw;
    r4.w = t1.SampleLevel(s0_s, r0.zw, 0).w;
    r4.w = 255 * r4.w;
    r4.w = round(r4.w);
    r4.w = (uint)r4.w;
    r4.w = (int)r4.w & 15;
    r5.x = cmp(0 < r5.x);
    if (r5.x != 0) {
      r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
      r4.x = r4.x + r0.z;
      r4.y = r5.y + r4.y;
      r4.z = 1 + r4.z;
    } else {
      r0.z = r1.z;
    }
    r0.w = cmp((int)r4.w == 14);
    r4.w = cmp(r0.z < r1.z);
    r0.w = (int)r0.w | (int)r4.w;
    r0.z = r0.w ? r1.z : r0.z;
    r0.w = ~(int)r2.y;
    r1.z = cmp(0 < r4.z);
    r0.w = r0.w ? r1.z : 0;
    r4.xy = r4.xy / r4.zz;
    r1.x = r2.x;
    r1.xz = r0.ww ? r4.xy : r1.xw;
    r0.w = max(9.99999997e-007, r1.x);
    r1.x = -r3.x + r2.z;
    r1.w = r3.z + -r3.w;
    r1.x = r1.w * 2 + r1.x;
    r1.x = r1.x + r0.x;
    r1.x = r1.x + -r0.z;
    r0.xy = r2.zw + -r0.xy;
    r0.x = r0.y * 2 + r0.x;
    r0.x = r0.x + r3.x;
    r0.x = r0.x + -r0.z;
    r0.x = r0.x * r0.x;
    r0.x = r1.x * r1.x + r0.x;
    r0.x = cb0[2].y * r0.x;
    r0.x = sqrt(r0.x);
    r0.y = cb0[2].z + r1.z;
    r0.y = r0.y * r0.w;
    r0.x = cmp(r0.x >= r0.y);
    r0.x = r0.x ? 0 : 1;
    r3.y = r3.y * r0.x;
  } else {
    r0.w = r2.x;
  }
  r3.y = saturate(r3.y);
  r0.x = 1 + -r3.y;
  r0.y = cmp(0 < r0.x);
  r0.y = r0.y ? r0.w : r2.x;
  r0.z = r0.y * cb1[65].x + cb1[65].y;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = saturate(r0.z / cb0[1].w);
  r0.w = cmp(0.699999988 < r1.y);
  r1.x = cb0[1].z + -cb0[1].y;
  r1.x = r0.z * r1.x + cb0[1].y;
  r1.y = cb0[1].x + -cb0[0].w;
  r0.z = r0.z * r1.y + cb0[0].w;
  r0.z = r0.w ? r1.x : r0.z;
  o0.xyz = cb0[4].xyz * r0.zzz;
  o0.w = r0.x;
  oDepth = r0.y;
  return;
}