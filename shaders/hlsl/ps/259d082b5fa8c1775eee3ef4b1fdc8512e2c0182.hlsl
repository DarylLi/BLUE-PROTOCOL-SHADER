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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.w = r1.y ? r1.x : 0;
  r0.w = r1.z ? r0.w : 0;
  if (r0.w != 0) {
    r1.xy = (uint2)r0.xy;
    r1.zw = float2(0.5,0.5) + r1.xy;
    r1.zw = r1.zw / cb3[1].xy;
    r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
    r1.zw = float2(1,-1) * r1.zw;
    r0.w = (uint)v2.x;
    r2.x = 0.5 + r0.w;
    r2.x = r2.x / cb3[2].z;
    r2.x = exp2(r2.x);
    r2.x = -cb3[2].y + r2.x;
    r2.x = r2.x / cb3[2].x;
    r2.y = cmp(cb1[31].w < 1);
    r2.z = cb1[65].w + r2.x;
    r2.z = cb1[65].z * r2.z;
    r2.z = 1 / r2.z;
    r2.x = r2.x * cb1[30].z + cb1[31].z;
    r2.x = r2.y ? r2.z : r2.x;
    r3.xyzw = cb0[56].xyzw * r1.wwww;
    r3.xyzw = r1.zzzz * cb0[55].xyzw + r3.xyzw;
    r3.xyzw = r2.xxxx * cb0[57].xyzw + r3.xyzw;
    r3.xyzw = cb0[58].xyzw + r3.xyzw;
    r2.xzw = r3.xyz / r3.www;
    r2.xzw = -cb1[70].xyz + r2.xzw;
    r3.xyz = cb0[60].xyw * r2.zzz;
    r3.xyz = r2.xxx * cb0[59].xyw + r3.xyz;
    r2.xzw = r2.www * cb0[61].xyw + r3.xyz;
    r2.xzw = cb0[62].xyw + r2.xzw;
    r1.zw = r2.xz / r2.ww;
    r3.xy = r1.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.z = r2.w * cb1[209].x + cb1[209].y;
    r1.z = log2(r1.z);
    r1.z = cb1[209].z * r1.z;
    r3.z = cb1[208].z * r1.z;
    r2.xzw = cmp(r3.xyz < float3(0,0,0));
    r1.z = (int)r2.z | (int)r2.x;
    r1.z = (int)r2.w | (int)r1.z;
    r2.xzw = cmp(float3(1,1,1) < r3.xyz);
    r1.w = (int)r2.z | (int)r2.x;
    r1.w = (int)r2.w | (int)r1.w;
    r1.z = (int)r1.w | (int)r1.z;
    r1.w = cmp(cb0[71].x < 0.00100000005);
    r1.z = (int)r1.w | (int)r1.z;
    r1.z = r1.z ? cb0[88].x : 1;
    r0.xyz = (int3)r0.xyz + int3(1,1,1);
    r0.xyz = (uint3)r0.xyz;
    r1.w = cb2[6].w * cb2[6].w;
    r2.xzw = cb2[9].zxy * cb2[8].yzx;
    r2.xzw = cb2[9].yzx * cb2[8].zxy + -r2.xzw;
    r3.xy = cmp(float2(-2,0.0350000001) < cb2[11].yx);
    r3.z = cb2[11].x * cb2[11].y;
    r3.w = -cb2[11].x * cb2[11].x + 1;
    r3.w = sqrt(r3.w);
    r3.w = cb2[11].y * r3.w;
    r4.x = cb2[9].w;
    r4.y = cb2[10].w;
    r4.z = 0.5 * cb2[10].w;
    r5.xy = cmp(float2(-2,0) < cb2[10].xw);
    r4.w = -cb0[88].y * cb0[88].y + 1;
    r5.z = cb0[88].y * cb0[88].y + 1;
    r5.w = -2 * cb0[88].y;
    r6.xyzw = float4(0,0,0,0);
    while (true) {
      r7.x = cmp((uint)r6.w >= (uint)r1.z);
      if (r7.x != 0) break;
      r7.xy = cb0[r6.w+72].xy + r1.xy;
      r7.xy = r7.xy / cb3[1].xy;
      r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
      r7.xy = float2(1,-1) * r7.xy;
      r7.z = cb0[r6.w+72].z + r0.w;
      r7.z = r7.z / cb3[2].z;
      r7.z = exp2(r7.z);
      r7.z = -cb3[2].y + r7.z;
      r7.z = r7.z / cb3[2].x;
      r7.w = cb1[65].w + r7.z;
      r7.w = cb1[65].z * r7.w;
      r7.w = 1 / r7.w;
      r7.z = r7.z * cb1[30].z + cb1[31].z;
      r7.z = r2.y ? r7.w : r7.z;
      r8.xyzw = cb0[56].xyzw * r7.yyyy;
      r8.xyzw = r7.xxxx * cb0[55].xyzw + r8.xyzw;
      r7.xyzw = r7.zzzz * cb0[57].xyzw + r8.xyzw;
      r7.xyzw = cb0[58].xyzw + r7.xyzw;
      r7.xyz = r7.xyz / r7.www;
      r7.xyz = -cb1[70].xyz + r7.xyz;
      r8.xyz = -cb1[67].xyz + r7.xyz;
      r7.w = dot(r8.xyz, r8.xyz);
      r7.w = rsqrt(r7.w);
      r8.xyz = r8.xyz * r7.www;
      r9.xyz = cb2[6].xyz + -r7.xyz;
      r7.w = dot(r9.xyz, r9.xyz);
      r8.w = rsqrt(r7.w);
      r10.xyz = r9.xyz * r8.www;
      r7.w = r7.w * r1.w;
      r7.w = -r7.w * r7.w + 1;
      r7.w = max(0, r7.w);
      r7.w = r7.w * r7.w;
      r8.w = dot(r10.xyz, cb2[8].xyz);
      r9.w = -cb2[10].x + r8.w;
      r9.w = saturate(cb2[10].y * r9.w);
      r9.w = r9.w * r9.w;
      r9.w = r9.w * r7.w;
      r7.w = r5.x ? r9.w : r7.w;
      r8.w = cmp(r8.w < 0);
      r8.w = r8.w ? 0 : r7.w;
      r7.w = r3.x ? r8.w : r7.w;
      if (r3.x != 0) {
        r11.x = dot(r2.xzw, r9.xyz);
        r11.y = dot(cb2[9].xyz, r9.xyz);
        r12.z = dot(cb2[8].xyz, r9.xyz);
        r13.z = min(r12.z, r3.z);
        r8.w = r13.z / r3.z;
        r9.w = r8.w * r3.w;
        r11.zw = cmp(float2(0,0) < r11.xy);
        r14.xy = cmp(r11.xy < float2(0,0));
        r11.zw = (int2)-r11.zw + (int2)r14.xy;
        r11.zw = (int2)r11.zw;
        r14.xy = r3.ww * r8.ww + r4.xy;
        r11.xy = max(r14.xy, abs(r11.xy));
        r12.xy = r11.zw * r11.xy;
        r13.xy = r14.xy * r11.zw;
        r12.xyz = -r13.xyz + r12.xyz;
        r8.w = max(0.00100000005, r12.z);
        r11.xy = abs(r12.xy) / r8.ww;
        r11.xy = r13.zz * r11.xy + -r9.ww;
        r12.xy = max(float2(0,0), -r11.zw);
        r12.xy = r11.xy * r12.xy + -r4.xy;
        r12.xy = max(r12.xy, -r4.xy);
        r12.xy = min(r12.xy, r4.xy);
        r11.zw = max(float2(0,0), r11.zw);
        r11.xy = -r11.xy * r11.zw + r4.xy;
        r11.xy = max(r11.xy, -r4.xy);
        r11.xy = min(r11.xy, r4.xy);
        r11.zw = r11.xy + -r12.xy;
        r11.zw = float2(0.5,0.5) * r11.zw;
        r11.zw = r3.yy ? r11.zw : r4.xy;
        r12.zw = cmp(r11.zw == float2(0,0));
        r8.w = (int)r12.w | (int)r12.z;
        if (r8.w == 0) {
          r11.xy = r12.xy + r11.xy;
          r11.xy = float2(0.5,0.5) * r11.xy;
          r12.xyz = -r2.xzw * r11.xxx + r9.xyz;
          r12.xyz = -cb2[9].xyz * r11.yyy + r12.xyz;
          r12.xyz = r3.yyy ? r12.xyz : r9.xyz;
          r8.w = dot(r2.xzw, r12.xyz);
          r9.w = dot(cb2[9].xyz, r12.xyz);
          r12.w = dot(cb2[8].xyz, r12.xyz);
          r12.y = r8.w + -r11.z;
          r12.x = r8.w + r11.z;
          r12.z = r9.w + -r11.w;
          r11.x = r9.w + r11.w;
          r8.w = dot(r12.yz, r12.yz);
          r8.w = r12.w * r12.w + r8.w;
          r8.w = rsqrt(r8.w);
          r13.xyz = r12.zwy * r8.www;
          r8.w = dot(r12.xz, r12.xz);
          r8.w = r12.w * r12.w + r8.w;
          r8.w = rsqrt(r8.w);
          r14.xyz = r12.wxz * r8.www;
          r11.yzw = r12.xwy;
          r8.w = dot(r11.xy, r11.xy);
          r8.w = r12.w * r12.w + r8.w;
          r8.w = rsqrt(r8.w);
          r12.xyz = r11.xzy * r8.www;
          r8.w = dot(r11.xw, r11.xw);
          r8.w = r12.w * r12.w + r8.w;
          r8.w = rsqrt(r8.w);
          r11.xyz = r11.zwx * r8.www;
          r8.w = dot(r13.yzx, r14.xyz);
          r9.w = dot(r14.zxy, r12.xyz);
          r10.w = dot(r12.yzx, r11.xyz);
          r11.w = dot(r11.zxy, r13.xyz);
          r12.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r12.w * r8.w;
          r12.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r12.w * r9.w;
          r12.w = -r10.w * 0.174999997 + 1.57079995;
          r10.w = 1 + r10.w;
          r10.w = rsqrt(r10.w);
          r10.w = r12.w * r10.w;
          r12.w = -r11.w * 0.174999997 + 1.57079995;
          r11.w = 1 + r11.w;
          r11.w = rsqrt(r11.w);
          r11.w = r12.w * r11.w;
          r15.xyz = r9.www * r12.xyz;
          r15.xyz = -r8.www * r13.xyz + r15.xyz;
          r16.xyz = r15.xyz * r14.xyz;
          r14.xyz = r14.zxy * r15.yzx + -r16.xyz;
          r12.xyz = -r10.www * r12.xyz;
          r12.xyz = r11.www * r13.xyz + r12.xyz;
          r13.xyz = r12.xyz * r11.xyz;
          r11.xyz = r11.zxy * r12.yzx + -r13.xyz;
          r11.xyz = r14.xyz + r11.xyz;
          r12.xyz = cb2[9].xyz * r11.yyy;
          r11.xyw = r11.xxx * r2.xzw + r12.xyz;
          r11.xyz = r11.zzz * cb2[8].xyz + r11.xyw;
          r8.w = dot(r11.xyz, r11.xyz);
          r9.w = rsqrt(r8.w);
          r8.w = r9.w * r8.w;
          r8.w = 0.5 * r8.w;
        } else {
          r8.w = 0;
        }
      } else {
        r11.xyz = cb0[r6.w+72].xyz + r0.xyz;
        r11.xy = r11.xy / cb3[1].xy;
        r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
        r11.xy = float2(1,-1) * r11.xy;
        r9.w = r11.z / cb3[2].z;
        r9.w = exp2(r9.w);
        r9.w = -cb3[2].y + r9.w;
        r9.w = r9.w / cb3[2].x;
        r10.w = cb1[65].w + r9.w;
        r10.w = cb1[65].z * r10.w;
        r10.w = 1 / r10.w;
        r9.w = r9.w * cb1[30].z + cb1[31].z;
        r9.w = r2.y ? r10.w : r9.w;
        r12.xyzw = cb0[56].xyzw * r11.yyyy;
        r11.xyzw = r11.xxxx * cb0[55].xyzw + r12.xyzw;
        r11.xyzw = r9.wwww * cb0[57].xyzw + r11.xyzw;
        r11.xyzw = cb0[58].xyzw + r11.xyzw;
        r11.xyz = r11.xyz / r11.www;
        r11.xyz = -cb1[70].xyz + r11.xyz;
        r7.xyz = -r11.xyz + r7.xyz;
        r7.x = dot(r7.xyz, r7.xyz);
        r7.x = sqrt(r7.x);
        r7.x = cb0[88].z * r7.x;
        r7.x = max(1, r7.x);
        r11.xyz = -r4.zzz * cb2[9].xyz + r9.xyz;
        r7.y = r7.x * r7.x;
        if (r5.y != 0) {
          r9.xyz = r4.zzz * cb2[9].xyz + r9.xyz;
          r7.z = dot(r11.xyz, r11.xyz);
          r9.w = dot(r9.xyz, r9.xyz);
          r7.z = rsqrt(r7.z);
          r9.w = rsqrt(r9.w);
          r7.z = r9.w * r7.z;
          r9.x = dot(r11.xyz, r9.xyz);
          r9.x = r9.x * r7.z;
          r9.x = r9.x * 0.5 + 0.5;
          r7.y = r7.y * r7.z + r9.x;
          r8.w = r7.z / r7.y;
        } else {
          r7.y = dot(r11.xyz, r11.xyz);
          r7.x = r7.x * r7.x + r7.y;
          r8.w = rcp(r7.x);
        }
      }
      r7.x = r8.w * r7.w;
      r7.y = dot(r10.xyz, -r8.xyz);
      r7.y = -r5.w * r7.y + r5.z;
      r7.y = log2(r7.y);
      r7.y = 1.5 * r7.y;
      r7.y = exp2(r7.y);
      r7.y = 12.566371 * r7.y;
      r7.y = r4.w / r7.y;
      r7.x = r7.y * r7.x;
      r7.x = cb2[2].x * r7.x;
      r6.xyz = cb2[7].xyz * r7.xxx + r6.xyz;
      r6.w = (int)r6.w + 1;
    }
    r0.x = (uint)r1.z;
    r0.xyz = r6.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}