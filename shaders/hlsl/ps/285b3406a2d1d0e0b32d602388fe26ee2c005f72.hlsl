// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[125];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[211];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float2 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[2];
  r0.xyzw = cb0[45].xyzw * v3.yyyy;
  r0.xyzw = v3.xxxx * cb0[44].xyzw + r0.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r0.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.w = dot(-r1.xyz, -r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = -r1.xyz * r1.www;
  r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
  r3.xyz = cb0[67].xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -cb1[1].xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r2.w = dot(-r1.xyz, -r1.xyz);
  r3.x = dot(-r1.xyz, r3.xyz);
  r3.x = r3.x + r3.x;
  r3.y = -cb1[2].y * cb1[2].y + r1.w;
  r3.z = r3.x * r3.x;
  r3.w = 4 * r2.w;
  r3.y = -r3.w * r3.y + r3.z;
  r4.x = cmp(r3.y >= 0);
  r4.y = ~(int)r4.x;
  if (r4.x != 0) {
    r3.y = sqrt(r3.y);
    r4.xz = r3.yy * float2(-1,1) + -r3.xx;
    r2.w = r2.w + r2.w;
    r4.xz = r4.xz / r2.ww;
    r1.w = -cb1[2].x * cb1[2].x + r1.w;
    r1.w = -r3.w * r1.w + r3.z;
    r3.y = cmp(r1.w >= 0);
    r1.w = sqrt(r1.w);
    r3.xz = r1.ww * float2(-1,1) + -r3.xx;
    r3.xz = r3.xz / r2.ww;
    r3.xz = r3.yy ? r3.xz : 0;
    r5.xy = cmp(float2(0,0) < r4.xz);
    r1.w = r5.y ? r5.x : 0;
    r2.w = min(r4.x, r4.z);
    r3.w = max(r4.x, r4.z);
    r1.w = r1.w ? r2.w : r3.w;
    r5.xy = cmp(float2(0,0) < r3.xz);
    r3.w = r5.y ? r5.x : 0;
    r4.w = min(r3.x, r3.z);
    r3.x = max(r3.x, r3.z);
    r3.x = r3.w ? r4.w : r3.x;
    r2.w = max(0, r2.w);
    r1.w = r3.w ? r2.w : r1.w;
    r5.x = min(r3.x, r1.w);
    r5.y = max(r3.x, r1.w);
    r3.xy = r3.yy ? r5.xy : r4.xz;
    r3.xy = max(float2(0,0), r3.xy);
    r3.yz = float2(100000,100000) * r3.yx;
    r1.w = cmp(r3.z >= r3.y);
    r2.w = cmp(cb1[2].z < r3.z);
    r1.w = (int)r1.w | (int)r2.w;
    if (r1.w == 0) {
      r4.xz = float2(-0.5,-0.5) + v3.xy;
      r4.xz = (uint2)r4.xz;
      r5.xy = mad((int2)r4.xz, asint(cb1[108].xy), asint(cb1[108].zw));
      r5.zw = float2(0,0);
      r2.w = t6.Load(r5.xyz).x;
      r2.w = max(9.99999996e-013, r2.w);
      r0.xyzw = r2.wwww * cb0[46].xyzw + r0.xyzw;
      r0.xyzw = cb0[47].xyzw + r0.xyzw;
      r0.xyz = r0.xyz / r0.www;
      r0.xyz = -cb0[70].xyz + r0.xyz;
      r0.xyz = -cb0[67].xyz + r0.xyz;
      r0.x = dot(r0.xyz, r0.xyz);
      r0.x = sqrt(r0.x);
      o1.y = 9.99999975e-006 * r0.x;
      r0.y = cmp(asint(cb1[109].y) >= 2);
      r0.z = cmp(r0.x < r3.z);
      r0.z = r0.z ? r0.y : 0;
      if (r0.z == 0) {
        r0.x = min(r3.y, r0.x);
        r0.x = r0.y ? r0.x : r3.y;
        r4.xzw = cb1[5].xyz * cb0[163].xyz;
        r4.xzw = cb1[115].www ? r4.xzw : float3(0,0,0);
        r0.x = -r3.x * 100000 + r0.x;
        r0.x = min(cb1[2].w, r0.x);
        r3.y = r3.x * 100000 + r0.x;
        r5.xyz = asint(cb1[3].xyw);
        r0.y = saturate(cb1[3].z * r0.x);
        r0.y = r5.y * r0.y;
        r0.y = max(r5.x, r0.y);
        r0.y = (uint)r0.y;
        r0.w = (uint)r0.y;
        r0.x = r0.x / r0.w;
        if (cb1[115].z != 0) {
          r0.w = cmp(0 < cb0[179].x);
          if (r0.w != 0) {
            r5.xyw = t2.SampleLevel(s2_s, float2(0.5,0.5), 0).xyz;
          } else {
            r6.x = t0[0].val[12/4];
            r6.y = t0[1].val[12/4];
            r6.z = t0[2].val[12/4];
            r5.xyw = max(float3(0,0,0), r6.xyz);
          }
        } else {
          r5.xyw = float3(0,0,0);
        }
        r0.w = saturate(cb2[12].x);
        r2.w = dot(cb0[161].xyz, -r1.xyz);
        r3.w = max(-0.999000013, cb2[10].w);
        r3.w = min(0.999000013, r3.w);
        r6.x = max(-0.999000013, cb2[11].x);
        r6.x = min(0.999000013, r6.x);
        r6.yzw = saturate(cb2[11].zwy);
        r7.x = -r3.w * r3.w + 1;
        r7.y = r3.w * r3.w + 1;
        r3.w = dot(-r2.ww, r3.ww);
        r3.w = r7.y + r3.w;
        r7.y = 12.566371 * r3.w;
        r3.w = sqrt(r3.w);
        r3.w = r7.y * r3.w;
        r3.w = r7.x / r3.w;
        r7.x = -r6.x * r6.x + 1;
        r7.y = r6.x * r6.x + 1;
        r2.w = dot(-r2.ww, r6.xx);
        r2.w = r7.y + r2.w;
        r6.x = 12.566371 * r2.w;
        r2.w = sqrt(r2.w);
        r2.w = r6.x * r2.w;
        r2.w = r7.x / r2.w;
        r2.w = r2.w + -r3.w;
        r2.w = r6.w * r2.w + r3.w;
        r3.w = -0.0795774683 + r2.w;
        r0.w = r0.w * r3.w + 0.0795774683;
        r3.w = 100000 * cb1[2].x;
        r3.w = cb1[2].y * 100000 + -r3.w;
        r3.w = 1 / r3.w;
        r6.xw = float2(0.00999999978,0.5) * r0.xx;
        r3.x = r3.x * 100000 + r6.w;
        r7.xy = (int2)v3.xy;
        r7.xy = (int2)r7.xy * int2(0x19660d,0x19660d);
        r7.z = asint(cb0[144].y) * 0x0019660d;
        r7.xyz = (int3)r7.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
        r6.w = mad((int)r7.y, (int)r7.z, (int)r7.x);
        r7.x = mad((int)r7.z, (int)r6.w, (int)r7.y);
        r7.y = mad((int)r6.w, (int)r7.x, (int)r7.z);
        r6.w = mad((int)r7.x, (int)r7.y, (int)r6.w);
        r6.w = (uint)r6.w >> 16;
        r6.w = (uint)r6.w;
        r6.w = r6.w * r0.x;
        r3.z = r6.w * 1.52587891e-005 + r3.z;
        r3.x = cb1[110].x ? r3.x : r3.z;
        r3.z = asint(cb1[115].x) + -1;
        r6.w = asint(cb1[115].x);
        r7.xyz = cb2[2].xyz * cb0[142].zzz;
        r8.xyz = float3(-0.100000001,-0.100000001,-0.100000001) * r7.xyz;
        r7.w = cb2[8].z + -cb2[8].w;
        r8.w = dot(cb0[161].xyz, cb0[161].xyz);
        r9.xy = cb0[179].zw * cb0[179].zw;
        r9.z = 4 * r8.w;
        r8.w = r8.w + r8.w;
        r9.x = cb0[179].w * cb0[179].w + -r9.x;
        r9.x = max(0, r9.x);
        r9.x = sqrt(r9.x);
        r5.z = 1 / r5.z;
        r9.w = 0.00999999978 * cb1[4].x;
        r10.x = cb2[12].y * cb2[12].y;
        r10.yzw = float3(0,0,0);
        r11.xyz = float3(1,1,1);
        r11.w = r3.x;
        r12.xyz = float3(0,0,0);
        while (true) {
          r12.w = cmp((uint)r12.z >= (uint)r0.y);
          if (r12.w != 0) break;
          r13.xyz = r11.www * -r1.xyz + cb0[67].xyz;
          r14.xyz = -cb1[1].xyz * float3(100000,100000,100000) + r13.xyz;
          r12.w = dot(r14.xyz, r14.xyz);
          r12.w = sqrt(r12.w);
          r12.w = -cb1[2].x * 100000 + r12.w;
          r12.w = saturate(r12.w * r3.w);
          r14.xy = float2(500000,500000) + r13.xy;
          r14.xy = r14.xy * r10.xx;
          r14.xy = t7.SampleLevel(s5_s, r14.xy, -1).xy;
          r13.w = cmp(0 >= r14.y);
          r14.y = log2(r14.y);
          r14.y = 0.25 * r14.y;
          r14.y = exp2(r14.y);
          r15.x = r13.w ? 0 : r14.y;
          r15.y = 1 + -r12.w;
          r13.w = t8.SampleLevel(s6_s, r15.xy, -1).x;
          r13.w = r14.x * r13.w;
          r14.x = cmp(r12.w < 0.0500000007);
          r14.y = cmp(0.949999988 < r12.w);
          r14.x = (int)r14.y | (int)r14.x;
          r13.w = r14.x ? 0 : r13.w;
          r14.x = cmp(0 >= r13.w);
          if (r14.x != 0) {
            r14.x = (int)r3.z + (int)r12.z;
            r14.y = r6.w * r0.x + r11.w;
            r14.x = (int)r14.x + 1;
            r11.w = r14.y;
            r12.z = r14.x;
            continue;
          }
          r14.xyz = cb2[7].xxx * r13.xyz;
          r14.xyz = r7.xyz * float3(0.150000006,0.150000006,0.150000006) + r14.xyz;
          r14.xyz = cb2[7].yyy * r14.xyz;
          r14.xyz = t9.SampleLevel(s7_s, r14.xyz, -1).xyz;
          r15.xyz = cmp(float3(0,0,0) >= r14.xyz);
          r14.xyz = log2(r14.xyz);
          r14.xyz = cb2[7].zzz * r14.xyz;
          r14.xyz = exp2(r14.xyz);
          r14.xyz = r15.xyz ? float3(0,0,0) : r14.xyz;
          r14.xyz = min(float3(1,1,1), r14.xyz);
          r15.xyz = r14.xyz * r13.www;
          r16.xyz = r13.xyz * cb2[7].xxx + r8.xyz;
          r16.xyz = cb2[7].www * r16.xyz;
          r14.w = t10.SampleLevel(s8_s, r16.xyz, -1).x;
          r15.w = cmp(0 >= r14.w);
          r14.w = log2(r14.w);
          r14.w = cb2[8].x * r14.w;
          r14.w = exp2(r14.w);
          r14.w = cb2[8].y * r14.w;
          r14.w = r15.w ? -0 : -r14.w;
          r15.w = r13.w * r14.x + r14.w;
          r14.w = cb2[8].z + r14.w;
          r14.w = saturate(r15.w / r14.w);
          r14.w = r7.w * r14.w + cb2[8].w;
          r15.w = saturate(cb2[9].x * r12.w);
          r16.x = cmp(0 >= r15.w);
          r15.w = log2(r15.w);
          r15.w = cb2[9].y * r15.w;
          r15.w = exp2(r15.w);
          r15.w = r16.x ? 0 : r15.w;
          r14.xyz = -r13.www * r14.xyz + r14.www;
          r14.xyz = r15.www * r14.xyz + r15.xyz;
          r15.xyz = cb2[3].xyz * r14.xyz;
          r15.xyz = saturate(cb2[9].zzz * r15.xyz);
          r16.xyz = cmp(float3(0,0,0) >= r15.xyz);
          r15.xyz = log2(r15.xyz);
          r15.xyz = cb2[9].www * r15.xyz;
          r15.xyz = exp2(r15.xyz);
          r15.xyz = r16.xyz ? float3(0,0,0) : r15.xyz;
          r14.xyz = cb2[6].xyz * r14.xyz;
          r14.xyz = max(float3(0,0,0), r14.xyz);
          r14.xyz = min(float3(65000,65000,65000), r14.xyz);
          r15.xyz = min(float3(1,1,1), r15.xyz);
          r16.xyz = -cb0[173].xyz + r13.xyz;
          r16.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r16.xyz;
          r13.w = dot(r16.xyz, r16.xyz);
          r14.w = dot(cb0[161].xyz, r16.xyz);
          r14.w = r14.w + r14.w;
          r15.w = -cb0[179].z * cb0[179].z + r13.w;
          r16.w = r15.w * r9.z;
          r16.w = r14.w * r14.w + -r16.w;
          r17.x = cmp(r16.w >= 0);
          r16.w = sqrt(r16.w);
          r17.yz = r16.ww * float2(-1,1) + -r14.ww;
          r17.yz = r17.yz / r8.ww;
          r17.xy = r17.xx ? r17.yz : float2(-1,-1);
          r17.xy = cmp(float2(0,0) < r17.xy);
          r14.w = (int)r17.y | (int)r17.x;
          if (r14.w == 0) {
            r14.w = sqrt(r13.w);
            r16.xyz = r16.xyz / r14.www;
            r16.x = dot(cb0[161].xyz, r16.xyz);
            r15.w = max(0, r15.w);
            r15.w = sqrt(r15.w);
            r16.y = r16.x * r16.x + -1;
            r13.w = r13.w * r16.y + r9.y;
            r13.w = sqrt(r13.w);
            r13.w = -r14.w * r16.x + r13.w;
            r13.w = max(0, r13.w);
            r14.w = cb0[179].w + -r14.w;
            r16.x = r15.w + r9.x;
            r13.w = -r14.w + r13.w;
            r14.w = r16.x + -r14.w;
            r16.x = r13.w / r14.w;
            r16.y = r15.w / r9.x;
            r16.xyz = t1.SampleLevel(s1_s, r16.xy, 0).xyz;
          } else {
            r16.xyz = float3(0,0,0);
          }
          r15.xyz = r15.xyz * r14.xyz;
          r17.xyz = r15.xyz * r6.yyy;
          r18.xyz = r14.xyz * r6.zzz;
          r12.w = saturate(cb1[4].z + r12.w);
          r19.xyz = r12.www * r5.xyw;
          r20.xyz = cmp(float3(0,0,0) < r15.xyz);
          r12.w = (int)r20.y | (int)r20.x;
          r12.w = (int)r20.z | (int)r12.w;
          if (r12.w != 0) {
            x0[0].xyz = float3(0,0,0);
            x0[1].xyz = float3(0,0,0);
            r20.x = 0;
            r20.y = r5.z;
            while (true) {
              r12.w = cmp(1 < r20.y);
              if (r12.w != 0) break;
              r21.x = r20.y * r20.y;
              r12.w = r20.y * r20.y + -r20.x;
              r13.w = r12.w * 0.5 + r20.x;
              r13.w = cb1[4].x * r13.w;
              r22.xyz = cb0[161].xyz * r13.www + r13.xyz;
              r23.xyz = -cb1[1].xyz * float3(100000,100000,100000) + r22.xyz;
              r13.w = dot(r23.xyz, r23.xyz);
              r13.w = sqrt(r13.w);
              r13.w = -cb1[2].x * 100000 + r13.w;
              r13.w = saturate(r13.w * r3.w);
              r20.zw = float2(500000,500000) + r22.xy;
              r20.zw = r20.zw * r10.xx;
              r20.zw = t7.SampleLevel(s5_s, r20.zw, -1).xy;
              r14.w = cmp(0 >= r20.w);
              r15.w = log2(r20.w);
              r15.w = 0.25 * r15.w;
              r15.w = exp2(r15.w);
              r23.x = r14.w ? 0 : r15.w;
              r23.y = 1 + -r13.w;
              r14.w = t8.SampleLevel(s6_s, r23.xy, -1).x;
              r14.w = r20.z * r14.w;
              r15.w = cmp(r13.w < 0.0500000007);
              r16.w = cmp(0.949999988 < r13.w);
              r15.w = (int)r15.w | (int)r16.w;
              r14.w = r15.w ? 0 : r14.w;
              r15.w = cmp(0 >= r14.w);
              if (r15.w != 0) {
                r21.y = r20.y + r5.z;
                r20.xy = r21.xy;
                continue;
              }
              r23.xyz = cb2[7].xxx * r22.xyz;
              r23.xyz = r7.xyz * float3(0.150000006,0.150000006,0.150000006) + r23.xyz;
              r23.xyz = cb2[7].yyy * r23.xyz;
              r23.xyz = t9.SampleLevel(s7_s, r23.xyz, -1).xyz;
              r24.xyz = cmp(float3(0,0,0) >= r23.xyz);
              r23.xyz = log2(r23.xyz);
              r23.xyz = cb2[7].zzz * r23.xyz;
              r23.xyz = exp2(r23.xyz);
              r23.xyz = r24.xyz ? float3(0,0,0) : r23.xyz;
              r23.xyz = min(float3(1,1,1), r23.xyz);
              r24.xyz = r23.xyz * r14.www;
              r22.xyz = r22.xyz * cb2[7].xxx + r8.xyz;
              r22.xyz = cb2[7].www * r22.xyz;
              r15.w = t10.SampleLevel(s8_s, r22.xyz, -1).x;
              r16.w = cmp(0 >= r15.w);
              r15.w = log2(r15.w);
              r15.w = cb2[8].x * r15.w;
              r15.w = exp2(r15.w);
              r15.w = cb2[8].y * r15.w;
              r15.w = r16.w ? -0 : -r15.w;
              r16.w = r14.w * r23.x + r15.w;
              r15.w = cb2[8].z + r15.w;
              r15.w = saturate(r16.w / r15.w);
              r15.w = r7.w * r15.w + cb2[8].w;
              r13.w = saturate(cb2[9].x * r13.w);
              r16.w = cmp(0 >= r13.w);
              r13.w = log2(r13.w);
              r13.w = cb2[9].y * r13.w;
              r13.w = exp2(r13.w);
              r13.w = r16.w ? 0 : r13.w;
              r22.xyz = -r14.www * r23.xyz + r15.www;
              r22.xyz = r13.www * r22.xyz + r24.xyz;
              r22.xyz = cb2[6].xyz * r22.xyz;
              r22.xyz = max(float3(0,0,0), r22.xyz);
              r22.xyz = min(float3(65000,65000,65000), r22.xyz);
              r23.xyz = r22.xyz * r6.zzz;
              r24.xyz = x0[0].xyz;
              r22.xyz = r22.xyz * r12.www + r24.xyz;
              x0[0].xyz = r22.xyz;
              r22.xyz = x0[1].xyz;
              r22.xyz = r23.xyz * r12.www + r22.xyz;
              x0[1].xyz = r22.xyz;
              r21.z = r20.y + r5.z;
              r20.xy = r21.xz;
            }
            r13.xyz = x0[0].xyz;
            r13.xyz = -r13.xyz * r9.www;
            r13.xyz = float3(1.44269502,1.44269502,1.44269502) * r13.xyz;
            r13.xyz = exp2(r13.xyz);
            r13.xyz = r16.xyz * r13.xyz;
            r20.xyz = x0[1].xyz;
            r20.xyz = -r20.xyz * r9.www;
            r20.xyz = float3(1.44269502,1.44269502,1.44269502) * r20.xyz;
            r20.xyz = exp2(r20.xyz);
            r16.xyz = r20.xyz * r16.xyz;
          } else {
            r13.xyz = r16.xyz;
          }
          r20.xyz = cmp(float3(0,0,0) < r14.xyz);
          r12.w = (int)r20.y | (int)r20.x;
          r12.w = (int)r20.z | (int)r12.w;
          r13.w = min(r11.y, r11.z);
          r13.w = min(r13.w, r11.x);
          r20.x = r11.w * r13.w + r12.x;
          r20.y = r13.w + r12.y;
          r20.xy = r12.ww ? r20.xy : r12.xy;
          r16.xyz = r16.xyz * r4.xzw;
          r16.xyz = r16.xyz * r0.www;
          r16.xyz = r16.xyz * r17.xyz;
          r17.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r18.xyz);
          r18.xyz = -r17.xyz * r6.xxx;
          r18.xyz = float3(1.44269502,1.44269502,1.44269502) * r18.xyz;
          r18.xyz = exp2(r18.xyz);
          r16.xyz = -r16.xyz * r18.xyz + r16.xyz;
          r16.xyz = r16.xyz / r17.xyz;
          r16.xyz = r11.xyz * r16.xyz + r10.yzw;
          r13.xyz = r13.xyz * r4.xzw;
          r13.xyz = r13.xyz * r2.www + r19.xyz;
          r13.xyz = r13.xyz * r15.xyz;
          r14.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r14.xyz);
          r15.xyz = -r14.xyz * r6.xxx;
          r15.xyz = float3(1.44269502,1.44269502,1.44269502) * r15.xyz;
          r15.xyz = exp2(r15.xyz);
          r13.xyz = -r13.xyz * r15.xyz + r13.xyz;
          r13.xyz = r13.xyz / r14.xyz;
          r13.xyz = r11.xyz * r13.xyz + r16.xyz;
          r14.xyz = r15.xyz * r11.xyz;
          r15.xyz = cmp(r14.xyz < cb1[4].yyy);
          r12.w = r15.y ? r15.x : 0;
          r12.w = r15.z ? r12.w : 0;
          if (r12.w != 0) {
            r10.yzw = r13.xyz;
            r11.xyz = r14.xyz;
            r12.xy = r20.xy;
            break;
          }
          r11.w = r11.w + r0.x;
          r10.yzw = r13.xyz;
          r11.xyz = r14.xyz;
          r12.xy = r20.xy;
          r12.z = (int)r12.z + 1;
        }
      } else {
        r10.yzw = float3(0,0,0);
        r11.xyz = float3(1,1,1);
        r12.xy = float2(0,0);
      }
    } else {
      r10.yzw = float3(0,0,0);
      r11.xyz = float3(1,1,1);
      o1.y = 65504;
      r12.xy = float2(0,0);
      r0.z = -1;
    }
    r0.x = (int)r1.w | (int)r0.z;
  } else {
    r10.yzw = float3(0,0,0);
    r11.xyz = float3(1,1,1);
    o1.y = 65504;
    r3.y = -1e+009;
    r12.xy = float2(0,0);
    r0.x = -1;
  }
  r0.x = (int)r4.y | (int)r0.x;
  if (r0.x == 0) {
    r0.x = cmp(0 != cb0[184].x);
    r0.y = r0.x ? cb0[184].y : cb0[135].y;
    r0.z = cmp(r12.y == 0.000000);
    r0.w = max(1.00000001e-010, r12.y);
    r0.w = r12.x / r0.w;
    r1.w = r0.z ? r3.y : r0.w;
    r4.xyz = r1.www * -r1.xyz;
    r3.xzw = r1.www * -r1.xyz + cb0[67].xyz;
    r5.xyz = cb0[5].xyw * r3.zzz;
    r5.xyz = r3.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r3.www * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r1.x = dot(r11.xyz, float3(0.333333343,0.333333343,0.333333343));
    r1.y = cmp(asint(cb1[115].y) != 0);
    r2.w = cmp(0 < r12.y);
    r1.y = r1.y ? r2.w : 0;
    if (r1.y != 0) {
      r6.xy = r5.xy / r5.zz;
      r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r2.xyz = r3.xzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r2.xyz;
      r1.y = dot(r2.xyz, r2.xyz);
      r3.x = sqrt(r1.y);
      r3.x = -cb0[181].x + r3.x;
      r3.x = max(0, r3.x);
      r3.x = cb0[182].x * r3.x;
      r3.x = cb0[181].z * r3.x;
      r7.z = sqrt(r3.x);
      r3.x = cb0[181].y * r7.z;
      r3.z = cmp(r3.x < 0.707106769);
      r3.x = dot(r3.xx, r3.xx);
      r3.x = min(1, r3.x);
      r3.x = r3.z ? r3.x : 1;
      r1.y = rsqrt(r1.y);
      r2.xyz = r2.xyz * r1.yyy;
      r1.y = -r2.z * r2.z + 1;
      r1.y = sqrt(r1.y);
      r8.y = r2.z * 0.5 + 0.5;
      r2.xy = r2.xy / r1.yy;
      r1.y = 1 + -abs(r2.x);
      r1.y = sqrt(r1.y);
      r2.z = abs(r2.x) * -0.0187292993 + 0.0742610022;
      r2.z = r2.z * abs(r2.x) + -0.212114394;
      r2.z = r2.z * abs(r2.x) + 1.57072878;
      r3.z = r2.z * r1.y;
      r3.z = r3.z * -2 + 3.14159274;
      r2.x = cmp(r2.x < -r2.x);
      r2.x = r2.x ? r3.z : 0;
      r1.y = r2.z * r1.y + r2.x;
      r2.x = cmp(r2.y < 0);
      r2.y = 6.28318548 + -r1.y;
      r1.y = r2.x ? r2.y : r1.y;
      r8.x = 0.159154937 * r1.y;
      r2.xy = cb0[180].zw * float2(0.5,0.5) + r8.xy;
      r3.zw = float2(1,1) + cb0[180].xy;
      r3.zw = cb0[180].xy / r3.zw;
      r2.xy = r3.zw * r2.xy;
      r7.xy = r0.xx ? r2.xy : r6.xy;
      r6.xyzw = t3.SampleLevel(s3_s, r7.xyz, 0).xyzw;
      r2.xyz = r6.xyz * r3.xxx;
      r0.x = 1 + -r6.w;
      r0.x = -r3.x * r0.x + 1;
      r2.xyz = cb0[135].zzz * r2.xyz;
      r1.y = 1 + -r1.x;
      r3.xzw = r0.xxx * r10.yzw;
      r10.yzw = r2.xyz * r1.yyy + r3.xzw;
    }
    r0.x = cmp(asint(cb1[116].x) != 0);
    r0.x = r2.w ? r0.x : 0;
    if (r0.x != 0) {
      r0.x = dot(r4.xyz, r4.xyz);
      r0.x = sqrt(r0.x);
      r1.y = dot(r4.xyz, cb0[60].xyz);
      r0.x = r0.x / r1.y;
      r0.x = cb0[210].z * r0.x;
      r0.x = max(0, r0.x);
      r1.y = min(cb1[117].z, cb0[67].z);
      r2.x = cb0[67].z + -r1.y;
      r4.w = r1.w * -r1.z + r2.x;
      r1.z = dot(r4.xyw, r4.xyw);
      r1.w = rsqrt(r1.z);
      r1.z = r1.z * r1.w;
      r0.x = max(cb1[117].w, r0.x);
      r2.x = cmp(0 < r0.x);
      r2.y = r0.x * r1.w;
      r1.y = r2.y * r4.w + r1.y;
      r2.y = -r2.y * r4.w + r4.w;
      r0.x = -r0.x * r1.w + 1;
      r0.x = r0.x * r1.z;
      r2.z = -cb1[120].y + r1.y;
      r2.z = cb1[117].y * r2.z;
      r2.z = max(-127, r2.z);
      r2.z = exp2(-r2.z);
      r2.z = cb1[120].x * r2.z;
      r1.y = -cb1[118].w + r1.y;
      r1.y = cb1[118].y * r1.y;
      r1.y = max(-127, r1.y);
      r1.y = exp2(-r1.y);
      r1.y = cb1[118].z * r1.y;
      r2.z = r2.x ? r2.z : cb1[117].x;
      r1.y = r2.x ? r1.y : cb1[118].x;
      r0.x = r2.x ? r0.x : r1.z;
      r2.x = r2.x ? r2.y : r4.w;
      r2.y = cb1[117].y * r2.x;
      r2.y = max(-127, r2.y);
      r2.w = exp2(-r2.y);
      r2.w = 1 + -r2.w;
      r2.w = r2.w / r2.y;
      r3.x = -r2.y * 0.240226507 + 0.693147182;
      r2.y = cmp(0.00999999978 < abs(r2.y));
      r2.y = r2.y ? r2.w : r3.x;
      r2.x = cb1[118].y * r2.x;
      r2.x = max(-127, r2.x);
      r2.w = exp2(-r2.x);
      r2.w = 1 + -r2.w;
      r2.w = r2.w / r2.x;
      r3.x = -r2.x * 0.240226507 + 0.693147182;
      r2.x = cmp(0.00999999978 < abs(r2.x));
      r2.x = r2.x ? r2.w : r3.x;
      r1.y = r2.x * r1.y;
      r1.y = r2.z * r2.y + r1.y;
      r2.x = r1.y * r0.x;
      r2.yz = cmp(float2(0,0) < cb1[120].zw);
      if (r2.y != 0) {
        r2.y = saturate(r1.z * cb1[124].x + cb1[124].y);
        r3.xz = float2(1,-1) * cb1[123].yx;
        r6.x = dot(r4.xy, r3.xz);
        r6.y = dot(r4.xy, cb1[123].xy);
        r6.z = r4.w;
        r3.xzw = t4.SampleLevel(s4_s, r6.xyz, 0).xyz;
        r6.xyz = t4.SampleLevel(s4_s, r6.xyz, cb1[124].z).xyz;
        r3.xzw = -r6.xyz + r3.xzw;
        r3.xzw = r2.yyy * r3.xzw + r6.xyz;
        r3.xzw = cb1[119].xyz * r3.xzw;
      } else {
        r3.xzw = cb1[119].xyz;
      }
      r2.y = cmp(cb1[121].w >= 0);
      r2.w = cmp(cb1[120].z == 0.000000);
      r2.y = r2.w ? r2.y : 0;
      if (r2.y != 0) {
        r4.xyz = r4.xyw * r1.www;
        r1.w = saturate(dot(r4.xyz, cb1[121].xyz));
        r1.w = log2(r1.w);
        r1.w = cb1[122].w * r1.w;
        r1.w = exp2(r1.w);
        r4.xyz = cb1[122].xyz * r1.www;
        r0.x = -cb1[121].w + r0.x;
        r0.x = max(0, r0.x);
        r0.x = r1.y * r0.x;
        r0.x = exp2(-r0.x);
        r0.x = min(1, r0.x);
        r0.x = 1 + -r0.x;
        r4.xyz = r4.xyz * r0.xxx;
      } else {
        r4.xyz = float3(0,0,0);
      }
      r0.x = exp2(-r2.x);
      r0.x = min(1, r0.x);
      r4.w = max(cb1[119].w, r0.x);
      r0.x = cmp(cb1[120].w < r1.z);
      r0.x = r0.x ? r2.z : 0;
      r2.xyzw = r0.xxxx ? float4(1,0,0,0) : r4.wxyz;
      r0.x = 1 + -r2.x;
      r1.yzw = r3.xzw * r0.xxx + r2.yzw;
      r0.x = cmp(0 < cb1[124].w);
      if (r0.x != 0) {
        r2.yz = r5.xy / r5.zz;
        r4.xy = r2.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r0.x = r5.z * cb0[209].x + cb0[209].y;
        r0.x = log2(r0.x);
        r0.x = cb0[209].z * r0.x;
        r4.z = cb0[208].z * r0.x;
        r4.xyzw = t5.SampleLevel(s0_s, r4.xyz, 0).xyzw;
        r1.yzw = r1.yzw * r4.www + r4.xyz;
        r2.x = r4.w * r2.x;
      }
      r0.x = 1 + -r1.x;
      r2.xyz = r2.xxx * r10.yzw;
      r10.yzw = r1.yzw * r0.xxx + r2.xyz;
    }
    r0.x = cmp(r1.x < cb1[4].y);
    r0.x = r0.x ? 0 : r1.x;
    o0.xyz = r10.yzw * r0.yyy;
    r0.y = cmp(asint(cb1[109].y) >= 1);
    r1.x = cmp(0.99000001 < r0.x);
    r0.z = (int)r0.z | (int)r1.x;
    r0.z = r0.z ? r3.y : r0.w;
    r0.z = 9.99999975e-006 * r0.z;
    o1.x = r0.y ? r0.z : 65504;
    o0.w = r0.x;
  } else {
    o0.xyzw = float4(0,0,0,1);
    o1.x = 65504;
  }
  return;
}