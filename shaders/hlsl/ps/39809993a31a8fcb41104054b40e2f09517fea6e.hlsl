// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[197];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r0.zw = cmp((int2)r0.zz == int2(12,13));
  r0.z = (int)r0.w | (int)r0.z;
  if (r0.z != 0) {
    o0.xyzw = float4(1,1,1,1);
    o1.xyzw = float4(1,1,1,1);
  } else {
    r0.zw = asuint(cb0[13].xy);
    r0.zw = -r0.zw * cb1[132].zw + r0.xy;
    r1.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r1.y = r1.x * cb1[65].x + cb1[65].y;
    r1.x = r1.x * cb1[65].z + -cb1[65].w;
    r1.x = 1 / r1.x;
    r1.x = r1.y + r1.x;
    r1.yz = float2(0.5,0.5) * cb1[132].xy;
    r1.yz = floor(r1.yz);
    r2.xy = float2(1,1) / r1.yz;
    r3.xy = r0.zw * r1.yz + float2(-0.5,-0.5);
    r3.xy = floor(r3.xy);
    r3.xy = r3.xy / r1.yz;
    r3.xy = r2.xy * float2(0.5,0.5) + r3.xy;
    r0.zw = -r3.xy + r0.zw;
    r3.zw = r0.zw * r1.yz;
    r4.xy = t3.SampleLevel(s1_s, r3.xy, 0).xy;
    r2.z = 0;
    r5.xyzw = r3.xyxy + r2.xzzy;
    r2.zw = t3.SampleLevel(s1_s, r5.xy, 0).xy;
    r4.zw = t3.SampleLevel(s1_s, r5.zw, 0).xy;
    r2.xy = r3.xy + r2.xy;
    r2.xy = t3.SampleLevel(s1_s, r2.xy, 0).xy;
    r0.zw = -r0.wz * r1.zy + float2(1,1);
    r5.x = r0.z * r0.w;
    r5.yz = r0.zw * r3.zw;
    r5.w = r3.w * r3.z;
    r3.xz = r4.yw;
    r3.yw = r2.wy;
    r1.xyzw = abs(r3.xyzw) + -r1.xxxx;
    r1.xyzw = float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005) + abs(r1.xyzw);
    r1.xyzw = float4(1,1,1,1) / r1.xyzw;
    r1.xyzw = r5.xyzw * r1.xyzw;
    r0.z = r1.y * r2.z;
    r0.z = r1.x * r4.x + r0.z;
    r0.z = r1.z * r4.z + r0.z;
    r0.z = r1.w * r2.x + r0.z;
    r0.w = dot(r1.xyzw, float4(1,1,1,1));
    r0.z = r0.z / r0.w;
    r0.z = cb0[17].y + r0.z;
    r0.z = min(1, r0.z);
    r0.w = cmp(0 < cb0[17].x);
    if (r0.w != 0) {
      o0.xyzw = sqrt(r0.zzzz);
    } else {
      r0.w = cmp(cb1[196].y < 1);
      if (r0.w != 0) {
        r0.x = t1.SampleLevel(s0_s, r0.xy, 0).w;
        r0.x = 3.99900007 * r0.x;
        r0.x = (uint)r0.x;
        r0.x = (int)r0.x & 2;
        r0.x = r0.x ? cb1[196].y : 1;
        r0.y = -1 + r0.z;
        r0.z = r0.x * r0.y + 1;
      }
      o0.xyzw = r0.zzzz;
    }
    o1.xyzw = r0.zzzz;
  }
  return;
}