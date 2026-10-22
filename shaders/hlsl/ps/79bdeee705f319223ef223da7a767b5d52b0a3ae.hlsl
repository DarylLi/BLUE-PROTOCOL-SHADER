// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (cb0[27].x != 0) {
      r0.yzw = -cb1[173].xyz + cb1[172].xyz;
      r0.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r0.yzw;
      r1.xy = -cb1[129].xy + v0.xy;
      r1.xy = r1.xy * cb1[130].zw + float2(-0.5,-0.5);
      r1.xy = v0.ww * r1.xy;
      r1.xy = float2(2000000,-2000000) * r1.xy;
      r1.yzw = cb1[49].xyz * r1.yyy;
      r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
      r1.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r1.xyz;
      r1.xyz = cb1[51].xyz + r1.xyz;
      r1.xyz = -cb1[67].xyz + r1.xyz;
      r1.w = dot(r1.xyz, r1.xyz);
      r1.w = rsqrt(r1.w);
      r1.xyz = r1.xyz * r1.www;
      r1.w = dot(r0.yzw, r0.yzw);
      r2.x = dot(r1.xyz, r1.xyz);
      r2.y = dot(r1.xyz, r0.yzw);
      r2.y = r2.y + r2.y;
      r2.z = cb2[0].y * cb2[0].y;
      r2.w = -cb2[0].y * cb2[0].y + r1.w;
      r3.x = r2.w * r2.x;
      r3.x = 4 * r3.x;
      r3.x = r2.y * r2.y + -r3.x;
      r3.y = cmp(r3.x >= 0);
      r3.x = sqrt(r3.x);
      r3.xz = r3.xx * float2(-1,1) + -r2.yy;
      r2.x = r2.x + r2.x;
      r2.xy = r3.xz / r2.xx;
      r2.xy = r3.yy ? r2.xy : float2(-1,-1);
      r3.xy = cmp(r2.xy < float2(0,0));
      r3.z = r3.y ? r3.x : 0;
      r4.xy = max(float2(0,0), r2.yx);
      r3.w = r3.y ? r4.y : -1;
      r3.w = r3.x ? r4.x : r3.w;
      r3.x = (int)r3.y | (int)r3.x;
      r3.y = min(r2.x, r2.y);
      r3.y = max(0, r3.y);
      r3.x = r3.x ? r3.w : r3.y;
      r3.x = cmp(r3.x < 0);
      r3.x = (int)r3.x | (int)r3.z;
      r3.y = cmp(cb1[183].w == 0.000000);
      r3.x = r3.y ? r3.x : 0;
      if (r3.x != 0) {
        r3.y = dot(r1.xyz, cb1[161].xyz);
        r3.z = cmp(cb1[169].x < r3.y);
        if (r3.z != 0) {
          r4.xy = cmp(float2(0,0) < r2.xy);
          r3.w = (int)r4.y | (int)r4.x;
          if (r3.w == 0) {
            r3.w = sqrt(r1.w);
            r4.xyz = r0.yzw / r3.www;
            r4.x = dot(r1.xyz, r4.xyz);
            r4.y = cb2[0].z * cb2[0].z;
            r4.z = cb2[0].z * cb2[0].z + -r2.z;
            r4.z = max(0, r4.z);
            r4.w = max(0, r2.w);
            r5.x = r4.x * r4.x + -1;
            r4.y = r1.w * r5.x + r4.y;
            r4.yzw = sqrt(r4.yzw);
            r4.x = -r3.w * r4.x + r4.y;
            r4.x = max(0, r4.x);
            r3.w = cb2[0].z + -r3.w;
            r4.y = r4.w + r4.z;
            r4.x = r4.x + -r3.w;
            r3.w = r4.y + -r3.w;
            r4.x = r4.x / r3.w;
            r4.y = r4.w / r4.z;
            r4.xyz = t1.SampleLevel(s1_s, r4.xy, 0).xyz;
          } else {
            r4.xyz = float3(0,0,0);
          }
          r4.xyz = cb1[167].xyz * r4.xyz;
        }
        r4.xyz = r3.zzz ? r4.xyz : 0;
        r3.z = cmp(0 != cb1[184].x);
        r3.z = r3.z ? cb1[184].y : cb1[135].y;
        r4.xyz = r4.xyz * r3.zzz;
        r4.xyz = min(float3(64000,64000,64000), r4.xyz);
        r3.z = 1 + -cb1[169].x;
        r3.w = 0.25 * r3.z;
        r3.z = r3.z * 0.25 + cb1[169].x;
        r3.y = r3.z + -r3.y;
        r3.y = saturate(r3.y / r3.w);
        r3.y = 1 + -r3.y;
        r3.yzw = r4.xyz * r3.yyy;
      }
      r3.yzw = r3.xxx ? r3.yzw : 0;
      if (r3.x != 0) {
        r4.x = dot(r1.xyz, cb1[162].xyz);
        r4.y = cmp(cb1[170].x < r4.x);
        if (r4.y != 0) {
          r2.xy = cmp(float2(0,0) < r2.xy);
          r2.x = (int)r2.y | (int)r2.x;
          if (r2.x == 0) {
            r2.x = sqrt(r1.w);
            r0.yzw = r0.yzw / r2.xxx;
            r0.y = dot(r1.xyz, r0.yzw);
            r0.z = cb2[0].z * cb2[0].z;
            r0.w = cb2[0].z * cb2[0].z + -r2.z;
            r0.w = max(0, r0.w);
            r1.x = max(0, r2.w);
            r1.x = sqrt(r1.x);
            r1.y = r0.y * r0.y + -1;
            r0.z = r1.w * r1.y + r0.z;
            r0.zw = sqrt(r0.zw);
            r0.y = -r2.x * r0.y + r0.z;
            r0.y = max(0, r0.y);
            r0.z = cb2[0].z + -r2.x;
            r1.y = r1.x + r0.w;
            r0.y = r0.y + -r0.z;
            r0.z = r1.y + -r0.z;
            r2.x = r0.y / r0.z;
            r2.y = r1.x / r0.w;
            r0.yzw = t1.SampleLevel(s1_s, r2.xy, 0).xyz;
          } else {
            r0.yzw = float3(0,0,0);
          }
          r0.yzw = cb1[168].xyz * r0.yzw;
        }
        r0.yzw = r4.yyy ? r0.yzw : 0;
        r1.x = cmp(0 != cb1[184].x);
        r1.x = r1.x ? cb1[184].y : cb1[135].y;
        r0.yzw = r1.xxx * r0.yzw;
        r0.yzw = min(float3(64000,64000,64000), r0.yzw);
        r1.x = 1 + -cb1[170].x;
        r1.y = 0.25 * r1.x;
        r1.x = r1.x * 0.25 + cb1[170].x;
        r1.x = r1.x + -r4.x;
        r1.x = saturate(r1.x / r1.y);
        r1.x = 1 + -r1.x;
        r0.yzw = r1.xxx * r0.yzw;
      }
      r0.yzw = r3.xxx ? r0.yzw : 0;
      r0.yzw = r3.yzw + r0.yzw;
    } else {
      r0.yzw = float3(0,0,0);
    }
    r1.xyz = cb3[9].xyz;
  } else {
    r1.w = cmp(0 >= cb3[8].w);
    if (r1.w != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
    r0.yzw = float3(0,0,0);
    r1.xyz = float3(1,1,1);
  }
  r0.x = max(9.99999996e-013, r0.x);
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = r0.xxxx * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb1[70].xyz + r2.xyz;
  r3.xyz = cb1[5].xyw * r2.yyy;
  r3.xyz = r2.xxx * cb1[4].xyw + r3.xyz;
  r3.xyz = r2.zzz * cb1[6].xyw + r3.xyz;
  r3.xyz = cb1[7].xyw + r3.xyz;
  r4.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[172].xyz;
  r0.x = cmp(0 != cb1[184].x);
  r0.x = r0.x ? cb1[184].y : cb1[135].y;
  r0.x = cb1[135].z * r0.x;
  r3.xy = r3.xy / r3.zz;
  r3.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[26].y + r1.w;
  r1.w = max(0, r1.w);
  r1.w = cb3[3].w * r1.w;
  r1.w = cb3[3].y * r1.w;
  r3.z = sqrt(r1.w);
  r1.w = cb3[3].x * r3.z;
  r2.x = cmp(r1.w < 0.707106769);
  r1.w = dot(r1.ww, r1.ww);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? r1.w : 1;
  r2.xyzw = t2.SampleLevel(s2_s, r3.xyz, 0).xyzw;
  r2.xyz = r2.xyz * r1.www;
  r2.w = 1 + -r2.w;
  r1.w = -r1.w * r2.w + 1;
  r2.xyz = r2.xyz * r0.xxx;
  r0.xyz = r2.xyz * r1.xyz + r0.yzw;
  o0.xyz = min(float3(32256,32256,32256), r0.xyz);
  o0.w = dot(r1.www, float3(0.333333343,0.333333343,0.333333343));
  return;
}