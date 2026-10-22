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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27;
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
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r0.www;
    r0.w = r2.z ? r1.x : 0;
    r0.w = r0.w * -r5.w + r5.w;
    r1.x = cmp(0 < abs(r0.w));
    r8.xyz = r6.xyz * r5.yzx;
    r8.xyz = r6.zxy * r5.zxy + -r8.xyz;
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = rsqrt(r1.w);
    r8.xyz = r8.xyz * r1.www;
    r1.w = cmp(r0.w >= 0);
    r5.xyz = r1.www ? r8.xyz : r5.xyz;
    r8.xyz = r5.xyz * r7.xyz;
    r8.xyz = r5.zxy * r7.yzx + -r8.xyz;
    r9.xyz = r8.xyz * r5.xyz;
    r5.xyz = r8.zxy * r5.yzx + -r9.xyz;
    r0.z = saturate(5 * r0.z);
    r0.z = abs(r0.w) * r0.z;
    r4.xyz = -r4.xyz * r0.yyy + r5.xyz;
    r0.yzw = r0.zzz * r4.xyz + r6.xyz;
    r1.w = dot(r0.yzw, r0.yzw);
    r1.w = rsqrt(r1.w);
    r0.yzw = r1.www * r0.yzw;
    r0.yzw = r1.xxx ? r0.yzw : r6.xyz;
    r1.x = r1.y * r1.y;
    r1.w = asuint(cb1[144].y);
    r4.xy = r1.ww * float2(32.6650009,11.8149996) + v0.xy;
    r1.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
    r1.w = frac(r1.w);
    r1.w = 52.9829178 * r1.w;
    r1.w = frac(r1.w);
    r3.z = cb1[144].y;
    r3.xyz = mad((int3)r3.xyz, int3(0x19660d,0x19660d,0x19660d), int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f));
    r2.z = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.x = mad((int)r3.z, (int)r2.z, (int)r3.y);
    r3.y = mad((int)r2.z, (int)r3.x, (int)r3.z);
    r2.z = mad((int)r3.x, (int)r3.y, (int)r2.z);
    r3.x = mad((int)r3.y, (int)r2.z, (int)r3.x);
    r2.z = (uint)r2.z >> 16;
    r3.y = cmp(r0.w >= 0);
    r3.yz = r3.yy ? float2(1,-1) : float2(-1,1);
    r3.w = r3.y + r0.w;
    r3.w = rcp(r3.w);
    r4.xyz = r0.yyz * r0.zyz;
    r5.x = r4.x * -r3.w;
    r4.x = r3.y * -r3.w;
    r6.y = r4.x * r4.y + 1;
    r6.z = r5.x * r3.y;
    r6.x = r3.z * r0.y;
    r5.y = r4.z * -r3.w + r3.y;
    r5.w = -r0.z;
    r4.x = dot(r6.yzx, r7.xyz);
    r4.y = dot(r5.xyw, r7.xyz);
    r8.z = dot(r0.yzw, r7.xyz);
    r3.y = cmp(r1.y < 0.100000001);
    r1.w = -0.5 + r1.w;
    r2.z = (uint)r2.z;
    r8.xy = r4.xy * r1.xx;
    r3.z = dot(r8.xyz, r8.xyz);
    r3.z = rsqrt(r3.z);
    r4.xyz = r8.xyz * r3.zzz;
    r3.z = dot(r4.xy, r4.xy);
    r3.w = cmp(0 < r3.z);
    r3.z = rsqrt(r3.z);
    r8.x = -r4.y * r3.z;
    r8.y = r4.x * r3.z;
    r8.z = 0;
    r8.xyz = r3.www ? r8.xyz : float3(1,0,0);
    r9.xyz = r8.yzx * r4.zxy;
    r9.xyz = r4.yzx * r8.zxy + -r9.xyz;
    r3.z = r4.z * 0.5 + 0.5;
    r3.w = 1 + -r3.z;
    r4.w = dot(-r7.xyz, r0.yzw);
    r4.w = r4.w + r4.w;
    r10.xyz = r0.yzw * -r4.www + -r7.xyz;
    r11.xyzw = cb1[1].xyzw * r2.yyyy;
    r11.xyzw = r2.xxxx * cb1[0].xyzw + r11.xyzw;
    r11.xyzw = r2.wwww * cb1[2].xyzw + r11.xyzw;
    r11.xyzw = cb1[3].xyzw + r11.xyzw;
    r4.w = rcp(r11.w);
    r12.xyz = r11.xyz * r4.www;
    r11.xy = r0.xx * cb1[30].zw + r11.zw;
    r4.w = rcp(r11.y);
    r4.w = -r11.x * r4.w + r12.z;
    r4.w = 4 * r4.w;
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = cb0[3].xy * r11.xy;
    r13.xyzw = r3.yyyy ? float4(24,1,1,0.0416669995) : float4(12,12,12,0.0833330005);
    r5.w = r3.y ? 0.333333343 : 0.666666687;
    r14.x = r6.y;
    r14.y = r5.x;
    r14.z = r0.y;
    r5.x = r6.z;
    r5.z = r0.z;
    r6.yz = float2(-1,1) * r0.zw;
    r15.xy = float2(0.5,-0.5);
    r15.z = r13.w;
    r11.z = r12.z;
    r16.w = 2;
    r17.z = 3;
    r18.z = 1;
    r19.z = 0;
    r20.w = 1;
    r21.xyzw = float4(0,0,0,0);
    r0.y = 0;
    while (true) {
      r0.z = cmp((uint)r0.y >= (uint)r13.y);
      if (r0.z != 0) break;
      r0.z = (uint)r0.y;
      r0.z = r0.z / r13.z;
      r0.z = r2.z * 1.52587891e-005 + r0.z;
      r0.z = frac(r0.z);
      r0.w = reversebits((uint)r0.y);
      r0.w = (int)r3.x ^ (int)r0.w;
      r0.w = (uint)r0.w >> 16;
      r0.w = (uint)r0.w;
      r0.zw = float2(6.28318548,1.52587891e-005) * r0.zw;
      r0.w = sqrt(r0.w);
      sincos(r0.z, r22.x, r23.x);
      r23.y = r22.x;
      r22.xy = r23.xy * r0.ww;
      r0.z = -r22.x * r22.x + 1;
      r0.z = sqrt(r0.z);
      r0.w = r22.y * r3.z;
      r22.z = r3.w * r0.z + r0.w;
      r23.xyz = r22.zzz * r9.xyz;
      r23.xyz = r22.xxx * r8.xyz + r23.xyz;
      r0.z = dot(r22.xz, r22.xz);
      r0.z = 1 + -r0.z;
      r0.z = max(0, r0.z);
      r0.z = sqrt(r0.z);
      r22.xyz = r0.zzz * r4.xyz + r23.xyz;
      r23.xy = r22.xy * r1.xx;
      r23.z = max(0, r22.z);
      r0.z = dot(r23.xyz, r23.xyz);
      r0.z = rsqrt(r0.z);
      r22.xyz = r23.xyz * r0.zzz;
      r23.x = dot(r22.xyz, r14.xyz);
      r23.y = dot(r22.xyz, r5.xyz);
      r23.z = dot(r22.xyz, r6.xyz);
      r0.z = dot(r7.xyz, r23.xyz);
      r0.z = r0.z + r0.z;
      r22.xyz = r0.zzz * r23.xyz + -r7.xyz;
      r22.xyz = r3.yyy ? r10.xyz : r22.xyz;
      r22.xyz = r22.xyz * r0.xxx + r2.xyw;
      r23.xyzw = cb1[1].xyzw * r22.yyyy;
      r23.xyzw = r22.xxxx * cb1[0].xyzw + r23.xyzw;
      r22.xyzw = r22.zzzz * cb1[2].xyzw + r23.xyzw;
      r22.xyzw = cb1[3].xyzw + r22.xyzw;
      r0.z = rcp(r22.w);
      r22.xyz = r22.xyz * r0.zzz + -r12.xyz;
      r0.z = dot(r22.xy, r22.xy);
      r0.z = sqrt(r0.z);
      r0.w = 0.5 * r0.z;
      r23.xy = r12.xy * r0.ww + r22.xy;
      r23.xy = -r0.zz * float2(0.5,0.5) + abs(r23.xy);
      r23.xy = max(float2(0,0), r23.xy);
      r23.xy = r23.xy / abs(r22.xy);
      r23.xy = float2(1,1) + -r23.xy;
      r0.z = min(r23.x, r23.y);
      r0.z = r0.z / r0.w;
      r22.xyz = r22.xyz * r0.zzz;
      r0.z = max(abs(r22.z), r4.w);
      r23.xy = cb0[3].xy * r22.xy;
      r22.xy = r23.xy * r13.ww;
      r0.w = r0.z * r13.w;
      r22.xyz = r22.xyz * r15.xyz;
      r23.xyz = r22.xyz * r1.www + r11.xyz;
      r6.w = 1;
      r19.x = 0;
      r18.x = 0;
      r16.xyz = float3(0,0,0);
      r7.w = 0;
      r8.w = 0;
      r9.w = 0;
      r10.w = 0;
      r11.w = 0;
      while (true) {
        r12.w = cmp((uint)r11.w >= (uint)r13.x);
        if (r12.w != 0) break;
        r12.w = (uint)r11.w;
        r24.xyzw = float4(1,2,3,4) + r12.wwww;
        r25.xyzw = r24.xxxy * r22.xyzz + r23.xyzz;
        r26.xyzw = r24.yyzz * r22.xyxy + r23.xyxy;
        r24.xyzw = r24.wwzw * r22.xyzz + r23.xyzz;
        r12.w = r5.w * r1.y + r6.w;
        r14.w = r5.w * r1.y + r12.w;
        r27.x = t7.SampleLevel(s2_s, r25.xy, r6.w).x;
        r27.y = t7.SampleLevel(s2_s, r26.xy, r6.w).x;
        r27.z = t7.SampleLevel(s2_s, r26.zw, r12.w).x;
        r27.w = t7.SampleLevel(s2_s, r24.xy, r12.w).x;
        r24.xy = r25.zw;
        r24.xyzw = r24.xyzw + -r27.xyzw;
        r25.xyzw = r0.zzzz * r13.wwww + r24.xyzw;
        r25.xyzw = cmp(abs(r25.xyzw) < r0.wwww);
        r26.xy = (int2)r25.zw | (int2)r25.xy;
        r12.w = (int)r26.y | (int)r26.x;
        if (r12.w != 0) {
          r18.x = r24.x;
          r16.xyz = r24.yzw;
          r7.w = r25.x;
          r8.w = r25.y;
          r9.w = r25.z;
          r10.w = -1;
          break;
        }
        r19.x = r24.w;
        r11.w = (int)r11.w + 4;
        r6.w = r14.w;
        r18.x = r24.x;
        r16.xyz = r24.yzw;
        r7.w = r25.x;
        r8.w = r25.y;
        r9.w = r25.z;
        r10.w = r12.w;
      }
      if (r10.w != 0) {
        r17.xy = r16.yz;
        r17.xyw = r9.www ? r16.xyw : r17.xyz;
        r18.y = r16.x;
        r17.xyw = r8.www ? r18.xyz : r17.xyw;
        r19.y = r18.x;
        r17.xyw = r7.www ? r19.xyz : r17.xyw;
        r0.z = (uint)r11.w;
        r0.z = r17.w + r0.z;
        r0.w = r17.x + -r17.y;
        r0.w = saturate(r17.x / r0.w);
        r0.z = r0.z + r0.w;
        r17.xyw = r22.xyz * r0.zzz + r23.xyz;
        r0.zw = cb0[3].zw * r17.xy;
        r0.zw = r0.zw * float2(2,-2) + float2(-1,1);
        r17.xy = cb1[66].xy * r0.zw;
        r0.zw = r0.zw * cb1[66].xy + cb1[66].wz;
        r17.xy = r17.xy / cb1[66].xy;
        r22.xyz = cb1[123].xyw * r17.yyy;
        r22.xyz = r17.xxx * cb1[122].xyw + r22.xyz;
        r22.xyz = r17.www * cb1[124].xyw + r22.xyz;
        r22.xyz = cb1[125].xyw + r22.xyz;
        r18.yw = r22.xy / r22.zz;
        r0.zw = t4.SampleLevel(s0_s, r0.zw, 0).xy;
        r6.w = cmp(0 < r0.z);
        r0.zw = r0.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
        r0.zw = r17.xy + -r0.zw;
        r0.zw = r6.ww ? r0.zw : r18.yw;
        r18.yw = r0.zw * cb0[4].xy + cb0[4].zw;
        r17.xy = saturate(abs(r17.xy) * float2(5,5) + float2(-4,-4));
        r6.w = dot(r17.xy, r17.xy);
        r6.w = 1 + -r6.w;
        r6.w = max(0, r6.w);
        r0.zw = saturate(abs(r0.zw) * float2(5,5) + float2(-4,-4));
        r0.z = dot(r0.zw, r0.zw);
        r0.z = 1 + -r0.z;
        r0.z = max(0, r0.z);
        r0.z = min(r6.w, r0.z);
        r17.xyw = t6.SampleLevel(s1_s, r18.yw, 0).xyz;
        r17.xyw = min(float3(0,0,0), -r17.xyw);
        r20.xyz = -r17.xyw;
        r22.xyzw = r20.xyzw * r0.zzzz;
        r0.z = dot(r22.xyz, float3(0.300000012,0.589999974,0.109999999));
        r0.z = 1 + r0.z;
        r0.z = rcp(r0.z);
        r22.xyz = r22.xyz * r0.zzz;
        r21.xyzw = r22.xyzw + r21.xyzw;
      }
      r0.y = (int)r0.y + 1;
    }
    r0.xyzw = r21.xyzw / r13.zzzz;
    r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.x = 1 + -r1.x;
    r1.x = rcp(r1.x);
    r0.xyz = r1.xxx * r0.xyz;
    r0.xyzw = r0.xyzw * r1.zzzz;
    r0.xyzw = cb0[1].xxxx * r0.xyzw;
    o0.xyz = cb0[2].xxx * r0.xyz;
    o0.w = r0.w;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}