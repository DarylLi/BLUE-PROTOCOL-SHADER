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
  float4 cb1[210];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.z = r1.y ? r1.x : 0;
  r0.z = r1.z ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = cmp(-2 < cb2[10].x);
    r0.xy = (uint2)r0.xy;
    r1.xy = float2(0.5,0.5) + r0.xy;
    r1.xy = r1.xy / cb3[1].xy;
    r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
    r1.xy = float2(1,-1) * r1.xy;
    r0.w = (uint)v2.x;
    r1.z = 0.5 + r0.w;
    r1.z = r1.z / cb3[2].z;
    r1.z = exp2(r1.z);
    r1.z = -cb3[2].y + r1.z;
    r1.z = r1.z / cb3[2].x;
    r1.w = cmp(cb1[31].w < 1);
    r2.x = cb1[65].w + r1.z;
    r2.x = cb1[65].z * r2.x;
    r2.x = 1 / r2.x;
    r1.z = r1.z * cb1[30].z + cb1[31].z;
    r1.z = r1.w ? r2.x : r1.z;
    r2.xyzw = cb0[56].xyzw * r1.yyyy;
    r2.xyzw = r1.xxxx * cb0[55].xyzw + r2.xyzw;
    r2.xyzw = r1.zzzz * cb0[57].xyzw + r2.xyzw;
    r2.xyzw = cb0[58].xyzw + r2.xyzw;
    r1.xyz = r2.xyz / r2.www;
    r1.xyz = -cb1[70].xyz + r1.xyz;
    r2.xyz = cb0[60].xyw * r1.yyy;
    r2.xyz = r1.xxx * cb0[59].xyw + r2.xyz;
    r1.xyz = r1.zzz * cb0[61].xyw + r2.xyz;
    r1.xyz = cb0[62].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.x = r1.z * cb1[209].x + cb1[209].y;
    r1.x = log2(r1.x);
    r1.x = cb1[209].z * r1.x;
    r2.z = cb1[208].z * r1.x;
    r1.xyz = cmp(r2.xyz < float3(0,0,0));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r2.xyz = cmp(float3(1,1,1) < r2.xyz);
    r1.y = (int)r2.y | (int)r2.x;
    r1.y = (int)r2.z | (int)r1.y;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = cmp(cb0[71].x < 0.00100000005);
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = r1.x ? cb0[88].x : 1;
    r2.xyz = cb2[9].zxy * cb2[8].yzx;
    r2.xyz = cb2[9].yzx * cb2[8].zxy + -r2.xyz;
    r1.yz = cmp(float2(-2,0.0350000001) < cb2[11].yx);
    r2.w = cb2[11].x * cb2[11].y;
    r3.x = -cb2[11].x * cb2[11].x + 1;
    r3.x = sqrt(r3.x);
    r3.x = cb2[11].y * r3.x;
    r4.x = cb2[9].w;
    r4.y = cb2[10].w;
    r3.y = -cb0[88].y * cb0[88].y + 1;
    r3.z = cb0[88].y * cb0[88].y + 1;
    r3.w = -2 * cb0[88].y;
    r5.xyz = float3(0,0,0);
    r4.z = 0;
    while (true) {
      r4.w = cmp((uint)r4.z >= (uint)r1.x);
      if (r4.w != 0) break;
      r6.xy = cb0[r4.z+72].xy + r0.xy;
      r6.xy = r6.xy / cb3[1].xy;
      r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
      r6.xy = float2(1,-1) * r6.xy;
      r4.w = cb0[r4.z+72].z + r0.w;
      r4.w = r4.w / cb3[2].z;
      r4.w = exp2(r4.w);
      r4.w = -cb3[2].y + r4.w;
      r4.w = r4.w / cb3[2].x;
      r5.w = cb1[65].w + r4.w;
      r5.w = cb1[65].z * r5.w;
      r5.w = 1 / r5.w;
      r4.w = r4.w * cb1[30].z + cb1[31].z;
      r4.w = r1.w ? r5.w : r4.w;
      r7.xyzw = cb0[56].xyzw * r6.yyyy;
      r6.xyzw = r6.xxxx * cb0[55].xyzw + r7.xyzw;
      r6.xyzw = r4.wwww * cb0[57].xyzw + r6.xyzw;
      r6.xyzw = cb0[58].xyzw + r6.xyzw;
      r6.xyz = r6.xyz / r6.www;
      r6.xyz = -cb1[70].xyz + r6.xyz;
      r7.xyz = -cb1[67].xyz + r6.xyz;
      r4.w = dot(r7.xyz, r7.xyz);
      r4.w = rsqrt(r4.w);
      r7.xyz = r7.xyz * r4.www;
      r6.xyz = cb2[6].xyz + -r6.xyz;
      r4.w = dot(r6.xyz, r6.xyz);
      r4.w = rsqrt(r4.w);
      r8.xyz = r6.xyz * r4.www;
      r9.xyz = cb2[6].www * r6.xyz;
      r4.w = dot(r9.xyz, r9.xyz);
      r4.w = min(1, r4.w);
      r4.w = 1 + -r4.w;
      r4.w = log2(r4.w);
      r4.w = cb2[7].w * r4.w;
      r4.w = exp2(r4.w);
      r5.w = dot(r8.xyz, cb2[8].xyz);
      r6.w = -cb2[10].x + r5.w;
      r6.w = saturate(cb2[10].y * r6.w);
      r6.w = r6.w * r6.w;
      r6.w = r6.w * r4.w;
      r4.w = r0.z ? r6.w : r4.w;
      r5.w = cmp(r5.w < 0);
      r5.w = r5.w ? 0 : r4.w;
      r4.w = r1.y ? r5.w : r4.w;
      if (r1.y != 0) {
        r9.x = dot(r2.xyz, r6.xyz);
        r9.y = dot(cb2[9].xyz, r6.xyz);
        r10.z = dot(cb2[8].xyz, r6.xyz);
        r11.z = min(r10.z, r2.w);
        r5.w = r11.z / r2.w;
        r6.w = r5.w * r3.x;
        r9.zw = cmp(float2(0,0) < r9.xy);
        r12.xy = cmp(r9.xy < float2(0,0));
        r9.zw = (int2)-r9.zw + (int2)r12.xy;
        r9.zw = (int2)r9.zw;
        r12.xy = r3.xx * r5.ww + r4.xy;
        r9.xy = max(r12.xy, abs(r9.xy));
        r10.xy = r9.zw * r9.xy;
        r11.xy = r12.xy * r9.zw;
        r10.xyz = -r11.xyz + r10.xyz;
        r5.w = max(0.00100000005, r10.z);
        r9.xy = abs(r10.xy) / r5.ww;
        r9.xy = r11.zz * r9.xy + -r6.ww;
        r10.xy = max(float2(0,0), -r9.zw);
        r10.xy = r9.xy * r10.xy + -r4.xy;
        r10.xy = max(r10.xy, -r4.xy);
        r10.xy = min(r10.xy, r4.xy);
        r9.zw = max(float2(0,0), r9.zw);
        r9.xy = -r9.xy * r9.zw + r4.xy;
        r9.xy = max(r9.xy, -r4.xy);
        r9.xy = min(r9.xy, r4.xy);
        r9.zw = r9.xy + -r10.xy;
        r9.zw = float2(0.5,0.5) * r9.zw;
        r9.zw = r1.zz ? r9.zw : r4.xy;
        r10.zw = cmp(r9.zw == float2(0,0));
        r5.w = (int)r10.w | (int)r10.z;
        if (r5.w == 0) {
          r9.xy = r10.xy + r9.xy;
          r9.xy = float2(0.5,0.5) * r9.xy;
          r10.xyz = -r2.xyz * r9.xxx + r6.xyz;
          r10.xyz = -cb2[9].xyz * r9.yyy + r10.xyz;
          r6.xyz = r1.zzz ? r10.xyz : r6.xyz;
          r5.w = dot(r2.xyz, r6.xyz);
          r6.w = dot(cb2[9].xyz, r6.xyz);
          r10.w = dot(cb2[8].xyz, r6.xyz);
          r10.y = r5.w + -r9.z;
          r10.x = r5.w + r9.z;
          r10.z = r6.w + -r9.w;
          r6.x = r6.w + r9.w;
          r5.w = dot(r10.yz, r10.yz);
          r5.w = r10.w * r10.w + r5.w;
          r5.w = rsqrt(r5.w);
          r9.xyz = r10.zwy * r5.www;
          r5.w = dot(r10.xz, r10.xz);
          r5.w = r10.w * r10.w + r5.w;
          r5.w = rsqrt(r5.w);
          r11.xyz = r10.wxz * r5.www;
          r6.yzw = r10.xwy;
          r5.w = dot(r6.xy, r6.xy);
          r5.w = r10.w * r10.w + r5.w;
          r5.w = rsqrt(r5.w);
          r10.xyz = r6.xzy * r5.www;
          r5.w = dot(r6.xw, r6.xw);
          r5.w = r10.w * r10.w + r5.w;
          r5.w = rsqrt(r5.w);
          r6.xyz = r6.zwx * r5.www;
          r5.w = dot(r9.yzx, r11.xyz);
          r6.w = dot(r11.zxy, r10.xyz);
          r7.w = dot(r10.yzx, r6.xyz);
          r8.w = dot(r6.zxy, r9.xyz);
          r9.w = -r5.w * 0.174999997 + 1.57079995;
          r5.w = 1 + r5.w;
          r5.w = rsqrt(r5.w);
          r5.w = r9.w * r5.w;
          r9.w = -r6.w * 0.174999997 + 1.57079995;
          r6.w = 1 + r6.w;
          r6.w = rsqrt(r6.w);
          r6.w = r9.w * r6.w;
          r9.w = -r7.w * 0.174999997 + 1.57079995;
          r7.w = 1 + r7.w;
          r7.w = rsqrt(r7.w);
          r7.w = r9.w * r7.w;
          r9.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r9.w * r8.w;
          r12.xyz = r6.www * r10.xyz;
          r12.xyz = -r5.www * r9.xyz + r12.xyz;
          r13.xyz = r12.xyz * r11.xyz;
          r11.xyz = r11.zxy * r12.yzx + -r13.xyz;
          r10.xyz = -r7.www * r10.xyz;
          r9.xyz = r8.www * r9.xyz + r10.xyz;
          r10.xyz = r9.xyz * r6.xyz;
          r6.xyz = r6.zxy * r9.yzx + -r10.xyz;
          r6.xyz = r11.xyz + r6.xyz;
          r9.xyz = cb2[9].xyz * r6.yyy;
          r6.xyw = r6.xxx * r2.xyz + r9.xyz;
          r6.xyz = r6.zzz * cb2[8].xyz + r6.xyw;
          r5.w = dot(r6.xyz, r6.xyz);
          r6.x = rsqrt(r5.w);
          r5.w = r6.x * r5.w;
          r5.w = 0.5 * r5.w;
        } else {
          r5.w = 0;
        }
      } else {
        r5.w = 1;
      }
      r4.w = r5.w * r4.w;
      r5.w = dot(r8.xyz, -r7.xyz);
      r5.w = -r3.w * r5.w + r3.z;
      r5.w = log2(r5.w);
      r5.w = 1.5 * r5.w;
      r5.w = exp2(r5.w);
      r5.w = 12.566371 * r5.w;
      r5.w = r3.y / r5.w;
      r4.w = r5.w * r4.w;
      r4.w = cb2[2].x * r4.w;
      r5.xyz = cb2[7].xyz * r4.www + r5.xyz;
      r4.z = (int)r4.z + 1;
    }
    r0.x = (uint)r1.x;
    r0.xyz = r5.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}