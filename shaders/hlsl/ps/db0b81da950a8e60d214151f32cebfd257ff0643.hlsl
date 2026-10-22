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
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r0.w = r2.z ? r1.x : 0;
    r0.w = r0.w * -r4.w + r4.w;
    r1.x = cmp(0 < abs(r0.w));
    r7.xyz = r5.xyz * r4.yzx;
    r7.xyz = r5.zxy * r4.zxy + -r7.xyz;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r7.xyz = r7.xyz * r1.www;
    r1.w = cmp(r0.w >= 0);
    r4.xyz = r1.www ? r7.xyz : r4.xyz;
    r7.xyz = r4.xyz * r6.xyz;
    r7.xyz = r4.zxy * r6.yzx + -r7.xyz;
    r8.xyz = r7.xyz * r4.xyz;
    r4.xyz = r7.zxy * r4.yzx + -r8.xyz;
    r0.z = saturate(5 * r0.z);
    r0.z = abs(r0.w) * r0.z;
    r3.xyz = -r3.xyz * r0.yyy + r4.xyz;
    r0.yzw = r0.zzz * r3.xyz + r5.xyz;
    r1.w = dot(r0.yzw, r0.yzw);
    r1.w = rsqrt(r1.w);
    r0.yzw = r1.www * r0.yzw;
    r0.yzw = r1.xxx ? r0.yzw : r5.xyz;
    r1.x = asuint(cb1[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v0.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r1.w = dot(-r6.xyz, r0.yzw);
    r1.w = r1.w + r1.w;
    r0.yzw = r0.yzw * -r1.www + -r6.xyz;
    r3.xyzw = cb1[1].xyzw * r2.yyyy;
    r3.xyzw = r2.xxxx * cb1[0].xyzw + r3.xyzw;
    r3.xyzw = r2.wwww * cb1[2].xyzw + r3.xyzw;
    r3.xyzw = cb1[3].xyzw + r3.xyzw;
    r0.yzw = r0.yzw * r0.xxx + r2.xyw;
    r2.xyzw = cb1[1].xyzw * r0.zzzz;
    r2.xyzw = r0.yyyy * cb1[0].xyzw + r2.xyzw;
    r2.xyzw = r0.wwww * cb1[2].xyzw + r2.xyzw;
    r2.xyzw = cb1[3].xyzw + r2.xyzw;
    r0.y = rcp(r3.w);
    r0.yzw = r3.xyz * r0.yyy;
    r1.w = rcp(r2.w);
    r3.xy = r0.xx * cb1[30].zw + r3.zw;
    r0.x = rcp(r3.y);
    r2.xyz = r2.xyz * r1.www + -r0.yzw;
    r1.w = dot(r2.xy, r2.xy);
    r1.w = sqrt(r1.w);
    r2.w = 0.5 * r1.w;
    r3.yz = r0.yz * r2.ww + r2.xy;
    r3.yz = -r1.ww * float2(0.5,0.5) + abs(r3.yz);
    r3.yz = max(float2(0,0), r3.yz);
    r3.yz = r3.yz / abs(r2.xy);
    r3.yz = float2(1,1) + -r3.yz;
    r1.w = min(r3.y, r3.z);
    r1.w = r1.w / r2.w;
    r2.xyz = r2.xyz * r1.www;
    r0.x = -r3.x * r0.x + r0.w;
    r0.x = 4 * r0.x;
    r0.x = max(abs(r2.z), r0.x);
    r3.xy = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yz = cb0[3].xy * r3.xy;
    r2.xy = cb0[3].xy * r2.xy;
    r1.w = 0.0625 * r0.x;
    r2.xyz = float3(0.03125,-0.03125,0.0625) * r2.xyz;
    r0.yzw = r2.xyz * r1.xxx + r0.yzw;
    r1.x = 1;
    r3.xyz = float3(0,0,0);
    r2.w = 0;
    r4.xw = float2(0,0);
    r5.xw = float2(0,0);
    r6.xy = float2(0,0);
    while (true) {
      r6.z = cmp((uint)r6.y >= 16);
      if (r6.z != 0) break;
      r6.z = (uint)r6.y;
      r7.xyzw = float4(1,2,3,4) + r6.zzzz;
      r8.xyzw = r7.xxxy * r2.xyzz + r0.yzww;
      r9.xyzw = r7.yyzz * r2.xyxy + r0.yzyz;
      r7.xyzw = r7.wwzw * r2.xyzz + r0.yzww;
      r6.z = r1.y * 0.5 + r1.x;
      r6.w = r1.y * 0.5 + r6.z;
      r10.x = t7.SampleLevel(s2_s, r8.xy, r1.x).x;
      r10.y = t7.SampleLevel(s2_s, r9.xy, r1.x).x;
      r10.z = t7.SampleLevel(s2_s, r9.zw, r6.z).x;
      r10.w = t7.SampleLevel(s2_s, r7.xy, r6.z).x;
      r7.xy = r8.zw;
      r7.xyzw = r7.xyzw + -r10.xyzw;
      r8.xyzw = r0.xxxx * float4(0.0625,0.0625,0.0625,0.0625) + r7.xyzw;
      r8.xyzw = cmp(abs(r8.xyzw) < r1.wwww);
      r9.xy = (int2)r8.zw | (int2)r8.xy;
      r6.z = (int)r9.y | (int)r9.x;
      if (r6.z != 0) {
        r5.x = r7.x;
        r3.xyz = r7.yzw;
        r2.w = r8.x;
        r4.w = r8.y;
        r5.w = r8.z;
        r6.x = -1;
        break;
      }
      r4.x = r7.w;
      r6.y = (int)r6.y + 4;
      r1.x = r6.w;
      r5.x = r7.x;
      r3.xyz = r7.yzw;
      r2.w = r8.x;
      r4.w = r8.y;
      r5.w = r8.z;
      r6.xy = r6.zy;
    }
    if (r6.x != 0) {
      r3.w = 2;
      r7.xy = r3.yz;
      r7.z = 3;
      r1.xyw = r5.www ? r3.xyw : r7.xyz;
      r5.y = r3.x;
      r5.z = 1;
      r1.xyw = r4.www ? r5.xyz : r1.xyw;
      r4.y = r5.x;
      r4.z = 0;
      r1.xyw = r2.www ? r4.xyz : r1.xyw;
      r0.x = (uint)r6.y;
      r0.x = r1.w + r0.x;
      r1.y = r1.x + -r1.y;
      r1.x = saturate(r1.x / r1.y);
      r0.x = r1.x + r0.x;
      r0.xyz = r2.xyz * r0.xxx + r0.yzw;
      r0.xy = cb0[3].zw * r0.xy;
      r0.xy = r0.xy * float2(2,-2) + float2(-1,1);
      r1.xy = cb1[66].xy * r0.xy;
      r0.xy = r0.xy * cb1[66].xy + cb1[66].wz;
      r1.xy = r1.xy / cb1[66].xy;
      r2.xyz = cb1[123].xyw * r1.yyy;
      r2.xyz = r1.xxx * cb1[122].xyw + r2.xyz;
      r2.xyz = r0.zzz * cb1[124].xyw + r2.xyz;
      r2.xyz = cb1[125].xyw + r2.xyz;
      r0.zw = r2.xy / r2.zz;
      r0.xy = t4.SampleLevel(s0_s, r0.xy, 0).xy;
      r1.w = cmp(0 < r0.x);
      r0.xy = r0.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
      r0.xy = r1.xy + -r0.xy;
      r0.xy = r1.ww ? r0.xy : r0.zw;
      r0.zw = r0.xy * cb0[4].xy + cb0[4].zw;
      r1.xy = saturate(abs(r1.xy) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xy, r1.xy);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r0.xy = saturate(abs(r0.xy) * float2(5,5) + float2(-4,-4));
      r0.x = dot(r0.xy, r0.xy);
      r0.x = 1 + -r0.x;
      r0.x = max(0, r0.x);
      r0.x = min(r1.x, r0.x);
      r0.yzw = t6.SampleLevel(s1_s, r0.zw, 0).xyz;
      r0.yzw = min(float3(0,0,0), -r0.yzw);
      r2.xyz = -r0.yzw;
      r2.w = 1;
      r0.xyzw = r2.xyzw * r0.xxxx;
    } else {
      r0.xyzw = float4(0,0,0,0);
    }
    r0.xyzw = r0.xyzw * r1.zzzz;
    r0.xyzw = cb0[1].xxxx * r0.xyzw;
    o0.xyz = cb0[2].xxx * r0.xyz;
    o0.w = r0.w;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}