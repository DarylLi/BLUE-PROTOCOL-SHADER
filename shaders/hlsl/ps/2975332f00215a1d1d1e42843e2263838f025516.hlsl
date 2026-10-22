// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
    r4.z = cb0[49].x;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.x);
      if (r5.w != 0) break;
      r6.xy = cb0[r4.w+72].xy + r0.xy;
      r6.xy = r6.xy / cb3[1].xy;
      r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
      r6.xy = float2(1,-1) * r6.xy;
      r5.w = cb0[r4.w+72].z + r0.w;
      r5.w = r5.w / cb3[2].z;
      r5.w = exp2(r5.w);
      r5.w = -cb3[2].y + r5.w;
      r5.w = r5.w / cb3[2].x;
      r6.z = cb1[65].w + r5.w;
      r6.z = cb1[65].z * r6.z;
      r6.z = 1 / r6.z;
      r5.w = r5.w * cb1[30].z + cb1[31].z;
      r5.w = r1.w ? r6.z : r5.w;
      r7.xyzw = cb0[56].xyzw * r6.yyyy;
      r6.xyzw = r6.xxxx * cb0[55].xyzw + r7.xyzw;
      r6.xyzw = r5.wwww * cb0[57].xyzw + r6.xyzw;
      r6.xyzw = cb0[58].xyzw + r6.xyzw;
      r6.xyz = r6.yxz / r6.www;
      r6.xyz = -cb1[70].yxz + r6.xyz;
      r7.xyz = -cb1[67].xyz + r6.yxz;
      r5.w = dot(r7.xyz, r7.xyz);
      r5.w = rsqrt(r5.w);
      r7.xyz = r7.xyz * r5.www;
      r8.xyz = cb2[6].xyz + -r6.yxz;
      r5.w = dot(r8.xyz, r8.xyz);
      r5.w = rsqrt(r5.w);
      r9.xyz = r8.xyz * r5.www;
      r10.xyz = cb2[6].www * r8.xyz;
      r5.w = dot(r10.xyz, r10.xyz);
      r5.w = min(1, r5.w);
      r5.w = 1 + -r5.w;
      r5.w = log2(r5.w);
      r5.w = cb2[7].w * r5.w;
      r5.w = exp2(r5.w);
      r6.w = dot(r9.xyz, cb2[8].xyz);
      r7.w = -cb2[10].x + r6.w;
      r7.w = saturate(cb2[10].y * r7.w);
      r7.w = r7.w * r7.w;
      r7.w = r7.w * r5.w;
      r5.w = r0.z ? r7.w : r5.w;
      r6.w = cmp(r6.w < 0);
      r6.w = r6.w ? 0 : r5.w;
      r5.w = r1.y ? r6.w : r5.w;
      if (r1.y != 0) {
        r10.x = dot(r2.xyz, r8.xyz);
        r10.y = dot(cb2[9].xyz, r8.xyz);
        r11.z = dot(cb2[8].xyz, r8.xyz);
        r12.z = min(r11.z, r2.w);
        r6.w = r12.z / r2.w;
        r7.w = r6.w * r3.x;
        r10.zw = cmp(float2(0,0) < r10.xy);
        r13.xy = cmp(r10.xy < float2(0,0));
        r10.zw = (int2)-r10.zw + (int2)r13.xy;
        r10.zw = (int2)r10.zw;
        r13.xy = r3.xx * r6.ww + r4.xy;
        r10.xy = max(r13.xy, abs(r10.xy));
        r11.xy = r10.zw * r10.xy;
        r12.xy = r13.xy * r10.zw;
        r11.xyz = -r12.xyz + r11.xyz;
        r6.w = max(0.00100000005, r11.z);
        r10.xy = abs(r11.xy) / r6.ww;
        r10.xy = r12.zz * r10.xy + -r7.ww;
        r11.xy = max(float2(0,0), -r10.zw);
        r11.xy = r10.xy * r11.xy + -r4.xy;
        r11.xy = max(r11.xy, -r4.xy);
        r11.xy = min(r11.xy, r4.xy);
        r10.zw = max(float2(0,0), r10.zw);
        r10.xy = -r10.xy * r10.zw + r4.xy;
        r10.xy = max(r10.xy, -r4.xy);
        r10.xy = min(r10.xy, r4.xy);
        r10.zw = r10.xy + -r11.xy;
        r10.zw = float2(0.5,0.5) * r10.zw;
        r10.zw = r1.zz ? r10.zw : r4.xy;
        r11.zw = cmp(r10.zw == float2(0,0));
        r6.w = (int)r11.w | (int)r11.z;
        if (r6.w == 0) {
          r10.xy = r11.xy + r10.xy;
          r10.xy = float2(0.5,0.5) * r10.xy;
          r11.xyz = -r2.xyz * r10.xxx + r8.xyz;
          r11.xyz = -cb2[9].xyz * r10.yyy + r11.xyz;
          r8.xyz = r1.zzz ? r11.xyz : r8.xyz;
          r6.w = dot(r2.xyz, r8.xyz);
          r7.w = dot(cb2[9].xyz, r8.xyz);
          r8.w = dot(cb2[8].xyz, r8.xyz);
          r8.y = r6.w + -r10.z;
          r8.x = r6.w + r10.z;
          r8.z = r7.w + -r10.w;
          r10.x = r7.w + r10.w;
          r6.w = dot(r8.yz, r8.yz);
          r6.w = r8.w * r8.w + r6.w;
          r6.w = rsqrt(r6.w);
          r11.xyz = r8.zwy * r6.www;
          r6.w = dot(r8.xz, r8.xz);
          r6.w = r8.w * r8.w + r6.w;
          r6.w = rsqrt(r6.w);
          r12.xyz = r8.wxz * r6.www;
          r10.yzw = r8.xwy;
          r6.w = dot(r10.xy, r10.xy);
          r6.w = r8.w * r8.w + r6.w;
          r6.w = rsqrt(r6.w);
          r8.xyz = r10.xzy * r6.www;
          r6.w = dot(r10.xw, r10.xw);
          r6.w = r8.w * r8.w + r6.w;
          r6.w = rsqrt(r6.w);
          r10.xyz = r10.zwx * r6.www;
          r6.w = dot(r11.yzx, r12.xyz);
          r7.w = dot(r12.zxy, r8.xyz);
          r8.w = dot(r8.yzx, r10.xyz);
          r9.w = dot(r10.zxy, r11.xyz);
          r10.w = -r6.w * 0.174999997 + 1.57079995;
          r6.w = 1 + r6.w;
          r6.w = rsqrt(r6.w);
          r6.w = r10.w * r6.w;
          r10.w = -r7.w * 0.174999997 + 1.57079995;
          r7.w = 1 + r7.w;
          r7.w = rsqrt(r7.w);
          r7.w = r10.w * r7.w;
          r10.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r10.w * r8.w;
          r10.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r10.w * r9.w;
          r13.xyz = r7.www * r8.xyz;
          r13.xyz = -r6.www * r11.xyz + r13.xyz;
          r14.xyz = r13.xyz * r12.xyz;
          r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
          r8.xyz = -r8.www * r8.xyz;
          r8.xyz = r9.www * r11.xyz + r8.xyz;
          r11.xyz = r10.xyz * r8.xyz;
          r8.xyz = r10.zxy * r8.yzx + -r11.xyz;
          r8.xyz = r12.xyz + r8.xyz;
          r10.xyz = cb2[9].xyz * r8.yyy;
          r8.xyw = r8.xxx * r2.xyz + r10.xyz;
          r8.xyz = r8.zzz * cb2[8].xyz + r8.xyw;
          r6.w = dot(r8.xyz, r8.xyz);
          r7.w = rsqrt(r6.w);
          r6.w = r7.w * r6.w;
          r6.w = 0.5 * r6.w;
        } else {
          r6.w = 0;
        }
      } else {
        r6.w = 1;
      }
      r5.w = r6.w * r5.w;
      r6.w = cmp(0 < r5.w);
      if (r6.w != 0) {
        if (r4.z != 0) {
          if (r0.z == 0) {
            r8.xyz = -cb2[6].yxz + r6.xyz;
            r6.w = dot(r8.xyz, r8.xyz);
            r6.w = sqrt(r6.w);
            r8.xyz = r8.xyz / r6.www;
            r7.w = min(abs(r8.x), abs(r8.y));
            r8.w = max(abs(r8.x), abs(r8.y));
            r8.w = 1 / r8.w;
            r7.w = r8.w * r7.w;
            r8.w = r7.w * r7.w;
            r9.w = r8.w * 0.0208350997 + -0.0851330012;
            r9.w = r8.w * r9.w + 0.180141002;
            r9.w = r8.w * r9.w + -0.330299497;
            r8.w = r8.w * r9.w + 0.999866009;
            r9.w = r8.w * r7.w;
            r10.x = cmp(abs(r8.y) < abs(r8.x));
            r9.w = r9.w * -2 + 1.57079637;
            r9.w = r10.x ? r9.w : 0;
            r7.w = r7.w * r8.w + r9.w;
            r10.xy = cmp(r8.yz < -r8.yz);
            r8.w = r10.x ? -3.141593 : 0;
            r7.w = r8.w + r7.w;
            r8.w = min(r8.x, r8.y);
            r8.x = max(r8.x, r8.y);
            r8.y = cmp(r8.w < -r8.w);
            r8.x = cmp(r8.x >= -r8.x);
            r8.x = r8.x ? r8.y : 0;
            r7.w = r8.x ? -r7.w : r7.w;
            r8.x = 0.159154937 * r7.w;
            r8.y = cmp(0 < r7.w);
            r7.w = r7.w * 0.159154937 + 1;
            r8.x = r8.y ? r8.x : r7.w;
            r7.w = 1 + -abs(r8.z);
            r7.w = sqrt(r7.w);
            r8.w = abs(r8.z) * -0.0187292993 + 0.0742610022;
            r8.w = r8.w * abs(r8.z) + -0.212114394;
            r8.z = r8.w * abs(r8.z) + 1.57072878;
            r8.w = r8.z * r7.w;
            r8.w = r8.w * -2 + 3.14159274;
            r8.w = r10.y ? r8.w : 0;
            r7.w = r8.z * r7.w + r8.w;
            r8.y = 0.318309873 * r7.w;
            r7.w = t0.SampleLevel(s0_s, r8.xy, 0).x;
            r6.w = cb2[6].w * r6.w;
            r6.w = cmp(r6.w < r7.w);
            r6.w = r6.w ? 1.000000 : 0;
          } else {
            r8.xyzw = cb0[51].xyzw * r6.xxxx;
            r8.xyzw = r6.yyyy * cb0[50].xyzw + r8.xyzw;
            r8.xyzw = r6.zzzz * cb0[52].xyzw + r8.xyzw;
            r8.xyzw = cb0[53].xyzw + r8.xyzw;
            r10.xyzw = r8.xyxy / r8.wwww;
            r6.xy = cmp(r10.zw >= float2(0,0));
            r8.xy = cmp(float2(1,1) >= r10.zw);
            r6.xy = r6.xy ? r8.xy : 0;
            r6.x = r6.y ? r6.x : 0;
            if (r6.x != 0) {
              r10.xyzw = r10.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r6.xy = frac(r10.zw);
              r10.xyzw = floor(r10.xyzw);
              r11.xyzw = float4(0.5,1.5,0.5,0.5) + r10.zwzw;
              r11.xyzw = cb0[54].zwzw * r11.xyzw;
              r12.x = t0.SampleLevel(s0_s, r11.xy, 0).x;
              r10.xyzw = float4(1.5,1.5,1.5,0.5) + r10.xyzw;
              r10.xyzw = cb0[54].zwzw * r10.xyzw;
              r12.y = t0.SampleLevel(s0_s, r10.xy, 0).x;
              r12.z = t0.SampleLevel(s0_s, r10.zw, 0).x;
              r12.w = t0.SampleLevel(s0_s, r11.zw, 0).x;
              r6.z = r8.z * 40 + -1;
              r8.xyzw = saturate(r12.xyzw * float4(40,40,40,40) + -r6.zzzz);
              r10.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r12.xyzw);
              r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
              r8.xyzw = r10.xyzw + r8.xyzw;
              r8.xyzw = min(float4(1,1,1,1), r8.xyzw);
              r8.yz = r8.zy + -r8.wx;
              r6.xz = r6.xx * r8.yz + r8.wx;
              r6.z = r6.z + -r6.x;
              r6.w = r6.y * r6.z + r6.x;
            } else {
              r6.w = 1;
            }
          }
        } else {
          r6.w = 1;
        }
      } else {
        r6.w = 1;
      }
      r6.x = dot(r9.xyz, -r7.xyz);
      r6.x = -r3.w * r6.x + r3.z;
      r6.x = log2(r6.x);
      r6.x = 1.5 * r6.x;
      r6.x = exp2(r6.x);
      r6.x = 12.566371 * r6.x;
      r6.x = r3.y / r6.x;
      r5.w = r6.x * r5.w;
      r5.w = r5.w * r6.w;
      r5.w = cb2[2].x * r5.w;
      r5.xyz = cb2[7].xyz * r5.www + r5.xyz;
      r4.w = (int)r4.w + 1;
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