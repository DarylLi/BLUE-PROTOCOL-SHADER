// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s8_s : register(s8);

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
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (-1 != 0) discard;
    o0.xyzw = float4(0,0,0,1);
    return;
  } else {
    r0.z = cmp(0 >= cb6[8].w);
    if (r0.z != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
  }
  r1.xyz = -cb1[173].xyz + cb1[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r0.zw = v0.ww * r0.zw;
  r0.zw = float2(2000000,-2000000) * r0.zw;
  r2.xyz = cb1[49].xyz * r0.www;
  r2.xyz = r0.zzz * cb1[48].xyz + r2.xyz;
  r2.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r2.xyz;
  r2.xyz = cb1[51].xyz + r2.xyz;
  r2.xyz = -cb1[67].xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.z);
  r1.w = cmp(cb2[0].z < r0.w);
  if (r1.w != 0) {
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = dot(r2.xyz, r1.xyz);
    r2.w = r2.w + r2.w;
    r0.z = -cb2[0].z * cb2[0].z + r0.z;
    r0.z = r0.z * r1.w;
    r0.z = 4 * r0.z;
    r0.z = r2.w * r2.w + -r0.z;
    r3.x = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r3.yz = r0.zz * float2(1,-1) + -r2.ww;
    r0.z = r1.w + r1.w;
    r3.yz = r3.yz / r0.zz;
    r3.xy = r3.xx ? r3.yz : float2(-1,-1);
    r3.zw = cmp(r3.yx < float2(0,0));
    r0.z = r3.w ? r3.z : 0;
    r4.xy = max(float2(0,0), r3.xy);
    r1.w = r3.w ? r4.y : -1;
    r1.w = r3.z ? r4.x : r1.w;
    r2.w = (int)r3.w | (int)r3.z;
    r3.x = min(r3.y, r3.x);
    r3.x = max(0, r3.x);
    r1.w = r2.w ? r1.w : r3.x;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r0.z >= 0);
    r2.w = ~(int)r1.w;
    r3.xyz = r1.xyz / r0.www;
    r4.xyz = r2.xyz * r0.zzz + r1.xyz;
    r3.xyz = r3.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r4.xyz;
    r1.xyz = r1.www ? r3.xyz : r1.xyz;
    r0.z = 0;
  } else {
    r2.w = 0;
  }
  r0.w = ~(int)r2.w;
  r0.z = (int)r0.z | (int)r0.w;
  if (r0.z == 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r1.xyz = r2.xyz * cb0[26].yyy + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = cb2[0].y * cb2[0].y;
  r1.w = cmp(r0.w < r0.z);
  if (r1.w != 0) {
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = dot(r2.xyz, r1.xyz);
    r2.w = r2.w + r2.w;
    r3.x = -cb2[0].y * cb2[0].y + r0.z;
    r3.y = r2.w * r2.w;
    r3.z = 4 * r1.w;
    r3.x = -r3.z * r3.x + r3.y;
    r3.w = cmp(r3.x >= 0);
    r3.x = sqrt(r3.x);
    r4.xy = r3.xx * float2(1,-1) + -r2.ww;
    r1.w = r1.w + r1.w;
    r4.xy = r4.xy / r1.ww;
    r3.xw = r3.ww ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.wx < float2(0,0));
    r4.z = r4.y ? r4.x : 0;
    r5.xy = max(float2(0,0), r3.xw);
    r4.w = r4.y ? r5.y : -1;
    r4.w = r4.x ? r5.x : r4.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.x = min(r3.w, r3.x);
    r3.x = max(0, r3.x);
    r3.x = r4.x ? r4.w : r3.x;
    r3.x = r4.z ? -1 : r3.x;
    r3.w = cb2[0].z * cb2[0].z;
    r0.z = -cb2[0].z * cb2[0].z + r0.z;
    r0.z = -r3.z * r0.z + r3.y;
    r3.y = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r4.xy = r0.zz * float2(1,-1) + -r2.ww;
    r4.xy = r4.xy / r1.ww;
    r3.yz = r3.yy ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.zy < float2(0,0));
    r0.z = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r3.yz);
    r1.w = r4.y ? r4.w : -1;
    r1.w = r4.x ? r4.z : r1.w;
    r2.w = (int)r4.y | (int)r4.x;
    r3.y = min(r3.z, r3.y);
    r3.y = max(0, r3.y);
    r1.w = r2.w ? r1.w : r3.y;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r3.x < 0);
    r2.w = cmp(r0.z < 0);
    r2.w = r1.w ? r2.w : 0;
    if (r2.w == 0) {
      r2.w = cmp(r0.x != 0.000000);
      r0.x = max(9.99999996e-013, r0.x);
      r4.xyzw = cb1[45].xyzw * v0.yyyy;
      r4.xyzw = v0.xxxx * cb1[44].xyzw + r4.xyzw;
      r4.xyzw = r0.xxxx * cb1[46].xyzw + r4.xyzw;
      r4.xyzw = cb1[47].xyzw + r4.xyzw;
      r4.xyz = r4.xyz / r4.www;
      r4.xyz = -cb1[70].xyz + r4.xyz;
      r5.xyz = cb1[173].xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + r1.xyz;
      r4.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
      r0.x = dot(r2.xyz, r4.xyz);
      r0.x = cmp(r0.x < 0);
      r0.x = r0.x ? r2.w : 0;
      if (r0.x == 0) {
        r0.x = r0.y ? 1 : cb6[8].z;
        r0.y = max(0, r0.z);
        r3.y = cmp(0 < r0.z);
        r0.z = min(r0.z, r3.x);
        r0.z = r3.y ? r0.z : 0;
        r0.y = r1.w ? r0.y : r0.z;
        r0.z = dot(r4.xyz, r4.xyz);
        r0.z = sqrt(r0.z);
        r0.z = min(r0.y, r0.z);
        r0.y = r2.w ? r0.z : r0.y;
        r0.y = min(9000000, r0.y);
        r0.z = saturate(cb6[0].z * r0.y);
        r1.w = cb6[0].y + -cb6[0].x;
        r0.z = r0.z * r1.w + cb6[0].x;
        r1.w = floor(r0.z);
        r2.w = r1.w * r0.y;
        r2.w = r2.w / r0.z;
        r3.x = dot(cb1[161].xyz, r2.xyz);
        r3.y = -cb2[5].x * cb2[5].x + 1;
        r3.z = cb2[5].x * cb2[5].x + 1;
        r4.x = cb2[5].x + cb2[5].x;
        r4.y = r4.x * -r3.x + r3.z;
        r4.z = 12.566371 * r4.y;
        r4.y = sqrt(r4.y);
        r4.y = r4.z * r4.y;
        r4.y = r3.y / r4.y;
        r3.x = r3.x * r3.x + 1;
        r4.z = dot(cb1[162].xyz, r2.xyz);
        r3.z = r4.x * -r4.z + r3.z;
        r4.x = 12.566371 * r3.z;
        r3.z = sqrt(r3.z);
        r3.z = r4.x * r3.z;
        r3.y = r3.y / r3.z;
        r3.z = r4.z * r4.z + 1;
        r3.xz = float2(0.0596831031,0.0596831031) * r3.xz;
        r4.x = cmp(0 != cb1[184].x);
        r4.z = r4.x ? cb1[184].y : cb1[135].y;
        r5.xyz = cb1[163].xyz * r4.zzz;
        r6.xyz = cb1[164].xyz * r4.zzz;
        r4.z = asuint(cb1[144].y);
        r4.zw = r4.zz * float2(32.6650009,11.8149996) + v0.xy;
        r4.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
        r4.z = frac(r4.z);
        r4.z = 52.9829178 * r4.z;
        r4.z = frac(r4.z);
        r4.x = r4.x ? 0.300000012 : r4.z;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r4.z = cb2[0].z + -cb2[0].y;
        r4.w = dot(cb1[161].xyz, cb1[161].xyz);
        r5.w = 4 * r4.w;
        r4.w = r4.w + r4.w;
        r6.w = dot(cb1[162].xyz, cb1[162].xyz);
        r7.x = 4 * r6.w;
        r6.w = r6.w + r6.w;
        r7.yzw = float3(0,0,0);
        r8.xyz = float3(1,1,1);
        r8.w = cb3[38].x;
        r9.x = cb4[38].x;
        r9.y = 0;
        while (true) {
          r9.z = cmp(r9.y >= r0.z);
          if (r9.z != 0) break;
          r9.z = r9.y / r1.w;
          r9.y = 1 + r9.y;
          r9.w = r9.y / r1.w;
          r9.zw = r9.zw * r9.zw;
          r10.x = r9.z * r2.w;
          r10.y = cmp(1 < r9.w);
          r9.w = r9.w * r2.w;
          r9.w = r10.y ? r0.y : r9.w;
          r9.z = -r2.w * r9.z + r9.w;
          r9.w = r9.z * r4.x + r10.x;
          r10.xyz = r9.www * r2.xyz + r1.xyz;
          r9.w = dot(r10.xyz, r10.xyz);
          r10.w = sqrt(r9.w);
          r11.x = -cb2[0].y + r10.w;
          r11.y = max(0, r11.x);
          r11.z = cb2[3].x * r11.y;
          r11.z = 1.44269502 * r11.z;
          r11.z = exp2(r11.z);
          r11.w = cb2[0].w * r11.y;
          r11.w = 1.44269502 * r11.w;
          r11.w = exp2(r11.w);
          r12.x = cmp(r11.y < cb2[7].x);
          r12.y = saturate(cb2[7].z * r11.y + cb2[7].y);
          r11.y = saturate(cb2[8].x * r11.y + cb2[7].w);
          r11.y = r12.x ? r12.y : r11.y;
          r12.xyz = cb2[2].xyz * r11.zzz;
          r13.xyz = cb2[1].xyz * r11.www;
          r14.xyz = r11.zzz * cb2[2].xyz + r13.xyz;
          r15.xyz = r11.zzz * cb2[4].xyz + r13.xyz;
          r11.yzw = r11.yyy * cb2[9].xyz + r15.xyz;
          r15.xyz = r11.yzw * r9.zzz;
          r15.xyz = r15.xyz * r0.xxx;
          r15.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r15.xyz;
          r15.xyz = exp2(r15.xyz);
          r16.xyz = r10.xyz / r10.www;
          r9.z = dot(cb1[161].xyz, r16.xyz);
          r12.w = -cb2[0].y * cb2[0].y + r9.w;
          r12.w = max(0, r12.w);
          r12.w = sqrt(r12.w);
          r13.w = r9.z * r9.z + -1;
          r13.w = r9.w * r13.w + r3.w;
          r13.w = sqrt(r13.w);
          r13.w = -r10.w * r9.z + r13.w;
          r13.w = max(0, r13.w);
          r14.w = cb2[0].z + -r10.w;
          r15.w = r12.w + r0.w;
          r13.w = -r14.w + r13.w;
          r15.w = r15.w + -r14.w;
          r17.y = r13.w / r15.w;
          r17.z = r12.w / r0.w;
          r18.xyz = t5.SampleLevel(s5_s, r17.yz, 0).xyz;
          r19.xyz = r13.xyz * r3.xxx;
          r19.xyz = r12.xyz * r4.yyy + r19.xyz;
          r12.w = dot(cb1[162].xyz, r16.xyz);
          r13.w = r12.w * r12.w + -1;
          r9.w = r9.w * r13.w + r3.w;
          r9.w = sqrt(r9.w);
          r9.w = -r10.w * r12.w + r9.w;
          r9.w = max(0, r9.w);
          r9.w = r9.w + -r14.w;
          r17.x = r9.w / r15.w;
          r17.xyz = t5.SampleLevel(s5_s, r17.xz, 0).xyz;
          r13.xyz = r13.xyz * r3.zzz;
          r12.xyz = r12.xyz * r3.yyy + r13.xyz;
          r13.x = saturate(r9.z * 0.5 + 0.5);
          r13.y = saturate(r11.x / r4.z);
          r13.xyz = t6.SampleLevel(s6_s, r13.xy, 0).xyz;
          r16.xyz = -r16.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r10.xyz;
          r9.z = dot(r16.xyz, r16.xyz);
          r9.w = dot(cb1[161].xyz, r16.xyz);
          r9.w = r9.w + r9.w;
          r9.z = -cb2[0].y * cb2[0].y + r9.z;
          r10.w = r9.z * r5.w;
          r10.w = r9.w * r9.w + -r10.w;
          r11.x = cmp(r10.w >= 0);
          r10.w = sqrt(r10.w);
          r20.xy = r10.ww * float2(1,-1) + -r9.ww;
          r20.xy = r20.xy / r4.ww;
          r20.xy = r11.xx ? r20.xy : float2(-1,-1);
          r20.zw = cmp(r20.yx < float2(0,0));
          r9.w = r20.w ? r20.z : 0;
          r21.xy = max(float2(0,0), r20.xy);
          r10.w = r20.w ? r21.y : -1;
          r10.w = r20.z ? r21.x : r10.w;
          r11.x = (int)r20.w | (int)r20.z;
          r12.w = min(r20.y, r20.x);
          r12.w = max(0, r12.w);
          r10.w = r11.x ? r10.w : r12.w;
          r10.w = cmp(r10.w >= 0);
          r9.w = r9.w ? 0 : r10.w;
          r10.xyz = r10.xyz * float3(100000,100000,100000) + cb1[173].xyz;
          if (r9.x != 0) {
            r20.xyzw = cb4[41].xyzw * r10.yyyy;
            r20.xyzw = r10.xxxx * cb4[40].xyzw + r20.xyzw;
            r20.xyzw = r10.zzzz * cb4[42].xyzw + r20.xyzw;
            r20.xyzw = cb4[43].xyzw + r20.xyzw;
            r21.xyzw = r20.xyxy / r20.wwww;
            r20.xy = cmp(r21.zw >= float2(0,0));
            r22.xy = cmp(float2(1,1) >= r21.zw);
            r20.xy = r20.xy ? r22.xy : 0;
            r10.w = r20.y ? r20.x : 0;
            if (r10.w != 0) {
              r21.xyzw = r21.xyzw * cb4[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r20.xy = frac(r21.zw);
              r21.xyzw = floor(r21.xyzw);
              r22.xyzw = float4(0.5,1.5,0.5,0.5) + r21.zwzw;
              r22.xyzw = cb4[44].zwzw * r22.xyzw;
              r23.x = t4.SampleLevel(s4_s, r22.xy, 0).x;
              r21.xyzw = float4(1.5,1.5,1.5,0.5) + r21.xyzw;
              r21.xyzw = cb4[44].zwzw * r21.xyzw;
              r23.y = t4.SampleLevel(s4_s, r21.xy, 0).x;
              r23.z = t4.SampleLevel(s4_s, r21.zw, 0).x;
              r23.w = t4.SampleLevel(s4_s, r22.zw, 0).x;
              r10.w = r20.z * 40 + -1;
              r21.xyzw = saturate(r23.xyzw * float4(40,40,40,40) + -r10.wwww);
              r22.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r23.xyzw);
              r22.xyzw = r22.xyzw ? float4(1,1,1,1) : 0;
              r21.xyzw = r22.xyzw + r21.xyzw;
              r21.xyzw = min(float4(1,1,1,1), r21.xyzw);
              r20.zw = r21.zy + -r21.wx;
              r20.xz = r20.xx * r20.zw + r21.wx;
              r10.w = r20.z + -r20.x;
              r10.w = r20.y * r10.w + r20.x;
            } else {
              r10.w = 1;
            }
          } else {
            r10.w = 1;
          }
          r20.xyzw = cb4[2].xyzw * r10.yyyy;
          r20.xyzw = r10.xxxx * cb4[1].xyzw + r20.xyzw;
          r20.xyzw = r10.zzzz * cb4[3].xyzw + r20.xyzw;
          r20.xyzw = cb4[4].xyzw + r20.xyzw;
          r20.xy = r20.xy / r20.ww;
          r21.xy = cmp(r20.xy >= cb4[5].xy);
          r21.zw = cmp(cb4[5].zw >= r20.xy);
          r21.xy = r21.zw ? r21.xy : 0;
          r11.x = r21.y ? r21.x : 0;
          if (r11.x != 0) {
            r11.x = t3.SampleLevel(s3_s, r20.xy, 0).x;
            r12.w = -cb4[6].x + r11.x;
            r12.w = cmp(r20.z < r12.w);
            r12.w = r12.w ? 1.000000 : 0;
            r11.x = cmp(r11.x == 1.000000);
            r11.x = r11.x ? 1.000000 : 0;
            r11.x = r12.w + r11.x;
            r11.x = min(1, r11.x);
          } else {
            r11.x = 1;
          }
          r20.xyz = -cb1[67].xyz + r10.xyz;
          r12.w = dot(r20.xyz, cb1[60].xyz);
          r13.w = saturate(r12.w * cb4[7].z + cb4[7].w);
          r13.w = r13.w * r13.w;
          r14.w = 1 + -r11.x;
          r11.x = r13.w * r14.w + r11.x;
          r10.w = min(r11.x, r10.w);
          r20.xyzw = cb5[20].xyzw * r10.yyyy;
          r20.xyzw = r10.xxxx * cb5[19].xyzw + r20.xyzw;
          r20.xyzw = r10.zzzz * cb5[21].xyzw + r20.xyzw;
          r20.xyzw = cb5[22].xyzw + r20.xyzw;
          r20.xyz = r20.xyz / r20.www;
          r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r20.xyw = t7.SampleLevel(s7_s, r20.xy, 0).xyz;
          r11.x = saturate(1 + -r20.z);
          r11.x = r11.x * cb5[7].x + -r20.x;
          r11.x = max(0, r11.x);
          r11.x = r11.x * r20.y;
          r11.x = 1000 * r11.x;
          r11.x = min(r20.w, r11.x);
          r11.x = -1.44269502 * r11.x;
          r11.x = exp2(r11.x);
          r11.x = min(1, r11.x);
          r11.x = -1 + r11.x;
          r11.x = saturate(cb0[26].z * r11.x + 1);
          r10.w = r11.x * r10.w;
          r9.w = r9.w ? 0 : r10.w;
          r18.xyz = r9.www * r18.xyz;
          r13.xyz = r13.xyz * r14.xyz;
          r13.xyz = r18.xyz * r19.xyz + r13.xyz;
          r9.w = dot(cb1[162].xyz, r16.xyz);
          r9.w = r9.w + r9.w;
          r9.z = r9.z * r7.x;
          r9.z = r9.w * r9.w + -r9.z;
          r10.w = cmp(r9.z >= 0);
          r9.z = sqrt(r9.z);
          r9.zw = r9.zz * float2(1,-1) + -r9.ww;
          r9.zw = r9.zw / r6.ww;
          r9.zw = r10.ww ? r9.zw : float2(-1,-1);
          r14.xy = cmp(r9.wz < float2(0,0));
          r10.w = r14.y ? r14.x : 0;
          r14.zw = max(float2(0,0), r9.zw);
          r11.x = r14.y ? r14.w : -1;
          r11.x = r14.x ? r14.z : r11.x;
          r13.w = (int)r14.y | (int)r14.x;
          r9.z = min(r9.w, r9.z);
          r9.z = max(0, r9.z);
          r9.z = r13.w ? r11.x : r9.z;
          r9.z = cmp(r9.z >= 0);
          r9.z = r10.w ? 0 : r9.z;
          if (r8.w != 0) {
            r14.xyzw = cb3[41].xyzw * r10.yyyy;
            r14.xyzw = r10.xxxx * cb3[40].xyzw + r14.xyzw;
            r14.xyzw = r10.zzzz * cb3[42].xyzw + r14.xyzw;
            r14.xyzw = cb3[43].xyzw + r14.xyzw;
            r16.xyzw = r14.xyxy / r14.wwww;
            r14.xy = cmp(r16.zw >= float2(0,0));
            r18.xy = cmp(float2(1,1) >= r16.zw);
            r14.xy = r14.xy ? r18.xy : 0;
            r9.w = r14.y ? r14.x : 0;
            if (r9.w != 0) {
              r16.xyzw = r16.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r14.xy = frac(r16.zw);
              r16.xyzw = floor(r16.xyzw);
              r18.xyzw = float4(0.5,1.5,0.5,0.5) + r16.zwzw;
              r18.xyzw = cb3[44].zwzw * r18.xyzw;
              r19.x = t2.SampleLevel(s2_s, r18.xy, 0).x;
              r16.xyzw = float4(1.5,1.5,1.5,0.5) + r16.xyzw;
              r16.xyzw = cb3[44].zwzw * r16.xyzw;
              r19.y = t2.SampleLevel(s2_s, r16.xy, 0).x;
              r19.z = t2.SampleLevel(s2_s, r16.zw, 0).x;
              r19.w = t2.SampleLevel(s2_s, r18.zw, 0).x;
              r9.w = r14.z * 40 + -1;
              r16.xyzw = saturate(r19.xyzw * float4(40,40,40,40) + -r9.wwww);
              r18.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r19.xyzw);
              r18.xyzw = r18.xyzw ? float4(1,1,1,1) : 0;
              r16.xyzw = r18.xyzw + r16.xyzw;
              r16.xyzw = min(float4(1,1,1,1), r16.xyzw);
              r14.zw = r16.zy + -r16.wx;
              r14.xz = r14.xx * r14.zw + r16.wx;
              r9.w = r14.z + -r14.x;
              r9.w = r14.y * r9.w + r14.x;
            } else {
              r9.w = 1;
            }
          } else {
            r9.w = 1;
          }
          r14.xyzw = cb3[2].xyzw * r10.yyyy;
          r14.xyzw = r10.xxxx * cb3[1].xyzw + r14.xyzw;
          r14.xyzw = r10.zzzz * cb3[3].xyzw + r14.xyzw;
          r14.xyzw = cb3[4].xyzw + r14.xyzw;
          r14.xy = r14.xy / r14.ww;
          r16.xy = cmp(r14.xy >= cb3[5].xy);
          r16.zw = cmp(cb3[5].zw >= r14.xy);
          r16.xy = r16.zw ? r16.xy : 0;
          r10.w = r16.y ? r16.x : 0;
          if (r10.w != 0) {
            r10.w = t1.SampleLevel(s1_s, r14.xy, 0).x;
            r11.x = -cb3[6].x + r10.w;
            r11.x = cmp(r14.z < r11.x);
            r11.x = r11.x ? 1.000000 : 0;
            r10.w = cmp(r10.w == 1.000000);
            r10.w = r10.w ? 1.000000 : 0;
            r10.w = r11.x + r10.w;
            r10.w = min(1, r10.w);
          } else {
            r10.w = 1;
          }
          r11.x = saturate(r12.w * cb3[7].z + cb3[7].w);
          r11.x = r11.x * r11.x;
          r12.w = 1 + -r10.w;
          r10.w = r11.x * r12.w + r10.w;
          r9.w = min(r10.w, r9.w);
          r14.xyzw = cb5[24].xyzw * r10.yyyy;
          r14.xyzw = r10.xxxx * cb5[23].xyzw + r14.xyzw;
          r10.xyzw = r10.zzzz * cb5[25].xyzw + r14.xyzw;
          r10.xyzw = cb5[26].xyzw + r10.xyzw;
          r10.xyz = r10.xyz / r10.www;
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xyw = t8.SampleLevel(s8_s, r10.xy, 0).xyz;
          r10.z = saturate(1 + -r10.z);
          r10.x = r10.z * cb5[8].x + -r10.x;
          r10.x = max(0, r10.x);
          r10.x = r10.x * r10.y;
          r10.x = 1000 * r10.x;
          r10.x = min(r10.w, r10.x);
          r10.x = -1.44269502 * r10.x;
          r10.x = exp2(r10.x);
          r10.x = min(1, r10.x);
          r10.x = -1 + r10.x;
          r10.x = saturate(cb0[26].w * r10.x + 1);
          r9.w = r10.x * r9.w;
          r9.z = r9.z ? 0 : r9.w;
          r10.xyz = r9.zzz * r6.xyz;
          r10.xyz = r10.xyz * r17.xyz;
          r10.xyz = r10.xyz * r12.xyz;
          r10.xyz = r5.xyz * r13.xyz + r10.xyz;
          r10.xyz = -r10.xyz * r15.xyz + r10.xyz;
          r10.xyz = r10.xyz / r11.yzw;
          r7.yzw = r8.xyz * r10.xyz + r7.yzw;
          r8.xyz = r15.xyz * r8.xyz;
        }
      } else {
        r7.yzw = float3(0,0,0);
        r8.xyz = float3(1,1,1);
      }
    } else {
      r7.yzw = float3(0,0,0);
      r8.xyz = float3(1,1,1);
    }
  } else {
    r7.yzw = float3(0,0,0);
    r8.xyz = float3(1,1,1);
  }
  o0.xyz = min(float3(32256,32256,32256), r7.yzw);
  o0.w = dot(r8.xyz, float3(0.333333343,0.333333343,0.333333343));
  return;
}