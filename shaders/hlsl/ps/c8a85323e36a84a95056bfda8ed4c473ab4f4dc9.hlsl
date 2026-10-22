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
    r3.yz = cb0[93].zw + -cb0[93].xy;
    r3.w = -cb0[88].y * cb0[88].y + 1;
    r4.z = cb0[88].y * cb0[88].y + 1;
    r4.w = -2 * cb0[88].y;
    r5.xyz = float3(0,0,0);
    r5.w = cb0[49].x;
    r6.x = 0;
    while (true) {
      r6.y = cmp((uint)r6.x >= (uint)r1.x);
      if (r6.y != 0) break;
      r6.yzw = cb0[r6.x+72].xyz + r0.xyw;
      r6.yz = r6.yz / cb3[1].xy;
      r6.yz = r6.yz * float2(2,2) + float2(-1,-1);
      r6.yz = float2(1,-1) * r6.yz;
      r6.w = r6.w / cb3[2].z;
      r6.w = exp2(r6.w);
      r6.w = -cb3[2].y + r6.w;
      r6.w = r6.w / cb3[2].x;
      r7.x = cb1[65].w + r6.w;
      r7.x = cb1[65].z * r7.x;
      r7.x = 1 / r7.x;
      r6.w = r6.w * cb1[30].z + cb1[31].z;
      r6.w = r1.w ? r7.x : r6.w;
      r7.xyzw = cb0[56].xyzw * r6.zzzz;
      r7.xyzw = r6.yyyy * cb0[55].xyzw + r7.xyzw;
      r7.xyzw = r6.wwww * cb0[57].xyzw + r7.xyzw;
      r7.xyzw = cb0[58].xyzw + r7.xyzw;
      r6.yzw = r7.xyz / r7.www;
      r6.yzw = -cb1[70].xyz + r6.yzw;
      r7.xyz = -cb1[67].xyz + r6.yzw;
      r7.w = dot(r7.xyz, r7.xyz);
      r7.w = rsqrt(r7.w);
      r7.xyz = r7.xyz * r7.www;
      r8.xyz = cb2[6].xyz + -r6.yzw;
      r7.w = dot(r8.xyz, r8.xyz);
      r7.w = rsqrt(r7.w);
      r9.xyz = r8.xyz * r7.www;
      r10.xyz = cb2[6].www * r8.xyz;
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = min(1, r7.w);
      r7.w = 1 + -r7.w;
      r7.w = log2(r7.w);
      r7.w = cb2[7].w * r7.w;
      r7.w = exp2(r7.w);
      r8.w = dot(r9.xyz, cb2[8].xyz);
      r9.w = -cb2[10].x + r8.w;
      r9.w = saturate(cb2[10].y * r9.w);
      r9.w = r9.w * r9.w;
      r9.w = r9.w * r7.w;
      r7.w = r0.z ? r9.w : r7.w;
      r8.w = cmp(r8.w < 0);
      r8.w = r8.w ? 0 : r7.w;
      r7.w = r1.y ? r8.w : r7.w;
      if (r1.y != 0) {
        r10.x = dot(r2.xyz, r8.xyz);
        r10.y = dot(cb2[9].xyz, r8.xyz);
        r11.z = dot(cb2[8].xyz, r8.xyz);
        r12.z = min(r11.z, r2.w);
        r8.w = r12.z / r2.w;
        r9.w = r8.w * r3.x;
        r10.zw = cmp(float2(0,0) < r10.xy);
        r13.xy = cmp(r10.xy < float2(0,0));
        r10.zw = (int2)-r10.zw + (int2)r13.xy;
        r10.zw = (int2)r10.zw;
        r13.xy = r3.xx * r8.ww + r4.xy;
        r10.xy = max(r13.xy, abs(r10.xy));
        r11.xy = r10.zw * r10.xy;
        r12.xy = r13.xy * r10.zw;
        r11.xyz = -r12.xyz + r11.xyz;
        r8.w = max(0.00100000005, r11.z);
        r10.xy = abs(r11.xy) / r8.ww;
        r10.xy = r12.zz * r10.xy + -r9.ww;
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
        r8.w = (int)r11.w | (int)r11.z;
        if (r8.w == 0) {
          r10.xy = r11.xy + r10.xy;
          r10.xy = float2(0.5,0.5) * r10.xy;
          r11.xyz = -r2.xyz * r10.xxx + r8.xyz;
          r11.xyz = -cb2[9].xyz * r10.yyy + r11.xyz;
          r8.xyz = r1.zzz ? r11.xyz : r8.xyz;
          r8.w = dot(r2.xyz, r8.xyz);
          r9.w = dot(cb2[9].xyz, r8.xyz);
          r11.w = dot(cb2[8].xyz, r8.xyz);
          r11.y = r8.w + -r10.z;
          r11.x = r8.w + r10.z;
          r11.z = r9.w + -r10.w;
          r8.x = r9.w + r10.w;
          r9.w = dot(r11.yz, r11.yz);
          r9.w = r11.w * r11.w + r9.w;
          r9.w = rsqrt(r9.w);
          r10.xyz = r11.zwy * r9.www;
          r9.w = dot(r11.xz, r11.xz);
          r9.w = r11.w * r11.w + r9.w;
          r9.w = rsqrt(r9.w);
          r12.xyz = r11.wxz * r9.www;
          r8.yzw = r11.xwy;
          r9.w = dot(r8.xy, r8.xy);
          r9.w = r11.w * r11.w + r9.w;
          r9.w = rsqrt(r9.w);
          r11.xyz = r9.www * r8.xzy;
          r8.y = dot(r8.xw, r8.xw);
          r8.y = r11.w * r11.w + r8.y;
          r8.y = rsqrt(r8.y);
          r8.xyz = r8.zwx * r8.yyy;
          r8.w = dot(r10.yzx, r12.xyz);
          r9.w = dot(r12.zxy, r11.xyz);
          r10.w = dot(r11.yzx, r8.xyz);
          r11.w = dot(r8.zxy, r10.xyz);
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
          r13.xyz = r9.www * r11.xyz;
          r13.xyz = -r8.www * r10.xyz + r13.xyz;
          r14.xyz = r13.xyz * r12.xyz;
          r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
          r11.xyz = -r10.www * r11.xyz;
          r10.xyz = r11.www * r10.xyz + r11.xyz;
          r11.xyz = r10.xyz * r8.xyz;
          r8.xyz = r8.zxy * r10.yzx + -r11.xyz;
          r8.xyz = r12.xyz + r8.xyz;
          r10.xyz = cb2[9].xyz * r8.yyy;
          r8.xyw = r8.xxx * r2.xyz + r10.xyz;
          r8.xyz = r8.zzz * cb2[8].xyz + r8.xyw;
          r8.x = dot(r8.xyz, r8.xyz);
          r8.y = rsqrt(r8.x);
          r8.x = r8.x * r8.y;
          r8.x = 0.5 * r8.x;
        } else {
          r8.x = 0;
        }
      } else {
        r8.x = 1;
      }
      r7.w = r8.x * r7.w;
      r8.x = cmp(0 < r7.w);
      if (r8.x != 0) {
        if (r5.w != 0) {
          if (r0.z == 0) {
            r8.xyz = -cb2[6].yxz + r6.zyw;
            r8.w = dot(r8.xyz, r8.xyz);
            r8.w = sqrt(r8.w);
            r8.xyz = r8.xyz / r8.www;
            r9.w = min(abs(r8.x), abs(r8.y));
            r10.x = max(abs(r8.x), abs(r8.y));
            r10.x = 1 / r10.x;
            r9.w = r10.x * r9.w;
            r10.x = r9.w * r9.w;
            r10.y = r10.x * 0.0208350997 + -0.0851330012;
            r10.y = r10.x * r10.y + 0.180141002;
            r10.y = r10.x * r10.y + -0.330299497;
            r10.x = r10.x * r10.y + 0.999866009;
            r10.y = r10.x * r9.w;
            r10.z = cmp(abs(r8.y) < abs(r8.x));
            r10.y = r10.y * -2 + 1.57079637;
            r10.y = r10.z ? r10.y : 0;
            r9.w = r9.w * r10.x + r10.y;
            r10.xy = cmp(r8.yz < -r8.yz);
            r10.x = r10.x ? -3.141593 : 0;
            r9.w = r10.x + r9.w;
            r10.x = min(r8.x, r8.y);
            r8.x = max(r8.x, r8.y);
            r8.y = cmp(r10.x < -r10.x);
            r8.x = cmp(r8.x >= -r8.x);
            r8.x = r8.x ? r8.y : 0;
            r8.x = r8.x ? -r9.w : r9.w;
            r8.y = 0.159154937 * r8.x;
            r9.w = cmp(0 < r8.x);
            r8.x = r8.x * 0.159154937 + 1;
            r8.x = r9.w ? r8.y : r8.x;
            r9.w = 1 + -abs(r8.z);
            r9.w = sqrt(r9.w);
            r10.x = abs(r8.z) * -0.0187292993 + 0.0742610022;
            r10.x = r10.x * abs(r8.z) + -0.212114394;
            r8.z = r10.x * abs(r8.z) + 1.57072878;
            r10.x = r8.z * r9.w;
            r10.x = r10.x * -2 + 3.14159274;
            r10.x = r10.y ? r10.x : 0;
            r8.z = r8.z * r9.w + r10.x;
            r8.y = 0.318309873 * r8.z;
            r8.x = t0.SampleLevel(s0_s, r8.xy, 0).x;
            r8.y = cb2[6].w * r8.w;
            r8.x = cmp(r8.y < r8.x);
            r8.x = r8.x ? 1.000000 : 0;
          } else {
            r10.xyzw = cb0[51].xyzw * r6.zzzz;
            r10.xyzw = r6.yyyy * cb0[50].xyzw + r10.xyzw;
            r10.xyzw = r6.wwww * cb0[52].xyzw + r10.xyzw;
            r10.xyzw = cb0[53].xyzw + r10.xyzw;
            r11.xyzw = r10.xyxy / r10.wwww;
            r8.yz = cmp(r11.zw >= float2(0,0));
            r10.xy = cmp(float2(1,1) >= r11.zw);
            r8.yz = r8.yz ? r10.xy : 0;
            r8.y = r8.z ? r8.y : 0;
            if (r8.y != 0) {
              r11.xyzw = r11.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r8.yz = frac(r11.zw);
              r11.xyzw = floor(r11.xyzw);
              r12.xyzw = float4(0.5,1.5,0.5,0.5) + r11.zwzw;
              r12.xyzw = cb0[54].zwzw * r12.xyzw;
              r13.x = t0.SampleLevel(s0_s, r12.xy, 0).x;
              r11.xyzw = float4(1.5,1.5,1.5,0.5) + r11.xyzw;
              r11.xyzw = cb0[54].zwzw * r11.xyzw;
              r13.y = t0.SampleLevel(s0_s, r11.xy, 0).x;
              r13.z = t0.SampleLevel(s0_s, r11.zw, 0).x;
              r13.w = t0.SampleLevel(s0_s, r12.zw, 0).x;
              r8.w = r10.z * 40 + -1;
              r10.xyzw = saturate(r13.xyzw * float4(40,40,40,40) + -r8.wwww);
              r11.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r13.xyzw);
              r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
              r10.xyzw = r11.xyzw + r10.xyzw;
              r10.xyzw = min(float4(1,1,1,1), r10.xyzw);
              r10.yz = r10.zy + -r10.wx;
              r8.yw = r8.yy * r10.yz + r10.wx;
              r8.w = r8.w + -r8.y;
              r8.x = r8.z * r8.w + r8.y;
            } else {
              r8.x = 1;
            }
          }
        } else {
          r8.x = 1;
        }
      } else {
        r8.x = 1;
      }
      r8.yzw = -cb2[6].xyz + r6.yzw;
      r9.w = dot(r8.yzw, r8.yzw);
      r9.w = rsqrt(r9.w);
      r8.yzw = r9.www * r8.yzw;
      r10.xyz = cb0[90].zyx * r8.zzz;
      r10.xyz = r8.yyy * cb0[89].zyx + r10.xyz;
      r8.yzw = r8.www * cb0[91].zyx + r10.xyz;
      r9.w = max(abs(r8.y), abs(r8.z));
      r10.x = min(abs(r8.y), abs(r8.z));
      r9.w = r10.x / r9.w;
      r10.x = r9.w * r9.w;
      r10.y = r10.x * 0.0872929022 + -0.301894993;
      r10.x = r10.y * r10.x + 1;
      r10.y = r10.x * r9.w;
      r10.z = cmp(abs(r8.y) < abs(r8.z));
      r9.w = -r10.x * r9.w + 1.57079637;
      r9.w = r10.z ? r9.w : r10.y;
      r8.yz = cmp(r8.yz < float2(0,0));
      r10.x = 3.14159274 + -r9.w;
      r8.y = r8.y ? r10.x : r9.w;
      r8.y = r8.z ? -r8.y : r8.y;
      r8.y = 3.14159274 + r8.y;
      r10.x = 0.159154937 * r8.y;
      r8.y = abs(r8.w) * -0.156582996 + 1.57079637;
      r8.z = 1 + -abs(r8.w);
      r8.z = sqrt(r8.z);
      r9.w = r8.y * r8.z;
      r8.w = cmp(r8.w >= 0);
      r8.y = -r8.y * r8.z + 3.14159274;
      r8.y = r8.w ? r9.w : r8.y;
      r10.y = 0.318309873 * r8.y;
      r8.yzw = cb0[90].xyw * r6.zzz;
      r8.yzw = r6.yyy * cb0[89].xyw + r8.yzw;
      r6.yzw = r6.www * cb0[91].xyw + r8.yzw;
      r6.yzw = cb0[92].xyw + r6.yzw;
      r6.yz = r6.yz / r6.ww;
      r6.yz = float2(1,1) + -r6.yz;
      r6.yz = r0.zz ? r6.yz : r10.xy;
      r6.yz = r6.yz * r3.yz + cb0[93].xy;
      r6.y = t1.SampleLevel(s1_s, r6.yz, 0).x;
      r6.y = r8.x * r6.y;
      r6.z = dot(r9.xyz, -r7.xyz);
      r6.z = -r4.w * r6.z + r4.z;
      r6.z = log2(r6.z);
      r6.z = 1.5 * r6.z;
      r6.z = exp2(r6.z);
      r6.z = 12.566371 * r6.z;
      r6.z = r3.w / r6.z;
      r6.z = r6.z * r7.w;
      r6.y = r6.z * r6.y;
      r6.y = cb2[2].x * r6.y;
      r5.xyz = cb2[7].xyz * r6.yyy + r5.xyz;
      r6.x = (int)r6.x + 1;
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