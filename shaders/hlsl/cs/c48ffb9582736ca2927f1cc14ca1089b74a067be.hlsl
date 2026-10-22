// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[54];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  if (cb2[0].z != 0) {
    r0.xyz = cb1[54].xyz * float3(1000,1000,1000) + cb1[55].xyz;
    r0.xyz = -cb1[70].xyz + r0.xyz;
    r0.xyz = -cb1[67].xyz + r0.xyz;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r0.xyz * r0.www;
    r0.xyz = r0.xyz * float3(30,30,30) + cb1[67].xyz;
    if (cb2[48].y != 0) {
      r1.xyzw = cb2[51].xyzw * r0.yyyy;
      r1.xyzw = r0.xxxx * cb2[50].xyzw + r1.xyzw;
      r1.xyzw = r0.zzzz * cb2[52].xyzw + r1.xyzw;
      r1.xyzw = cb2[53].xyzw + r1.xyzw;
      r2.xyzw = r1.xyxy / r1.wwww;
      r1.xy = cmp(r2.zw >= float2(0,0));
      r3.xy = cmp(float2(1,1) >= r2.zw);
      r1.xy = r1.xy ? r3.xy : 0;
      r0.w = r1.y ? r1.x : 0;
      if (r0.w != 0) {
        r2.xyzw = r2.xyzw * cb2[49].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r1.xy = frac(r2.zw);
        r2.xyzw = floor(r2.xyzw);
        r3.xyzw = float4(0.5,1.5,0.5,0.5) + r2.zwzw;
        r3.xyzw = cb2[49].zwzw * r3.xyzw;
        r4.x = t1.SampleLevel(s1_s, r3.xy, 0).x;
        r2.xyzw = float4(1.5,1.5,1.5,0.5) + r2.xyzw;
        r2.xyzw = cb2[49].zwzw * r2.xyzw;
        r4.y = t1.SampleLevel(s1_s, r2.xy, 0).x;
        r4.z = t1.SampleLevel(s1_s, r2.zw, 0).x;
        r4.w = t1.SampleLevel(s1_s, r3.zw, 0).x;
        r0.w = r1.z * 40 + -1;
        r2.xyzw = saturate(r4.xyzw * float4(40,40,40,40) + -r0.wwww);
        r3.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r4.xyzw);
        r3.xyzw = r3.xyzw ? float4(1,1,1,1) : 0;
        r2.xyzw = r3.xyzw + r2.xyzw;
        r2.xyzw = min(float4(1,1,1,1), r2.xyzw);
        r1.zw = r2.zy + -r2.wx;
        r1.xz = r1.xx * r1.zw + r2.wx;
        r0.w = r1.z + -r1.x;
        r0.w = r1.y * r0.w + r1.x;
      } else {
        r0.w = 1;
      }
    } else {
      r0.w = 1;
    }
    if (cb2[9].z != 0) {
      r1.xyzw = cb2[12].xyzw * r0.yyyy;
      r1.xyzw = r0.xxxx * cb2[11].xyzw + r1.xyzw;
      r1.xyzw = r0.zzzz * cb2[13].xyzw + r1.xyzw;
      r1.xyzw = cb2[14].xyzw + r1.xyzw;
      r0.xy = r1.xy / r1.ww;
      r1.xy = cmp(r0.xy >= cb2[27].xy);
      r2.xy = cmp(cb2[27].zw >= r0.xy);
      r1.xy = r1.xy ? r2.xy : 0;
      r0.z = r1.y ? r1.x : 0;
      if (r0.z != 0) {
        r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
        r0.x = -cb2[48].x + r0.x;
        r0.x = cmp(r1.z < r0.x);
        r0.w = r0.x ? 1.000000 : 0;
      }
    }
  } else {
    r0.w = 1;
  }
// No code for instruction (needs manual fix):
ld_uav_typed_indexable(buffer)(float,float,float,float) r0.x, l(0, 0, 0, 0), u0.xyzw
  r0.x = r0.x + -r0.w;
  r0.x = cb0[0].x * r0.x + r0.w;
  r0.x = min(1, r0.x);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, l(0,0,0,0), r0.xxxx
  return;
}