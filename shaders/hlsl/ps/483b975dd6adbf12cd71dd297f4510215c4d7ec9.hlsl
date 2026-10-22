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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
    r4.w = -cb0[88].y * cb0[88].y + 1;
    r5.z = cb0[88].y * cb0[88].y + 1;
    r5.w = -2 * cb0[88].y;
    r6.xyz = float3(0,0,0);
    r6.w = cb0[49].x;
    r7.x = 0;
    while (true) {
      r7.y = cmp((uint)r7.x >= (uint)r2.x);
      if (r7.y != 0) break;
      r7.yz = cb0[r7.x+72].xy + r1.zw;
      r7.yz = r7.yz / cb3[1].xy;
      r7.yz = r7.yz * float2(2,2) + float2(-1,-1);
      r7.yz = float2(1,-1) * r7.yz;
      r7.w = cb0[r7.x+72].z + r0.w;
      r7.w = r7.w / cb3[2].z;
      r7.w = exp2(r7.w);
      r7.w = -cb3[2].y + r7.w;
      r7.w = r7.w / cb3[2].x;
      r8.x = cb1[65].w + r7.w;
      r8.x = cb1[65].z * r8.x;
      r8.x = 1 / r8.x;
      r7.w = r7.w * cb1[30].z + cb1[31].z;
      r7.w = r2.w ? r8.x : r7.w;
      r8.xyzw = cb0[56].xyzw * r7.zzzz;
      r8.xyzw = r7.yyyy * cb0[55].xyzw + r8.xyzw;
      r8.xyzw = r7.wwww * cb0[57].xyzw + r8.xyzw;
      r8.xyzw = cb0[58].xyzw + r8.xyzw;
      r7.yzw = r8.yxz / r8.www;
      r7.yzw = -cb1[70].yxz + r7.yzw;
      r8.xyz = -cb1[67].xyz + r7.zyw;
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = rsqrt(r8.w);
      r8.xyz = r8.xyz * r8.www;
      r9.xyz = cb2[6].xyz + -r7.zyw;
      r8.w = dot(r9.xyz, r9.xyz);
      r9.w = rsqrt(r8.w);
      r10.xyz = r9.xyz * r9.www;
      r8.w = r8.w * r2.y;
      r8.w = -r8.w * r8.w + 1;
      r8.w = max(0, r8.w);
      r8.w = r8.w * r8.w;
      r9.w = dot(r10.xyz, cb2[8].xyz);
      r10.w = -cb2[10].x + r9.w;
      r10.w = saturate(cb2[10].y * r10.w);
      r10.w = r10.w * r10.w;
      r10.w = r10.w * r8.w;
      r8.w = r1.x ? r10.w : r8.w;
      r9.w = cmp(r9.w < 0);
      r9.w = r9.w ? 0 : r8.w;
      r8.w = r4.x ? r9.w : r8.w;
      if (r4.x != 0) {
        r11.x = dot(r3.xyz, r9.xyz);
        r11.y = dot(cb2[9].xyz, r9.xyz);
        r12.z = dot(cb2[8].xyz, r9.xyz);
        r13.z = min(r12.z, r2.z);
        r9.w = r13.z / r2.z;
        r10.w = r9.w * r3.w;
        r11.zw = cmp(float2(0,0) < r11.xy);
        r14.xy = cmp(r11.xy < float2(0,0));
        r11.zw = (int2)-r11.zw + (int2)r14.xy;
        r11.zw = (int2)r11.zw;
        r14.xy = r3.ww * r9.ww + r5.xy;
        r11.xy = max(r14.xy, abs(r11.xy));
        r12.xy = r11.zw * r11.xy;
        r13.xy = r14.xy * r11.zw;
        r12.xyz = -r13.xyz + r12.xyz;
        r9.w = max(0.00100000005, r12.z);
        r11.xy = abs(r12.xy) / r9.ww;
        r11.xy = r13.zz * r11.xy + -r10.ww;
        r12.xy = max(float2(0,0), -r11.zw);
        r12.xy = r11.xy * r12.xy + -r5.xy;
        r12.xy = max(r12.xy, -r5.xy);
        r12.xy = min(r12.xy, r5.xy);
        r11.zw = max(float2(0,0), r11.zw);
        r11.xy = -r11.xy * r11.zw + r5.xy;
        r11.xy = max(r11.xy, -r5.xy);
        r11.xy = min(r11.xy, r5.xy);
        r11.zw = r11.xy + -r12.xy;
        r11.zw = float2(0.5,0.5) * r11.zw;
        r11.zw = r4.yy ? r11.zw : r5.xy;
        r12.zw = cmp(r11.zw == float2(0,0));
        r9.w = (int)r12.w | (int)r12.z;
        if (r9.w == 0) {
          r11.xy = r12.xy + r11.xy;
          r11.xy = float2(0.5,0.5) * r11.xy;
          r12.xyz = -r3.xyz * r11.xxx + r9.xyz;
          r12.xyz = -cb2[9].xyz * r11.yyy + r12.xyz;
          r12.xyz = r4.yyy ? r12.xyz : r9.xyz;
          r9.w = dot(r3.xyz, r12.xyz);
          r10.w = dot(cb2[9].xyz, r12.xyz);
          r12.w = dot(cb2[8].xyz, r12.xyz);
          r12.y = r9.w + -r11.z;
          r12.x = r9.w + r11.z;
          r12.z = r10.w + -r11.w;
          r11.x = r10.w + r11.w;
          r9.w = dot(r12.yz, r12.yz);
          r9.w = r12.w * r12.w + r9.w;
          r9.w = rsqrt(r9.w);
          r13.xyz = r12.zwy * r9.www;
          r9.w = dot(r12.xz, r12.xz);
          r9.w = r12.w * r12.w + r9.w;
          r9.w = rsqrt(r9.w);
          r14.xyz = r12.wxz * r9.www;
          r11.yzw = r12.xwy;
          r9.w = dot(r11.xy, r11.xy);
          r9.w = r12.w * r12.w + r9.w;
          r9.w = rsqrt(r9.w);
          r12.xyz = r11.xzy * r9.www;
          r9.w = dot(r11.xw, r11.xw);
          r9.w = r12.w * r12.w + r9.w;
          r9.w = rsqrt(r9.w);
          r11.xyz = r11.zwx * r9.www;
          r9.w = dot(r13.yzx, r14.xyz);
          r10.w = dot(r14.zxy, r12.xyz);
          r11.w = dot(r12.yzx, r11.xyz);
          r12.w = dot(r11.zxy, r13.xyz);
          r13.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r13.w * r9.w;
          r13.w = -r10.w * 0.174999997 + 1.57079995;
          r10.w = 1 + r10.w;
          r10.w = rsqrt(r10.w);
          r10.w = r13.w * r10.w;
          r13.w = -r11.w * 0.174999997 + 1.57079995;
          r11.w = 1 + r11.w;
          r11.w = rsqrt(r11.w);
          r11.w = r13.w * r11.w;
          r13.w = -r12.w * 0.174999997 + 1.57079995;
          r12.w = 1 + r12.w;
          r12.w = rsqrt(r12.w);
          r12.w = r13.w * r12.w;
          r15.xyz = r10.www * r12.xyz;
          r15.xyz = -r9.www * r13.xyz + r15.xyz;
          r16.xyz = r15.xyz * r14.xyz;
          r14.xyz = r14.zxy * r15.yzx + -r16.xyz;
          r12.xyz = -r11.www * r12.xyz;
          r12.xyz = r12.www * r13.xyz + r12.xyz;
          r13.xyz = r12.xyz * r11.xyz;
          r11.xyz = r11.zxy * r12.yzx + -r13.xyz;
          r11.xyz = r14.xyz + r11.xyz;
          r12.xyz = cb2[9].xyz * r11.yyy;
          r11.xyw = r11.xxx * r3.xyz + r12.xyz;
          r11.xyz = r11.zzz * cb2[8].xyz + r11.xyw;
          r9.w = dot(r11.xyz, r11.xyz);
          r10.w = rsqrt(r9.w);
          r9.w = r10.w * r9.w;
          r9.w = 0.5 * r9.w;
        } else {
          r9.w = 0;
        }
      } else {
        r11.xyz = cb0[r7.x+72].xyz + r0.xyz;
        r11.xy = r11.xy / cb3[1].xy;
        r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
        r11.xy = float2(1,-1) * r11.xy;
        r10.w = r11.z / cb3[2].z;
        r10.w = exp2(r10.w);
        r10.w = -cb3[2].y + r10.w;
        r10.w = r10.w / cb3[2].x;
        r11.z = cb1[65].w + r10.w;
        r11.z = cb1[65].z * r11.z;
        r11.z = 1 / r11.z;
        r10.w = r10.w * cb1[30].z + cb1[31].z;
        r10.w = r2.w ? r11.z : r10.w;
        r12.xyzw = cb0[56].xyzw * r11.yyyy;
        r11.xyzw = r11.xxxx * cb0[55].xyzw + r12.xyzw;
        r11.xyzw = r10.wwww * cb0[57].xyzw + r11.xyzw;
        r11.xyzw = cb0[58].xyzw + r11.xyzw;
        r11.xyz = r11.xyz / r11.www;
        r11.xyz = -cb1[70].xyz + r11.xyz;
        r11.xyz = -r11.xyz + r7.zyw;
        r10.w = dot(r11.xyz, r11.xyz);
        r10.w = sqrt(r10.w);
        r10.w = cb0[88].z * r10.w;
        r10.w = max(1, r10.w);
        r11.xyz = -r4.zzz * cb2[9].xyz + r9.xyz;
        r11.w = r10.w * r10.w;
        if (r1.y != 0) {
          r9.xyz = r4.zzz * cb2[9].xyz + r9.xyz;
          r12.x = dot(r11.xyz, r11.xyz);
          r12.y = dot(r9.xyz, r9.xyz);
          r12.x = rsqrt(r12.x);
          r12.y = rsqrt(r12.y);
          r12.x = r12.x * r12.y;
          r9.x = dot(r11.xyz, r9.xyz);
          r9.x = r9.x * r12.x;
          r9.x = r9.x * 0.5 + 0.5;
          r9.x = r11.w * r12.x + r9.x;
          r9.w = r12.x / r9.x;
        } else {
          r9.x = dot(r11.xyz, r11.xyz);
          r9.x = r10.w * r10.w + r9.x;
          r9.w = rcp(r9.x);
        }
      }
      r8.w = r9.w * r8.w;
      r9.x = cmp(0 < r8.w);
      if (r9.x != 0) {
        if (r6.w != 0) {
          if (r1.x == 0) {
            r9.xyz = -cb2[6].yxz + r7.yzw;
            r9.w = dot(r9.xyz, r9.xyz);
            r9.w = sqrt(r9.w);
            r9.xyz = r9.xyz / r9.www;
            r10.w = min(abs(r9.x), abs(r9.y));
            r11.x = max(abs(r9.x), abs(r9.y));
            r11.x = 1 / r11.x;
            r10.w = r11.x * r10.w;
            r11.x = r10.w * r10.w;
            r11.y = r11.x * 0.0208350997 + -0.0851330012;
            r11.y = r11.x * r11.y + 0.180141002;
            r11.y = r11.x * r11.y + -0.330299497;
            r11.x = r11.x * r11.y + 0.999866009;
            r11.y = r11.x * r10.w;
            r11.z = cmp(abs(r9.y) < abs(r9.x));
            r11.y = r11.y * -2 + 1.57079637;
            r11.y = r11.z ? r11.y : 0;
            r10.w = r10.w * r11.x + r11.y;
            r11.xy = cmp(r9.yz < -r9.yz);
            r11.x = r11.x ? -3.141593 : 0;
            r10.w = r11.x + r10.w;
            r11.x = min(r9.x, r9.y);
            r9.x = max(r9.x, r9.y);
            r9.y = cmp(r11.x < -r11.x);
            r9.x = cmp(r9.x >= -r9.x);
            r9.x = r9.x ? r9.y : 0;
            r9.x = r9.x ? -r10.w : r10.w;
            r9.y = 0.159154937 * r9.x;
            r10.w = cmp(0 < r9.x);
            r9.x = r9.x * 0.159154937 + 1;
            r9.x = r10.w ? r9.y : r9.x;
            r10.w = 1 + -abs(r9.z);
            r10.w = sqrt(r10.w);
            r11.x = abs(r9.z) * -0.0187292993 + 0.0742610022;
            r11.x = r11.x * abs(r9.z) + -0.212114394;
            r9.z = r11.x * abs(r9.z) + 1.57072878;
            r11.x = r9.z * r10.w;
            r11.x = r11.x * -2 + 3.14159274;
            r11.x = r11.y ? r11.x : 0;
            r9.z = r9.z * r10.w + r11.x;
            r9.y = 0.318309873 * r9.z;
            r9.x = t0.SampleLevel(s0_s, r9.xy, 0).x;
            r9.y = cb2[6].w * r9.w;
            r9.x = cmp(r9.y < r9.x);
            r9.x = r9.x ? 1.000000 : 0;
          } else {
            r11.xyzw = cb0[51].xyzw * r7.yyyy;
            r11.xyzw = r7.zzzz * cb0[50].xyzw + r11.xyzw;
            r11.xyzw = r7.wwww * cb0[52].xyzw + r11.xyzw;
            r11.xyzw = cb0[53].xyzw + r11.xyzw;
            r12.xyzw = r11.xyxy / r11.wwww;
            r7.yz = cmp(r12.zw >= float2(0,0));
            r9.yz = cmp(float2(1,1) >= r12.zw);
            r7.yz = r7.yz ? r9.yz : 0;
            r7.y = r7.z ? r7.y : 0;
            if (r7.y != 0) {
              r12.xyzw = r12.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r7.yz = frac(r12.zw);
              r12.xyzw = floor(r12.xyzw);
              r13.xyzw = float4(0.5,1.5,0.5,0.5) + r12.zwzw;
              r13.xyzw = cb0[54].zwzw * r13.xyzw;
              r14.x = t0.SampleLevel(s0_s, r13.xy, 0).x;
              r12.xyzw = float4(1.5,1.5,1.5,0.5) + r12.xyzw;
              r12.xyzw = cb0[54].zwzw * r12.xyzw;
              r14.y = t0.SampleLevel(s0_s, r12.xy, 0).x;
              r14.z = t0.SampleLevel(s0_s, r12.zw, 0).x;
              r14.w = t0.SampleLevel(s0_s, r13.zw, 0).x;
              r7.w = r11.z * 40 + -1;
              r11.xyzw = saturate(r14.xyzw * float4(40,40,40,40) + -r7.wwww);
              r12.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r14.xyzw);
              r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
              r11.xyzw = r12.xyzw + r11.xyzw;
              r11.xyzw = min(float4(1,1,1,1), r11.xyzw);
              r9.yz = r11.zy + -r11.wx;
              r7.yw = r7.yy * r9.yz + r11.wx;
              r7.w = r7.w + -r7.y;
              r9.x = r7.z * r7.w + r7.y;
            } else {
              r9.x = 1;
            }
          }
        } else {
          r9.x = 1;
        }
      } else {
        r9.x = 1;
      }
      r7.y = dot(r10.xyz, -r8.xyz);
      r7.y = -r5.w * r7.y + r5.z;
      r7.y = log2(r7.y);
      r7.y = 1.5 * r7.y;
      r7.y = exp2(r7.y);
      r7.y = 12.566371 * r7.y;
      r7.y = r4.w / r7.y;
      r7.y = r7.y * r8.w;
      r7.y = r7.y * r9.x;
      r7.y = cb2[2].x * r7.y;
      r6.xyz = cb2[7].xyz * r7.yyy + r6.xyz;
      r7.x = (int)r7.x + 1;
    }
    r0.x = (uint)r2.x;
    r0.xyz = r6.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}