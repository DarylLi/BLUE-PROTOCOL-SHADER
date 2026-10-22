// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb0[94];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.w = r1.y ? r1.x : 0;
  r0.w = r1.z ? r0.w : 0;
  if (r0.w != 0) {
    r1.xy = cmp(float2(-2,0) < cb2[10].xw);
    r1.zw = (uint2)r0.xy;
    r2.xy = float2(0.5,0.5) + r1.zw;
    r2.xy = r2.xy / cb3[1].xy;
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.xy = float2(1,-1) * r2.xy;
    r0.w = (uint)v2.x;
    r2.z = 0.5 + r0.w;
    r2.z = r2.z / cb3[2].z;
    r2.z = exp2(r2.z);
    r2.z = -cb3[2].y + r2.z;
    r2.z = r2.z / cb3[2].x;
    r2.w = cmp(cb1[31].w < 1);
    r3.x = cb1[65].w + r2.z;
    r3.x = cb1[65].z * r3.x;
    r3.x = 1 / r3.x;
    r2.z = r2.z * cb1[30].z + cb1[31].z;
    r2.z = r2.w ? r3.x : r2.z;
    r3.xyzw = cb0[56].xyzw * r2.yyyy;
    r3.xyzw = r2.xxxx * cb0[55].xyzw + r3.xyzw;
    r3.xyzw = r2.zzzz * cb0[57].xyzw + r3.xyzw;
    r3.xyzw = cb0[58].xyzw + r3.xyzw;
    r2.xyz = r3.xyz / r3.www;
    r2.xyz = -cb1[70].xyz + r2.xyz;
    r3.xyz = cb0[60].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[59].xyw + r3.xyz;
    r2.xyz = r2.zzz * cb0[61].xyw + r3.xyz;
    r2.xyz = cb0[62].xyw + r2.xyz;
    r2.xy = r2.xy / r2.zz;
    r3.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.x = r2.z * cb1[209].x + cb1[209].y;
    r2.x = log2(r2.x);
    r2.x = cb1[209].z * r2.x;
    r3.z = cb1[208].z * r2.x;
    r2.xyz = cmp(r3.xyz < float3(0,0,0));
    r2.x = (int)r2.y | (int)r2.x;
    r2.x = (int)r2.z | (int)r2.x;
    r3.xyz = cmp(float3(1,1,1) < r3.xyz);
    r2.y = (int)r3.y | (int)r3.x;
    r2.y = (int)r3.z | (int)r2.y;
    r2.x = (int)r2.y | (int)r2.x;
    r2.y = cmp(cb0[71].x < 0.00100000005);
    r2.x = (int)r2.y | (int)r2.x;
    r2.x = r2.x ? cb0[88].x : 1;
    r0.xyz = (int3)r0.xyz + int3(1,1,1);
    r0.xyz = (uint3)r0.xyz;
    r2.y = cb2[6].w * cb2[6].w;
    r3.xyz = cb2[9].zxy * cb2[8].yzx;
    r3.xyz = cb2[9].yzx * cb2[8].zxy + -r3.xyz;
    r4.xy = cmp(float2(-2,0.0350000001) < cb2[11].yx);
    r2.z = cb2[11].x * cb2[11].y;
    r3.w = -cb2[11].x * cb2[11].x + 1;
    r3.w = sqrt(r3.w);
    r3.w = cb2[11].y * r3.w;
    r5.x = cb2[9].w;
    r5.y = cb2[10].w;
    r4.z = 0.5 * cb2[10].w;
    r5.zw = cb0[93].zw + -cb0[93].xy;
    r4.w = -cb0[88].y * cb0[88].y + 1;
    r6.x = cb0[88].y * cb0[88].y + 1;
    r6.y = -2 * cb0[88].y;
    r7.xyz = float3(0,0,0);
    r6.z = cb0[49].x;
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= (uint)r2.x);
      if (r7.w != 0) break;
      r8.xy = cb0[r6.w+72].xy + r1.zw;
      r8.xy = r8.xy / cb3[1].xy;
      r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
      r8.xy = float2(1,-1) * r8.xy;
      r7.w = cb0[r6.w+72].z + r0.w;
      r7.w = r7.w / cb3[2].z;
      r7.w = exp2(r7.w);
      r7.w = -cb3[2].y + r7.w;
      r7.w = r7.w / cb3[2].x;
      r8.z = cb1[65].w + r7.w;
      r8.z = cb1[65].z * r8.z;
      r8.z = 1 / r8.z;
      r7.w = r7.w * cb1[30].z + cb1[31].z;
      r7.w = r2.w ? r8.z : r7.w;
      r9.xyzw = cb0[56].xyzw * r8.yyyy;
      r8.xyzw = r8.xxxx * cb0[55].xyzw + r9.xyzw;
      r8.xyzw = r7.wwww * cb0[57].xyzw + r8.xyzw;
      r8.xyzw = cb0[58].xyzw + r8.xyzw;
      r8.xyz = r8.xyz / r8.www;
      r8.xyz = -cb1[70].xyz + r8.xyz;
      r9.xyz = -cb1[67].xyz + r8.xyz;
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = rsqrt(r7.w);
      r9.xyz = r9.xyz * r7.www;
      r10.xyz = cb2[6].xyz + -r8.xyz;
      r7.w = dot(r10.xyz, r10.xyz);
      r8.w = rsqrt(r7.w);
      r11.xyz = r10.xyz * r8.www;
      r7.w = r7.w * r2.y;
      r7.w = -r7.w * r7.w + 1;
      r7.w = max(0, r7.w);
      r7.w = r7.w * r7.w;
      r8.w = dot(r11.xyz, cb2[8].xyz);
      r9.w = -cb2[10].x + r8.w;
      r9.w = saturate(cb2[10].y * r9.w);
      r9.w = r9.w * r9.w;
      r9.w = r9.w * r7.w;
      r7.w = r1.x ? r9.w : r7.w;
      r8.w = cmp(r8.w < 0);
      r8.w = r8.w ? 0 : r7.w;
      r7.w = r4.x ? r8.w : r7.w;
      if (r4.x != 0) {
        r12.x = dot(r3.xyz, r10.xyz);
        r12.y = dot(cb2[9].xyz, r10.xyz);
        r13.z = dot(cb2[8].xyz, r10.xyz);
        r14.z = min(r13.z, r2.z);
        r8.w = r14.z / r2.z;
        r9.w = r8.w * r3.w;
        r12.zw = cmp(float2(0,0) < r12.xy);
        r15.xy = cmp(r12.xy < float2(0,0));
        r12.zw = (int2)-r12.zw + (int2)r15.xy;
        r12.zw = (int2)r12.zw;
        r15.xy = r3.ww * r8.ww + r5.xy;
        r12.xy = max(r15.xy, abs(r12.xy));
        r13.xy = r12.zw * r12.xy;
        r14.xy = r15.xy * r12.zw;
        r13.xyz = -r14.xyz + r13.xyz;
        r8.w = max(0.00100000005, r13.z);
        r12.xy = abs(r13.xy) / r8.ww;
        r12.xy = r14.zz * r12.xy + -r9.ww;
        r13.xy = max(float2(0,0), -r12.zw);
        r13.xy = r12.xy * r13.xy + -r5.xy;
        r13.xy = max(r13.xy, -r5.xy);
        r13.xy = min(r13.xy, r5.xy);
        r12.zw = max(float2(0,0), r12.zw);
        r12.xy = -r12.xy * r12.zw + r5.xy;
        r12.xy = max(r12.xy, -r5.xy);
        r12.xy = min(r12.xy, r5.xy);
        r12.zw = r12.xy + -r13.xy;
        r12.zw = float2(0.5,0.5) * r12.zw;
        r12.zw = r4.yy ? r12.zw : r5.xy;
        r13.zw = cmp(r12.zw == float2(0,0));
        r8.w = (int)r13.w | (int)r13.z;
        if (r8.w == 0) {
          r12.xy = r13.xy + r12.xy;
          r12.xy = float2(0.5,0.5) * r12.xy;
          r13.xyz = -r3.xyz * r12.xxx + r10.xyz;
          r13.xyz = -cb2[9].xyz * r12.yyy + r13.xyz;
          r13.xyz = r4.yyy ? r13.xyz : r10.xyz;
          r8.w = dot(r3.xyz, r13.xyz);
          r9.w = dot(cb2[9].xyz, r13.xyz);
          r13.w = dot(cb2[8].xyz, r13.xyz);
          r13.y = r8.w + -r12.z;
          r13.x = r8.w + r12.z;
          r13.z = r9.w + -r12.w;
          r12.x = r9.w + r12.w;
          r8.w = dot(r13.yz, r13.yz);
          r8.w = r13.w * r13.w + r8.w;
          r8.w = rsqrt(r8.w);
          r14.xyz = r13.zwy * r8.www;
          r8.w = dot(r13.xz, r13.xz);
          r8.w = r13.w * r13.w + r8.w;
          r8.w = rsqrt(r8.w);
          r15.xyz = r13.wxz * r8.www;
          r12.yzw = r13.xwy;
          r8.w = dot(r12.xy, r12.xy);
          r8.w = r13.w * r13.w + r8.w;
          r8.w = rsqrt(r8.w);
          r13.xyz = r12.xzy * r8.www;
          r8.w = dot(r12.xw, r12.xw);
          r8.w = r13.w * r13.w + r8.w;
          r8.w = rsqrt(r8.w);
          r12.xyz = r12.zwx * r8.www;
          r8.w = dot(r14.yzx, r15.xyz);
          r9.w = dot(r15.zxy, r13.xyz);
          r10.w = dot(r13.yzx, r12.xyz);
          r11.w = dot(r12.zxy, r14.xyz);
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
          r16.xyz = r9.www * r13.xyz;
          r16.xyz = -r8.www * r14.xyz + r16.xyz;
          r17.xyz = r16.xyz * r15.xyz;
          r15.xyz = r15.zxy * r16.yzx + -r17.xyz;
          r13.xyz = -r10.www * r13.xyz;
          r13.xyz = r11.www * r14.xyz + r13.xyz;
          r14.xyz = r13.xyz * r12.xyz;
          r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
          r12.xyz = r15.xyz + r12.xyz;
          r13.xyz = cb2[9].xyz * r12.yyy;
          r12.xyw = r12.xxx * r3.xyz + r13.xyz;
          r12.xyz = r12.zzz * cb2[8].xyz + r12.xyw;
          r8.w = dot(r12.xyz, r12.xyz);
          r9.w = rsqrt(r8.w);
          r8.w = r9.w * r8.w;
          r8.w = 0.5 * r8.w;
        } else {
          r8.w = 0;
        }
      } else {
        r12.xyz = cb0[r6.w+72].xyz + r0.xyz;
        r12.xy = r12.xy / cb3[1].xy;
        r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
        r12.xy = float2(1,-1) * r12.xy;
        r9.w = r12.z / cb3[2].z;
        r9.w = exp2(r9.w);
        r9.w = -cb3[2].y + r9.w;
        r9.w = r9.w / cb3[2].x;
        r10.w = cb1[65].w + r9.w;
        r10.w = cb1[65].z * r10.w;
        r10.w = 1 / r10.w;
        r9.w = r9.w * cb1[30].z + cb1[31].z;
        r9.w = r2.w ? r10.w : r9.w;
        r13.xyzw = cb0[56].xyzw * r12.yyyy;
        r12.xyzw = r12.xxxx * cb0[55].xyzw + r13.xyzw;
        r12.xyzw = r9.wwww * cb0[57].xyzw + r12.xyzw;
        r12.xyzw = cb0[58].xyzw + r12.xyzw;
        r12.xyz = r12.xyz / r12.www;
        r12.xyz = -cb1[70].xyz + r12.xyz;
        r12.xyz = -r12.xyz + r8.xyz;
        r9.w = dot(r12.xyz, r12.xyz);
        r9.w = sqrt(r9.w);
        r9.w = cb0[88].z * r9.w;
        r9.w = max(1, r9.w);
        r12.xyz = -r4.zzz * cb2[9].xyz + r10.xyz;
        r10.w = r9.w * r9.w;
        if (r1.y != 0) {
          r10.xyz = r4.zzz * cb2[9].xyz + r10.xyz;
          r11.w = dot(r12.xyz, r12.xyz);
          r12.w = dot(r10.xyz, r10.xyz);
          r11.w = rsqrt(r11.w);
          r12.w = rsqrt(r12.w);
          r11.w = r12.w * r11.w;
          r10.x = dot(r12.xyz, r10.xyz);
          r10.x = r10.x * r11.w;
          r10.x = r10.x * 0.5 + 0.5;
          r10.x = r10.w * r11.w + r10.x;
          r8.w = r11.w / r10.x;
        } else {
          r10.x = dot(r12.xyz, r12.xyz);
          r9.w = r9.w * r9.w + r10.x;
          r8.w = rcp(r9.w);
        }
      }
      r7.w = r8.w * r7.w;
      r8.w = cmp(0 < r7.w);
      if (r8.w != 0) {
        if (r6.z != 0) {
          if (r1.x == 0) {
            r10.xyz = -cb2[6].yxz + r8.yxz;
            r8.w = dot(r10.xyz, r10.xyz);
            r8.w = sqrt(r8.w);
            r10.xyz = r10.xyz / r8.www;
            r9.w = min(abs(r10.x), abs(r10.y));
            r10.w = max(abs(r10.x), abs(r10.y));
            r10.w = 1 / r10.w;
            r9.w = r10.w * r9.w;
            r10.w = r9.w * r9.w;
            r11.w = r10.w * 0.0208350997 + -0.0851330012;
            r11.w = r10.w * r11.w + 0.180141002;
            r11.w = r10.w * r11.w + -0.330299497;
            r10.w = r10.w * r11.w + 0.999866009;
            r11.w = r10.w * r9.w;
            r12.x = cmp(abs(r10.y) < abs(r10.x));
            r11.w = r11.w * -2 + 1.57079637;
            r11.w = r12.x ? r11.w : 0;
            r9.w = r9.w * r10.w + r11.w;
            r12.xy = cmp(r10.yz < -r10.yz);
            r10.w = r12.x ? -3.141593 : 0;
            r9.w = r10.w + r9.w;
            r10.w = min(r10.x, r10.y);
            r10.x = max(r10.x, r10.y);
            r10.y = cmp(r10.w < -r10.w);
            r10.x = cmp(r10.x >= -r10.x);
            r10.x = r10.x ? r10.y : 0;
            r9.w = r10.x ? -r9.w : r9.w;
            r10.x = 0.159154937 * r9.w;
            r10.y = cmp(0 < r9.w);
            r9.w = r9.w * 0.159154937 + 1;
            r10.x = r10.y ? r10.x : r9.w;
            r9.w = 1 + -abs(r10.z);
            r9.w = sqrt(r9.w);
            r10.w = abs(r10.z) * -0.0187292993 + 0.0742610022;
            r10.w = r10.w * abs(r10.z) + -0.212114394;
            r10.z = r10.w * abs(r10.z) + 1.57072878;
            r10.w = r10.z * r9.w;
            r10.w = r10.w * -2 + 3.14159274;
            r10.w = r12.y ? r10.w : 0;
            r9.w = r10.z * r9.w + r10.w;
            r10.y = 0.318309873 * r9.w;
            r9.w = t0.SampleLevel(s0_s, r10.xy, 0).x;
            r8.w = cb2[6].w * r8.w;
            r8.w = cmp(r8.w < r9.w);
            r8.w = r8.w ? 1.000000 : 0;
          } else {
            r10.xyzw = cb0[51].xyzw * r8.yyyy;
            r10.xyzw = r8.xxxx * cb0[50].xyzw + r10.xyzw;
            r10.xyzw = r8.zzzz * cb0[52].xyzw + r10.xyzw;
            r10.xyzw = cb0[53].xyzw + r10.xyzw;
            r12.xyzw = r10.xyxy / r10.wwww;
            r10.xy = cmp(r12.zw >= float2(0,0));
            r13.xy = cmp(float2(1,1) >= r12.zw);
            r10.xy = r10.xy ? r13.xy : 0;
            r9.w = r10.y ? r10.x : 0;
            if (r9.w != 0) {
              r12.xyzw = r12.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r10.xy = frac(r12.zw);
              r12.xyzw = floor(r12.xyzw);
              r13.xyzw = float4(0.5,1.5,0.5,0.5) + r12.zwzw;
              r13.xyzw = cb0[54].zwzw * r13.xyzw;
              r14.x = t0.SampleLevel(s0_s, r13.xy, 0).x;
              r12.xyzw = float4(1.5,1.5,1.5,0.5) + r12.xyzw;
              r12.xyzw = cb0[54].zwzw * r12.xyzw;
              r14.y = t0.SampleLevel(s0_s, r12.xy, 0).x;
              r14.z = t0.SampleLevel(s0_s, r12.zw, 0).x;
              r14.w = t0.SampleLevel(s0_s, r13.zw, 0).x;
              r9.w = r10.z * 40 + -1;
              r12.xyzw = saturate(r14.xyzw * float4(40,40,40,40) + -r9.wwww);
              r13.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r14.xyzw);
              r13.xyzw = r13.xyzw ? float4(1,1,1,1) : 0;
              r12.xyzw = r13.xyzw + r12.xyzw;
              r12.xyzw = min(float4(1,1,1,1), r12.xyzw);
              r10.zw = r12.zy + -r12.wx;
              r10.xz = r10.xx * r10.zw + r12.wx;
              r9.w = r10.z + -r10.x;
              r8.w = r10.y * r9.w + r10.x;
            } else {
              r8.w = 1;
            }
          }
        } else {
          r8.w = 1;
        }
      } else {
        r8.w = 1;
      }
      r10.xyz = -cb2[6].xyz + r8.xyz;
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = rsqrt(r9.w);
      r10.xyz = r10.xyz * r9.www;
      r12.xyz = cb0[90].zyx * r10.yyy;
      r10.xyw = r10.xxx * cb0[89].zyx + r12.xyz;
      r10.xyz = r10.zzz * cb0[91].zyx + r10.xyw;
      r9.w = max(abs(r10.x), abs(r10.y));
      r10.w = min(abs(r10.x), abs(r10.y));
      r9.w = r10.w / r9.w;
      r10.w = r9.w * r9.w;
      r11.w = r10.w * 0.0872929022 + -0.301894993;
      r10.w = r11.w * r10.w + 1;
      r11.w = r10.w * r9.w;
      r12.x = cmp(abs(r10.x) < abs(r10.y));
      r9.w = -r10.w * r9.w + 1.57079637;
      r9.w = r12.x ? r9.w : r11.w;
      r10.xy = cmp(r10.xy < float2(0,0));
      r10.w = 3.14159274 + -r9.w;
      r9.w = r10.x ? r10.w : r9.w;
      r9.w = r10.y ? -r9.w : r9.w;
      r9.w = 3.14159274 + r9.w;
      r10.x = 0.159154937 * r9.w;
      r9.w = abs(r10.z) * -0.156582996 + 1.57079637;
      r10.w = 1 + -abs(r10.z);
      r10.w = sqrt(r10.w);
      r11.w = r10.w * r9.w;
      r10.z = cmp(r10.z >= 0);
      r9.w = -r9.w * r10.w + 3.14159274;
      r9.w = r10.z ? r11.w : r9.w;
      r10.y = 0.318309873 * r9.w;
      r12.xyz = cb0[90].xyw * r8.yyy;
      r12.xyz = r8.xxx * cb0[89].xyw + r12.xyz;
      r8.xyz = r8.zzz * cb0[91].xyw + r12.xyz;
      r8.xyz = cb0[92].xyw + r8.xyz;
      r8.xy = r8.xy / r8.zz;
      r8.xy = float2(1,1) + -r8.xy;
      r8.xy = r1.xx ? r8.xy : r10.xy;
      r8.xy = r8.xy * r5.zw + cb0[93].xy;
      r8.x = t1.SampleLevel(s1_s, r8.xy, 0).x;
      r8.x = r8.w * r8.x;
      r8.y = dot(r11.xyz, -r9.xyz);
      r8.y = -r6.y * r8.y + r6.x;
      r8.y = log2(r8.y);
      r8.y = 1.5 * r8.y;
      r8.y = exp2(r8.y);
      r8.y = 12.566371 * r8.y;
      r8.y = r4.w / r8.y;
      r7.w = r8.y * r7.w;
      r7.w = r7.w * r8.x;
      r7.w = cb2[2].x * r7.w;
      r7.xyz = cb2[7].xyz * r7.www + r7.xyz;
      r6.w = (int)r6.w + 1;
    }
    r0.x = (uint)r2.x;
    r0.xyz = r7.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}