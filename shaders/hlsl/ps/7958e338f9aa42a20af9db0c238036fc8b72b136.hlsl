// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t2 : register(t2);

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
  r1.xyzw = cmp(asint(cb0[45].zzzw) == int4(4,2,3,0));
  r0.w = (int)r1.y | (int)r1.x;
  r0.w = (int)r1.z | (int)r0.w;
  if (r0.w != 0) {
    r1.yz = asuint(cb0[46].yz);
    r1.yz = cb0[30].zw * r1.yz;
    t2.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
    r0.w = uiDest.x;
    r0.w = (uint)r0.w >> 1;
    r2.x = (uint)r0.w;
    r2.yzw = float3(0,0,0);
    r1.yz = r1.yz * v1.xy + r2.xy;
    r2.xy = (int2)r1.yz;
    r0.w = t2.Load(r2.xyz).x;
    r0.w = (uint)r0.w;
    r0.z = r0.w * 1.52590219e-005 + r0.z;
  }
  r0.z = cb0[46].x * r0.z;
  if (cb0[45].w == 0) {
    r0.w = max(0, r0.z);
    r0.w = min(0.999000013, r0.w);
    r1.y = -2 + cb0[45].x;
    r1.z = 18 * r0.w;
    r2.w = min(r1.y, r1.z);
    r1.y = cmp(r2.w < 1);
    if (r1.y != 0) {
      r3.xyz = cb0[34].xyz;
      r2.xyz = cb0[35].xyz;
    } else {
      r4.xyzw = cmp(r2.wwww < float4(2,3,4,5));
      r1.y = cmp(r2.w < 6);
      r0.w = -0.333333343 + r0.w;
      r1.z = cmp(8 >= cb0[45].x);
      r1.z = r1.z ? 1.5 : 3;
      r5.x = r1.z * r0.w;
      r0.w = cmp(1 >= r5.x);
      r6.xyz = r0.www ? cb0[40].xyz : cb0[41].xyz;
      r5.yzw = r0.www ? cb0[41].xyz : cb0[42].xyz;
      r2.xyz = cb0[40].xyz;
      r5.xyzw = r1.yyyy ? r2.wxyz : r5.xyzw;
      r6.xyz = r1.yyy ? cb0[39].xyz : r6.xyz;
      r2.xyz = cb0[39].xyz;
      r5.xyzw = r4.wwww ? r2.wxyz : r5.xyzw;
      r6.xyz = r4.www ? cb0[38].xyz : r6.xyz;
      r2.xyz = cb0[38].xyz;
      r5.xyzw = r4.zzzz ? r2.wxyz : r5.xyzw;
      r6.xyz = r4.zzz ? cb0[37].xyz : r6.xyz;
      r2.xyz = cb0[37].xyz;
      r5.xyzw = r4.yyyy ? r2.wxyz : r5.xyzw;
      r4.yzw = r4.yyy ? cb0[36].xyz : r6.xyz;
      r3.xyz = r4.xxx ? cb0[35].xyz : r4.yzw;
      r2.xyz = cb0[36].xyz;
      r2.xyzw = r4.xxxx ? r2.xyzw : r5.yzwx;
    }
    r0.w = frac(r2.w);
    r2.xyz = r2.xyz + -r3.xyz;
    r2.xyz = r0.www * r2.xyz + r3.xyz;
  }
  if (r1.w == 0) {
    r0.w = cmp(asint(cb0[45].w) == 1);
    if (r0.w != 0) {
      r1.y = max(0, r0.z);
      r1.y = min(0.999000013, r1.y);
      r1.z = -1 + cb0[45].x;
      r1.y = r1.y * r1.z;
      r1.z = floor(r1.y);
      r1.z = (int)r1.z;
      r2.w = (int)r1.z + 1;
      r1.y = frac(r1.y);
      r3.xyz = cb0[r2.w+34].xyz + -cb0[r1.z+34].xyz;
      r2.xyz = r1.yyy * r3.xyz + cb0[r1.z+34].xyz;
    }
    if (r0.w == 0) {
      r0.w = cmp(asint(cb0[45].w) == 2);
      if (r0.w != 0) {
        r1.y = saturate(r0.z);
        r1.z = -1 + cb0[45].x;
        r1.y = r1.y * r1.z;
        r1.y = round(r1.y);
        r1.y = (int)r1.y;
        r2.xyz = cb0[r1.y+34].xyz;
      }
      r2.xyz = r0.www ? r2.xyz : 0;
    }
  }
  r0.z = cmp(r0.z == 0.000000);
  r0.w = cmp(asint(cb0[45].z) != 0);
  r0.z = r0.w ? r0.z : 0;
  r1.yz = (int2)r0.xy & int2(8,8);
  r0.w = cmp((int)r1.z == (int)r1.y);
  r0.w = r0.w ? 0.220000 : 0;
  r2.xyz = r0.zzz ? r0.www : r2.xyz;
  if (cb0[45].y == 0) {
    o0.xyz = r2.xyz;
    o0.w = 0;
    return;
  }
  r0.zw = asuint(cb0[29].xy);
  r0.zw = cb0[30].xy * float2(0.5,0.5) + r0.zw;
  r3.xy = (int2)r0.zw;
  r0.zw = cmp((int2)r0.xy == (int2)r3.xy);
  r0.z = (int)r0.w | (int)r0.z;
  r1.yz = (int2)r0.xy + (int2)-r3.xy;
  r1.yz = max((int2)r1.yz, (int2)-r1.yz);
  r1.yz = (int2)r1.yz;
  r0.w = max(r1.y, r1.z);
  r1.y = cmp(r0.w >= 2);
  r0.w = cmp(r0.w < 17);
  r0.w = r0.w ? r1.y : 0;
  r0.zw = r0.zw ? float2(1,1) : 0;
  r0.z = r0.z * r0.w;
  r4.xyz = float3(1,1,1) + -r2.xyz;
  r2.xyz = r0.zzz * r4.xyz + r2.xyz;
  r3.zw = float2(0,0);
  r0.zw = t1.Load(r3.xyz).yx;
  r0.w = cb0[46].x * r0.w;
  r3.y = asint(cb0[29].w) + -70;
  r1.y = asint(-cb0[29].x) + asint(cb0[29].z);
  r1.z = (int)r1.y + -128;
  r2.w = (int)r0.x + -64;
  r2.w = (int)r2.w;
  r3.z = (int)r1.z;
  r2.w = r2.w / r3.z;
  if (cb0[45].w == 0) {
    r3.z = max(0, r2.w);
    r3.z = min(0.999000013, r3.z);
    r3.w = -2 + cb0[45].x;
    r4.x = 18 * r3.z;
    r4.w = min(r4.x, r3.w);
    r3.w = cmp(r4.w < 1);
    if (r3.w != 0) {
      r5.xyz = cb0[r1.y+34].xyz;
      r4.xyz = cb0[35].xyz;
    } else {
      r6.xyzw = cmp(r4.wwww < float4(2,3,4,5));
      r3.w = cmp(r4.w < 6);
      r3.z = -0.333333343 + r3.z;
      r5.w = cmp(8 >= cb0[45].x);
      r5.w = r5.w ? 1.5 : 3;
      r7.x = r5.w * r3.z;
      r3.z = cmp(1 >= r7.x);
      r8.xyz = r3.zzz ? cb0[40].xyz : cb0[41].xyz;
      r7.yzw = r3.zzz ? cb0[41].xyz : cb0[42].xyz;
      r4.xyz = cb0[40].xyz;
      r7.xyzw = r3.wwww ? r4.wxyz : r7.xyzw;
      r8.xyz = r3.www ? cb0[39].xyz : r8.xyz;
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
    r3.z = frac(r4.w);
    r4.xyz = r4.xyz + -r5.xyz;
    r4.xyz = r3.zzz * r4.xyz + r5.xyz;
  }
  if (r1.w == 0) {
    r1.w = cmp(asint(cb0[45].w) == 1);
    if (r1.w != 0) {
      r3.z = max(0, r2.w);
      r3.z = min(0.999000013, r3.z);
      r3.w = -1 + cb0[45].x;
      r3.z = r3.z * r3.w;
      r3.w = floor(r3.z);
      r3.w = (int)r3.w;
      r4.w = (int)r3.w + 1;
      r3.z = frac(r3.z);
      r5.xyz = cb0[r4.w+34].xyz + -cb0[r3.w+34].xyz;
      r4.xyz = r3.zzz * r5.xyz + cb0[r3.w+34].xyz;
    }
    if (r1.w == 0) {
      r1.w = cmp(asint(cb0[45].w) == 2);
      if (r1.w != 0) {
        r2.w = saturate(r2.w);
        r3.z = -1 + cb0[45].x;
        r2.w = r3.z * r2.w;
        r2.w = round(r2.w);
        r2.w = (int)r2.w;
        r4.xyz = cb0[r2.w+34].xyz;
      }
      r4.xyz = r1.www ? r4.xyz : 0;
    }
  }
  r5.y = -(int)r3.y;
  r5.z = -(int)r1.z;
  r5.xw = float2(-64,-18);
  r1.zw = (int2)r5.zw + (int2)r5.xy;
  r1.zw = (int2)r0.xy + (int2)r1.zw;
  r1.zw = (int2)r1.zw + int2(1,1);
  r1.zw = max(int2(0,0), (int2)r1.zw);
  r3.x = 64;
  r3.xy = (int2)-r0.xy + (int2)r3.xy;
  r3.xy = max(int2(0,0), (int2)r3.xy);
  r1.zw = (int2)r1.zw + (int2)r3.xy;
  r1.zw = (int2)r1.zw;
  r1.z = dot(r1.zw, r1.zw);
  r1.z = sqrt(r1.z);
  r1.zw = saturate(float2(-18,-2) + r1.zz);
  r2.xyz = r1.zzz * r2.xyz + -r4.xyz;
  r2.xyz = r1.www * r2.xyz + r4.xyz;
  if (r1.x != 0) {
    r0.w = saturate(r0.w);
    r1.x = (int)r1.y + -144;
    r1.x = (int)r1.x;
    r1.x = r1.x * r0.w;
    r3.y = (int)r1.x;
    r3.z = cb0[29].w;
    r1.xz = (int2)r3.yz + int2(64,-65);
    r4.yz = (int2)r0.xy + (int2)-r1.xz;
    r1.xw = cmp((uint2)r4.yz < int2(8,8));
    r1.x = r1.w ? r1.x : 0;
    r4.x = (int)r4.y + 192;
    r4.w = 0;
    r1.w = t0.Load(r4.xzw).x;
    r3.xzw = float3(0.200000003,0.200000003,0.200000003) + -r2.xyz;
    r3.xzw = r1.www * r3.xzw + r2.xyz;
    r3.xzw = r1.xxx ? r3.xzw : r2.xyz;
    r4.y = (int)-r3.y + -72;
    r4.z = -(int)r1.z;
    r4.yz = (int2)r0.xy + (int2)r4.yz;
    r1.xz = cmp((uint2)r4.yz < int2(8,8));
    r1.x = r1.z ? r1.x : 0;
    r4.x = (int)r4.y + 104;
    r4.w = 0;
    r1.z = t0.Load(r4.xzw).x;
    r4.xyz = float3(0.200000003,0.200000003,0.200000003) + -r3.xzw;
    r4.xyz = r1.zzz * r4.xyz + r3.xzw;
    r1.xzw = r1.xxx ? r4.xyz : r3.xzw;
  } else {
    r0.zw = saturate(r0.zw);
    r1.y = (int)r1.y + -144;
    r1.y = (int)r1.y;
    r0.zw = r1.yy * r0.zw;
    r3.y = (int)r0.w;
    r3.z = cb0[29].w;
    r3.xz = (int2)r3.yz + int2(64,-70);
    r4.yz = (int2)r0.xy + (int2)-r3.xz;
    r3.xw = cmp((uint2)r4.yz < int2(8,8));
    r0.w = r3.w ? r3.x : 0;
    r4.x = (int)r4.y + 200;
    r4.w = 0;
    r2.w = t0.Load(r4.xzw).x;
    r4.xyz = r2.www * -r2.xyz + r2.xyz;
    r2.xyz = r0.www ? r4.xyz : r2.xyz;
    r4.y = (int)-r3.y + -72;
    r4.z = -(int)r3.z;
    r3.yz = (int2)r0.xy + (int2)r4.yz;
    r4.xy = cmp((uint2)r3.yz < int2(8,8));
    r0.w = r4.y ? r4.x : 0;
    r3.x = (int)r3.y + 224;
    r3.w = 0;
    r2.w = t0.Load(r3.xzw).x;
    r3.xyz = r2.www * -r2.xyz + r2.xyz;
    r2.xyz = r0.www ? r3.xyz : r2.xyz;
    r3.y = (int)r0.z;
    r3.z = cb0[29].w;
    r0.zw = (int2)r3.yz + int2(64,-59);
    r4.yz = (int2)-r0.zw + (int2)r0.xy;
    r3.xz = cmp((uint2)r4.yz < int2(8,8));
    r0.z = r3.z ? r3.x : 0;
    r4.x = (int)r4.y + 248;
    r4.w = 0;
    r1.y = t0.Load(r4.xzw).x;
    r3.xzw = r1.yyy * -r2.xyz + r2.xyz;
    r2.xyz = r0.zzz ? r3.xzw : r2.xyz;
    r3.y = (int)-r3.y + -72;
    r3.z = -(int)r0.w;
    r0.yz = (int2)r0.xy + (int2)r3.yz;
    r3.xy = cmp((uint2)r0.yz < int2(8,8));
    r1.y = r3.y ? r3.x : 0;
    r0.x = (int)r0.y + 224;
    r0.w = 0;
    r0.x = t0.Load(r0.xzw).x;
    r0.xyz = r0.xxx * -r2.xyz + r2.xyz;
    r1.xzw = r1.yyy ? r0.xyz : r2.xyz;
  }
  o0.xyz = r1.xzw;
  o0.w = 0;
  return;
}