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
    r5.zw = cb0[93].zw + -cb0[93].xy;
    r4.w = -cb0[88].y * cb0[88].y + 1;
    r6.x = cb0[88].y * cb0[88].y + 1;
    r6.y = -2 * cb0[88].y;
    r7.xyz = float3(0,0,0);
    r6.z = 0;
    while (true) {
      r6.w = cmp((uint)r6.z >= (uint)r1.z);
      if (r6.w != 0) break;
      r8.xy = cb0[r6.z+72].xy + r1.xy;
      r8.xy = r8.xy / cb3[1].xy;
      r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
      r8.xy = float2(1,-1) * r8.xy;
      r6.w = cb0[r6.z+72].z + r0.w;
      r6.w = r6.w / cb3[2].z;
      r6.w = exp2(r6.w);
      r6.w = -cb3[2].y + r6.w;
      r6.w = r6.w / cb3[2].x;
      r7.w = cb1[65].w + r6.w;
      r7.w = cb1[65].z * r7.w;
      r7.w = 1 / r7.w;
      r6.w = r6.w * cb1[30].z + cb1[31].z;
      r6.w = r2.y ? r7.w : r6.w;
      r9.xyzw = cb0[56].xyzw * r8.yyyy;
      r8.xyzw = r8.xxxx * cb0[55].xyzw + r9.xyzw;
      r8.xyzw = r6.wwww * cb0[57].xyzw + r8.xyzw;
      r8.xyzw = cb0[58].xyzw + r8.xyzw;
      r8.xyz = r8.xyz / r8.www;
      r8.xyz = -cb1[70].xyz + r8.xyz;
      r9.xyz = -cb1[67].xyz + r8.xyz;
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = rsqrt(r6.w);
      r9.xyz = r9.xyz * r6.www;
      r10.xyz = cb2[6].xyz + -r8.xyz;
      r6.w = dot(r10.xyz, r10.xyz);
      r7.w = rsqrt(r6.w);
      r11.xyz = r10.xyz * r7.www;
      r6.w = r6.w * r1.w;
      r6.w = -r6.w * r6.w + 1;
      r6.w = max(0, r6.w);
      r6.w = r6.w * r6.w;
      r7.w = dot(r11.xyz, cb2[8].xyz);
      r8.w = -cb2[10].x + r7.w;
      r8.w = saturate(cb2[10].y * r8.w);
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r6.w;
      r6.w = r5.x ? r8.w : r6.w;
      r7.w = cmp(r7.w < 0);
      r7.w = r7.w ? 0 : r6.w;
      r6.w = r3.x ? r7.w : r6.w;
      if (r3.x != 0) {
        r12.x = dot(r2.xzw, r10.xyz);
        r12.y = dot(cb2[9].xyz, r10.xyz);
        r13.z = dot(cb2[8].xyz, r10.xyz);
        r14.z = min(r13.z, r3.z);
        r7.w = r14.z / r3.z;
        r8.w = r7.w * r3.w;
        r12.zw = cmp(float2(0,0) < r12.xy);
        r15.xy = cmp(r12.xy < float2(0,0));
        r12.zw = (int2)-r12.zw + (int2)r15.xy;
        r12.zw = (int2)r12.zw;
        r15.xy = r3.ww * r7.ww + r4.xy;
        r12.xy = max(r15.xy, abs(r12.xy));
        r13.xy = r12.zw * r12.xy;
        r14.xy = r15.xy * r12.zw;
        r13.xyz = -r14.xyz + r13.xyz;
        r7.w = max(0.00100000005, r13.z);
        r12.xy = abs(r13.xy) / r7.ww;
        r12.xy = r14.zz * r12.xy + -r8.ww;
        r13.xy = max(float2(0,0), -r12.zw);
        r13.xy = r12.xy * r13.xy + -r4.xy;
        r13.xy = max(r13.xy, -r4.xy);
        r13.xy = min(r13.xy, r4.xy);
        r12.zw = max(float2(0,0), r12.zw);
        r12.xy = -r12.xy * r12.zw + r4.xy;
        r12.xy = max(r12.xy, -r4.xy);
        r12.xy = min(r12.xy, r4.xy);
        r12.zw = r12.xy + -r13.xy;
        r12.zw = float2(0.5,0.5) * r12.zw;
        r12.zw = r3.yy ? r12.zw : r4.xy;
        r13.zw = cmp(r12.zw == float2(0,0));
        r7.w = (int)r13.w | (int)r13.z;
        if (r7.w == 0) {
          r12.xy = r13.xy + r12.xy;
          r12.xy = float2(0.5,0.5) * r12.xy;
          r13.xyz = -r2.xzw * r12.xxx + r10.xyz;
          r13.xyz = -cb2[9].xyz * r12.yyy + r13.xyz;
          r13.xyz = r3.yyy ? r13.xyz : r10.xyz;
          r7.w = dot(r2.xzw, r13.xyz);
          r8.w = dot(cb2[9].xyz, r13.xyz);
          r13.w = dot(cb2[8].xyz, r13.xyz);
          r13.y = r7.w + -r12.z;
          r13.x = r7.w + r12.z;
          r13.z = r8.w + -r12.w;
          r12.x = r8.w + r12.w;
          r7.w = dot(r13.yz, r13.yz);
          r7.w = r13.w * r13.w + r7.w;
          r7.w = rsqrt(r7.w);
          r14.xyz = r13.zwy * r7.www;
          r7.w = dot(r13.xz, r13.xz);
          r7.w = r13.w * r13.w + r7.w;
          r7.w = rsqrt(r7.w);
          r15.xyz = r13.wxz * r7.www;
          r12.yzw = r13.xwy;
          r7.w = dot(r12.xy, r12.xy);
          r7.w = r13.w * r13.w + r7.w;
          r7.w = rsqrt(r7.w);
          r13.xyz = r12.xzy * r7.www;
          r7.w = dot(r12.xw, r12.xw);
          r7.w = r13.w * r13.w + r7.w;
          r7.w = rsqrt(r7.w);
          r12.xyz = r12.zwx * r7.www;
          r7.w = dot(r14.yzx, r15.xyz);
          r8.w = dot(r15.zxy, r13.xyz);
          r9.w = dot(r13.yzx, r12.xyz);
          r10.w = dot(r12.zxy, r14.xyz);
          r11.w = -r7.w * 0.174999997 + 1.57079995;
          r7.w = 1 + r7.w;
          r7.w = rsqrt(r7.w);
          r7.w = r11.w * r7.w;
          r11.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r11.w * r8.w;
          r11.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r11.w * r9.w;
          r11.w = -r10.w * 0.174999997 + 1.57079995;
          r10.w = 1 + r10.w;
          r10.w = rsqrt(r10.w);
          r10.w = r11.w * r10.w;
          r16.xyz = r8.www * r13.xyz;
          r16.xyz = -r7.www * r14.xyz + r16.xyz;
          r17.xyz = r16.xyz * r15.xyz;
          r15.xyz = r15.zxy * r16.yzx + -r17.xyz;
          r13.xyz = -r9.www * r13.xyz;
          r13.xyz = r10.www * r14.xyz + r13.xyz;
          r14.xyz = r13.xyz * r12.xyz;
          r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
          r12.xyz = r15.xyz + r12.xyz;
          r13.xyz = cb2[9].xyz * r12.yyy;
          r12.xyw = r12.xxx * r2.xzw + r13.xyz;
          r12.xyz = r12.zzz * cb2[8].xyz + r12.xyw;
          r7.w = dot(r12.xyz, r12.xyz);
          r8.w = rsqrt(r7.w);
          r7.w = r8.w * r7.w;
          r7.w = 0.5 * r7.w;
        } else {
          r7.w = 0;
        }
      } else {
        r12.xyz = cb0[r6.z+72].xyz + r0.xyz;
        r12.xy = r12.xy / cb3[1].xy;
        r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
        r12.xy = float2(1,-1) * r12.xy;
        r8.w = r12.z / cb3[2].z;
        r8.w = exp2(r8.w);
        r8.w = -cb3[2].y + r8.w;
        r8.w = r8.w / cb3[2].x;
        r9.w = cb1[65].w + r8.w;
        r9.w = cb1[65].z * r9.w;
        r9.w = 1 / r9.w;
        r8.w = r8.w * cb1[30].z + cb1[31].z;
        r8.w = r2.y ? r9.w : r8.w;
        r13.xyzw = cb0[56].xyzw * r12.yyyy;
        r12.xyzw = r12.xxxx * cb0[55].xyzw + r13.xyzw;
        r12.xyzw = r8.wwww * cb0[57].xyzw + r12.xyzw;
        r12.xyzw = cb0[58].xyzw + r12.xyzw;
        r12.xyz = r12.xyz / r12.www;
        r12.xyz = -cb1[70].xyz + r12.xyz;
        r12.xyz = -r12.xyz + r8.xyz;
        r8.w = dot(r12.xyz, r12.xyz);
        r8.w = sqrt(r8.w);
        r8.w = cb0[88].z * r8.w;
        r8.w = max(1, r8.w);
        r12.xyz = -r4.zzz * cb2[9].xyz + r10.xyz;
        r9.w = r8.w * r8.w;
        if (r5.y != 0) {
          r10.xyz = r4.zzz * cb2[9].xyz + r10.xyz;
          r10.w = dot(r12.xyz, r12.xyz);
          r11.w = dot(r10.xyz, r10.xyz);
          r10.w = rsqrt(r10.w);
          r11.w = rsqrt(r11.w);
          r10.w = r11.w * r10.w;
          r10.x = dot(r12.xyz, r10.xyz);
          r10.x = r10.x * r10.w;
          r10.x = r10.x * 0.5 + 0.5;
          r9.w = r9.w * r10.w + r10.x;
          r7.w = r10.w / r9.w;
        } else {
          r9.w = dot(r12.xyz, r12.xyz);
          r8.w = r8.w * r8.w + r9.w;
          r7.w = rcp(r8.w);
        }
      }
      r6.w = r7.w * r6.w;
      r10.xyz = -cb2[6].xyz + r8.xyz;
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = rsqrt(r7.w);
      r10.xyz = r10.xyz * r7.www;
      r12.xyz = cb0[90].zyx * r10.yyy;
      r10.xyw = r10.xxx * cb0[89].zyx + r12.xyz;
      r10.xyz = r10.zzz * cb0[91].zyx + r10.xyw;
      r7.w = max(abs(r10.x), abs(r10.y));
      r8.w = min(abs(r10.x), abs(r10.y));
      r7.w = r8.w / r7.w;
      r8.w = r7.w * r7.w;
      r9.w = r8.w * 0.0872929022 + -0.301894993;
      r8.w = r9.w * r8.w + 1;
      r9.w = r8.w * r7.w;
      r10.w = cmp(abs(r10.x) < abs(r10.y));
      r7.w = -r8.w * r7.w + 1.57079637;
      r7.w = r10.w ? r7.w : r9.w;
      r10.xy = cmp(r10.xy < float2(0,0));
      r8.w = 3.14159274 + -r7.w;
      r7.w = r10.x ? r8.w : r7.w;
      r7.w = r10.y ? -r7.w : r7.w;
      r7.w = 3.14159274 + r7.w;
      r10.x = 0.159154937 * r7.w;
      r7.w = abs(r10.z) * -0.156582996 + 1.57079637;
      r8.w = 1 + -abs(r10.z);
      r8.w = sqrt(r8.w);
      r9.w = r8.w * r7.w;
      r10.z = cmp(r10.z >= 0);
      r7.w = -r7.w * r8.w + 3.14159274;
      r7.w = r10.z ? r9.w : r7.w;
      r10.y = 0.318309873 * r7.w;
      r12.xyz = cb0[90].xyw * r8.yyy;
      r8.xyw = r8.xxx * cb0[89].xyw + r12.xyz;
      r8.xyz = r8.zzz * cb0[91].xyw + r8.xyw;
      r8.xyz = cb0[92].xyw + r8.xyz;
      r8.xy = r8.xy / r8.zz;
      r8.xy = float2(1,1) + -r8.xy;
      r8.xy = r5.xx ? r8.xy : r10.xy;
      r8.xy = r8.xy * r5.zw + cb0[93].xy;
      r7.w = t0.SampleLevel(s0_s, r8.xy, 0).x;
      r8.x = dot(r11.xyz, -r9.xyz);
      r8.x = -r6.y * r8.x + r6.x;
      r8.x = log2(r8.x);
      r8.x = 1.5 * r8.x;
      r8.x = exp2(r8.x);
      r8.x = 12.566371 * r8.x;
      r8.x = r4.w / r8.x;
      r6.w = r8.x * r6.w;
      r6.w = r6.w * r7.w;
      r6.w = cb2[2].x * r6.w;
      r7.xyz = cb2[7].xyz * r6.www + r7.xyz;
      r6.z = (int)r6.z + 1;
    }
    r0.x = (uint)r1.z;
    r0.xyz = r7.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}