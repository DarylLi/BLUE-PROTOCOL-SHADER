// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

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
  r1.xyz = -cb1[173].xyz + cb1[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r0.zw = v0.ww * r0.zw;
  r0.zw = float2(2000000,-2000000) * r0.zw;
  r2.xyz = cb1[49].xyz * r0.www;
  r2.xyz = r0.zzz * cb1[48].xyz + r2.xyz;
  r2.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r2.xyz;
  r2.xyz = cb1[51].xyz + r2.xyz;
  r2.xyz = -cb1[67].xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (cb0[27].x != 0) {
      r0.z = dot(r1.xyz, r1.xyz);
      r0.w = dot(r2.xyz, r2.xyz);
      r1.w = dot(r2.xyz, r1.xyz);
      r1.w = r1.w + r1.w;
      r2.w = cb2[0].y * cb2[0].y;
      r3.x = -cb2[0].y * cb2[0].y + r0.z;
      r3.y = r3.x * r0.w;
      r3.y = 4 * r3.y;
      r3.y = r1.w * r1.w + -r3.y;
      r3.z = cmp(r3.y >= 0);
      r3.y = sqrt(r3.y);
      r3.yw = r3.yy * float2(-1,1) + -r1.ww;
      r0.w = r0.w + r0.w;
      r3.yw = r3.yw / r0.ww;
      r3.yz = r3.zz ? r3.yw : float2(-1,-1);
      r4.xy = cmp(r3.yz < float2(0,0));
      r0.w = r4.y ? r4.x : 0;
      r4.zw = max(float2(0,0), r3.zy);
      r1.w = r4.y ? r4.w : -1;
      r1.w = r4.x ? r4.z : r1.w;
      r3.w = (int)r4.y | (int)r4.x;
      r4.x = min(r3.y, r3.z);
      r4.x = max(0, r4.x);
      r1.w = r3.w ? r1.w : r4.x;
      r1.w = cmp(r1.w < 0);
      r0.w = (int)r0.w | (int)r1.w;
      r1.w = cmp(cb1[183].w == 0.000000);
      r0.w = r1.w ? r0.w : 0;
      if (r0.w != 0) {
        r1.w = dot(r2.xyz, cb1[161].xyz);
        r3.w = cmp(cb1[169].x < r1.w);
        if (r3.w != 0) {
          r3.yz = cmp(float2(0,0) < r3.yz);
          r3.y = (int)r3.z | (int)r3.y;
          if (r3.y == 0) {
            r3.y = sqrt(r0.z);
            r4.xyz = r1.xyz / r3.yyy;
            r3.z = dot(r2.xyz, r4.xyz);
            r4.x = cb2[0].z * cb2[0].z;
            r2.w = cb2[0].z * cb2[0].z + -r2.w;
            r2.w = max(0, r2.w);
            r2.w = sqrt(r2.w);
            r3.x = max(0, r3.x);
            r3.x = sqrt(r3.x);
            r4.y = r3.z * r3.z + -1;
            r0.z = r0.z * r4.y + r4.x;
            r0.z = sqrt(r0.z);
            r0.z = -r3.y * r3.z + r0.z;
            r0.z = max(0, r0.z);
            r3.y = cb2[0].z + -r3.y;
            r3.z = r3.x + r2.w;
            r0.z = -r3.y + r0.z;
            r3.y = r3.z + -r3.y;
            r4.x = r0.z / r3.y;
            r4.y = r3.x / r2.w;
            r3.xyz = t1.SampleLevel(s1_s, r4.xy, 0).xyz;
          } else {
            r3.xyz = float3(0,0,0);
          }
          r3.xyz = cb1[167].xyz * r3.xyz;
        }
        r3.xyz = r3.www ? r3.xyz : 0;
        r0.z = cmp(0 != cb1[184].x);
        r0.z = r0.z ? cb1[184].y : cb1[135].y;
        r3.xyz = r3.xyz * r0.zzz;
        r3.xyz = min(float3(64000,64000,64000), r3.xyz);
        r0.z = 1 + -cb1[169].x;
        r2.w = 0.25 * r0.z;
        r0.z = r0.z * 0.25 + cb1[169].x;
        r0.z = r0.z + -r1.w;
        r0.z = saturate(r0.z / r2.w);
        r0.z = 1 + -r0.z;
        r3.xyz = r3.xyz * r0.zzz;
      }
      r3.xyz = (int3)r0.www & (int3)r3.xyz;
    } else {
      r3.xyz = float3(0,0,0);
    }
    r4.xyz = cb3[9].xyz;
  } else {
    r0.z = cmp(0 >= cb3[8].w);
    if (r0.z != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
    r3.xyz = float3(0,0,0);
    r4.xyz = float3(1,1,1);
  }
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.z);
  r1.x = 0.00999999978 + cb2[0].z;
  r1.x = cmp(r0.w < r1.x);
  r0.y = r0.y ? r1.x : 0;
  if (r0.y != 0) {
    r1.x = dot(cb1[174].xyz, r2.xyz);
    r1.y = dot(cb1[175].xyz, r2.xyz);
    r1.z = dot(cb1[176].xyz, r2.xyz);
    r0.y = dot(r1.xyz, r1.xyz);
    r1.w = dot(r1.zz, r0.ww);
    r0.z = -cb2[0].y * cb2[0].y + r0.z;
    r2.x = r0.z * r0.y;
    r2.x = 4 * r2.x;
    r2.x = r1.w * r1.w + -r2.x;
    r2.y = cmp(r2.x >= 0);
    r2.x = sqrt(r2.x);
    r2.xz = r2.xx * float2(1,-1) + -r1.ww;
    r0.y = r0.y + r0.y;
    r2.xz = r2.xz / r0.yy;
    r2.xy = r2.yy ? r2.xz : float2(-1,-1);
    r2.zw = cmp(r2.yx < float2(0,0));
    r0.y = r2.w ? r2.z : 0;
    r5.xy = max(float2(0,0), r2.xy);
    r1.w = r2.w ? r5.y : -1;
    r1.w = r2.z ? r5.x : r1.w;
    r2.z = (int)r2.w | (int)r2.z;
    r2.x = min(r2.y, r2.x);
    r2.x = max(0, r2.x);
    r1.w = r2.z ? r1.w : r2.x;
    r0.z = sqrt(r0.z);
    r0.z = r0.z / r0.w;
    r0.w = r0.z * r0.z;
    r2.x = r0.w * r0.z;
    r2.y = r0.z * -0.212114394 + 1.57072878;
    r0.w = r0.w * 0.0742610022 + r2.y;
    r0.w = r2.x * -0.0187292993 + r0.w;
    r2.x = 1 + -r0.z;
    r2.x = sqrt(r2.x);
    r2.y = r2.x * r0.w;
    r0.z = cmp(r0.z >= 0);
    r0.w = -r2.x * r0.w + 3.14159274;
    r0.z = r0.z ? r2.y : r0.w;
    r0.w = 3.14159274 + -r0.z;
    r2.x = abs(r1.z) * abs(r1.z);
    r2.y = r2.x * abs(r1.z);
    r2.z = abs(r1.z) * -0.212114394 + 1.57072878;
    r2.x = r2.x * 0.0742610022 + r2.z;
    r2.x = r2.y * -0.0187292993 + r2.x;
    r2.y = 1 + -abs(r1.z);
    r2.y = sqrt(r2.y);
    r2.z = r2.y * r2.x;
    r1.z = cmp(r1.z >= 0);
    r2.x = -r2.y * r2.x + 3.14159274;
    r1.z = r1.z ? r2.z : r2.x;
    r1.w = cmp(r1.w < 0);
    r0.y = (int)r0.y | (int)r1.w;
    r1.w = r1.z / r0.w;
    r1.w = 1 + -r1.w;
    r1.w = sqrt(r1.w);
    r1.w = 1 + -r1.w;
    r1.w = 0.5 * r1.w;
    r0.w = r1.z + -r0.w;
    r0.z = r0.w / r0.z;
    r0.z = sqrt(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r2.y = r0.y ? r1.w : r0.z;
    r0.y = max(abs(r1.x), abs(r1.y));
    r0.z = min(abs(r1.x), abs(r1.y));
    r0.y = r0.z / r0.y;
    r0.z = r0.y * r0.y;
    r0.w = r0.z * 0.0872929022 + -0.301894993;
    r0.z = r0.w * r0.z + 1;
    r0.w = r0.z * r0.y;
    r1.z = cmp(abs(r1.x) < abs(r1.y));
    r0.y = -r0.z * r0.y + 1.57079637;
    r0.y = r1.z ? r0.y : r0.w;
    r0.zw = cmp(-r1.xy < float2(0,0));
    r1.x = 3.14159274 + -r0.y;
    r0.y = r0.z ? r1.x : r0.y;
    r0.y = r0.w ? -r0.y : r0.y;
    r0.y = 3.14159274 + r0.y;
    r2.x = 0.159154937 * r0.y;
    r0.yz = cb3[7].zw * float2(0.5,0.5) + r2.xy;
    r1.xy = float2(1,1) + cb3[7].xy;
    r1.xy = cb3[7].xy / r1.xy;
    r0.yz = r1.xy * r0.yz;
    r0.yzw = t2.SampleLevel(s2_s, r0.yz, 0).xyz;
    r0.yzw = r0.yzw * r4.xyz;
    r1.x = cmp(0 != cb1[184].x);
    r1.x = r1.x ? cb1[184].y : cb1[135].y;
    r1.x = cb1[135].z * r1.x;
    r0.yzw = r0.yzw * r1.xxx + r3.xyz;
    o0.xyz = min(float3(32256,32256,32256), r0.yzw);
    o0.w = 1;
    return;
  }
  r0.x = max(9.99999996e-013, r0.x);
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r1.xyz = cb1[5].xyw * r0.yyy;
  r1.xyz = r0.xxx * cb1[4].xyw + r1.xyz;
  r1.xyz = r0.zzz * cb1[6].xyw + r1.xyz;
  r1.xyz = cb1[7].xyw + r1.xyz;
  r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[172].xyz;
  r0.w = cmp(0 != cb1[184].x);
  r0.w = r0.w ? cb1[184].y : cb1[135].y;
  r0.w = cb1[135].z * r0.w;
  r1.xy = r1.xy / r1.zz;
  r1.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r2.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -cb0[26].y + r0.x;
  r0.x = max(0, r0.x);
  r0.x = cb3[3].w * r0.x;
  r0.x = cb3[3].y * r0.x;
  r1.z = sqrt(r0.x);
  r0.x = cb3[3].x * r1.z;
  r0.y = cmp(r0.x < 0.707106769);
  r0.x = dot(r0.xx, r0.xx);
  r0.x = min(1, r0.x);
  r0.x = r0.y ? r0.x : 1;
  r1.xyzw = t3.SampleLevel(s3_s, r1.xyz, 0).xyzw;
  r1.xyz = r1.xyz * r0.xxx;
  r0.y = 1 + -r1.w;
  r0.x = -r0.x * r0.y + 1;
  r0.yzw = r1.xyz * r0.www;
  r0.yzw = r0.yzw * r4.xyz + r3.xyz;
  o0.xyz = min(float3(32256,32256,32256), r0.yzw);
  o0.w = dot(r0.xxx, float3(0.333333343,0.333333343,0.333333343));
  return;
}