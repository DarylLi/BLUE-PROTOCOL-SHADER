// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[59];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = r0.xy / cb2[1].xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = float2(1,-1) * r0.xy;
  r0.z = cmp(cb1[31].w < 1);
  r1.xyzw = cb0[56].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[55].xyzw + r1.xyzw;
  r2.xy = vThreadID.xy;
  r2.w = 0;
  r0.xyw = cb1[67].xyz;
  r3.xyzw = float4(0,0,0,1);
  r2.z = 0;
  while (true) {
    r4.x = cmp((uint)r2.z >= asuint(cb2[0].z));
    if (r4.x != 0) break;
    r4.xyzw = t0.Load(r2.xyzw).xyzw;
    r5.x = (uint)r2.z;
    r5.x = 0.5 + r5.x;
    r5.x = r5.x / cb2[2].z;
    r5.x = exp2(r5.x);
    r5.x = -cb2[2].y + r5.x;
    r5.x = r5.x / cb2[2].x;
    r5.y = cb1[65].w + r5.x;
    r5.y = cb1[65].z * r5.y;
    r5.y = 1 / r5.y;
    r5.x = r5.x * cb1[30].z + cb1[31].z;
    r5.x = r0.z ? r5.y : r5.x;
    r5.xyzw = r5.xxxx * cb0[57].xyzw + r1.xyzw;
    r5.xyzw = cb0[58].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb1[70].xyz + r5.xyz;
    r6.xyz = r5.xyz + -r0.xyw;
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = sqrt(r5.w);
    r5.w = r5.w * -r4.w;
    r5.w = 1.44269502 * r5.w;
    r5.w = exp2(r5.w);
    r4.xyz = -r4.xyz * r5.www + r4.xyz;
    r4.w = max(9.99999975e-006, r4.w);
    r4.xyz = r4.xyz / r4.www;
    r3.xyz = r4.xyz * r3.www + r3.xyz;
    r3.w = r5.w * r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xyzz, r3.xyzw
    r2.z = (int)r2.z + 1;
    r0.xyw = r5.xyz;
  }
  return;
}