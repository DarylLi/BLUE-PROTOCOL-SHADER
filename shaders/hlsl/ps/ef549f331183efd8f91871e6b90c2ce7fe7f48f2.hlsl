// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[89];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.z = r1.y ? r1.x : 0;
  r0.z = r1.z ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = cmp(-2 < cb2[10].x);
    r0.w = cmp(-2 < cb2[11].y);
    r0.xy = (uint2)r0.xy;
    r0.xy = cb0[72].xy + r0.xy;
    r0.xy = r0.xy / cb3[1].xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(1,-1) * r0.xy;
    r1.x = (uint)v2.x;
    r1.x = cb0[72].z + r1.x;
    r1.x = r1.x / cb3[2].z;
    r1.x = exp2(r1.x);
    r1.x = -cb3[2].y + r1.x;
    r1.x = r1.x / cb3[2].x;
    r1.y = cmp(cb1[31].w < 1);
    r1.z = cb1[65].w + r1.x;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.x = r1.x * cb1[30].z + cb1[31].z;
    r1.x = r1.y ? r1.z : r1.x;
    r2.xyzw = cb0[56].xyzw * r0.yyyy;
    r2.xyzw = r0.xxxx * cb0[55].xyzw + r2.xyzw;
    r1.xyzw = r1.xxxx * cb0[57].xyzw + r2.xyzw;
    r1.xyzw = cb0[58].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xyz = -cb1[70].xyz + r1.xyz;
    r2.xyz = -cb1[67].xyz + r1.xyz;
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r1.xyz = cb2[6].xyz + -r1.xyz;
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r1.xyz * r0.xxx;
    r4.xyz = cb2[6].www * r1.xyz;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = cb2[7].w * r0.x;
    r0.x = exp2(r0.x);
    r0.y = dot(r3.xyz, cb2[8].xyz);
    r1.w = -cb2[10].x + r0.y;
    r1.w = saturate(cb2[10].y * r1.w);
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r0.x;
    r0.x = r0.z ? r1.w : r0.x;
    r0.y = cmp(r0.y < 0);
    r0.y = r0.y ? 0 : r0.x;
    r0.x = r0.w ? r0.y : r0.x;
    if (r0.w != 0) {
      r0.yzw = cb2[9].zxy * cb2[8].yzx;
      r0.yzw = cb2[9].yzx * cb2[8].zxy + -r0.yzw;
      r1.w = cmp(0.0350000001 < cb2[11].x);
      r4.x = dot(r0.yzw, r1.xyz);
      r4.y = dot(cb2[9].xyz, r1.xyz);
      r5.z = dot(cb2[8].xyz, r1.xyz);
      r2.w = cb2[11].x * cb2[11].y;
      r3.w = -cb2[11].x * cb2[11].x + 1;
      r3.w = sqrt(r3.w);
      r6.z = min(r5.z, r2.w);
      r2.w = r6.z / r2.w;
      r3.w = cb2[11].y * r3.w;
      r4.z = r3.w * r2.w;
      r7.xy = cmp(float2(0,0) < r4.xy);
      r7.zw = cmp(r4.xy < float2(0,0));
      r7.xy = (int2)-r7.xy + (int2)r7.zw;
      r7.xy = (int2)r7.xy;
      r8.x = cb2[9].w;
      r8.y = cb2[10].w;
      r7.zw = r3.ww * r2.ww + r8.xy;
      r4.xy = max(r7.zw, abs(r4.xy));
      r5.xy = r7.xy * r4.xy;
      r6.xy = r7.xy * r7.zw;
      r4.xyw = -r6.xyz + r5.xyz;
      r2.w = max(0.00100000005, r4.w);
      r4.xy = abs(r4.xy) / r2.ww;
      r4.xy = r6.zz * r4.xy + -r4.zz;
      r4.zw = max(float2(0,0), -r7.xy);
      r4.zw = r4.xy * r4.zw + -r8.xy;
      r4.zw = max(r4.zw, -r8.xy);
      r5.xy = max(float2(0,0), r7.xy);
      r4.xy = -r4.xy * r5.xy + r8.xy;
      r4.xy = max(r4.xy, -r8.xy);
      r4.xyzw = min(r4.xyzw, r8.xyxy);
      r5.xy = r4.xy + -r4.zw;
      r5.xy = float2(0.5,0.5) * r5.xy;
      r5.xy = r1.ww ? r5.xy : r8.xy;
      r5.zw = cmp(r5.xy == float2(0,0));
      r2.w = (int)r5.w | (int)r5.z;
      if (r2.w == 0) {
        r4.xy = r4.zw + r4.xy;
        r4.xy = float2(0.5,0.5) * r4.xy;
        r4.xzw = -r0.yzw * r4.xxx + r1.xyz;
        r4.xyz = -cb2[9].xyz * r4.yyy + r4.xzw;
        r1.xyz = r1.www ? r4.xyz : r1.xyz;
        r1.w = dot(r0.yzw, r1.xyz);
        r2.w = dot(cb2[9].xyz, r1.xyz);
        r4.w = dot(cb2[8].xyz, r1.xyz);
        r4.y = r1.w + -r5.x;
        r4.x = r1.w + r5.x;
        r4.z = r2.w + -r5.y;
        r1.x = r2.w + r5.y;
        r2.w = dot(r4.yz, r4.yz);
        r2.w = r4.w * r4.w + r2.w;
        r2.w = rsqrt(r2.w);
        r5.xyz = r4.zwy * r2.www;
        r2.w = dot(r4.xz, r4.xz);
        r2.w = r4.w * r4.w + r2.w;
        r2.w = rsqrt(r2.w);
        r6.xyz = r4.wxz * r2.www;
        r1.yzw = r4.xwy;
        r2.w = dot(r1.xy, r1.xy);
        r2.w = r4.w * r4.w + r2.w;
        r2.w = rsqrt(r2.w);
        r4.xyz = r2.www * r1.xzy;
        r1.y = dot(r1.xw, r1.xw);
        r1.y = r4.w * r4.w + r1.y;
        r1.y = rsqrt(r1.y);
        r1.xyz = r1.zwx * r1.yyy;
        r1.w = dot(r5.yzx, r6.xyz);
        r2.w = dot(r6.zxy, r4.xyz);
        r3.w = dot(r4.yzx, r1.xyz);
        r4.w = dot(r1.zxy, r5.xyz);
        r5.w = -r1.w * 0.174999997 + 1.57079995;
        r1.w = 1 + r1.w;
        r1.w = rsqrt(r1.w);
        r1.w = r5.w * r1.w;
        r5.w = -r2.w * 0.174999997 + 1.57079995;
        r2.w = 1 + r2.w;
        r2.w = rsqrt(r2.w);
        r2.w = r5.w * r2.w;
        r5.w = -r3.w * 0.174999997 + 1.57079995;
        r3.w = 1 + r3.w;
        r3.w = rsqrt(r3.w);
        r3.w = r5.w * r3.w;
        r5.w = -r4.w * 0.174999997 + 1.57079995;
        r4.w = 1 + r4.w;
        r4.w = rsqrt(r4.w);
        r4.w = r5.w * r4.w;
        r7.xyz = r2.www * r4.xyz;
        r7.xyz = -r1.www * r5.xyz + r7.xyz;
        r8.xyz = r7.xyz * r6.xyz;
        r6.xyz = r6.zxy * r7.yzx + -r8.xyz;
        r4.xyz = -r3.www * r4.xyz;
        r4.xyz = r4.www * r5.xyz + r4.xyz;
        r5.xyz = r4.xyz * r1.xyz;
        r1.xyz = r1.zxy * r4.yzx + -r5.xyz;
        r1.xyz = r6.xyz + r1.xyz;
        r4.xyz = cb2[9].xyz * r1.yyy;
        r0.yzw = r1.xxx * r0.yzw + r4.xyz;
        r0.yzw = r1.zzz * cb2[8].xyz + r0.yzw;
        r0.y = dot(r0.yzw, r0.yzw);
        r0.z = rsqrt(r0.y);
        r0.y = r0.y * r0.z;
        r0.y = 0.5 * r0.y;
      } else {
        r0.y = 0;
      }
    } else {
      r0.y = 1;
    }
    r0.x = r0.y * r0.x;
    r0.y = dot(r3.xyz, -r2.xyz);
    r0.z = -cb0[88].y * cb0[88].y + 1;
    r0.w = cb0[88].y * cb0[88].y + 1;
    r0.y = dot(r0.yy, -cb0[88].yy);
    r0.y = r0.w + -r0.y;
    r0.y = log2(r0.y);
    r0.y = 1.5 * r0.y;
    r0.y = exp2(r0.y);
    r0.y = 12.566371 * r0.y;
    r0.y = r0.z / r0.y;
    r0.x = r0.y * r0.x;
    r0.x = cb2[2].x * r0.x;
    r0.xyz = cb2[7].xyz * r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}