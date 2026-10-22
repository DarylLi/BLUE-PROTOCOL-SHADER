// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[9];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[27];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[45];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[45];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[27];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.xyzw = t5.Load(r0.xyw).xyzw;
  r2.x = cmp(0.999000013 < r1.w);
  if (r2.x != 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r2.xyz = -cb1[173].xyz + cb1[172].xyz;
  r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r2.xyz;
  r3.xy = -cb1[129].xy + v0.xy;
  r3.xy = r3.xy * cb1[130].zw + float2(-0.5,-0.5);
  r3.xy = v0.ww * r3.xy;
  r3.xy = float2(2000000,-2000000) * r3.xy;
  r3.yzw = cb1[49].xyz * r3.yyy;
  r3.xyz = r3.xxx * cb1[48].xyz + r3.yzw;
  r3.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r3.xyz;
  r3.xyz = cb1[51].xyz + r3.xyz;
  r3.xyz = -cb1[67].xyz + r3.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r2.w);
  r4.x = cmp(cb2[0].z < r3.w);
  if (r4.x != 0) {
    r4.x = dot(r3.xyz, r3.xyz);
    r4.y = dot(r3.xyz, r2.xyz);
    r4.y = r4.y + r4.y;
    r2.w = -cb2[0].z * cb2[0].z + r2.w;
    r2.w = r2.w * r4.x;
    r2.w = 4 * r2.w;
    r2.w = r4.y * r4.y + -r2.w;
    r4.z = cmp(r2.w >= 0);
    r2.w = sqrt(r2.w);
    r4.yw = r2.ww * float2(1,-1) + -r4.yy;
    r2.w = r4.x + r4.x;
    r4.xy = r4.yw / r2.ww;
    r4.xy = r4.zz ? r4.xy : float2(-1,-1);
    r4.zw = cmp(r4.yx < float2(0,0));
    r2.w = r4.w ? r4.z : 0;
    r5.xy = max(float2(0,0), r4.xy);
    r5.y = r4.w ? r5.y : -1;
    r5.x = r4.z ? r5.x : r5.y;
    r4.z = (int)r4.w | (int)r4.z;
    r4.x = min(r4.y, r4.x);
    r4.x = max(0, r4.x);
    r4.x = r4.z ? r5.x : r4.x;
    r2.w = r2.w ? -1 : r4.x;
    r4.x = cmp(r2.w >= 0);
    r4.y = ~(int)r4.x;
    r5.xyz = r2.xyz / r3.www;
    r6.xyz = r3.xyz * r2.www + r2.xyz;
    r5.xyz = r5.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r6.xyz;
    r2.xyz = r4.xxx ? r5.xyz : r2.xyz;
    r2.w = 0;
  } else {
    r4.y = 0;
  }
  r3.w = ~(int)r4.y;
  r2.w = (int)r2.w | (int)r3.w;
  if (r2.w == 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r2.w = 1 + -r1.w;
  r2.xyz = r3.xyz * cb0[26].yyy + r2.xyz;
  r3.w = dot(r2.xyz, r2.xyz);
  r4.x = cb2[0].y * cb2[0].y;
  r4.y = cmp(r4.x < r3.w);
  if (r4.y != 0) {
    r4.y = dot(r3.xyz, r3.xyz);
    r4.z = dot(r3.xyz, r2.xyz);
    r4.z = r4.z + r4.z;
    r4.w = -cb2[0].y * cb2[0].y + r3.w;
    r5.x = r4.z * r4.z;
    r5.y = 4 * r4.y;
    r4.w = -r5.y * r4.w + r5.x;
    r5.z = cmp(r4.w >= 0);
    r4.w = sqrt(r4.w);
    r6.xy = r4.ww * float2(1,-1) + -r4.zz;
    r4.y = r4.y + r4.y;
    r6.xy = r6.xy / r4.yy;
    r5.zw = r5.zz ? r6.xy : float2(-1,-1);
    r6.xy = cmp(r5.wz < float2(0,0));
    r4.w = r6.y ? r6.x : 0;
    r6.zw = max(float2(0,0), r5.zw);
    r6.w = r6.y ? r6.w : -1;
    r6.z = r6.x ? r6.z : r6.w;
    r6.x = (int)r6.y | (int)r6.x;
    r5.z = min(r5.w, r5.z);
    r5.z = max(0, r5.z);
    r5.z = r6.x ? r6.z : r5.z;
    r4.w = r4.w ? -1 : r5.z;
    r5.z = cb2[0].z * cb2[0].z;
    r3.w = -cb2[0].z * cb2[0].z + r3.w;
    r3.w = -r5.y * r3.w + r5.x;
    r5.x = cmp(r3.w >= 0);
    r3.w = sqrt(r3.w);
    r5.yw = r3.ww * float2(1,-1) + -r4.zz;
    r4.yz = r5.yw / r4.yy;
    r4.yz = r5.xx ? r4.yz : float2(-1,-1);
    r5.xy = cmp(r4.zy < float2(0,0));
    r3.w = r5.y ? r5.x : 0;
    r6.xy = max(float2(0,0), r4.yz);
    r5.w = r5.y ? r6.y : -1;
    r5.w = r5.x ? r6.x : r5.w;
    r5.x = (int)r5.y | (int)r5.x;
    r4.y = min(r4.z, r4.y);
    r4.y = max(0, r4.y);
    r4.y = r5.x ? r5.w : r4.y;
    r3.w = r3.w ? -1 : r4.y;
    r4.y = cmp(r4.w < 0);
    r4.z = cmp(r3.w < 0);
    r4.z = r4.z ? r4.y : 0;
    if (r4.z == 0) {
      r0.x = t4.Load(r0.xyz).x;
      r0.y = cmp(r0.x == 0.000000);
      r0.y = r0.y ? 1 : cb6[8].z;
      r0.z = max(0, r3.w);
      r0.w = cmp(0 < r3.w);
      r3.w = min(r3.w, r4.w);
      r0.w = r0.w ? r3.w : 0;
      r0.z = r4.y ? r0.z : r0.w;
      r0.x = min(r0.z, r0.x);
      r0.x = min(9000000, r0.x);
      r0.z = saturate(cb6[0].z * r0.x);
      r0.w = cb6[0].y + -cb6[0].x;
      r0.z = r0.z * r0.w + cb6[0].x;
      r0.w = floor(r0.z);
      r3.w = r0.x * r0.w;
      r3.w = r3.w / r0.z;
      r4.y = dot(cb1[161].xyz, r3.xyz);
      r4.z = -cb2[5].x * cb2[5].x + 1;
      r4.w = cb2[5].x * cb2[5].x + 1;
      r5.x = cb2[5].x + cb2[5].x;
      r5.y = r5.x * -r4.y + r4.w;
      r5.w = 12.566371 * r5.y;
      r5.y = sqrt(r5.y);
      r5.y = r5.w * r5.y;
      r5.y = r4.z / r5.y;
      r4.y = r4.y * r4.y + 1;
      r5.w = dot(cb1[162].xyz, r3.xyz);
      r4.w = r5.x * -r5.w + r4.w;
      r5.x = 12.566371 * r4.w;
      r4.w = sqrt(r4.w);
      r4.w = r5.x * r4.w;
      r4.z = r4.z / r4.w;
      r4.w = r5.w * r5.w + 1;
      r4.yw = float2(0.0596831031,0.0596831031) * r4.yw;
      r5.x = cmp(0 != cb1[184].x);
      r5.w = r5.x ? cb1[184].y : cb1[135].y;
      r6.xyz = cb1[163].xyz * r5.www;
      r7.xyz = cb1[164].xyz * r5.www;
      r5.w = asuint(cb1[144].y);
      r8.xy = r5.ww * float2(32.6650009,11.8149996) + v0.xy;
      r5.w = dot(r8.xy, float2(0.0671105608,0.00583714992));
      r5.w = frac(r5.w);
      r5.w = 52.9829178 * r5.w;
      r5.w = frac(r5.w);
      r5.x = r5.x ? 0.300000012 : r5.w;
      r4.x = cb2[0].z * cb2[0].z + -r4.x;
      r4.x = max(0, r4.x);
      r4.x = sqrt(r4.x);
      r5.w = cb2[0].z + -cb2[0].y;
      r6.w = dot(cb1[161].xyz, cb1[161].xyz);
      r7.w = 4 * r6.w;
      r6.w = r6.w + r6.w;
      r8.x = dot(cb1[162].xyz, cb1[162].xyz);
      r8.y = 4 * r8.x;
      r8.x = r8.x + r8.x;
      r10.xyz = float3(1,1,1);
      r8.z = cb3[38].x;
      r8.w = cb4[38].x;
      r9.xyzw = float4(0,0,0,0);
      while (true) {
        r10.w = cmp(r9.w >= r0.z);
        if (r10.w != 0) break;
        r10.w = r9.w / r0.w;
        r9.w = 1 + r9.w;
        r11.x = r9.w / r0.w;
        r10.w = r10.w * r10.w;
        r11.x = r11.x * r11.x;
        r11.y = r10.w * r3.w;
        r11.z = cmp(1 < r11.x);
        r11.x = r11.x * r3.w;
        r11.x = r11.z ? r0.x : r11.x;
        r10.w = -r3.w * r10.w + r11.x;
        r11.x = r10.w * r5.x + r11.y;
        r11.xyz = r11.xxx * r3.xyz + r2.xyz;
        r11.w = dot(r11.xyz, r11.xyz);
        r12.x = sqrt(r11.w);
        r12.y = -cb2[0].y + r12.x;
        r12.z = max(0, r12.y);
        r12.w = cb2[3].x * r12.z;
        r12.w = 1.44269502 * r12.w;
        r12.w = exp2(r12.w);
        r13.x = cb2[0].w * r12.z;
        r13.x = 1.44269502 * r13.x;
        r13.x = exp2(r13.x);
        r13.y = cmp(r12.z < cb2[7].x);
        r13.z = saturate(cb2[7].z * r12.z + cb2[7].y);
        r12.z = saturate(cb2[8].x * r12.z + cb2[7].w);
        r12.z = r13.y ? r13.z : r12.z;
        r13.yzw = cb2[2].xyz * r12.www;
        r14.xyz = cb2[1].xyz * r13.xxx;
        r15.xyz = r12.www * cb2[2].xyz + r14.xyz;
        r16.xyz = r12.www * cb2[4].xyz + r14.xyz;
        r16.xyz = r12.zzz * cb2[9].xyz + r16.xyz;
        r17.xyz = r16.xyz * r10.www;
        r17.xyz = r17.xyz * r0.yyy;
        r17.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r17.xyz;
        r17.xyz = exp2(r17.xyz);
        r18.xyz = r11.xyz / r12.xxx;
        r10.w = dot(cb1[161].xyz, r18.xyz);
        r12.z = -cb2[0].y * cb2[0].y + r11.w;
        r12.z = max(0, r12.z);
        r12.w = r10.w * r10.w + -1;
        r12.w = r11.w * r12.w + r5.z;
        r12.zw = sqrt(r12.zw);
        r12.w = -r12.x * r10.w + r12.w;
        r12.w = max(0, r12.w);
        r13.x = cb2[0].z + -r12.x;
        r14.w = r12.z + r4.x;
        r12.w = -r13.x + r12.w;
        r14.w = r14.w + -r13.x;
        r19.y = r12.w / r14.w;
        r19.z = r12.z / r4.x;
        r20.xyz = t6.SampleLevel(s4_s, r19.yz, 0).xyz;
        r21.xyz = r14.xyz * r4.yyy;
        r21.xyz = r13.yzw * r5.yyy + r21.xyz;
        r12.z = dot(cb1[162].xyz, r18.xyz);
        r12.w = r12.z * r12.z + -1;
        r11.w = r11.w * r12.w + r5.z;
        r11.w = sqrt(r11.w);
        r11.w = -r12.x * r12.z + r11.w;
        r11.w = max(0, r11.w);
        r11.w = r11.w + -r13.x;
        r19.x = r11.w / r14.w;
        r12.xzw = t6.SampleLevel(s4_s, r19.xz, 0).xyz;
        r14.xyz = r14.xyz * r4.www;
        r13.xyz = r13.yzw * r4.zzz + r14.xyz;
        r14.x = saturate(r10.w * 0.5 + 0.5);
        r14.y = saturate(r12.y / r5.w);
        r14.xyz = t7.SampleLevel(s5_s, r14.xy, 0).xyz;
        r18.xyz = -r18.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.xyz;
        r10.w = dot(r18.xyz, r18.xyz);
        r11.w = dot(cb1[161].xyz, r18.xyz);
        r11.w = r11.w + r11.w;
        r10.w = -cb2[0].y * cb2[0].y + r10.w;
        r12.y = r10.w * r7.w;
        r12.y = r11.w * r11.w + -r12.y;
        r13.w = cmp(r12.y >= 0);
        r12.y = sqrt(r12.y);
        r19.xy = r12.yy * float2(1,-1) + -r11.ww;
        r19.xy = r19.xy / r6.ww;
        r19.xy = r13.ww ? r19.xy : float2(-1,-1);
        r19.zw = cmp(r19.yx < float2(0,0));
        r11.w = r19.w ? r19.z : 0;
        r22.xy = max(float2(0,0), r19.xy);
        r12.y = r19.w ? r22.y : -1;
        r12.y = r19.z ? r22.x : r12.y;
        r13.w = (int)r19.w | (int)r19.z;
        r14.w = min(r19.y, r19.x);
        r14.w = max(0, r14.w);
        r12.y = r13.w ? r12.y : r14.w;
        r12.y = cmp(r12.y >= 0);
        r11.w = r11.w ? 0 : r12.y;
        r11.xyz = r11.xyz * float3(100000,100000,100000) + cb1[173].xyz;
        if (r8.w != 0) {
          r19.xyzw = cb4[41].xyzw * r11.yyyy;
          r19.xyzw = r11.xxxx * cb4[40].xyzw + r19.xyzw;
          r19.xyzw = r11.zzzz * cb4[42].xyzw + r19.xyzw;
          r19.xyzw = cb4[43].xyzw + r19.xyzw;
          r22.xyzw = r19.xyxy / r19.wwww;
          r19.xy = cmp(r22.zw >= float2(0,0));
          r23.xy = cmp(float2(1,1) >= r22.zw);
          r19.xy = r19.xy ? r23.xy : 0;
          r12.y = r19.y ? r19.x : 0;
          if (r12.y != 0) {
            r22.xyzw = r22.xyzw * cb4[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r19.xy = frac(r22.zw);
            r22.xyzw = floor(r22.xyzw);
            r23.xyzw = float4(0.5,1.5,0.5,0.5) + r22.zwzw;
            r23.xyzw = cb4[44].zwzw * r23.xyzw;
            r24.x = t3.SampleLevel(s3_s, r23.xy, 0).x;
            r22.xyzw = float4(1.5,1.5,1.5,0.5) + r22.xyzw;
            r22.xyzw = cb4[44].zwzw * r22.xyzw;
            r24.y = t3.SampleLevel(s3_s, r22.xy, 0).x;
            r24.z = t3.SampleLevel(s3_s, r22.zw, 0).x;
            r24.w = t3.SampleLevel(s3_s, r23.zw, 0).x;
            r12.y = r19.z * 40 + -1;
            r22.xyzw = saturate(r24.xyzw * float4(40,40,40,40) + -r12.yyyy);
            r23.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r24.xyzw);
            r23.xyzw = r23.xyzw ? float4(1,1,1,1) : 0;
            r22.xyzw = r23.xyzw + r22.xyzw;
            r22.xyzw = min(float4(1,1,1,1), r22.xyzw);
            r19.zw = r22.zy + -r22.wx;
            r19.xz = r19.xx * r19.zw + r22.wx;
            r12.y = r19.z + -r19.x;
            r12.y = r19.y * r12.y + r19.x;
          } else {
            r12.y = 1;
          }
        } else {
          r12.y = 1;
        }
        r19.xyzw = cb4[2].xyzw * r11.yyyy;
        r19.xyzw = r11.xxxx * cb4[1].xyzw + r19.xyzw;
        r19.xyzw = r11.zzzz * cb4[3].xyzw + r19.xyzw;
        r19.xyzw = cb4[4].xyzw + r19.xyzw;
        r19.xy = r19.xy / r19.ww;
        r22.xy = cmp(r19.xy >= cb4[5].xy);
        r22.zw = cmp(cb4[5].zw >= r19.xy);
        r22.xy = r22.zw ? r22.xy : 0;
        r13.w = r22.y ? r22.x : 0;
        if (r13.w != 0) {
          r13.w = t2.SampleLevel(s2_s, r19.xy, 0).x;
          r14.w = -cb4[6].x + r13.w;
          r14.w = cmp(r19.z < r14.w);
          r14.w = r14.w ? 1.000000 : 0;
          r13.w = cmp(r13.w == 1.000000);
          r13.w = r13.w ? 1.000000 : 0;
          r13.w = r14.w + r13.w;
          r13.w = min(1, r13.w);
        } else {
          r13.w = 1;
        }
        r19.xyz = -cb1[67].xyz + r11.xyz;
        r14.w = dot(r19.xyz, cb1[60].xyz);
        r15.w = saturate(r14.w * cb4[7].z + cb4[7].w);
        r15.w = r15.w * r15.w;
        r16.w = 1 + -r13.w;
        r13.w = r15.w * r16.w + r13.w;
        r12.y = min(r13.w, r12.y);
        r19.xyzw = cb5[20].xyzw * r11.yyyy;
        r19.xyzw = r11.xxxx * cb5[19].xyzw + r19.xyzw;
        r19.xyzw = r11.zzzz * cb5[21].xyzw + r19.xyzw;
        r19.xyzw = cb5[22].xyzw + r19.xyzw;
        r19.xyz = r19.xyz / r19.www;
        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.xyw = t8.SampleLevel(s6_s, r19.xy, 0).xyz;
        r13.w = saturate(1 + -r19.z);
        r13.w = r13.w * cb5[7].x + -r19.x;
        r13.w = max(0, r13.w);
        r13.w = r13.w * r19.y;
        r13.w = 1000 * r13.w;
        r13.w = min(r19.w, r13.w);
        r13.w = -1.44269502 * r13.w;
        r13.w = exp2(r13.w);
        r13.w = min(1, r13.w);
        r13.w = -1 + r13.w;
        r13.w = saturate(cb0[26].z * r13.w + 1);
        r12.y = r13.w * r12.y;
        r11.w = r11.w ? 0 : r12.y;
        r19.xyz = r11.www * r20.xyz;
        r14.xyz = r14.xyz * r15.xyz;
        r14.xyz = r19.xyz * r21.xyz + r14.xyz;
        r11.w = dot(cb1[162].xyz, r18.xyz);
        r11.w = r11.w + r11.w;
        r10.w = r10.w * r8.y;
        r10.w = r11.w * r11.w + -r10.w;
        r12.y = cmp(r10.w >= 0);
        r10.w = sqrt(r10.w);
        r15.xy = r10.ww * float2(1,-1) + -r11.ww;
        r15.xy = r15.xy / r8.xx;
        r15.xy = r12.yy ? r15.xy : float2(-1,-1);
        r15.zw = cmp(r15.yx < float2(0,0));
        r10.w = r15.w ? r15.z : 0;
        r18.xy = max(float2(0,0), r15.xy);
        r11.w = r15.w ? r18.y : -1;
        r11.w = r15.z ? r18.x : r11.w;
        r12.y = (int)r15.w | (int)r15.z;
        r13.w = min(r15.y, r15.x);
        r13.w = max(0, r13.w);
        r11.w = r12.y ? r11.w : r13.w;
        r11.w = cmp(r11.w >= 0);
        r10.w = r10.w ? 0 : r11.w;
        if (r8.z != 0) {
          r15.xyzw = cb3[41].xyzw * r11.yyyy;
          r15.xyzw = r11.xxxx * cb3[40].xyzw + r15.xyzw;
          r15.xyzw = r11.zzzz * cb3[42].xyzw + r15.xyzw;
          r15.xyzw = cb3[43].xyzw + r15.xyzw;
          r18.xyzw = r15.xyxy / r15.wwww;
          r15.xy = cmp(r18.zw >= float2(0,0));
          r19.xy = cmp(float2(1,1) >= r18.zw);
          r15.xy = r15.xy ? r19.xy : 0;
          r11.w = r15.y ? r15.x : 0;
          if (r11.w != 0) {
            r18.xyzw = r18.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r15.xy = frac(r18.zw);
            r18.xyzw = floor(r18.xyzw);
            r19.xyzw = float4(0.5,1.5,0.5,0.5) + r18.zwzw;
            r19.xyzw = cb3[44].zwzw * r19.xyzw;
            r20.x = t1.SampleLevel(s1_s, r19.xy, 0).x;
            r18.xyzw = float4(1.5,1.5,1.5,0.5) + r18.xyzw;
            r18.xyzw = cb3[44].zwzw * r18.xyzw;
            r20.y = t1.SampleLevel(s1_s, r18.xy, 0).x;
            r20.z = t1.SampleLevel(s1_s, r18.zw, 0).x;
            r20.w = t1.SampleLevel(s1_s, r19.zw, 0).x;
            r11.w = r15.z * 40 + -1;
            r18.xyzw = saturate(r20.xyzw * float4(40,40,40,40) + -r11.wwww);
            r19.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r20.xyzw);
            r19.xyzw = r19.xyzw ? float4(1,1,1,1) : 0;
            r18.xyzw = r19.xyzw + r18.xyzw;
            r18.xyzw = min(float4(1,1,1,1), r18.xyzw);
            r15.zw = r18.zy + -r18.wx;
            r15.xz = r15.xx * r15.zw + r18.wx;
            r11.w = r15.z + -r15.x;
            r11.w = r15.y * r11.w + r15.x;
          } else {
            r11.w = 1;
          }
        } else {
          r11.w = 1;
        }
        r15.xyzw = cb3[2].xyzw * r11.yyyy;
        r15.xyzw = r11.xxxx * cb3[1].xyzw + r15.xyzw;
        r15.xyzw = r11.zzzz * cb3[3].xyzw + r15.xyzw;
        r15.xyzw = cb3[4].xyzw + r15.xyzw;
        r15.xy = r15.xy / r15.ww;
        r18.xy = cmp(r15.xy >= cb3[5].xy);
        r18.zw = cmp(cb3[5].zw >= r15.xy);
        r18.xy = r18.zw ? r18.xy : 0;
        r12.y = r18.y ? r18.x : 0;
        if (r12.y != 0) {
          r12.y = t0.SampleLevel(s0_s, r15.xy, 0).x;
          r13.w = -cb3[6].x + r12.y;
          r13.w = cmp(r15.z < r13.w);
          r13.w = r13.w ? 1.000000 : 0;
          r12.y = cmp(r12.y == 1.000000);
          r12.y = r12.y ? 1.000000 : 0;
          r12.y = r13.w + r12.y;
          r12.y = min(1, r12.y);
        } else {
          r12.y = 1;
        }
        r13.w = saturate(r14.w * cb3[7].z + cb3[7].w);
        r13.w = r13.w * r13.w;
        r14.w = 1 + -r12.y;
        r12.y = r13.w * r14.w + r12.y;
        r11.w = min(r12.y, r11.w);
        r15.xyzw = cb5[24].xyzw * r11.yyyy;
        r15.xyzw = r11.xxxx * cb5[23].xyzw + r15.xyzw;
        r15.xyzw = r11.zzzz * cb5[25].xyzw + r15.xyzw;
        r15.xyzw = cb5[26].xyzw + r15.xyzw;
        r11.xyz = r15.xyz / r15.www;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xyz = t9.SampleLevel(s7_s, r11.xy, 0).xyz;
        r11.x = saturate(1 + -r11.z);
        r11.x = r11.x * cb5[8].x + -r15.x;
        r11.x = max(0, r11.x);
        r11.x = r11.x * r15.y;
        r11.x = 1000 * r11.x;
        r11.x = min(r15.z, r11.x);
        r11.x = -1.44269502 * r11.x;
        r11.x = exp2(r11.x);
        r11.x = min(1, r11.x);
        r11.x = -1 + r11.x;
        r11.x = saturate(cb0[26].w * r11.x + 1);
        r11.x = r11.w * r11.x;
        r10.w = r10.w ? 0 : r11.x;
        r11.xyz = r10.www * r7.xyz;
        r11.xyz = r11.xyz * r12.xzw;
        r11.xyz = r11.xyz * r13.xyz;
        r11.xyz = r6.xyz * r14.xyz + r11.xyz;
        r11.xyz = -r11.xyz * r17.xyz + r11.xyz;
        r11.xyz = r11.xyz / r16.xyz;
        r9.xyz = r10.xyz * r11.xyz + r9.xyz;
        r10.xyz = r17.xyz * r10.xyz;
      }
    } else {
      r9.xyz = float3(0,0,0);
      r10.xyz = float3(1,1,1);
    }
  } else {
    r9.xyz = float3(0,0,0);
    r10.xyz = float3(1,1,1);
  }
  r0.x = dot(r10.xyz, float3(0.333333343,0.333333343,0.333333343));
  r0.yzw = r9.xyz * r2.www;
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.xyz = min(float3(32256,32256,32256), r0.xyz);
  o0.w = dot(r1.www, float3(0.333333343,0.333333343,0.333333343));
  return;
}