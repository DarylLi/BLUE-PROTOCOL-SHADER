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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r3.xyz = cb2[6].xyz + -r1.xyz;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r4.xyz = r3.xyz * r0.xxx;
    r5.xyz = cb2[6].www * r3.xyz;
    r0.x = dot(r5.xyz, r5.xyz);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.x = log2(r0.x);
    r0.x = cb2[7].w * r0.x;
    r0.x = exp2(r0.x);
    r0.y = dot(r4.xyz, cb2[8].xyz);
    r1.w = -cb2[10].x + r0.y;
    r1.w = saturate(cb2[10].y * r1.w);
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r0.x;
    r0.x = r0.z ? r1.w : r0.x;
    r0.y = cmp(r0.y < 0);
    r0.y = r0.y ? 0 : r0.x;
    r0.x = r0.w ? r0.y : r0.x;
    if (r0.w != 0) {
      r5.xyz = cb2[9].zxy * cb2[8].yzx;
      r5.xyz = cb2[9].yzx * cb2[8].zxy + -r5.xyz;
      r0.y = cmp(0.0350000001 < cb2[11].x);
      r6.x = dot(r5.xyz, r3.xyz);
      r6.y = dot(cb2[9].xyz, r3.xyz);
      r7.z = dot(cb2[8].xyz, r3.xyz);
      r0.w = cb2[11].x * cb2[11].y;
      r1.w = -cb2[11].x * cb2[11].x + 1;
      r1.w = sqrt(r1.w);
      r8.z = min(r7.z, r0.w);
      r0.w = r8.z / r0.w;
      r1.w = cb2[11].y * r1.w;
      r2.w = r1.w * r0.w;
      r6.zw = cmp(float2(0,0) < r6.xy);
      r9.xy = cmp(r6.xy < float2(0,0));
      r6.zw = (int2)-r6.zw + (int2)r9.xy;
      r6.zw = (int2)r6.zw;
      r9.x = cb2[9].w;
      r9.y = cb2[10].w;
      r9.zw = r1.ww * r0.ww + r9.xy;
      r6.xy = max(r9.zw, abs(r6.xy));
      r7.xy = r6.zw * r6.xy;
      r8.xy = r9.zw * r6.zw;
      r7.xyz = -r8.xyz + r7.xyz;
      r0.w = max(0.00100000005, r7.z);
      r6.xy = abs(r7.xy) / r0.ww;
      r6.xy = r8.zz * r6.xy + -r2.ww;
      r7.xy = max(float2(0,0), -r6.zw);
      r7.xy = r6.xy * r7.xy + -r9.xy;
      r7.xy = max(r7.xy, -r9.xy);
      r7.xy = min(r7.xy, r9.xy);
      r6.zw = max(float2(0,0), r6.zw);
      r6.xy = -r6.xy * r6.zw + r9.xy;
      r6.xy = max(r6.xy, -r9.xy);
      r6.xy = min(r6.xy, r9.xy);
      r6.zw = r6.xy + -r7.xy;
      r6.zw = float2(0.5,0.5) * r6.zw;
      r6.zw = r0.yy ? r6.zw : r9.xy;
      r7.zw = cmp(r6.zw == float2(0,0));
      r0.w = (int)r7.w | (int)r7.z;
      if (r0.w == 0) {
        r6.xy = r7.xy + r6.xy;
        r6.xy = float2(0.5,0.5) * r6.xy;
        r7.xyz = -r5.xyz * r6.xxx + r3.xyz;
        r7.xyz = -cb2[9].xyz * r6.yyy + r7.xyz;
        r3.xyz = r0.yyy ? r7.xyz : r3.xyz;
        r0.y = dot(r5.xyz, r3.xyz);
        r0.w = dot(cb2[9].xyz, r3.xyz);
        r3.w = dot(cb2[8].xyz, r3.xyz);
        r3.x = r0.y + r6.z;
        r3.yz = r0.yw + -r6.zw;
        r6.x = r0.w + r6.w;
        r0.y = dot(r3.yz, r3.yz);
        r0.y = r3.w * r3.w + r0.y;
        r0.y = rsqrt(r0.y);
        r7.xyz = r3.zwy * r0.yyy;
        r0.y = dot(r3.xz, r3.xz);
        r0.y = r3.w * r3.w + r0.y;
        r0.y = rsqrt(r0.y);
        r8.xyz = r3.wxz * r0.yyy;
        r6.yzw = r3.xwy;
        r0.y = dot(r6.xy, r6.xy);
        r0.y = r3.w * r3.w + r0.y;
        r0.y = rsqrt(r0.y);
        r3.xyz = r6.xzy * r0.yyy;
        r0.y = dot(r6.xw, r6.xw);
        r0.y = r3.w * r3.w + r0.y;
        r0.y = rsqrt(r0.y);
        r6.xyz = r6.zwx * r0.yyy;
        r0.y = dot(r7.yzx, r8.xyz);
        r0.w = dot(r8.zxy, r3.xyz);
        r1.w = dot(r3.yzx, r6.xyz);
        r2.w = dot(r6.zxy, r7.xyz);
        r3.w = -r0.y * 0.174999997 + 1.57079995;
        r0.y = 1 + r0.y;
        r0.y = rsqrt(r0.y);
        r0.y = r3.w * r0.y;
        r3.w = -r0.w * 0.174999997 + 1.57079995;
        r0.w = 1 + r0.w;
        r0.w = rsqrt(r0.w);
        r0.w = r3.w * r0.w;
        r3.w = -r1.w * 0.174999997 + 1.57079995;
        r1.w = 1 + r1.w;
        r1.w = rsqrt(r1.w);
        r1.w = r3.w * r1.w;
        r3.w = -r2.w * 0.174999997 + 1.57079995;
        r2.w = 1 + r2.w;
        r2.w = rsqrt(r2.w);
        r2.w = r3.w * r2.w;
        r9.xyz = r0.www * r3.xyz;
        r9.xyz = -r0.yyy * r7.xyz + r9.xyz;
        r10.xyz = r9.xyz * r8.xyz;
        r8.xyz = r8.zxy * r9.yzx + -r10.xyz;
        r3.xyz = -r1.www * r3.xyz;
        r3.xyz = r2.www * r7.xyz + r3.xyz;
        r7.xyz = r6.xyz * r3.xyz;
        r3.xyz = r6.zxy * r3.yzx + -r7.xyz;
        r3.xyz = r8.xyz + r3.xyz;
        r6.xyz = cb2[9].xyz * r3.yyy;
        r3.xyw = r3.xxx * r5.xyz + r6.xyz;
        r3.xyz = r3.zzz * cb2[8].xyz + r3.xyw;
        r0.y = dot(r3.xyz, r3.xyz);
        r0.w = rsqrt(r0.y);
        r0.y = r0.y * r0.w;
        r0.y = 0.5 * r0.y;
      } else {
        r0.y = 0;
      }
    } else {
      r0.y = 1;
    }
    r0.x = r0.y * r0.x;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      if (cb0[49].x != 0) {
        if (r0.z == 0) {
          r3.xyz = -cb2[6].yxz + r1.yxz;
          r0.y = dot(r3.xyz, r3.xyz);
          r0.y = sqrt(r0.y);
          r3.xyz = r3.xyz / r0.yyy;
          r0.w = min(abs(r3.x), abs(r3.y));
          r1.w = max(abs(r3.x), abs(r3.y));
          r1.w = 1 / r1.w;
          r0.w = r1.w * r0.w;
          r1.w = r0.w * r0.w;
          r2.w = r1.w * 0.0208350997 + -0.0851330012;
          r2.w = r1.w * r2.w + 0.180141002;
          r2.w = r1.w * r2.w + -0.330299497;
          r1.w = r1.w * r2.w + 0.999866009;
          r2.w = r1.w * r0.w;
          r3.w = cmp(abs(r3.y) < abs(r3.x));
          r2.w = r2.w * -2 + 1.57079637;
          r2.w = r3.w ? r2.w : 0;
          r0.w = r0.w * r1.w + r2.w;
          r5.xy = cmp(r3.yz < -r3.yz);
          r1.w = r5.x ? -3.141593 : 0;
          r0.w = r1.w + r0.w;
          r1.w = min(r3.x, r3.y);
          r2.w = max(r3.x, r3.y);
          r1.w = cmp(r1.w < -r1.w);
          r2.w = cmp(r2.w >= -r2.w);
          r1.w = r1.w ? r2.w : 0;
          r0.w = r1.w ? -r0.w : r0.w;
          r1.w = 0.159154937 * r0.w;
          r2.w = cmp(0 < r0.w);
          r0.w = r0.w * 0.159154937 + 1;
          r3.x = r2.w ? r1.w : r0.w;
          r0.w = 1 + -abs(r3.z);
          r0.w = sqrt(r0.w);
          r1.w = abs(r3.z) * -0.0187292993 + 0.0742610022;
          r1.w = r1.w * abs(r3.z) + -0.212114394;
          r1.w = r1.w * abs(r3.z) + 1.57072878;
          r2.w = r1.w * r0.w;
          r2.w = r2.w * -2 + 3.14159274;
          r2.w = r5.y ? r2.w : 0;
          r0.w = r1.w * r0.w + r2.w;
          r3.y = 0.318309873 * r0.w;
          r0.w = t0.SampleLevel(s0_s, r3.xy, 0).x;
          r0.y = cb2[6].w * r0.y;
          r0.y = cmp(r0.y < r0.w);
          r0.y = r0.y ? 1.000000 : 0;
        } else {
          r3.xyzw = cb0[51].xyzw * r1.yyyy;
          r3.xyzw = r1.xxxx * cb0[50].xyzw + r3.xyzw;
          r3.xyzw = r1.zzzz * cb0[52].xyzw + r3.xyzw;
          r3.xyzw = cb0[53].xyzw + r3.xyzw;
          r5.xyzw = r3.xyxy / r3.wwww;
          r3.xy = cmp(r5.zw >= float2(0,0));
          r6.xy = cmp(float2(1,1) >= r5.zw);
          r3.xy = r3.xy ? r6.xy : 0;
          r0.w = r3.y ? r3.x : 0;
          if (r0.w != 0) {
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
            r0.w = r3.z * 40 + -1;
            r5.xyzw = saturate(r7.xyzw * float4(40,40,40,40) + -r0.wwww);
            r6.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r7.xyzw);
            r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
            r5.xyzw = r6.xyzw + r5.xyzw;
            r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
            r3.zw = r5.zy + -r5.wx;
            r3.xz = r3.xx * r3.zw + r5.wx;
            r0.w = r3.z + -r3.x;
            r0.y = r3.y * r0.w + r3.x;
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
    r3.xyz = -cb2[6].xyz + r1.xyz;
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = r3.xyz * r0.www;
    r5.xyz = cb0[90].zyx * r3.yyy;
    r3.xyw = r3.xxx * cb0[89].zyx + r5.xyz;
    r3.xyz = r3.zzz * cb0[91].zyx + r3.xyw;
    r0.w = max(abs(r3.x), abs(r3.y));
    r1.w = min(abs(r3.x), abs(r3.y));
    r0.w = r1.w / r0.w;
    r1.w = r0.w * r0.w;
    r2.w = r1.w * 0.0872929022 + -0.301894993;
    r1.w = r2.w * r1.w + 1;
    r2.w = r1.w * r0.w;
    r3.w = cmp(abs(r3.x) < abs(r3.y));
    r0.w = -r1.w * r0.w + 1.57079637;
    r0.w = r3.w ? r0.w : r2.w;
    r3.xy = cmp(r3.xy < float2(0,0));
    r1.w = 3.14159274 + -r0.w;
    r0.w = r3.x ? r1.w : r0.w;
    r0.w = r3.y ? -r0.w : r0.w;
    r0.w = 3.14159274 + r0.w;
    r3.x = 0.159154937 * r0.w;
    r0.w = abs(r3.z) * -0.156582996 + 1.57079637;
    r1.w = 1 + -abs(r3.z);
    r1.w = sqrt(r1.w);
    r2.w = r1.w * r0.w;
    r3.z = cmp(r3.z >= 0);
    r0.w = -r0.w * r1.w + 3.14159274;
    r0.w = r3.z ? r2.w : r0.w;
    r3.y = 0.318309873 * r0.w;
    r5.xyz = cb0[90].xyw * r1.yyy;
    r1.xyw = r1.xxx * cb0[89].xyw + r5.xyz;
    r1.xyz = r1.zzz * cb0[91].xyw + r1.xyw;
    r1.xyz = cb0[92].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r1.xy = float2(1,1) + -r1.xy;
    r0.zw = r0.zz ? r1.xy : r3.xy;
    r1.xy = cb0[93].zw + -cb0[93].xy;
    r0.zw = r0.zw * r1.xy + cb0[93].xy;
    r0.z = t1.SampleLevel(s1_s, r0.zw, 0).x;
    r0.y = r0.y * r0.z;
    r0.z = dot(r4.xyz, -r2.xyz);
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