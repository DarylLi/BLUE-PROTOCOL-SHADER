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
  float4 cb1[71];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.w = r1.y ? r1.x : 0;
  r0.w = r1.z ? r0.w : 0;
  if (r0.w != 0) {
    r0.w = cmp(-2 < cb2[10].x);
    r1.x = cmp(-2 < cb2[11].y);
    r1.yz = (uint2)r0.xy;
    r1.yz = cb0[72].xy + r1.yz;
    r1.yz = r1.yz / cb3[1].xy;
    r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
    r1.yz = float2(1,-1) * r1.yz;
    r1.w = (uint)v2.x;
    r1.w = cb0[72].z + r1.w;
    r1.w = r1.w / cb3[2].z;
    r1.w = exp2(r1.w);
    r1.w = -cb3[2].y + r1.w;
    r1.w = r1.w / cb3[2].x;
    r2.x = cmp(cb1[31].w < 1);
    r2.y = cb1[65].w + r1.w;
    r2.y = cb1[65].z * r2.y;
    r2.y = 1 / r2.y;
    r1.w = r1.w * cb1[30].z + cb1[31].z;
    r1.w = r2.x ? r2.y : r1.w;
    r3.xyzw = cb0[56].xyzw * r1.zzzz;
    r3.xyzw = r1.yyyy * cb0[55].xyzw + r3.xyzw;
    r3.xyzw = r1.wwww * cb0[57].xyzw + r3.xyzw;
    r3.xyzw = cb0[58].xyzw + r3.xyzw;
    r1.yzw = r3.xyz / r3.www;
    r1.yzw = -cb1[70].xyz + r1.yzw;
    r2.yzw = -cb1[67].xyz + r1.yzw;
    r3.x = dot(r2.yzw, r2.yzw);
    r3.x = rsqrt(r3.x);
    r2.yzw = r3.xxx * r2.yzw;
    r3.xyz = cb2[6].xyz + -r1.yzw;
    r3.w = dot(r3.xyz, r3.xyz);
    r4.x = rsqrt(r3.w);
    r4.xyz = r4.xxx * r3.xyz;
    r4.w = cb2[6].w * cb2[6].w;
    r3.w = r4.w * r3.w;
    r3.w = -r3.w * r3.w + 1;
    r3.w = max(0, r3.w);
    r3.w = r3.w * r3.w;
    r4.w = dot(r4.xyz, cb2[8].xyz);
    r5.x = -cb2[10].x + r4.w;
    r5.x = saturate(cb2[10].y * r5.x);
    r5.x = r5.x * r5.x;
    r5.x = r5.x * r3.w;
    r3.w = r0.w ? r5.x : r3.w;
    r4.w = cmp(r4.w < 0);
    r4.w = r4.w ? 0 : r3.w;
    r3.w = r1.x ? r4.w : r3.w;
    if (r1.x != 0) {
      r5.xyz = cb2[9].zxy * cb2[8].yzx;
      r5.xyz = cb2[9].yzx * cb2[8].zxy + -r5.xyz;
      r1.x = cmp(0.0350000001 < cb2[11].x);
      r6.x = dot(r5.xyz, r3.xyz);
      r6.y = dot(cb2[9].xyz, r3.xyz);
      r7.z = dot(cb2[8].xyz, r3.xyz);
      r4.w = cb2[11].x * cb2[11].y;
      r5.w = -cb2[11].x * cb2[11].x + 1;
      r5.w = sqrt(r5.w);
      r8.z = min(r7.z, r4.w);
      r4.w = r8.z / r4.w;
      r5.w = cb2[11].y * r5.w;
      r6.z = r5.w * r4.w;
      r9.xy = cmp(float2(0,0) < r6.xy);
      r9.zw = cmp(r6.xy < float2(0,0));
      r9.xy = (int2)-r9.xy + (int2)r9.zw;
      r9.xy = (int2)r9.xy;
      r10.x = cb2[9].w;
      r10.y = cb2[10].w;
      r9.zw = r5.ww * r4.ww + r10.xy;
      r6.xy = max(r9.zw, abs(r6.xy));
      r7.xy = r9.xy * r6.xy;
      r8.xy = r9.xy * r9.zw;
      r6.xyw = -r8.xyz + r7.xyz;
      r4.w = max(0.00100000005, r6.w);
      r6.xy = abs(r6.xy) / r4.ww;
      r6.xy = r8.zz * r6.xy + -r6.zz;
      r6.zw = max(float2(0,0), -r9.xy);
      r6.zw = r6.xy * r6.zw + -r10.xy;
      r6.zw = max(r6.zw, -r10.xy);
      r7.xy = max(float2(0,0), r9.xy);
      r6.xy = -r6.xy * r7.xy + r10.xy;
      r6.xy = max(r6.xy, -r10.xy);
      r6.xyzw = min(r6.xyzw, r10.xyxy);
      r7.xy = r6.xy + -r6.zw;
      r7.xy = float2(0.5,0.5) * r7.xy;
      r7.xy = r1.xx ? r7.xy : r10.xy;
      r7.zw = cmp(r7.xy == float2(0,0));
      r4.w = (int)r7.w | (int)r7.z;
      if (r4.w == 0) {
        r6.xy = r6.zw + r6.xy;
        r6.xy = float2(0.5,0.5) * r6.xy;
        r6.xzw = -r5.xyz * r6.xxx + r3.xyz;
        r6.xyz = -cb2[9].xyz * r6.yyy + r6.xzw;
        r6.xyz = r1.xxx ? r6.xyz : r3.xyz;
        r1.x = dot(r5.xyz, r6.xyz);
        r4.w = dot(cb2[9].xyz, r6.xyz);
        r6.w = dot(cb2[8].xyz, r6.xyz);
        r6.y = r1.x + -r7.x;
        r6.x = r1.x + r7.x;
        r6.z = r4.w + -r7.y;
        r7.x = r4.w + r7.y;
        r1.x = dot(r6.yz, r6.yz);
        r1.x = r6.w * r6.w + r1.x;
        r1.x = rsqrt(r1.x);
        r8.xyz = r6.zwy * r1.xxx;
        r1.x = dot(r6.xz, r6.xz);
        r1.x = r6.w * r6.w + r1.x;
        r1.x = rsqrt(r1.x);
        r9.xyz = r6.wxz * r1.xxx;
        r7.yzw = r6.xwy;
        r1.x = dot(r7.xy, r7.xy);
        r1.x = r6.w * r6.w + r1.x;
        r1.x = rsqrt(r1.x);
        r6.xyz = r7.xzy * r1.xxx;
        r1.x = dot(r7.xw, r7.xw);
        r1.x = r6.w * r6.w + r1.x;
        r1.x = rsqrt(r1.x);
        r7.xyz = r7.zwx * r1.xxx;
        r1.x = dot(r8.yzx, r9.xyz);
        r4.w = dot(r9.zxy, r6.xyz);
        r5.w = dot(r6.yzx, r7.xyz);
        r6.w = dot(r7.zxy, r8.xyz);
        r7.w = -r1.x * 0.174999997 + 1.57079995;
        r1.x = 1 + r1.x;
        r1.x = rsqrt(r1.x);
        r1.x = r7.w * r1.x;
        r7.w = -r4.w * 0.174999997 + 1.57079995;
        r4.w = 1 + r4.w;
        r4.w = rsqrt(r4.w);
        r4.w = r7.w * r4.w;
        r7.w = -r5.w * 0.174999997 + 1.57079995;
        r5.w = 1 + r5.w;
        r5.w = rsqrt(r5.w);
        r5.w = r7.w * r5.w;
        r7.w = -r6.w * 0.174999997 + 1.57079995;
        r6.w = 1 + r6.w;
        r6.w = rsqrt(r6.w);
        r6.w = r7.w * r6.w;
        r10.xyz = r4.www * r6.xyz;
        r10.xyz = -r1.xxx * r8.xyz + r10.xyz;
        r11.xyz = r10.xyz * r9.xyz;
        r9.xyz = r9.zxy * r10.yzx + -r11.xyz;
        r6.xyz = -r5.www * r6.xyz;
        r6.xyz = r6.www * r8.xyz + r6.xyz;
        r8.xyz = r7.xyz * r6.xyz;
        r6.xyz = r7.zxy * r6.yzx + -r8.xyz;
        r6.xyz = r9.xyz + r6.xyz;
        r7.xyz = cb2[9].xyz * r6.yyy;
        r5.xyz = r6.xxx * r5.xyz + r7.xyz;
        r5.xyz = r6.zzz * cb2[8].xyz + r5.xyz;
        r1.x = dot(r5.xyz, r5.xyz);
        r4.w = rsqrt(r1.x);
        r1.x = r4.w * r1.x;
        r1.x = 0.5 * r1.x;
      } else {
        r1.x = 0;
      }
    } else {
      r0.xyz = (int3)r0.xyz + int3(1,1,1);
      r0.xyz = (uint3)r0.xyz;
      r0.xyz = cb0[72].xyz + r0.xyz;
      r0.xy = r0.xy / cb3[1].xy;
      r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
      r0.xy = float2(1,-1) * r0.xy;
      r0.z = r0.z / cb3[2].z;
      r0.z = exp2(r0.z);
      r0.z = -cb3[2].y + r0.z;
      r0.z = r0.z / cb3[2].x;
      r4.w = cb1[65].w + r0.z;
      r4.w = cb1[65].z * r4.w;
      r4.w = 1 / r4.w;
      r0.z = r0.z * cb1[30].z + cb1[31].z;
      r0.z = r2.x ? r4.w : r0.z;
      r5.xyzw = cb0[56].xyzw * r0.yyyy;
      r5.xyzw = r0.xxxx * cb0[55].xyzw + r5.xyzw;
      r5.xyzw = r0.zzzz * cb0[57].xyzw + r5.xyzw;
      r5.xyzw = cb0[58].xyzw + r5.xyzw;
      r0.xyz = r5.xyz / r5.www;
      r0.xyz = -cb1[70].xyz + r0.xyz;
      r0.xyz = r1.yzw + -r0.xyz;
      r0.x = dot(r0.xyz, r0.xyz);
      r0.x = sqrt(r0.x);
      r0.x = cb0[88].z * r0.x;
      r0.x = max(1, r0.x);
      r0.y = 0.5 * cb2[10].w;
      r5.xyz = -r0.yyy * cb2[9].xyz + r3.xyz;
      r0.z = r0.x * r0.x;
      r2.x = cmp(0 < cb2[10].w);
      if (r2.x != 0) {
        r3.xyz = r0.yyy * cb2[9].xyz + r3.xyz;
        r0.y = dot(r5.xyz, r5.xyz);
        r2.x = dot(r3.xyz, r3.xyz);
        r0.y = rsqrt(r0.y);
        r2.x = rsqrt(r2.x);
        r0.y = r2.x * r0.y;
        r2.x = dot(r5.xyz, r3.xyz);
        r2.x = r2.x * r0.y;
        r2.x = r2.x * 0.5 + 0.5;
        r0.z = r0.z * r0.y + r2.x;
        r1.x = r0.y / r0.z;
      } else {
        r0.y = dot(r5.xyz, r5.xyz);
        r0.x = r0.x * r0.x + r0.y;
        r1.x = rcp(r0.x);
      }
    }
    r0.x = r1.x * r3.w;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      if (cb0[49].x != 0) {
        if (r0.w == 0) {
          r3.xyz = -cb2[6].yxz + r1.zyw;
          r0.y = dot(r3.xyz, r3.xyz);
          r0.y = sqrt(r0.y);
          r3.xyz = r3.xyz / r0.yyy;
          r0.z = min(abs(r3.x), abs(r3.y));
          r1.x = max(abs(r3.x), abs(r3.y));
          r1.x = 1 / r1.x;
          r0.z = r1.x * r0.z;
          r1.x = r0.z * r0.z;
          r2.x = r1.x * 0.0208350997 + -0.0851330012;
          r2.x = r1.x * r2.x + 0.180141002;
          r2.x = r1.x * r2.x + -0.330299497;
          r1.x = r1.x * r2.x + 0.999866009;
          r2.x = r1.x * r0.z;
          r3.w = cmp(abs(r3.y) < abs(r3.x));
          r2.x = r2.x * -2 + 1.57079637;
          r2.x = r3.w ? r2.x : 0;
          r0.z = r0.z * r1.x + r2.x;
          r5.xy = cmp(r3.yz < -r3.yz);
          r1.x = r5.x ? -3.141593 : 0;
          r0.z = r1.x + r0.z;
          r1.x = min(r3.x, r3.y);
          r2.x = max(r3.x, r3.y);
          r1.x = cmp(r1.x < -r1.x);
          r2.x = cmp(r2.x >= -r2.x);
          r1.x = r1.x ? r2.x : 0;
          r0.z = r1.x ? -r0.z : r0.z;
          r1.x = 0.159154937 * r0.z;
          r2.x = cmp(0 < r0.z);
          r0.z = r0.z * 0.159154937 + 1;
          r3.x = r2.x ? r1.x : r0.z;
          r0.z = 1 + -abs(r3.z);
          r0.z = sqrt(r0.z);
          r1.x = abs(r3.z) * -0.0187292993 + 0.0742610022;
          r1.x = r1.x * abs(r3.z) + -0.212114394;
          r1.x = r1.x * abs(r3.z) + 1.57072878;
          r2.x = r1.x * r0.z;
          r2.x = r2.x * -2 + 3.14159274;
          r2.x = r5.y ? r2.x : 0;
          r0.z = r1.x * r0.z + r2.x;
          r3.y = 0.318309873 * r0.z;
          r0.z = t0.SampleLevel(s0_s, r3.xy, 0).x;
          r0.y = cb2[6].w * r0.y;
          r0.y = cmp(r0.y < r0.z);
          r0.y = r0.y ? 1.000000 : 0;
        } else {
          r3.xyzw = cb0[51].xyzw * r1.zzzz;
          r3.xyzw = r1.yyyy * cb0[50].xyzw + r3.xyzw;
          r3.xyzw = r1.wwww * cb0[52].xyzw + r3.xyzw;
          r3.xyzw = cb0[53].xyzw + r3.xyzw;
          r5.xyzw = r3.xyxy / r3.wwww;
          r3.xy = cmp(r5.zw >= float2(0,0));
          r6.xy = cmp(float2(1,1) >= r5.zw);
          r3.xy = r3.xy ? r6.xy : 0;
          r0.z = r3.y ? r3.x : 0;
          if (r0.z != 0) {
            r5.xyzw = r5.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r3.xy = frac(r5.zw);
            r5.xyzw = floor(r5.xyzw);
            r6.xyzw = float4(0.5,1.5,0.5,0.5) + r5.zwzw;
            r6.xyzw = cb0[54].zwzw * r6.xyzw;
            r7.x = t0.SampleLevel(s0_s, r6.xy, 0).x;
            r5.xyzw = float4(1.5,1.5,1.5,0.5) + r5.xyzw;
            r5.xyzw = cb0[54].zwzw * r5.xyzw;
            r7.y = t0.SampleLevel(s0_s, r5.xy, 0).x;
            r7.z = t0.SampleLevel(s0_s, r5.zw, 0).x;
            r7.w = t0.SampleLevel(s0_s, r6.zw, 0).x;
            r0.z = r3.z * 40 + -1;
            r5.xyzw = saturate(r7.xyzw * float4(40,40,40,40) + -r0.zzzz);
            r6.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r7.xyzw);
            r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
            r5.xyzw = r6.xyzw + r5.xyzw;
            r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
            r3.zw = r5.zy + -r5.wx;
            r3.xz = r3.xx * r3.zw + r5.wx;
            r0.z = r3.z + -r3.x;
            r0.y = r3.y * r0.z + r3.x;
          } else {
            r0.y = 1;
          }
        }
      } else {
        r0.y = 1;
      }
    } else {
      r0.y = 1;
    }
    r3.xyz = -cb2[6].xyz + r1.yzw;
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = rsqrt(r0.z);
    r3.xyz = r3.xyz * r0.zzz;
    r5.xyz = cb0[90].zyx * r3.yyy;
    r3.xyw = r3.xxx * cb0[89].zyx + r5.xyz;
    r3.xyz = r3.zzz * cb0[91].zyx + r3.xyw;
    r0.z = max(abs(r3.x), abs(r3.y));
    r1.x = min(abs(r3.x), abs(r3.y));
    r0.z = r1.x / r0.z;
    r1.x = r0.z * r0.z;
    r2.x = r1.x * 0.0872929022 + -0.301894993;
    r1.x = r2.x * r1.x + 1;
    r2.x = r1.x * r0.z;
    r3.w = cmp(abs(r3.x) < abs(r3.y));
    r0.z = -r1.x * r0.z + 1.57079637;
    r0.z = r3.w ? r0.z : r2.x;
    r3.xy = cmp(r3.xy < float2(0,0));
    r1.x = 3.14159274 + -r0.z;
    r0.z = r3.x ? r1.x : r0.z;
    r0.z = r3.y ? -r0.z : r0.z;
    r0.z = 3.14159274 + r0.z;
    r3.x = 0.159154937 * r0.z;
    r0.z = abs(r3.z) * -0.156582996 + 1.57079637;
    r1.x = 1 + -abs(r3.z);
    r1.x = sqrt(r1.x);
    r2.x = r1.x * r0.z;
    r3.z = cmp(r3.z >= 0);
    r0.z = -r0.z * r1.x + 3.14159274;
    r0.z = r3.z ? r2.x : r0.z;
    r3.y = 0.318309873 * r0.z;
    r5.xyz = cb0[90].xyw * r1.zzz;
    r1.xyz = r1.yyy * cb0[89].xyw + r5.xyz;
    r1.xyz = r1.www * cb0[91].xyw + r1.xyz;
    r1.xyz = cb0[92].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r1.xy = float2(1,1) + -r1.xy;
    r0.zw = r0.ww ? r1.xy : r3.xy;
    r1.xy = cb0[93].zw + -cb0[93].xy;
    r0.zw = r0.zw * r1.xy + cb0[93].xy;
    r0.z = t1.SampleLevel(s1_s, r0.zw, 0).x;
    r0.y = r0.y * r0.z;
    r0.z = dot(r4.xyz, -r2.yzw);
    r0.w = -cb0[88].y * cb0[88].y + 1;
    r1.x = cb0[88].y * cb0[88].y + 1;
    r0.z = dot(r0.zz, -cb0[88].yy);
    r0.z = r1.x + -r0.z;
    r0.z = log2(r0.z);
    r0.z = 1.5 * r0.z;
    r0.z = exp2(r0.z);
    r0.z = 12.566371 * r0.z;
    r0.z = r0.w / r0.z;
    r0.x = r0.z * r0.x;
    r0.x = r0.x * r0.y;
    r0.x = cb2[2].x * r0.x;
    r0.xyz = cb2[7].xyz * r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}