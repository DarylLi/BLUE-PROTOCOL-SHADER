// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[49];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  if (cb2[0].z != 0) {
    r0.xyz = (uint3)vThreadID.xyz;
    r0.xyz = cb0[3].xyz + r0.xyz;
    r1.xy = asuint(cb0[0].xy);
    r0.xy = r0.xy / r1.xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(1,-1) * r0.xy;
    r0.z = r0.z / cb0[1].z;
    r0.z = exp2(r0.z);
    r0.z = -cb0[1].y + r0.z;
    r0.z = r0.z / cb0[1].x;
    r0.w = cmp(cb1[31].w < 1);
    r1.x = cb1[65].w + r0.z;
    r1.x = cb1[65].z * r1.x;
    r1.x = 1 / r1.x;
    r1.y = r0.z * cb1[30].z + cb1[31].z;
    r0.w = r0.w ? r1.x : r1.y;
    r1.xyzw = cb0[21].xyzw * r0.yyyy;
    r1.xyzw = r0.xxxx * cb0[20].xyzw + r1.xyzw;
    r1.xyzw = r0.wwww * cb0[22].xyzw + r1.xyzw;
    r1.xyzw = cb0[23].xyzw + r1.xyzw;
    r0.xyw = r1.xyz / r1.www;
    r0.xyw = -cb1[70].xyz + r0.xyw;
    r1.xyz = -cb1[67].xyz + r0.xyw;
    r1.x = dot(r1.xyz, r1.xyz);
    r1.x = sqrt(r1.x);
    r1.x = saturate(r1.x / cb0[28].z);
    if (cb2[9].z != 0) {
      r1.y = cb2[9].z;
      r1.z = 0;
      while (true) {
        r1.w = cmp((uint)r1.z >= asuint(cb2[9].z));
        if (r1.w != 0) break;
        r1.w = dot(cb2[10].xyzw, icb[r1.z+0].xyzw);
        r1.w = cmp(r0.z < r1.w);
        if (r1.w != 0) {
          r1.y = r1.z;
          break;
        }
        r1.z = (int)r1.z + 1;
      }
      r0.z = cmp((uint)r1.y < asuint(cb2[9].z));
      if (r0.z != 0) {
        r0.z = (uint)r1.y << 2;
        r2.xyzw = cb2[r0.z+12].xyzw * r0.yyyy;
        r2.xyzw = r0.xxxx * cb2[r0.z+11].xyzw + r2.xyzw;
        r2.xyzw = r0.wwww * cb2[r0.z+13].xyzw + r2.xyzw;
        r2.xyzw = cb2[r0.z+14].xyzw + r2.xyzw;
        r1.zw = r2.xy / r2.ww;
        r3.xy = cmp(r1.zw >= cb2[r1.y+27].xy);
        r3.zw = cmp(cb2[r1.y+27].zw >= r1.zw);
        r3.xy = r3.zw ? r3.xy : 0;
        r1.y = r3.y ? r3.x : 0;
        if (r1.y != 0) {
          r1.y = t0.SampleLevel(s0_s, r1.zw, 0).x;
          r1.z = -cb2[48].x + r1.y;
          r1.z = cmp(r1.z < r2.z);
          r1.z = r1.z ? 1.000000 : 0;
          r2.yzw = cb2[r0.z+33].xyz * r2.yyy;
          r2.xyz = r2.xxx * cb2[r0.z+32].xyz + r2.yzw;
          r2.xyz = r1.yyy * cb2[r0.z+34].xyz + r2.xyz;
          r2.xyz = cb2[r0.z+35].xyz + r2.xyz;
          r0.xyz = -r2.xyz + r0.xyw;
          r0.x = dot(r0.xyz, r0.xyz);
          r0.x = sqrt(r0.x);
          r0.x = -cb0[28].x + r0.x;
          r0.x = saturate(r0.x / cb0[28].y);
          r0.x = 1 + -r0.x;
          r0.x = r1.z * r0.x;
          r0.x = r0.x * r1.x;
        } else {
          r0.x = 0;
        }
      } else {
        r0.x = 0;
      }
    } else {
      r0.x = 0;
    }
  } else {
    r0.x = 0;
  }
  r0.yzw = cmp((uint3)vThreadID.xyz < asuint(cb0[0].xyz));
  r0.y = r0.z ? r0.y : 0;
  r0.y = r0.w ? r0.y : 0;
  if (r0.y != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xxxx
  }
  return;
}