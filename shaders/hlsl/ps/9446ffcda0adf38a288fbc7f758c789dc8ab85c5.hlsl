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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
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
    r3.xy = (uint2)v0.xy;
    r4.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
    r5.xyzw = t5.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r0.y = r0.x * cb1[65].x + cb1[65].y;
    r0.x = r0.x * cb1[65].z + -cb1[65].w;
    r0.x = 1 / r0.x;
    r0.x = r0.y + r0.x;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.y = dot(r4.xyz, r4.xyz);
    r0.y = rsqrt(r0.y);
    r6.xyz = r4.xyz * r0.yyy;
    r0.w = (int)r0.w & 16;
    r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r5.xyzw = r0.wwww ? r5.xyzw : float4(0,0,0,0);
    r1.w = dot(r5.xyz, r5.xyz);
    r1.w = rsqrt(r1.w);
    r5.xyz = r5.yzx * r1.www;
    r5.xyz = r0.www ? r5.xyz : float3(0,0,0);
    r2.xy = r2.xy * float2(1,-1) + float2(-1,1);
    r2.xy = r2.xy * r0.xx;
    r7.xyz = cb1[53].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb1[52].xyz + r7.xyz;
    r2.xyw = r0.xxx * cb1[54].xyz + r2.xyw;
    r2.xyw = cb1[55].xyz + r2.xyw;
    r7.xyz = cb1[68].xyz + -r2.xyw;
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r1.www;
    r1.x = r2.z ? r1.x : 0;
    r1.x = r1.x * -r5.w + r5.w;
    r1.w = cmp(0 < abs(r1.x));
    r8.xyz = r6.xyz * r5.yzx;
    r8.xyz = r6.zxy * r5.zxy + -r8.xyz;
    r2.z = dot(r8.xyz, r8.xyz);
    r2.z = rsqrt(r2.z);
    r8.xyz = r8.xyz * r2.zzz;
    r2.z = cmp(r1.x >= 0);
    r5.xyz = r2.zzz ? r8.xyz : r5.xyz;
    r8.xyz = r5.xyz * r7.xyz;
    r8.xyz = r5.zxy * r7.yzx + -r8.xyz;
    r9.xyz = r8.xyz * r5.xyz;
    r5.xyz = r8.zxy * r5.yzx + -r9.xyz;
    r0.z = saturate(5 * r0.z);
    r0.z = abs(r1.x) * r0.z;
    r4.xyz = -r4.xyz * r0.yyy + r5.xyz;
    r4.xyz = r0.zzz * r4.xyz + r6.xyz;
    r0.y = dot(r4.xyz, r4.xyz);
    r0.y = rsqrt(r0.y);
    r4.xyz = r4.xyz * r0.yyy;
    r4.xyz = r1.www ? r4.xyz : r6.xyz;
    r0.y = r1.y * r1.y;
    r0.z = asuint(cb1[144].y);
    r1.xw = r0.zz * float2(32.6650009,11.8149996) + v0.xy;
    r0.z = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r0.z = frac(r0.z);
    r0.z = 52.9829178 * r0.z;
    r0.z = frac(r0.z);
    r3.z = cb1[144].y;
    r3.xyz = mad((int3)r3.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
    r1.x = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r1.w = mad((int)r3.z, (int)r1.x, (int)r3.y);
    r2.z = mad((int)r1.x, (int)r1.w, (int)r3.z);
    r1.x = mad((int)r1.w, (int)r2.z, (int)r1.x);
    r1.w = mad((int)r2.z, (int)r1.x, (int)r1.w);
    r1.x = (uint)r1.x >> 16;
    r2.z = cmp(r4.z >= 0);
    r3.xy = r2.zz ? float2(1,-1) : float2(-1,1);
    r2.z = r3.x + r4.z;
    r2.z = rcp(r2.z);
    r5.xyz = r4.xxy * r4.yxy;
    r6.x = r5.x * -r2.z;
    r3.z = r3.x * -r2.z;
    r8.y = r3.z * r5.y + 1;
    r8.z = r6.x * r3.x;
    r8.x = r3.y * r4.x;
    r6.y = r5.z * -r2.z + r3.x;
    r6.w = -r4.y;
    r3.x = dot(r8.yzx, r7.xyz);
    r3.y = dot(r6.xyw, r7.xyz);
    r5.z = dot(r4.xyz, r7.xyz);
    r2.z = cmp(r1.y < 0.100000001);
    r0.z = -0.5 + r0.z;
    r1.x = (uint)r1.x;
    r5.xy = r3.xy * r0.yy;
    r3.x = dot(r5.xyz, r5.xyz);
    r3.x = rsqrt(r3.x);
    r3.xyz = r5.xyz * r3.xxx;
    r3.w = dot(r3.xy, r3.xy);
    r4.w = cmp(0 < r3.w);
    r3.w = rsqrt(r3.w);
    r5.x = -r3.y * r3.w;
    r5.y = r3.x * r3.w;
    r5.z = 0;
    r5.xyz = r4.www ? r5.xyz : float3(1,0,0);
    r9.xyz = r5.yzx * r3.zxy;
    r9.xyz = r3.yzx * r5.zxy + -r9.xyz;
    r3.w = r3.z * 0.5 + 0.5;
    r4.w = 1 + -r3.w;
    r5.w = dot(-r7.xyz, r4.xyz);
    r5.w = r5.w + r5.w;
    r10.xyz = r4.xyz * -r5.www + -r7.xyz;
    r11.xyzw = cb1[1].xyzw * r2.yyyy;
    r11.xyzw = r2.xxxx * cb1[0].xyzw + r11.xyzw;
    r11.xyzw = r2.wwww * cb1[2].xyzw + r11.xyzw;
    r11.xyzw = cb1[3].xyzw + r11.xyzw;
    r5.w = rcp(r11.w);
    r12.xyz = r11.xyz * r5.www;
    r11.xy = r0.xx * cb1[30].zw + r11.zw;
    r5.w = rcp(r11.y);
    r5.w = -r11.x * r5.w + r12.z;
    r5.w = 4 * r5.w;
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = cb0[3].xy * r11.xy;
    r13.xyzw = r2.zzzz ? float4(24,1,1,0.0416669995) : float4(8,4,4,0.125);
    r6.w = r2.z ? 0.333333343 : 1;
    r14.x = r8.y;
    r14.y = r6.x;
    r14.z = r4.x;
    r6.x = r8.z;
    r6.z = r4.y;
    r8.yz = float2(-1,1) * r4.yz;
    r4.xy = float2(0.5,-0.5);
    r4.z = r13.w;
    r11.z = r12.z;
    r15.w = 2;
    r16.z = 3;
    r17.z = 1;
    r18.z = 0;
    r19.w = 1;
    r20.xyzw = float4(0,0,0,0);
    r7.w = 0x7f800000;
    r8.w = 0;
    while (true) {
      r9.w = cmp((uint)r8.w >= (uint)r13.y);
      if (r9.w != 0) break;
      r9.w = (uint)r8.w;
      r9.w = r9.w / r13.z;
      r9.w = r1.x * 1.52587891e-005 + r9.w;
      r9.w = frac(r9.w);
      r10.w = reversebits((uint)r8.w);
      r10.w = (int)r1.w ^ (int)r10.w;
      r10.w = (uint)r10.w >> 16;
      r10.w = (uint)r10.w;
      r10.w = 1.52587891e-005 * r10.w;
      r9.w = 6.28318548 * r9.w;
      r10.w = sqrt(r10.w);
      sincos(r9.w, r21.x, r22.x);
      r22.y = r21.x;
      r21.xy = r22.xy * r10.ww;
      r9.w = -r21.x * r21.x + 1;
      r9.w = sqrt(r9.w);
      r10.w = r21.y * r3.w;
      r21.z = r4.w * r9.w + r10.w;
      r22.xyz = r21.zzz * r9.xyz;
      r22.xyz = r21.xxx * r5.xyz + r22.xyz;
      r9.w = dot(r21.xz, r21.xz);
      r9.w = 1 + -r9.w;
      r9.w = max(0, r9.w);
      r9.w = sqrt(r9.w);
      r21.xyz = r9.www * r3.xyz + r22.xyz;
      r22.xy = r21.xy * r0.yy;
      r22.z = max(0, r21.z);
      r9.w = dot(r22.xyz, r22.xyz);
      r9.w = rsqrt(r9.w);
      r21.xyz = r22.xyz * r9.www;
      r22.x = dot(r21.xyz, r14.xyz);
      r22.y = dot(r21.xyz, r6.xyz);
      r22.z = dot(r21.xyz, r8.xyz);
      r9.w = dot(r7.xyz, r22.xyz);
      r9.w = r9.w + r9.w;
      r21.xyz = r9.www * r22.xyz + -r7.xyz;
      r21.xyz = r2.zzz ? r10.xyz : r21.xyz;
      r21.xyz = r21.xyz * r0.xxx + r2.xyw;
      r22.xyzw = cb1[1].xyzw * r21.yyyy;
      r22.xyzw = r21.xxxx * cb1[0].xyzw + r22.xyzw;
      r21.xyzw = r21.zzzz * cb1[2].xyzw + r22.xyzw;
      r21.xyzw = cb1[3].xyzw + r21.xyzw;
      r9.w = rcp(r21.w);
      r21.xyz = r21.xyz * r9.www + -r12.xyz;
      r9.w = dot(r21.xy, r21.xy);
      r9.w = sqrt(r9.w);
      r10.w = 0.5 * r9.w;
      r22.xy = r12.xy * r10.ww + r21.xy;
      r22.xy = -r9.ww * float2(0.5,0.5) + abs(r22.xy);
      r22.xy = max(float2(0,0), r22.xy);
      r22.xy = r22.xy / abs(r21.xy);
      r22.xy = float2(1,1) + -r22.xy;
      r9.w = min(r22.x, r22.y);
      r9.w = r9.w / r10.w;
      r21.xyz = r21.xyz * r9.www;
      r9.w = max(abs(r21.z), r5.w);
      r22.xy = cb0[3].xy * r21.xy;
      r21.xy = r22.xy * r13.ww;
      r10.w = r9.w * r13.w;
      r21.xyz = r21.xyz * r4.xyz;
      r22.xyz = r21.xyz * r0.zzz + r11.xyz;
      r11.w = 1;
      r15.xyz = float3(0,0,0);
      r12.w = 0;
      r14.w = 0;
      r16.w = 0;
      r17.xw = float2(0,0);
      r18.xw = float2(0,0);
      while (true) {
        r21.w = cmp((uint)r18.w >= (uint)r13.x);
        if (r21.w != 0) break;
        r21.w = (uint)r18.w;
        r23.xyzw = float4(1,2,3,4) + r21.wwww;
        r24.xyzw = r23.xxxy * r21.xyzz + r22.xyzz;
        r25.xyzw = r23.yyzz * r21.xyxy + r22.xyxy;
        r23.xyzw = r23.wwzw * r21.xyzz + r22.xyzz;
        r21.w = r6.w * r1.y + r11.w;
        r22.w = r6.w * r1.y + r21.w;
        r26.x = t7.SampleLevel(s2_s, r24.xy, r11.w).x;
        r26.y = t7.SampleLevel(s2_s, r25.xy, r11.w).x;
        r26.z = t7.SampleLevel(s2_s, r25.zw, r21.w).x;
        r26.w = t7.SampleLevel(s2_s, r23.xy, r21.w).x;
        r23.xy = r24.zw;
        r23.xyzw = r23.xyzw + -r26.xyzw;
        r24.xyzw = r9.wwww * r13.wwww + r23.xyzw;
        r24.xyzw = cmp(abs(r24.xyzw) < r10.wwww);
        r25.xy = (int2)r24.zw | (int2)r24.xy;
        r21.w = (int)r25.y | (int)r25.x;
        if (r21.w != 0) {
          r17.x = r23.x;
          r15.xyz = r23.yzw;
          r12.w = r24.x;
          r14.w = r24.y;
          r16.w = r24.z;
          r17.w = -1;
          break;
        }
        r18.x = r23.w;
        r18.w = (int)r18.w + 4;
        r11.w = r22.w;
        r17.x = r23.x;
        r15.xyz = r23.yzw;
        r12.w = r24.x;
        r14.w = r24.y;
        r16.w = r24.z;
        r17.w = r21.w;
      }
      if (r17.w != 0) {
        r16.xy = r15.yz;
        r23.xyz = r16.www ? r15.xyw : r16.xyz;
        r17.y = r15.x;
        r23.xyz = r14.www ? r17.xyz : r23.xyz;
        r18.y = r17.x;
        r23.xyz = r12.www ? r18.xyz : r23.xyz;
        r9.w = (uint)r18.w;
        r9.w = r23.z + r9.w;
        r10.w = r23.x + -r23.y;
        r10.w = saturate(r23.x / r10.w);
        r9.w = r10.w + r9.w;
        r21.xyz = r21.xyz * r9.www + r22.xyz;
        r16.xy = cb0[3].zw * r21.xy;
        r16.xy = r16.xy * float2(2,-2) + float2(-1,1);
        r21.xy = cb1[66].xy * r16.xy;
        r16.xy = r16.xy * cb1[66].xy + cb1[66].wz;
        r21.xy = r21.xy / cb1[66].xy;
        r9.w = r21.z * cb1[65].x + cb1[65].y;
        r10.w = r21.z * cb1[65].z + -cb1[65].w;
        r10.w = 1 / r10.w;
        r9.w = r10.w + r9.w;
        r22.xy = r21.xy * r9.ww;
        r22.yzw = cb1[53].xyz * r22.yyy;
        r22.xyz = r22.xxx * cb1[52].xyz + r22.yzw;
        r22.xyz = r9.www * cb1[54].xyz + r22.xyz;
        r22.xyz = cb1[55].xyz + r22.xyz;
        r22.xyz = -r22.xyz + r2.xyw;
        r9.w = dot(r22.xyz, r22.xyz);
        r7.w = min(r9.w, r7.w);
        r22.xyz = cb1[123].xyw * r21.yyy;
        r22.xyz = r21.xxx * cb1[122].xyw + r22.xyz;
        r22.xyz = r21.zzz * cb1[124].xyw + r22.xyz;
        r22.xyz = cb1[125].xyw + r22.xyz;
        r21.zw = r22.xy / r22.zz;
        r16.xy = t4.SampleLevel(s0_s, r16.xy, 0).xy;
        r9.w = cmp(0 < r16.x);
        r16.xy = r16.xy * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
        r16.xy = r21.xy + -r16.xy;
        r16.xy = r9.ww ? r16.xy : r21.zw;
        r21.zw = r16.xy * cb0[4].xy + cb0[4].zw;
        r21.xy = saturate(abs(r21.xy) * float2(5,5) + float2(-4,-4));
        r9.w = dot(r21.xy, r21.xy);
        r9.w = 1 + -r9.w;
        r9.w = max(0, r9.w);
        r16.xy = saturate(abs(r16.xy) * float2(5,5) + float2(-4,-4));
        r10.w = dot(r16.xy, r16.xy);
        r10.w = 1 + -r10.w;
        r10.w = max(0, r10.w);
        r9.w = min(r10.w, r9.w);
        r21.xyz = t6.SampleLevel(s1_s, r21.zw, 0).xyz;
        r21.xyz = min(float3(0,0,0), -r21.xyz);
        r19.xyz = -r21.xyz;
        r21.xyzw = r19.xyzw * r9.wwww;
        r9.w = dot(r21.xyz, float3(0.300000012,0.589999974,0.109999999));
        r9.w = 1 + r9.w;
        r9.w = rcp(r9.w);
        r21.xyz = r21.xyz * r9.www;
        r20.xyzw = r21.xyzw + r20.xyzw;
      }
      r8.w = (int)r8.w + 1;
    }
    r2.xyzw = r20.xyzw / r13.zzzz;
    r0.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.x = 1 + -r0.x;
    r0.x = rcp(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r1.xyzw = r2.xyzw * r1.zzzz;
    r1.xyzw = cb0[1].xxxx * r1.xyzw;
    o0.xyz = cb0[2].xxx * r1.xyz;
    r0.x = cmp(0 < r7.w);
    r0.y = sqrt(r0.w);
    r0.z = sqrt(r7.w);
    r0.y = r0.y + r0.z;
    r0.y = r0.z / r0.y;
    o1.xyzw = r0.xxxx ? r0.yyyy : float4(-1,-1,-1,-1);
    o0.w = r1.w;
  } else {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(-2,-2,-2,-2);
  }
  return;
}