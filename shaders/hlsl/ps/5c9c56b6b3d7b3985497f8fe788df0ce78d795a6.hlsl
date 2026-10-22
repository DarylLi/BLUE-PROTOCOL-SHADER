// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[47];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v1.xy;
  r0.z = t1.SampleLevel(s0_s, v0.xy, 0).x;
  r0.z = cb0[46].x * r0.z;
  r0.w = cmp(asint(cb0[45].w) == 0);
  if (cb0[45].w == 0) {
    r1.x = max(0, r0.z);
    r1.x = min(0.999000013, r1.x);
    r1.y = -2 + cb0[45].x;
    r1.z = 18 * r1.x;
    r2.w = min(r1.y, r1.z);
    r1.y = cmp(r2.w < 1);
    if (r1.y != 0) {
      r1.yzw = cb0[34].xyz;
      r2.xyz = cb0[35].xyz;
    } else {
      r3.xyzw = cmp(r2.wwww < float4(2,3,4,5));
      r4.x = cmp(r2.w < 6);
      r1.x = -0.333333343 + r1.x;
      r4.y = cmp(8 >= cb0[45].x);
      r4.y = r4.y ? 1.5 : 3;
      r5.x = r4.y * r1.x;
      r1.x = cmp(1 >= r5.x);
      r4.yzw = r1.xxx ? cb0[40].xyz : cb0[41].xyz;
      r5.yzw = r1.xxx ? cb0[41].xyz : cb0[42].xyz;
      r2.xyz = cb0[40].xyz;
      r5.xyzw = r4.xxxx ? r2.wxyz : r5.xyzw;
      r4.xyz = r4.xxx ? cb0[39].xyz : r4.yzw;
      r2.xyz = cb0[39].xyz;
      r5.xyzw = r3.wwww ? r2.wxyz : r5.xyzw;
      r4.xyz = r3.www ? cb0[38].xyz : r4.xyz;
      r2.xyz = cb0[38].xyz;
      r5.xyzw = r3.zzzz ? r2.wxyz : r5.xyzw;
      r4.xyz = r3.zzz ? cb0[37].xyz : r4.xyz;
      r2.xyz = cb0[37].xyz;
      r5.xyzw = r3.yyyy ? r2.wxyz : r5.xyzw;
      r3.yzw = r3.yyy ? cb0[36].xyz : r4.xyz;
      r1.yzw = r3.xxx ? cb0[35].xyz : r3.yzw;
      r2.xyz = cb0[36].xyz;
      r2.xyzw = r3.xxxx ? r2.xyzw : r5.yzwx;
    }
    r1.x = frac(r2.w);
    r2.xyz = r2.xyz + -r1.yzw;
    r1.xyz = r1.xxx * r2.xyz + r1.yzw;
  }
  if (r0.w == 0) {
    r1.w = cmp(asint(cb0[45].w) == 1);
    if (r1.w != 0) {
      r2.x = max(0, r0.z);
      r2.x = min(0.999000013, r2.x);
      r2.y = -1 + cb0[45].x;
      r2.x = r2.x * r2.y;
      r2.y = floor(r2.x);
      r2.y = (int)r2.y;
      r2.z = (int)r2.y + 1;
      r2.x = frac(r2.x);
      r3.xyz = cb0[r2.z+34].xyz + -cb0[r2.y+34].xyz;
      r1.xyz = r2.xxx * r3.xyz + cb0[r2.y+34].xyz;
    }
    if (r1.w == 0) {
      r1.w = cmp(asint(cb0[45].w) == 2);
      if (r1.w != 0) {
        r2.x = saturate(r0.z);
        r2.y = -1 + cb0[45].x;
        r2.x = r2.x * r2.y;
        r2.x = round(r2.x);
        r2.x = (int)r2.x;
        r1.xyz = cb0[r2.x+34].xyz;
      }
      r1.xyz = r1.www ? r1.xyz : 0;
    }
  }
  r0.z = cmp(r0.z == 0.000000);
  r1.w = cmp(asint(cb0[45].z) != 0);
  r0.z = r0.z ? r1.w : 0;
  r2.xy = (int2)r0.xy & int2(8,8);
  r1.w = cmp((int)r2.y == (int)r2.x);
  r1.w = r1.w ? 0.220000 : 0;
  r1.xyz = r0.zzz ? r1.www : r1.xyz;
  if (cb0[45].y == 0) {
    o0.xyz = r1.xyz;
    o0.w = 0;
    return;
  }
  r2.xy = asuint(cb0[29].xy);
  r2.xy = cb0[30].xy * float2(0.5,0.5) + r2.xy;
  r2.xy = (int2)r2.xy;
  r3.xy = cmp((int2)r0.xy == (int2)r2.xy);
  r0.z = (int)r3.y | (int)r3.x;
  r0.z = r0.z ? 1.000000 : 0;
  r3.xy = (int2)r0.xy + (int2)-r2.xy;
  r3.xy = max((int2)r3.xy, (int2)-r3.xy);
  r3.xy = (int2)r3.xy;
  r1.w = max(r3.x, r3.y);
  r3.x = cmp(r1.w >= 2);
  r1.w = cmp(r1.w < 17);
  r1.w = r1.w ? r3.x : 0;
  r1.w = r1.w ? 1.000000 : 0;
  r0.z = r1.w * r0.z;
  r3.xyz = float3(1,1,1) + -r1.xyz;
  r1.xyz = r0.zzz * r3.xyz + r1.xyz;
  r2.zw = float2(0,0);
  r2.xy = t1.Load(r2.xyz).yx;
  r0.z = cb0[46].x * r2.y;
  r3.y = asint(cb0[29].w) + -70;
  r1.w = asint(-cb0[29].x) + asint(cb0[29].z);
  r2.y = (int)r1.w + -128;
  r2.z = (int)r0.x + -64;
  r2.zw = (int2)r2.zy;
  r2.z = r2.z / r2.w;
  if (cb0[45].w == 0) {
    r2.w = max(0, r2.z);
    r2.w = min(0.999000013, r2.w);
    r3.z = -2 + cb0[45].x;
    r3.w = 18 * r2.w;
    r4.w = min(r3.z, r3.w);
    r3.z = cmp(r4.w < 1);
    if (r3.z != 0) {
      r5.xyz = cb0[r2.x+34].xyz;
      r4.xyz = cb0[35].xyz;
    } else {
      r6.xyzw = cmp(r4.wwww < float4(2,3,4,5));
      r3.z = cmp(r4.w < 6);
      r2.w = -0.333333343 + r2.w;
      r3.w = cmp(8 >= cb0[45].x);
      r3.w = r3.w ? 1.5 : 3;
      r7.x = r3.w * r2.w;
      r2.w = cmp(1 >= r7.x);
      r8.xyz = r2.www ? cb0[40].xyz : cb0[41].xyz;
      r7.yzw = r2.www ? cb0[41].xyz : cb0[42].xyz;
      r4.xyz = cb0[40].xyz;
      r7.xyzw = r3.zzzz ? r4.wxyz : r7.xyzw;
      r8.xyz = r3.zzz ? cb0[39].xyz : r8.xyz;
      r4.xyz = cb0[39].xyz;
      r7.xyzw = r6.wwww ? r4.wxyz : r7.xyzw;
      r8.xyz = r6.www ? cb0[38].xyz : r8.xyz;
      r4.xyz = cb0[38].xyz;
      r7.xyzw = r6.zzzz ? r4.wxyz : r7.xyzw;
      r8.xyz = r6.zzz ? cb0[37].xyz : r8.xyz;
      r4.xyz = cb0[37].xyz;
      r7.xyzw = r6.yyyy ? r4.wxyz : r7.xyzw;
      r6.yzw = r6.yyy ? cb0[36].xyz : r8.xyz;
      r5.xyz = r6.xxx ? cb0[35].xyz : r6.yzw;
      r4.xyz = cb0[36].xyz;
      r4.xyzw = r6.xxxx ? r4.xyzw : r7.yzwx;
    }
    r2.w = frac(r4.w);
    r4.xyz = r4.xyz + -r5.xyz;
    r4.xyz = r2.www * r4.xyz + r5.xyz;
  }
  if (r0.w == 0) {
    r0.w = cmp(asint(cb0[45].w) == 1);
    if (r0.w != 0) {
      r2.w = max(0, r2.z);
      r2.w = min(0.999000013, r2.w);
      r3.z = -1 + cb0[45].x;
      r2.w = r3.z * r2.w;
      r3.z = floor(r2.w);
      r3.z = (int)r3.z;
      r3.w = (int)r3.z + 1;
      r2.w = frac(r2.w);
      r5.xyz = cb0[r3.w+34].xyz + -cb0[r3.z+34].xyz;
      r4.xyz = r2.www * r5.xyz + cb0[r3.z+34].xyz;
    }
    if (r0.w == 0) {
      r0.w = cmp(asint(cb0[45].w) == 2);
      if (r0.w != 0) {
        r2.z = saturate(r2.z);
        r2.w = -1 + cb0[45].x;
        r2.z = r2.z * r2.w;
        r2.z = round(r2.z);
        r2.z = (int)r2.z;
        r4.xyz = cb0[r2.z+34].xyz;
      }
      r4.xyz = r0.www ? r4.xyz : 0;
    }
  }
  r5.y = -(int)r3.y;
  r5.z = -(int)r2.y;
  r5.xw = float2(-64,-18);
  r2.yz = (int2)r5.zw + (int2)r5.xy;
  r2.yz = (int2)r0.xy + (int2)r2.yz;
  r2.yz = (int2)r2.yz + int2(1,1);
  r2.yz = max(int2(0,0), (int2)r2.yz);
  r3.x = 64;
  r3.xy = (int2)-r0.xy + (int2)r3.xy;
  r3.xy = max(int2(0,0), (int2)r3.xy);
  r2.yz = (int2)r2.yz + (int2)r3.xy;
  r2.yz = (int2)r2.yz;
  r0.w = dot(r2.yz, r2.yz);
  r0.w = sqrt(r0.w);
  r2.yz = saturate(float2(-18,-2) + r0.ww);
  r1.xyz = r2.yyy * r1.xyz + -r4.xyz;
  r1.xyz = r2.zzz * r1.xyz + r4.xyz;
  r0.w = cmp(asint(cb0[45].z) == 4);
  if (r0.w != 0) {
    r0.z = saturate(r0.z);
    r0.w = (int)r1.w + -144;
    r0.w = (int)r0.w;
    r0.w = r0.z * r0.w;
    r2.y = (int)r0.w;
    r2.z = cb0[29].w;
    r2.zw = (int2)r2.yz + int2(64,-65);
    r3.yz = (int2)r0.xy + (int2)-r2.zw;
    r4.xy = cmp((uint2)r3.yz < int2(8,8));
    r0.w = r4.y ? r4.x : 0;
    r3.x = (int)r3.y + 192;
    r3.w = 0;
    r2.z = t0.Load(r3.xzw).x;
    r3.xyz = float3(0.200000003,0.200000003,0.200000003) + -r1.xyz;
    r3.xyz = r2.zzz * r3.xyz + r1.xyz;
    r3.xyz = r0.www ? r3.xyz : r1.xyz;
    r2.y = (int)-r2.y + -72;
    r2.z = -(int)r2.w;
    r4.yz = (int2)r0.xy + (int2)r2.yz;
    r2.yz = cmp((uint2)r4.yz < int2(8,8));
    r0.w = r2.z ? r2.y : 0;
    r4.x = (int)r4.y + 104;
    r4.w = 0;
    r2.y = t0.Load(r4.xzw).x;
    r4.xyz = float3(0.200000003,0.200000003,0.200000003) + -r3.xyz;
    r2.yzw = r2.yyy * r4.xyz + r3.xyz;
    r2.yzw = r0.www ? r2.yzw : r3.xyz;
  } else {
    r0.z = saturate(r0.z);
    r0.w = (int)r1.w + -144;
    r0.w = (int)r0.w;
    r0.z = r0.z * r0.w;
    r3.y = (int)r0.z;
    r3.z = cb0[29].w;
    r3.xz = (int2)r3.yz + int2(64,-70);
    r4.yz = (int2)r0.xy + (int2)-r3.xz;
    r3.xw = cmp((uint2)r4.yz < int2(8,8));
    r0.z = r3.w ? r3.x : 0;
    r4.x = (int)r4.y + 200;
    r4.w = 0;
    r1.w = t0.Load(r4.xzw).x;
    r4.xyz = r1.www * -r1.xyz + r1.xyz;
    r1.xyz = r0.zzz ? r4.xyz : r1.xyz;
    r4.y = (int)-r3.y + -72;
    r4.z = -(int)r3.z;
    r3.yz = (int2)r0.xy + (int2)r4.yz;
    r4.xy = cmp((uint2)r3.yz < int2(8,8));
    r0.z = r4.y ? r4.x : 0;
    r3.x = (int)r3.y + 224;
    r3.w = 0;
    r1.w = t0.Load(r3.xzw).x;
    r3.xyz = r1.www * -r1.xyz + r1.xyz;
    r1.xyz = r0.zzz ? r3.xyz : r1.xyz;
    r2.x = saturate(r2.x);
    r0.z = r2.x * r0.w;
    r3.y = (int)r0.z;
    r3.z = cb0[29].w;
    r0.zw = (int2)r3.yz + int2(64,-59);
    r4.yz = (int2)-r0.zw + (int2)r0.xy;
    r3.xz = cmp((uint2)r4.yz < int2(8,8));
    r0.z = r3.z ? r3.x : 0;
    r4.x = (int)r4.y + 248;
    r4.w = 0;
    r1.w = t0.Load(r4.xzw).x;
    r3.xzw = r1.www * -r1.xyz + r1.xyz;
    r1.xyz = r0.zzz ? r3.xzw : r1.xyz;
    r3.y = (int)-r3.y + -72;
    r3.z = -(int)r0.w;
    r0.yz = (int2)r0.xy + (int2)r3.yz;
    r3.xy = cmp((uint2)r0.yz < int2(8,8));
    r1.w = r3.y ? r3.x : 0;
    r0.x = (int)r0.y + 224;
    r0.w = 0;
    r0.x = t0.Load(r0.xzw).x;
    r0.xyz = r0.xxx * -r1.xyz + r1.xyz;
    r2.yzw = r1.www ? r0.xyz : r1.xyz;
  }
  o0.xyz = r2.yzw;
  o0.w = 0;
  return;
}