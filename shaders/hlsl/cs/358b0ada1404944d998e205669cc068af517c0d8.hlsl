// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = (uint3)vThreadID.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r0.xyz;
  r2.xy = asuint(cb0[0].xy);
  r1.xy = r1.xy / r2.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = float2(1,-1) * r1.xy;
  r0.w = r1.z / cb0[1].z;
  r0.w = exp2(r0.w);
  r0.w = -cb0[1].y + r0.w;
  r0.w = r0.w / cb0[1].x;
  r1.z = cmp(cb1[31].w < 1);
  r1.w = cb1[65].w + r0.w;
  r1.w = cb1[65].z * r1.w;
  r1.w = 1 / r1.w;
  r0.w = r0.w * cb1[30].z + cb1[31].z;
  r0.w = r1.z ? r1.w : r0.w;
  r3.xyzw = cb0[21].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb0[20].xyzw + r3.xyzw;
  r3.xyzw = r0.wwww * cb0[22].xyzw + r3.xyzw;
  r3.xyzw = cb0[23].xyzw + r3.xyzw;
  r1.xyw = r3.xyz / r3.www;
  r1.xyw = -cb1[70].xyz + r1.xyw;
  r3.xyz = cb0[25].xyw * r1.yyy;
  r3.xyz = r1.xxx * cb0[24].xyw + r3.xyz;
  r1.xyw = r1.www * cb0[26].xyw + r3.xyz;
  r1.xyw = cb0[27].xyw + r1.xyw;
  r1.xy = r1.xy / r1.ww;
  r3.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.w = r1.w * cb0[1].x + cb0[1].y;
  r0.w = log2(r0.w);
  r0.w = cb0[1].z * r0.w;
  r3.z = cb0[2].z * r0.w;
  r1.xyw = cmp(r3.xyz < float3(0,0,0));
  r0.w = (int)r1.y | (int)r1.x;
  r0.w = (int)r1.w | (int)r0.w;
  r1.xyw = cmp(float3(1,1,1) < r3.xyz);
  r1.x = (int)r1.y | (int)r1.x;
  r1.x = (int)r1.w | (int)r1.x;
  r0.w = (int)r0.w | (int)r1.x;
  r0.w = r0.w ? 0 : cb0[2].w;
  r1.x = cmp(r0.w < 0.00100000005);
  r4.xyz = cmp((uint3)vThreadID.xyz < asuint(cb0[0].xyz));
  r1.y = r4.y ? r4.x : 0;
  r1.y = r4.z ? r1.y : 0;
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.x ? cb0[19].x : 1;
  r2.zw = float2(0,0);
  r1.w = cb2[0].z;
  r3.w = cb2[9].z;
  while (true) {
    r4.x = cmp((uint)r2.w >= (uint)r1.x);
    if (r4.x != 0) break;
    if (r1.w != 0) {
      r4.xyz = cb0[r2.w+3].xyz + r0.xyz;
      r4.xy = r4.xy / r2.xy;
      r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
      r4.xy = float2(1,-1) * r4.xy;
      r4.z = r4.z / cb0[1].z;
      r4.z = exp2(r4.z);
      r4.z = -cb0[1].y + r4.z;
      r4.z = r4.z / cb0[1].x;
      r4.w = cb1[65].w + r4.z;
      r4.w = cb1[65].z * r4.w;
      r4.w = 1 / r4.w;
      r5.x = r4.z * cb1[30].z + cb1[31].z;
      r4.w = r1.z ? r4.w : r5.x;
      r5.xyzw = cb0[21].xyzw * r4.yyyy;
      r5.xyzw = r4.xxxx * cb0[20].xyzw + r5.xyzw;
      r5.xyzw = r4.wwww * cb0[22].xyzw + r5.xyzw;
      r5.xyzw = cb0[23].xyzw + r5.xyzw;
      r4.xyw = r5.xyz / r5.www;
      r4.xyw = -cb1[70].xyz + r4.xyw;
      r5.xyz = -cb1[67].xyz + r4.xyw;
      r5.x = dot(r5.xyz, r5.xyz);
      r5.x = sqrt(r5.x);
      r5.x = saturate(r5.x / cb0[28].z);
      if (r3.w != 0) {
        r5.y = r3.w;
        r5.z = 0;
        while (true) {
          r5.w = cmp((uint)r5.z >= (uint)r3.w);
          if (r5.w != 0) break;
          r5.w = dot(cb2[10].xyzw, icb[r5.z+0].xyzw);
          r5.w = cmp(r4.z < r5.w);
          if (r5.w != 0) {
            r5.y = r5.z;
            break;
          }
          r5.z = (int)r5.z + 1;
        }
        r4.z = cmp((uint)r5.y < (uint)r3.w);
        if (r4.z != 0) {
          r4.z = (uint)r5.y << 2;
          r6.xyzw = cb2[r4.z+12].xyzw * r4.yyyy;
          r6.xyzw = r4.xxxx * cb2[r4.z+11].xyzw + r6.xyzw;
          r6.xyzw = r4.wwww * cb2[r4.z+13].xyzw + r6.xyzw;
          r6.xyzw = cb2[r4.z+14].xyzw + r6.xyzw;
          r5.zw = r6.xy / r6.ww;
          r7.xy = cmp(r5.zw >= cb2[r5.y+27].xy);
          r7.zw = cmp(cb2[r5.y+27].zw >= r5.zw);
          r7.xy = r7.zw ? r7.xy : 0;
          r6.w = r7.y ? r7.x : 0;
          if (r6.w != 0) {
            r5.z = t0.SampleLevel(s0_s, r5.zw, 0).x;
            r5.w = -cb2[48].x + r5.z;
            r5.w = cmp(r5.w < r6.z);
            r5.w = r5.w ? 1.000000 : 0;
            r6.yzw = cb2[r4.z+33].xyz * r6.yyy;
            r6.xyz = r6.xxx * cb2[r4.z+32].xyz + r6.yzw;
            r6.xyz = r5.zzz * cb2[r4.z+34].xyz + r6.xyz;
            r6.xyz = cb2[r4.z+35].xyz + r6.xyz;
            r4.xyz = -r6.xyz + r4.xyw;
            r4.x = dot(r4.xyz, r4.xyz);
            r4.x = sqrt(r4.x);
            r4.x = -cb0[28].x + r4.x;
            r4.x = saturate(r4.x / cb0[28].y);
            r4.x = 1 + -r4.x;
            r4.x = r5.w * r4.x;
            r4.x = r4.x * r5.x;
          } else {
            r4.x = 0;
          }
        } else {
          r4.x = 0;
        }
      } else {
        r4.x = 0;
      }
      r2.z = r4.x + r2.z;
    }
    r2.w = (int)r2.w + 1;
  }
  r0.x = (uint)r1.x;
  r0.x = r2.z / r0.x;
  r0.y = cmp(0 < r0.w);
  if (r0.y != 0) {
    r0.y = t1.SampleLevel(s1_s, r3.xyz, 0).x;
    r0.y = r0.y + -r0.x;
    r0.x = r0.w * r0.y + r0.x;
  }
  if (r1.y != 0) {
    r0.y = (int)r0.x & 0x7fffffff;
    r0.y = cmp((int)r0.y == 0x7f800000);
    r0.x = r0.y ? 0 : r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xxxx
  }
  return;
}