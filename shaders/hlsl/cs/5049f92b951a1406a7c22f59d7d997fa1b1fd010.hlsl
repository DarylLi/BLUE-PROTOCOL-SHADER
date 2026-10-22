// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[125];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[211];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[2];
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)cb0[1].zw;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r1.xyzw = cb1[45].xyzw * r0.yyyy;
    r1.xyzw = r0.xxxx * cb1[44].xyzw + r1.xyzw;
    r2.xyzw = cb1[46].xyzw * float4(0.5,0.5,0.5,0.5) + r1.xyzw;
    r2.xyzw = cb1[47].xyzw + r2.xyzw;
    r2.xyz = r2.xyz / r2.www;
    r0.z = dot(-r2.xyz, -r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = -r2.xyz * r0.zzz;
    r3.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[67].xyz;
    r4.xyz = cb1[67].xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -cb2[1].xyz;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.w = dot(-r2.xyz, -r2.xyz);
    r2.w = dot(-r2.xyz, r4.xyz);
    r2.w = r2.w + r2.w;
    r3.w = -cb2[2].y * cb2[2].y + r0.z;
    r4.x = r2.w * r2.w;
    r4.y = 4 * r0.w;
    r3.w = -r4.y * r3.w + r4.x;
    r4.z = cmp(r3.w >= 0);
    r3.w = sqrt(r3.w);
    r5.xy = r3.ww * float2(-1,1) + -r2.ww;
    r0.w = r0.w + r0.w;
    r5.xy = r5.xy / r0.ww;
    r5.xy = r4.zz ? r5.xy : 0;
    r3.w = ~(int)r4.z;
    if (r4.z != 0) {
      r0.z = -cb2[2].x * cb2[2].x + r0.z;
      r0.z = -r4.y * r0.z + r4.x;
      r4.x = cmp(r0.z >= 0);
      r0.z = sqrt(r0.z);
      r4.yz = r0.zz * float2(-1,1) + -r2.ww;
      r0.zw = r4.yz / r0.ww;
      r0.zw = r4.xx ? r0.zw : 0;
      r4.yz = cmp(float2(0,0) < r5.xy);
      r2.w = r4.z ? r4.y : 0;
      r4.y = min(r5.x, r5.y);
      r4.z = max(r5.x, r5.y);
      r2.w = r2.w ? r4.y : r4.z;
      r4.zw = cmp(float2(0,0) < r0.zw);
      r4.z = r4.w ? r4.z : 0;
      r4.w = min(r0.z, r0.w);
      r0.z = max(r0.z, r0.w);
      r0.z = r4.z ? r4.w : r0.z;
      r0.w = max(0, r4.y);
      r0.w = r4.z ? r0.w : r2.w;
      r6.x = min(r0.z, r0.w);
      r6.y = max(r0.z, r0.w);
      r0.zw = r4.xx ? r6.xy : r5.xy;
      r0.zw = max(float2(0,0), r0.zw);
      r4.xy = float2(100000,100000) * r0.wz;
      r0.w = cmp(r4.y >= r4.x);
      r2.w = cmp(cb2[2].z < r4.y);
      r0.w = (int)r0.w | (int)r2.w;
      if (r0.w == 0) {
        r4.zw = vThreadID.xy;
        r5.xy = mad((int2)r4.zw, asint(cb2[108].xy), asint(cb2[108].zw));
        r5.zw = float2(0,0);
        r2.w = t5.Load(r5.xyz).x;
        r2.w = max(9.99999996e-013, r2.w);
        r1.xyzw = r2.wwww * cb1[46].xyzw + r1.xyzw;
        r1.xyzw = cb1[47].xyzw + r1.xyzw;
        r1.xyz = r1.xyz / r1.www;
        r1.xyz = -cb1[70].xyz + r1.xyz;
        r1.xyz = -cb1[67].xyz + r1.xyz;
        r1.x = dot(r1.xyz, r1.xyz);
        r1.x = sqrt(r1.x);
        r5.y = 9.99999975e-006 * r1.x;
        r1.y = cmp(asint(cb2[109].y) >= 2);
        r1.z = cmp(r1.x < r4.y);
        r1.z = r1.z ? r1.y : 0;
        if (r1.z == 0) {
          r1.x = min(r4.x, r1.x);
          r1.x = r1.y ? r1.x : r4.x;
          r6.xyz = cb2[5].xyz * cb1[165].xyz;
          r6.xyz = cb2[115].www ? r6.xyz : float3(0,0,0);
          r1.x = -r0.z * 100000 + r1.x;
          r1.x = min(cb2[2].w, r1.x);
          r4.x = r0.z * 100000 + r1.x;
          r7.xyz = asint(cb2[3].xyw);
          r1.y = saturate(cb2[3].z * r1.x);
          r1.y = r7.y * r1.y;
          r1.y = max(r7.x, r1.y);
          r1.y = (uint)r1.y;
          r1.w = (uint)r1.y;
          r1.x = r1.x / r1.w;
          if (cb2[115].z != 0) {
            r1.w = cmp(0 < cb1[179].x);
            if (r1.w != 0) {
              r7.xyw = t1.SampleLevel(s1_s, float2(0.5,0.5), 0).xyz;
            } else {
              r8.x = t0[0].val[12/4];
              r8.y = t0[1].val[12/4];
              r8.z = t0[2].val[12/4];
              r7.xyw = max(float3(0,0,0), r8.xyz);
            }
          } else {
            r7.xyw = float3(0,0,0);
          }
          r1.w = saturate(cb3[12].x);
          r2.w = dot(cb1[161].xyz, -r2.xyz);
          r4.z = max(-0.999000013, cb3[10].w);
          r4.w = max(-0.999000013, cb3[11].x);
          r4.zw = min(float2(0.999000013,0.999000013), r4.zw);
          r8.xyz = saturate(cb3[11].zwy);
          r5.z = -r4.z * r4.z + 1;
          r5.w = r4.z * r4.z + 1;
          r4.z = dot(-r2.ww, r4.zz);
          r4.z = r5.w + r4.z;
          r5.w = 12.566371 * r4.z;
          r4.z = sqrt(r4.z);
          r4.z = r5.w * r4.z;
          r4.z = r5.z / r4.z;
          r5.z = -r4.w * r4.w + 1;
          r5.w = r4.w * r4.w + 1;
          r2.w = dot(-r2.ww, r4.ww);
          r2.w = r5.w + r2.w;
          r4.w = 12.566371 * r2.w;
          r2.w = sqrt(r2.w);
          r2.w = r4.w * r2.w;
          r2.w = r5.z / r2.w;
          r2.w = r2.w + -r4.z;
          r2.w = r8.z * r2.w + r4.z;
          r4.z = -0.0795774683 + r2.w;
          r1.w = r1.w * r4.z + 0.0795774683;
          r4.z = 100000 * cb2[2].x;
          r4.z = cb2[2].y * 100000 + -r4.z;
          r4.z = 1 / r4.z;
          r5.zw = float2(0.00999999978,0.5) * r1.xx;
          r0.z = r0.z * 100000 + r5.w;
          r0.xy = (int2)r0.xy;
          r9.xy = (int2)r0.xy * int2(0x19660d,0x19660d);
          r9.z = asint(cb1[144].y) * 0x0019660d;
          r9.xyz = (int3)r9.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
          r0.x = mad((int)r9.y, (int)r9.z, (int)r9.x);
          r0.y = mad((int)r9.z, (int)r0.x, (int)r9.y);
          r4.w = mad((int)r0.x, (int)r0.y, (int)r9.z);
          r0.x = mad((int)r0.y, (int)r4.w, (int)r0.x);
          r0.x = (uint)r0.x >> 16;
          r0.x = (uint)r0.x;
          r0.x = r0.x * r1.x;
          r0.x = r0.x * 1.52587891e-005 + r4.y;
          r0.x = cb2[110].x ? r0.z : r0.x;
          r0.y = asint(cb2[115].x) + -1;
          r0.z = asint(cb2[115].x);
          r9.xyz = cb3[2].xyz * cb1[142].zzz;
          r10.xyz = float3(-0.100000001,-0.100000001,-0.100000001) * r9.xyz;
          r4.y = cb3[8].z + -cb3[8].w;
          r4.w = 1 / r7.z;
          r5.w = 0.00999999978 * cb2[4].x;
          r6.w = cb3[12].y * cb3[12].y;
          r11.xyz = float3(0,0,0);
          r12.xyz = float3(1,1,1);
          r13.xy = float2(0,0);
          r7.z = r0.x;
          r8.z = 0;
          while (true) {
            r8.w = cmp((uint)r8.z >= (uint)r1.y);
            if (r8.w != 0) break;
            r14.xyz = r7.zzz * -r2.xyz + cb1[67].xyz;
            r15.xyz = -cb2[1].xyz * float3(100000,100000,100000) + r14.xyz;
            r8.w = dot(r15.xyz, r15.xyz);
            r8.w = sqrt(r8.w);
            r8.w = -cb2[2].x * 100000 + r8.w;
            r8.w = saturate(r8.w * r4.z);
            r13.zw = float2(500000,500000) + r14.xy;
            r13.zw = r13.zw * r6.ww;
            r13.zw = t6.SampleLevel(s4_s, r13.zw, -1).xy;
            r9.w = cmp(0 >= r13.w);
            r10.w = log2(r13.w);
            r10.w = 0.25 * r10.w;
            r10.w = exp2(r10.w);
            r15.x = r9.w ? 0 : r10.w;
            r15.y = 1 + -r8.w;
            r9.w = t7.SampleLevel(s5_s, r15.xy, -1).x;
            r9.w = r13.z * r9.w;
            r10.w = cmp(r8.w < 0.0500000007);
            r11.w = cmp(0.949999988 < r8.w);
            r10.w = (int)r10.w | (int)r11.w;
            r9.w = r10.w ? 0 : r9.w;
            r10.w = cmp(0 >= r9.w);
            if (r10.w != 0) {
              r10.w = (int)r0.y + (int)r8.z;
              r11.w = r0.z * r1.x + r7.z;
              r10.w = (int)r10.w + 1;
              r7.z = r11.w;
              r8.z = r10.w;
              continue;
            }
            r15.xyz = cb3[7].xxx * r14.xyz;
            r15.xyz = r9.xyz * float3(0.150000006,0.150000006,0.150000006) + r15.xyz;
            r15.xyz = cb3[7].yyy * r15.xyz;
            r15.xyz = t8.SampleLevel(s6_s, r15.xyz, -1).xyz;
            r16.xyz = cmp(float3(0,0,0) >= r15.xyz);
            r15.xyz = log2(r15.xyz);
            r15.xyz = cb3[7].zzz * r15.xyz;
            r15.xyz = exp2(r15.xyz);
            r15.xyz = r16.xyz ? float3(0,0,0) : r15.xyz;
            r15.xyz = min(float3(1,1,1), r15.xyz);
            r16.xyz = r15.xyz * r9.www;
            r17.xyz = r14.xyz * cb3[7].xxx + r10.xyz;
            r17.xyz = cb3[7].www * r17.xyz;
            r10.w = t9.SampleLevel(s7_s, r17.xyz, -1).x;
            r11.w = cmp(0 >= r10.w);
            r10.w = log2(r10.w);
            r10.w = cb3[8].x * r10.w;
            r10.w = exp2(r10.w);
            r10.w = cb3[8].y * r10.w;
            r10.w = r11.w ? -0 : -r10.w;
            r11.w = r9.w * r15.x + r10.w;
            r10.w = cb3[8].z + r10.w;
            r10.w = saturate(r11.w / r10.w);
            r10.w = r4.y * r10.w + cb3[8].w;
            r11.w = saturate(cb3[9].x * r8.w);
            r12.w = cmp(0 >= r11.w);
            r11.w = log2(r11.w);
            r11.w = cb3[9].y * r11.w;
            r11.w = exp2(r11.w);
            r11.w = r12.w ? 0 : r11.w;
            r15.xyz = -r9.www * r15.xyz + r10.www;
            r15.xyz = r11.www * r15.xyz + r16.xyz;
            r16.xyz = cb3[3].xyz * r15.xyz;
            r16.xyz = saturate(cb3[9].zzz * r16.xyz);
            r17.xyz = cmp(float3(0,0,0) >= r16.xyz);
            r16.xyz = log2(r16.xyz);
            r16.xyz = cb3[9].www * r16.xyz;
            r16.xyz = exp2(r16.xyz);
            r16.xyz = r17.xyz ? float3(0,0,0) : r16.xyz;
            r15.xyz = cb3[6].xyz * r15.xyz;
            r15.xyz = max(float3(0,0,0), r15.xyz);
            r15.xyz = min(float3(65000,65000,65000), r15.xyz);
            r16.xyz = min(float3(1,1,1), r16.xyz);
            r16.xyz = r16.xyz * r15.xyz;
            r17.xyz = r16.xyz * r8.xxx;
            r18.xyz = r15.xyz * r8.yyy;
            r8.w = saturate(cb2[4].z + r8.w);
            r19.xyz = r8.www * r7.xyw;
            r20.xyz = cmp(float3(0,0,0) < r16.xyz);
            r8.w = (int)r20.y | (int)r20.x;
            r8.w = (int)r20.z | (int)r8.w;
            if (r8.w != 0) {
              x0[0].xyz = float3(0,0,0);
              x0[1].xyz = float3(0,0,0);
              r20.x = 0;
              r20.y = r4.w;
              while (true) {
                r8.w = cmp(1 < r20.y);
                if (r8.w != 0) break;
                r21.x = r20.y * r20.y;
                r8.w = r20.y * r20.y + -r20.x;
                r9.w = r8.w * 0.5 + r20.x;
                r9.w = cb2[4].x * r9.w;
                r22.xyz = cb1[161].xyz * r9.www + r14.xyz;
                r23.xyz = -cb2[1].xyz * float3(100000,100000,100000) + r22.xyz;
                r9.w = dot(r23.xyz, r23.xyz);
                r9.w = sqrt(r9.w);
                r9.w = -cb2[2].x * 100000 + r9.w;
                r9.w = saturate(r9.w * r4.z);
                r13.zw = float2(500000,500000) + r22.xy;
                r13.zw = r13.zw * r6.ww;
                r13.zw = t6.SampleLevel(s4_s, r13.zw, -1).xy;
                r10.w = cmp(0 >= r13.w);
                r11.w = log2(r13.w);
                r11.w = 0.25 * r11.w;
                r11.w = exp2(r11.w);
                r23.x = r10.w ? 0 : r11.w;
                r23.y = 1 + -r9.w;
                r10.w = t7.SampleLevel(s5_s, r23.xy, -1).x;
                r10.w = r13.z * r10.w;
                r11.w = cmp(r9.w < 0.0500000007);
                r12.w = cmp(0.949999988 < r9.w);
                r11.w = (int)r11.w | (int)r12.w;
                r10.w = r11.w ? 0 : r10.w;
                r11.w = cmp(0 >= r10.w);
                if (r11.w != 0) {
                  r21.y = r20.y + r4.w;
                  r20.xy = r21.xy;
                  continue;
                }
                r23.xyz = cb3[7].xxx * r22.xyz;
                r23.xyz = r9.xyz * float3(0.150000006,0.150000006,0.150000006) + r23.xyz;
                r23.xyz = cb3[7].yyy * r23.xyz;
                r23.xyz = t8.SampleLevel(s6_s, r23.xyz, -1).xyz;
                r24.xyz = cmp(float3(0,0,0) >= r23.xyz);
                r23.xyz = log2(r23.xyz);
                r23.xyz = cb3[7].zzz * r23.xyz;
                r23.xyz = exp2(r23.xyz);
                r23.xyz = r24.xyz ? float3(0,0,0) : r23.xyz;
                r23.xyz = min(float3(1,1,1), r23.xyz);
                r24.xyz = r23.xyz * r10.www;
                r22.xyz = r22.xyz * cb3[7].xxx + r10.xyz;
                r22.xyz = cb3[7].www * r22.xyz;
                r11.w = t9.SampleLevel(s7_s, r22.xyz, -1).x;
                r12.w = cmp(0 >= r11.w);
                r11.w = log2(r11.w);
                r11.w = cb3[8].x * r11.w;
                r11.w = exp2(r11.w);
                r11.w = cb3[8].y * r11.w;
                r11.w = r12.w ? -0 : -r11.w;
                r12.w = r10.w * r23.x + r11.w;
                r11.w = cb3[8].z + r11.w;
                r11.w = saturate(r12.w / r11.w);
                r11.w = r4.y * r11.w + cb3[8].w;
                r9.w = saturate(cb3[9].x * r9.w);
                r12.w = cmp(0 >= r9.w);
                r9.w = log2(r9.w);
                r9.w = cb3[9].y * r9.w;
                r9.w = exp2(r9.w);
                r9.w = r12.w ? 0 : r9.w;
                r22.xyz = -r10.www * r23.xyz + r11.www;
                r22.xyz = r9.www * r22.xyz + r24.xyz;
                r22.xyz = cb3[6].xyz * r22.xyz;
                r22.xyz = max(float3(0,0,0), r22.xyz);
                r22.xyz = min(float3(65000,65000,65000), r22.xyz);
                r23.xyz = r22.xyz * r8.yyy;
                r24.xyz = x0[0].xyz;
                r22.xyz = r22.xyz * r8.www + r24.xyz;
                x0[0].xyz = r22.xyz;
                r22.xyz = x0[1].xyz;
                r22.xyz = r23.xyz * r8.www + r22.xyz;
                x0[1].xyz = r22.xyz;
                r21.z = r20.y + r4.w;
                r20.xy = r21.xz;
              }
              r14.xyz = x0[0].xyz;
              r14.xyz = -r14.xyz * r5.www;
              r14.xyz = float3(1.44269502,1.44269502,1.44269502) * r14.xyz;
              r14.xyz = exp2(r14.xyz);
              r20.xyz = x0[1].xyz;
              r20.xyz = -r20.xyz * r5.www;
              r20.xyz = float3(1.44269502,1.44269502,1.44269502) * r20.xyz;
              r20.xyz = exp2(r20.xyz);
            } else {
              r14.xyz = float3(1,1,1);
              r20.xyz = float3(1,1,1);
            }
            r21.xyz = cmp(float3(0,0,0) < r15.xyz);
            r8.w = (int)r21.y | (int)r21.x;
            r8.w = (int)r21.z | (int)r8.w;
            r9.w = min(r12.y, r12.z);
            r9.w = min(r12.x, r9.w);
            r21.x = r7.z * r9.w + r13.x;
            r21.y = r13.y + r9.w;
            r13.zw = r8.ww ? r21.xy : r13.xy;
            r20.xyz = r20.xyz * r6.xyz;
            r20.xyz = r20.xyz * r1.www;
            r17.xyz = r20.xyz * r17.xyz;
            r18.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r18.xyz);
            r20.xyz = -r18.xyz * r5.zzz;
            r20.xyz = float3(1.44269502,1.44269502,1.44269502) * r20.xyz;
            r20.xyz = exp2(r20.xyz);
            r17.xyz = -r17.xyz * r20.xyz + r17.xyz;
            r17.xyz = r17.xyz / r18.xyz;
            r17.xyz = r12.xyz * r17.xyz + r11.xyz;
            r14.xyz = r14.xyz * r6.xyz;
            r14.xyz = r14.xyz * r2.www + r19.xyz;
            r14.xyz = r14.xyz * r16.xyz;
            r15.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r15.xyz);
            r16.xyz = -r15.xyz * r5.zzz;
            r16.xyz = float3(1.44269502,1.44269502,1.44269502) * r16.xyz;
            r16.xyz = exp2(r16.xyz);
            r14.xyz = -r14.xyz * r16.xyz + r14.xyz;
            r14.xyz = r14.xyz / r15.xyz;
            r14.xyz = r12.xyz * r14.xyz + r17.xyz;
            r15.xyz = r16.xyz * r12.xyz;
            r16.xyz = cmp(r15.xyz < cb2[4].yyy);
            r8.w = r16.y ? r16.x : 0;
            r8.w = r16.z ? r8.w : 0;
            if (r8.w != 0) {
              r11.xyz = r14.xyz;
              r12.xyz = r15.xyz;
              r13.xy = r13.zw;
              break;
            }
            r7.z = r7.z + r1.x;
            r11.xyz = r14.xyz;
            r12.xyz = r15.xyz;
            r13.xy = r13.zw;
            r8.z = (int)r8.z + 1;
          }
        } else {
          r11.xyz = float3(0,0,0);
          r12.xyz = float3(1,1,1);
          r13.xy = float2(0,0);
        }
      } else {
        r11.xyz = float3(0,0,0);
        r12.xyz = float3(1,1,1);
        r5.y = 65504;
        r13.xy = float2(0,0);
        r1.z = -1;
      }
      r0.x = (int)r0.w | (int)r1.z;
    } else {
      r11.xyz = float3(0,0,0);
      r12.xyz = float3(1,1,1);
      r5.y = 65504;
      r4.x = -1e+009;
      r13.xy = float2(0,0);
      r0.x = -1;
    }
    r0.x = (int)r3.w | (int)r0.x;
    if (r0.x == 0) {
      r0.x = cmp(0 != cb1[184].x);
      r0.y = r0.x ? cb1[184].y : cb1[135].y;
      r0.z = cmp(r13.y == 0.000000);
      r0.w = max(1.00000001e-010, r13.y);
      r0.w = r13.x / r0.w;
      r1.x = r0.z ? r4.x : r0.w;
      r6.xyz = r1.xxx * -r2.xyz;
      r1.yzw = r1.xxx * -r2.xyz + cb1[67].xyz;
      r2.xyw = cb1[5].xyw * r1.zzz;
      r2.xyw = r1.yyy * cb1[4].xyw + r2.xyw;
      r2.xyw = r1.www * cb1[6].xyw + r2.xyw;
      r2.xyw = cb1[7].xyw + r2.xyw;
      r3.w = dot(r12.xyz, float3(0.333333343,0.333333343,0.333333343));
      r4.y = cmp(asint(cb2[115].y) != 0);
      r4.z = cmp(0 < r13.y);
      r4.y = r4.z ? r4.y : 0;
      if (r4.y != 0) {
        r4.yw = r2.xy / r2.ww;
        r4.yw = r4.yw * float2(0.5,-0.5) + float2(0.5,0.5);
        r1.yzw = r1.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.xyz;
        r3.x = dot(r1.yzw, r1.yzw);
        r3.y = sqrt(r3.x);
        r3.y = -cb1[181].x + r3.y;
        r3.y = max(0, r3.y);
        r3.y = cb1[182].x * r3.y;
        r3.y = cb1[181].z * r3.y;
        r7.z = sqrt(r3.y);
        r3.y = cb1[181].y * r7.z;
        r3.z = cmp(r3.y < 0.707106769);
        r3.y = dot(r3.yy, r3.yy);
        r3.y = min(1, r3.y);
        r3.y = r3.z ? r3.y : 1;
        r3.x = rsqrt(r3.x);
        r1.yzw = r3.xxx * r1.yzw;
        r3.x = -r1.w * r1.w + 1;
        r3.x = sqrt(r3.x);
        r8.y = r1.w * 0.5 + 0.5;
        r1.yz = r1.yz / r3.xx;
        r1.w = 1 + -abs(r1.y);
        r1.w = sqrt(r1.w);
        r3.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
        r3.x = r3.x * abs(r1.y) + -0.212114394;
        r3.x = r3.x * abs(r1.y) + 1.57072878;
        r3.z = r3.x * r1.w;
        r3.z = r3.z * -2 + 3.14159274;
        r1.y = cmp(r1.y < -r1.y);
        r1.y = r1.y ? r3.z : 0;
        r1.y = r3.x * r1.w + r1.y;
        r1.z = cmp(r1.z < 0);
        r1.w = 6.28318548 + -r1.y;
        r1.y = r1.z ? r1.w : r1.y;
        r8.x = 0.159154937 * r1.y;
        r1.yz = cb1[180].zw * float2(0.5,0.5) + r8.xy;
        r3.xz = float2(1,1) + cb1[180].xy;
        r3.xz = cb1[180].xy / r3.xz;
        r1.yz = r3.xz * r1.yz;
        r7.xy = r0.xx ? r1.yz : r4.yw;
        r7.xyzw = t2.SampleLevel(s2_s, r7.xyz, 0).xyzw;
        r1.yzw = r7.xyz * r3.yyy;
        r0.x = 1 + -r7.w;
        r0.x = -r3.y * r0.x + 1;
        r1.yzw = cb1[135].zzz * r1.yzw;
        r3.x = 1 + -r3.w;
        r7.xyz = r0.xxx * r11.xyz;
        r11.xyz = r1.yzw * r3.xxx + r7.xyz;
      }
      r0.x = cmp(asint(cb2[116].x) != 0);
      r0.x = r4.z ? r0.x : 0;
      if (r0.x != 0) {
        r0.x = dot(r6.xyz, r6.xyz);
        r0.x = sqrt(r0.x);
        r1.y = dot(r6.xyz, cb1[60].xyz);
        r0.x = r0.x / r1.y;
        r0.x = cb1[210].z * r0.x;
        r0.x = max(0, r0.x);
        r1.y = min(cb2[117].z, cb1[67].z);
        r1.z = cb1[67].z + -r1.y;
        r6.w = r1.x * -r2.z + r1.z;
        r1.x = dot(r6.xyw, r6.xyw);
        r1.z = rsqrt(r1.x);
        r1.x = r1.x * r1.z;
        r0.x = max(cb2[117].w, r0.x);
        r1.w = cmp(0 < r0.x);
        r2.z = r0.x * r1.z;
        r1.y = r2.z * r6.w + r1.y;
        r2.z = -r2.z * r6.w + r6.w;
        r0.x = -r0.x * r1.z + 1;
        r0.x = r0.x * r1.x;
        r3.x = -cb2[120].y + r1.y;
        r3.x = cb2[117].y * r3.x;
        r3.x = max(-127, r3.x);
        r3.x = exp2(-r3.x);
        r3.x = cb2[120].x * r3.x;
        r1.y = -cb2[118].w + r1.y;
        r1.y = cb2[118].y * r1.y;
        r1.y = max(-127, r1.y);
        r1.y = exp2(-r1.y);
        r1.y = cb2[118].z * r1.y;
        r3.x = r1.w ? r3.x : cb2[117].x;
        r1.y = r1.w ? r1.y : cb2[118].x;
        r0.x = r1.w ? r0.x : r1.x;
        r1.w = r1.w ? r2.z : r6.w;
        r2.z = cb2[117].y * r1.w;
        r2.z = max(-127, r2.z);
        r3.y = exp2(-r2.z);
        r3.y = 1 + -r3.y;
        r3.y = r3.y / r2.z;
        r3.z = -r2.z * 0.240226507 + 0.693147182;
        r2.z = cmp(0.00999999978 < abs(r2.z));
        r2.z = r2.z ? r3.y : r3.z;
        r1.w = cb2[118].y * r1.w;
        r1.w = max(-127, r1.w);
        r3.y = exp2(-r1.w);
        r3.y = 1 + -r3.y;
        r3.y = r3.y / r1.w;
        r3.z = -r1.w * 0.240226507 + 0.693147182;
        r1.w = cmp(0.00999999978 < abs(r1.w));
        r1.w = r1.w ? r3.y : r3.z;
        r1.y = r1.y * r1.w;
        r1.y = r3.x * r2.z + r1.y;
        r1.w = r1.y * r0.x;
        r3.xy = cmp(float2(0,0) < cb2[120].zw);
        if (r3.x != 0) {
          r2.z = saturate(r1.x * cb2[124].x + cb2[124].y);
          r3.xz = float2(1,-1) * cb2[123].yx;
          r7.x = dot(r6.xy, r3.xz);
          r7.y = dot(r6.xy, cb2[123].xy);
          r7.z = r6.w;
          r4.yzw = t3.SampleLevel(s3_s, r7.xyz, 0).xyz;
          r7.xyz = t3.SampleLevel(s3_s, r7.xyz, cb2[124].z).xyz;
          r4.yzw = -r7.xyz + r4.yzw;
          r4.yzw = r2.zzz * r4.yzw + r7.xyz;
          r4.yzw = cb2[119].xyz * r4.yzw;
        } else {
          r4.yzw = cb2[119].xyz;
        }
        r2.z = cmp(cb2[121].w >= 0);
        r3.x = cmp(cb2[120].z == 0.000000);
        r2.z = r2.z ? r3.x : 0;
        if (r2.z != 0) {
          r6.xyz = r6.xyw * r1.zzz;
          r1.z = saturate(dot(r6.xyz, cb2[121].xyz));
          r1.z = log2(r1.z);
          r1.z = cb2[122].w * r1.z;
          r1.z = exp2(r1.z);
          r6.xyz = cb2[122].xyz * r1.zzz;
          r0.x = -cb2[121].w + r0.x;
          r0.x = max(0, r0.x);
          r0.x = r1.y * r0.x;
          r0.x = exp2(-r0.x);
          r0.x = min(1, r0.x);
          r0.x = 1 + -r0.x;
          r6.xyz = r6.xyz * r0.xxx;
        } else {
          r6.xyz = float3(0,0,0);
        }
        r0.x = exp2(-r1.w);
        r0.x = min(1, r0.x);
        r6.w = max(cb2[119].w, r0.x);
        r0.x = cmp(cb2[120].w < r1.x);
        r0.x = r0.x ? r3.y : 0;
        r1.xyzw = r0.xxxx ? float4(1,0,0,0) : r6.wxyz;
        r0.x = 1 + -r1.x;
        r1.yzw = r4.yzw * r0.xxx + r1.yzw;
        r0.x = cmp(0 < cb2[124].w);
        if (r0.x != 0) {
          r2.xy = r2.xy / r2.ww;
          r2.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r0.x = r2.w * cb1[209].x + cb1[209].y;
          r0.x = log2(r0.x);
          r0.x = cb1[209].z * r0.x;
          r2.z = cb1[208].z * r0.x;
          r2.xyzw = t4.SampleLevel(s0_s, r2.xyz, 0).xyzw;
          r1.yzw = r1.yzw * r2.www + r2.xyz;
          r1.x = r2.w * r1.x;
        }
        r0.x = 1 + -r3.w;
        r2.xyz = r1.xxx * r11.xyz;
        r11.xyz = r1.yzw * r0.xxx + r2.xyz;
      }
      r0.x = cmp(r3.w < cb2[4].y);
      r1.w = r0.x ? 0 : r3.w;
      r1.xyz = r11.xyz * r0.yyy;
      r0.x = cmp(asint(cb2[109].y) >= 1);
      r0.y = cmp(0.99000001 < r1.w);
      r0.y = (int)r0.y | (int)r0.z;
      r0.y = r0.y ? r4.x : r0.w;
      r0.y = 9.99999975e-006 * r0.y;
      r5.x = r0.x ? r0.y : 65504;
    } else {
      r1.xyzw = float4(0,0,0,1);
      r5.x = 65504;
    }
    r0.x = cmp(asint(cb0[2].y) >= 0);
    if (r0.x != 0) {
      if (cb0[2].x != 0) {
        r0.xy = vThreadID.xy;
        r0.zw = cb0[2].yy;
      // No code for instruction (needs manual fix):
            ld_uav_typed_indexable(texture2darray)(float,float,float,float) r2.xyzw, r0.xyww, u2.xyzw
        r3.w = r2.w * r1.w;
        r3.xyz = r2.xyz * r1.www + r1.xyz;
      // No code for instruction (needs manual fix):
            store_uav_typed u2.xyzw, r0.xyzw, r3.xyzw
      } else {
        r0.xy = vThreadID.xy;
        r0.zw = cb0[2].yy;
      // No code for instruction (needs manual fix):
            store_uav_typed u2.xyzw, r0.xyzw, r1.xyzw
      }
    } else {
      if (cb0[2].x != 0) {
      // No code for instruction (needs manual fix):
            ld_uav_typed_indexable(texture2d)(float,float,float,float) r0.xyzw, vThreadID.xyyy, u0.xyzw
        r0.w = r0.w * r1.w;
        r1.xyz = r0.xyz * r1.www + r1.xyz;
        r1.w = r0.w;
      }
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyzw
    }
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, vThreadID.xyyy, r5.xyxx
  }
  return;
}