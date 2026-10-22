// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).zw;
  r1.xy = t3.SampleLevel(s0_s, r0.xy, 0).xy;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r1.z = (int)r0.w & 15;
  r2.xyzw = cmp((int4)r1.zzzz == int4(2,3,4,5));
  r1.w = (int)r2.y | (int)r2.x;
  r1.w = (int)r2.z | (int)r1.w;
  r1.w = (int)r2.w | (int)r1.w;
  r3.xyzw = cmp((int4)r1.zzzz == int4(6,7,8,12));
  r1.w = (int)r1.w | (int)r3.x;
  r1.w = (int)r3.y | (int)r1.w;
  r1.w = (int)r3.z | (int)r1.w;
  r1.w = (int)r3.w | (int)r1.w;
  r2.xyw = cmp((int3)r1.zzz == int3(13,9,0));
  r1.z = (int)r1.w | (int)r2.x;
  r1.z = (int)r2.y | (int)r1.z;
  r1.xy = (int2)r1.xy & (int2)r1.zz;
  if (r2.z != 0) {
    r1.y = r1.y + -r0.z;
    r1.y = r1.x * r1.y + r0.z;
  } else {
    r1.y = r0.z;
  }
  r1.z = r1.y * cb0[1].y + 2;
  r1.z = min(1, r1.z);
  r1.w = cmp(0 >= r1.z);
  r1.w = (int)r2.w | (int)r1.w;
  if (r1.w == 0) {
    r2.xy = -cb1[129].xy + v0.xy;
    r2.xy = cb1[130].zw * r2.xy;
    r2.xy = r2.xy + r2.xy;
    r3.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t5.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r0.y = r0.x * cb1[65].x + cb1[65].y;
    r0.x = r0.x * cb1[65].z + -cb1[65].w;
    r0.x = 1 / r0.x;
    r0.x = r0.y + r0.x;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.y = dot(r3.xyz, r3.xyz);
    r0.y = rsqrt(r0.y);
    r5.xyz = r3.xyz * r0.yyy;
    r0.w = (int)r0.w & 16;
    r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r4.xyzw = r0.wwww ? r4.xyzw : float4(0,0,0,0);
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = r4.yzx * r1.www;
    r4.xyz = r0.www ? r4.xyz : float3(0,0,0);
    r2.xy = r2.xy * float2(1,-1) + float2(-1,1);
    r2.xy = r2.xy * r0.xx;
    r6.xyz = cb1[53].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb1[52].xyz + r6.xyz;
    r2.xyw = r0.xxx * cb1[54].xyz + r2.xyw;
    r2.xyw = cb1[55].xyz + r2.xyw;
    r6.xyz = cb1[68].xyz + -r2.xyw;
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r1.www;
    r1.x = r2.z ? r1.x : 0;
    r1.x = r1.x * -r4.w + r4.w;
    r1.w = cmp(0 < abs(r1.x));
    r7.xyz = r5.xyz * r4.yzx;
    r7.xyz = r5.zxy * r4.zxy + -r7.xyz;
    r2.z = dot(r7.xyz, r7.xyz);
    r2.z = rsqrt(r2.z);
    r7.xyz = r7.xyz * r2.zzz;
    r2.z = cmp(r1.x >= 0);
    r4.xyz = r2.zzz ? r7.xyz : r4.xyz;
    r7.xyz = r4.xyz * r6.xyz;
    r7.xyz = r4.zxy * r6.yzx + -r7.xyz;
    r8.xyz = r7.xyz * r4.xyz;
    r4.xyz = r7.zxy * r4.yzx + -r8.xyz;
    r0.z = saturate(5 * r0.z);
    r0.z = abs(r1.x) * r0.z;
    r3.xyz = -r3.xyz * r0.yyy + r4.xyz;
    r3.xyz = r0.zzz * r3.xyz + r5.xyz;
    r0.y = dot(r3.xyz, r3.xyz);
    r0.y = rsqrt(r0.y);
    r3.xyz = r3.xyz * r0.yyy;
    r3.xyz = r1.www ? r3.xyz : r5.xyz;
    r0.y = asuint(cb1[144].y);
    r0.yz = r0.yy * float2(32.6650009,11.8149996) + v0.xy;
    r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
    r0.y = frac(r0.y);
    r0.y = 52.9829178 * r0.y;
    r0.y = frac(r0.y);
    r0.y = -0.5 + r0.y;
    r0.z = dot(-r6.xyz, r3.xyz);
    r0.z = r0.z + r0.z;
    r3.xyz = r3.xyz * -r0.zzz + -r6.xyz;
    r4.xyzw = cb1[1].xyzw * r2.yyyy;
    r4.xyzw = r2.xxxx * cb1[0].xyzw + r4.xyzw;
    r4.xyzw = r2.wwww * cb1[2].xyzw + r4.xyzw;
    r4.xyzw = cb1[3].xyzw + r4.xyzw;
    r3.xyz = r3.xyz * r0.xxx + r2.xyw;
    r5.xyzw = cb1[1].xyzw * r3.yyyy;
    r5.xyzw = r3.xxxx * cb1[0].xyzw + r5.xyzw;
    r3.xyzw = r3.zzzz * cb1[2].xyzw + r5.xyzw;
    r3.xyzw = cb1[3].xyzw + r3.xyzw;
    r0.z = rcp(r4.w);
    r5.xyz = r4.xyz * r0.zzz;
    r0.z = rcp(r3.w);
    r1.xw = r0.xx * cb1[30].zw + r4.zw;
    r0.x = rcp(r1.w);
    r3.xyz = r3.xyz * r0.zzz + -r5.xyz;
    r0.z = dot(r3.xy, r3.xy);
    r0.z = sqrt(r0.z);
    r1.w = 0.5 * r0.z;
    r4.xy = r5.xy * r1.ww + r3.xy;
    r4.xy = -r0.zz * float2(0.5,0.5) + abs(r4.xy);
    r4.xy = max(float2(0,0), r4.xy);
    r4.xy = r4.xy / abs(r3.xy);
    r4.xy = float2(1,1) + -r4.xy;
    r0.z = min(r4.x, r4.y);
    r0.z = r0.z / r1.w;
    r3.xyz = r3.xyz * r0.zzz;
    r0.x = -r1.x * r0.x + r5.z;
    r0.x = 4 * r0.x;
    r0.x = max(abs(r3.z), r0.x);
    r1.xw = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r5.xy = cb0[3].xy * r1.xw;
    r3.xy = cb0[3].xy * r3.xy;
    r0.z = 0.125 * r0.x;
    r3.xyz = float3(0.0625,-0.0625,0.125) * r3.xyz;
    r4.xyz = r3.xyz * r0.yyy + r5.xyz;
    r0.y = 1;
    r6.x = 0;
    r7.x = 0;
    r5.xyz = float3(0,0,0);
    r1.xw = float2(0,0);
    r2.z = 0;
    r3.w = 0;
    r4.w = 0;
    while (true) {
      r6.w = cmp((uint)r4.w >= 8);
      if (r6.w != 0) break;
      r6.w = (uint)r4.w;
      r8.xyzw = float4(1,2,3,4) + r6.wwww;
      r9.xyzw = r8.xxxy * r3.xyzz + r4.xyzz;
      r10.xyzw = r8.yyzz * r3.xyxy + r4.xyxy;
      r8.xyzw = r8.wwzw * r3.xyzz + r4.xyzz;
      r6.w = r0.y + r1.y;
      r7.w = r6.w + r1.y;
      r11.x = t7.SampleLevel(s2_s, r9.xy, r0.y).x;
      r11.y = t7.SampleLevel(s2_s, r10.xy, r0.y).x;
      r11.z = t7.SampleLevel(s2_s, r10.zw, r6.w).x;
      r11.w = t7.SampleLevel(s2_s, r8.xy, r6.w).x;
      r8.xy = r9.zw;
      r8.xyzw = r8.xyzw + -r11.xyzw;
      r9.xyzw = r0.xxxx * float4(0.125,0.125,0.125,0.125) + r8.xyzw;
      r9.xyzw = cmp(abs(r9.xyzw) < r0.zzzz);
      r10.xy = (int2)r9.zw | (int2)r9.xy;
      r6.w = (int)r10.y | (int)r10.x;
      if (r6.w != 0) {
        r7.x = r8.x;
        r5.xyz = r8.yzw;
        r1.xw = r9.xy;
        r2.z = r9.z;
        r3.w = -1;
        break;
      }
      r6.x = r8.w;
      r4.w = (int)r4.w + 4;
      r0.y = r7.w;
      r7.x = r8.x;
      r5.xyz = r8.yzw;
      r1.xw = r9.xy;
      r2.z = r9.z;
      r3.w = r6.w;
    }
    if (r3.w != 0) {
      r5.w = 2;
      r0.xy = r5.yz;
      r0.z = 3;
      r0.xyz = r2.zzz ? r5.xyw : r0.xyz;
      r7.y = r5.x;
      r7.z = 1;
      r0.xyz = r1.www ? r7.xyz : r0.xyz;
      r6.y = r7.x;
      r6.z = 0;
      r0.xyz = r1.xxx ? r6.xyz : r0.xyz;
      r1.x = (uint)r4.w;
      r0.z = r1.x + r0.z;
      r0.y = r0.x + -r0.y;
      r0.x = saturate(r0.x / r0.y);
      r0.x = r0.z + r0.x;
      r0.xyz = r3.xyz * r0.xxx + r4.xyz;
      r0.xy = cb0[3].zw * r0.xy;
      r0.xy = r0.xy * float2(2,-2) + float2(-1,1);
      r1.xy = cb1[66].xy * r0.xy;
      r0.xy = r0.xy * cb1[66].xy + cb1[66].wz;
      r1.xy = r1.xy / cb1[66].xy;
      r1.w = r0.z * cb1[65].x + cb1[65].y;
      r2.z = r0.z * cb1[65].z + -cb1[65].w;
      r2.z = 1 / r2.z;
      r1.w = r2.z + r1.w;
      r3.xy = r1.xy * r1.ww;
      r3.yzw = cb1[53].xyz * r3.yyy;
      r3.xyz = r3.xxx * cb1[52].xyz + r3.yzw;
      r3.xyz = r1.www * cb1[54].xyz + r3.xyz;
      r3.xyz = cb1[55].xyz + r3.xyz;
      r2.xyz = -r3.xyz + r2.xyw;
      r1.w = dot(r2.xyz, r2.xyz);
      r2.xyz = cb1[123].xyw * r1.yyy;
      r2.xyz = r1.xxx * cb1[122].xyw + r2.xyz;
      r2.xyz = r0.zzz * cb1[124].xyw + r2.xyz;
      r2.xyz = cb1[125].xyw + r2.xyz;
      r2.xy = r2.xy / r2.zz;
      r0.xy = t4.SampleLevel(s0_s, r0.xy, 0).xy;
      r0.z = cmp(0 < r0.x);
      r0.xy = r0.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
      r0.xy = r1.xy + -r0.xy;
      r0.xy = r0.zz ? r0.xy : r2.xy;
      r2.xy = r0.xy * cb0[4].xy + cb0[4].zw;
      r1.xy = saturate(abs(r1.xy) * float2(5,5) + float2(-4,-4));
      r0.z = dot(r1.xy, r1.xy);
      r0.z = 1 + -r0.z;
      r0.xy = saturate(abs(r0.xy) * float2(5,5) + float2(-4,-4));
      r0.x = dot(r0.xy, r0.xy);
      r0.x = 1 + -r0.x;
      r0.xz = max(float2(0,0), r0.xz);
      r0.x = min(r0.z, r0.x);
      r2.xyz = t6.SampleLevel(s1_s, r2.xy, 0).xyz;
      r2.xyz = min(float3(0,0,0), -r2.xyz);
      r2.xyz = -r2.xyz;
      r2.w = 1;
      r2.xyzw = r2.xyzw * r0.xxxx;
    } else {
      r2.xyzw = float4(0,0,0,0);
      r1.w = 0x7f800000;
    }
    r2.xyzw = r2.xyzw * r1.zzzz;
    r2.xyzw = cb0[1].xxxx * r2.xyzw;
    o0.xyz = cb0[2].xxx * r2.xyz;
    r0.x = cmp(0 < r1.w);
    r0.y = sqrt(r0.w);
    r0.z = sqrt(r1.w);
    r0.y = r0.y + r0.z;
    r0.y = r0.z / r0.y;
    o1.xyzw = r0.xxxx ? r0.yyyy : float4(-1,-1,-1,-1);
    o0.w = r2.w;
  } else {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(-2,-2,-2,-2);
  }
  return;
}