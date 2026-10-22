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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
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
      r2.w = t5.Load(r5.xyz).x;
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
        r4.xzw = cb1[5].xyz * cb0[165].xyz;
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
            r5.xyw = t1.SampleLevel(s1_s, float2(0.5,0.5), 0).xyz;
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
        r5.z = 1 / r5.z;
        r8.w = 0.00999999978 * cb1[4].x;
        r9.x = cb2[12].y * cb2[12].y;
        r9.yzw = float3(0,0,0);
        r10.xyz = float3(1,1,1);
        r10.w = r3.x;
        r11.xyz = float3(0,0,0);
        while (true) {
          r11.w = cmp((uint)r11.z >= (uint)r0.y);
          if (r11.w != 0) break;
          r12.xyz = r10.www * -r1.xyz + cb0[67].xyz;
          r13.xyz = -cb1[1].xyz * float3(100000,100000,100000) + r12.xyz;
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = -cb1[2].x * 100000 + r11.w;
          r11.w = saturate(r11.w * r3.w);
          r13.xy = float2(500000,500000) + r12.xy;
          r13.xy = r13.xy * r9.xx;
          r13.xy = t6.SampleLevel(s4_s, r13.xy, -1).xy;
          r12.w = cmp(0 >= r13.y);
          r13.y = log2(r13.y);
          r13.y = 0.25 * r13.y;
          r13.y = exp2(r13.y);
          r14.x = r12.w ? 0 : r13.y;
          r14.y = 1 + -r11.w;
          r12.w = t7.SampleLevel(s5_s, r14.xy, -1).x;
          r12.w = r13.x * r12.w;
          r13.x = cmp(r11.w < 0.0500000007);
          r13.y = cmp(0.949999988 < r11.w);
          r13.x = (int)r13.y | (int)r13.x;
          r12.w = r13.x ? 0 : r12.w;
          r13.x = cmp(0 >= r12.w);
          if (r13.x != 0) {
            r13.x = (int)r3.z + (int)r11.z;
            r13.y = r6.w * r0.x + r10.w;
            r13.x = (int)r13.x + 1;
            r10.w = r13.y;
            r11.z = r13.x;
            continue;
          }
          r13.xyz = cb2[7].xxx * r12.xyz;
          r13.xyz = r7.xyz * float3(0.150000006,0.150000006,0.150000006) + r13.xyz;
          r13.xyz = cb2[7].yyy * r13.xyz;
          r13.xyz = t8.SampleLevel(s6_s, r13.xyz, -1).xyz;
          r14.xyz = cmp(float3(0,0,0) >= r13.xyz);
          r13.xyz = log2(r13.xyz);
          r13.xyz = cb2[7].zzz * r13.xyz;
          r13.xyz = exp2(r13.xyz);
          r13.xyz = r14.xyz ? float3(0,0,0) : r13.xyz;
          r13.xyz = min(float3(1,1,1), r13.xyz);
          r14.xyz = r13.xyz * r12.www;
          r15.xyz = r12.xyz * cb2[7].xxx + r8.xyz;
          r15.xyz = cb2[7].www * r15.xyz;
          r13.w = t9.SampleLevel(s7_s, r15.xyz, -1).x;
          r14.w = cmp(0 >= r13.w);
          r13.w = log2(r13.w);
          r13.w = cb2[8].x * r13.w;
          r13.w = exp2(r13.w);
          r13.w = cb2[8].y * r13.w;
          r13.w = r14.w ? -0 : -r13.w;
          r14.w = r12.w * r13.x + r13.w;
          r13.w = cb2[8].z + r13.w;
          r13.w = saturate(r14.w / r13.w);
          r13.w = r7.w * r13.w + cb2[8].w;
          r14.w = saturate(cb2[9].x * r11.w);
          r15.x = cmp(0 >= r14.w);
          r14.w = log2(r14.w);
          r14.w = cb2[9].y * r14.w;
          r14.w = exp2(r14.w);
          r14.w = r15.x ? 0 : r14.w;
          r13.xyz = -r12.www * r13.xyz + r13.www;
          r13.xyz = r14.www * r13.xyz + r14.xyz;
          r14.xyz = cb2[3].xyz * r13.xyz;
          r14.xyz = saturate(cb2[9].zzz * r14.xyz);
          r15.xyz = cmp(float3(0,0,0) >= r14.xyz);
          r14.xyz = log2(r14.xyz);
          r14.xyz = cb2[9].www * r14.xyz;
          r14.xyz = exp2(r14.xyz);
          r14.xyz = r15.xyz ? float3(0,0,0) : r14.xyz;
          r13.xyz = cb2[6].xyz * r13.xyz;
          r13.xyz = max(float3(0,0,0), r13.xyz);
          r13.xyz = min(float3(65000,65000,65000), r13.xyz);
          r14.xyz = min(float3(1,1,1), r14.xyz);
          r14.xyz = r14.xyz * r13.xyz;
          r15.xyz = r14.xyz * r6.yyy;
          r16.xyz = r13.xyz * r6.zzz;
          r11.w = saturate(cb1[4].z + r11.w);
          r17.xyz = r11.www * r5.xyw;
          r18.xyz = cmp(float3(0,0,0) < r14.xyz);
          r11.w = (int)r18.y | (int)r18.x;
          r11.w = (int)r18.z | (int)r11.w;
          if (r11.w != 0) {
            x0[0].xyz = float3(0,0,0);
            x0[1].xyz = float3(0,0,0);
            r18.x = 0;
            r18.y = r5.z;
            while (true) {
              r11.w = cmp(1 < r18.y);
              if (r11.w != 0) break;
              r19.x = r18.y * r18.y;
              r11.w = r18.y * r18.y + -r18.x;
              r12.w = r11.w * 0.5 + r18.x;
              r12.w = cb1[4].x * r12.w;
              r20.xyz = cb0[161].xyz * r12.www + r12.xyz;
              r21.xyz = -cb1[1].xyz * float3(100000,100000,100000) + r20.xyz;
              r12.w = dot(r21.xyz, r21.xyz);
              r12.w = sqrt(r12.w);
              r12.w = -cb1[2].x * 100000 + r12.w;
              r12.w = saturate(r12.w * r3.w);
              r18.zw = float2(500000,500000) + r20.xy;
              r18.zw = r18.zw * r9.xx;
              r18.zw = t6.SampleLevel(s4_s, r18.zw, -1).xy;
              r13.w = cmp(0 >= r18.w);
              r14.w = log2(r18.w);
              r14.w = 0.25 * r14.w;
              r14.w = exp2(r14.w);
              r21.x = r13.w ? 0 : r14.w;
              r21.y = 1 + -r12.w;
              r13.w = t7.SampleLevel(s5_s, r21.xy, -1).x;
              r13.w = r18.z * r13.w;
              r14.w = cmp(r12.w < 0.0500000007);
              r15.w = cmp(0.949999988 < r12.w);
              r14.w = (int)r14.w | (int)r15.w;
              r13.w = r14.w ? 0 : r13.w;
              r14.w = cmp(0 >= r13.w);
              if (r14.w != 0) {
                r19.y = r18.y + r5.z;
                r18.xy = r19.xy;
                continue;
              }
              r21.xyz = cb2[7].xxx * r20.xyz;
              r21.xyz = r7.xyz * float3(0.150000006,0.150000006,0.150000006) + r21.xyz;
              r21.xyz = cb2[7].yyy * r21.xyz;
              r21.xyz = t8.SampleLevel(s6_s, r21.xyz, -1).xyz;
              r22.xyz = cmp(float3(0,0,0) >= r21.xyz);
              r21.xyz = log2(r21.xyz);
              r21.xyz = cb2[7].zzz * r21.xyz;
              r21.xyz = exp2(r21.xyz);
              r21.xyz = r22.xyz ? float3(0,0,0) : r21.xyz;
              r21.xyz = min(float3(1,1,1), r21.xyz);
              r22.xyz = r21.xyz * r13.www;
              r20.xyz = r20.xyz * cb2[7].xxx + r8.xyz;
              r20.xyz = cb2[7].www * r20.xyz;
              r14.w = t9.SampleLevel(s7_s, r20.xyz, -1).x;
              r15.w = cmp(0 >= r14.w);
              r14.w = log2(r14.w);
              r14.w = cb2[8].x * r14.w;
              r14.w = exp2(r14.w);
              r14.w = cb2[8].y * r14.w;
              r14.w = r15.w ? -0 : -r14.w;
              r15.w = r13.w * r21.x + r14.w;
              r14.w = cb2[8].z + r14.w;
              r14.w = saturate(r15.w / r14.w);
              r14.w = r7.w * r14.w + cb2[8].w;
              r12.w = saturate(cb2[9].x * r12.w);
              r15.w = cmp(0 >= r12.w);
              r12.w = log2(r12.w);
              r12.w = cb2[9].y * r12.w;
              r12.w = exp2(r12.w);
              r12.w = r15.w ? 0 : r12.w;
              r20.xyz = -r13.www * r21.xyz + r14.www;
              r20.xyz = r12.www * r20.xyz + r22.xyz;
              r20.xyz = cb2[6].xyz * r20.xyz;
              r20.xyz = max(float3(0,0,0), r20.xyz);
              r20.xyz = min(float3(65000,65000,65000), r20.xyz);
              r21.xyz = r20.xyz * r6.zzz;
              r22.xyz = x0[0].xyz;
              r20.xyz = r20.xyz * r11.www + r22.xyz;
              x0[0].xyz = r20.xyz;
              r20.xyz = x0[1].xyz;
              r20.xyz = r21.xyz * r11.www + r20.xyz;
              x0[1].xyz = r20.xyz;
              r19.z = r18.y + r5.z;
              r18.xy = r19.xz;
            }
            r12.xyz = x0[0].xyz;
            r12.xyz = -r12.xyz * r8.www;
            r12.xyz = float3(1.44269502,1.44269502,1.44269502) * r12.xyz;
            r12.xyz = exp2(r12.xyz);
            r18.xyz = x0[1].xyz;
            r18.xyz = -r18.xyz * r8.www;
            r18.xyz = float3(1.44269502,1.44269502,1.44269502) * r18.xyz;
            r18.xyz = exp2(r18.xyz);
          } else {
            r12.xyz = float3(1,1,1);
            r18.xyz = float3(1,1,1);
          }
          r19.xyz = cmp(float3(0,0,0) < r13.xyz);
          r11.w = (int)r19.y | (int)r19.x;
          r11.w = (int)r19.z | (int)r11.w;
          r12.w = min(r10.y, r10.z);
          r12.w = min(r12.w, r10.x);
          r19.x = r10.w * r12.w + r11.x;
          r19.y = r12.w + r11.y;
          r19.xy = r11.ww ? r19.xy : r11.xy;
          r18.xyz = r18.xyz * r4.xzw;
          r18.xyz = r18.xyz * r0.www;
          r15.xyz = r18.xyz * r15.xyz;
          r16.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r16.xyz);
          r18.xyz = -r16.xyz * r6.xxx;
          r18.xyz = float3(1.44269502,1.44269502,1.44269502) * r18.xyz;
          r18.xyz = exp2(r18.xyz);
          r15.xyz = -r15.xyz * r18.xyz + r15.xyz;
          r15.xyz = r15.xyz / r16.xyz;
          r15.xyz = r10.xyz * r15.xyz + r9.yzw;
          r12.xyz = r12.xyz * r4.xzw;
          r12.xyz = r12.xyz * r2.www + r17.xyz;
          r12.xyz = r12.xyz * r14.xyz;
          r13.xyz = max(float3(9.99999997e-007,9.99999997e-007,9.99999997e-007), r13.xyz);
          r14.xyz = -r13.xyz * r6.xxx;
          r14.xyz = float3(1.44269502,1.44269502,1.44269502) * r14.xyz;
          r14.xyz = exp2(r14.xyz);
          r12.xyz = -r12.xyz * r14.xyz + r12.xyz;
          r12.xyz = r12.xyz / r13.xyz;
          r12.xyz = r10.xyz * r12.xyz + r15.xyz;
          r13.xyz = r14.xyz * r10.xyz;
          r14.xyz = cmp(r13.xyz < cb1[4].yyy);
          r11.w = r14.y ? r14.x : 0;
          r11.w = r14.z ? r11.w : 0;
          if (r11.w != 0) {
            r9.yzw = r12.xyz;
            r10.xyz = r13.xyz;
            r11.xy = r19.xy;
            break;
          }
          r10.w = r10.w + r0.x;
          r9.yzw = r12.xyz;
          r10.xyz = r13.xyz;
          r11.xy = r19.xy;
          r11.z = (int)r11.z + 1;
        }
      } else {
        r9.yzw = float3(0,0,0);
        r10.xyz = float3(1,1,1);
        r11.xy = float2(0,0);
      }
    } else {
      r9.yzw = float3(0,0,0);
      r10.xyz = float3(1,1,1);
      o1.y = 65504;
      r11.xy = float2(0,0);
      r0.z = -1;
    }
    r0.x = (int)r1.w | (int)r0.z;
  } else {
    r9.yzw = float3(0,0,0);
    r10.xyz = float3(1,1,1);
    o1.y = 65504;
    r3.y = -1e+009;
    r11.xy = float2(0,0);
    r0.x = -1;
  }
  r0.x = (int)r4.y | (int)r0.x;
  if (r0.x == 0) {
    r0.x = cmp(0 != cb0[184].x);
    r0.y = r0.x ? cb0[184].y : cb0[135].y;
    r0.z = cmp(r11.y == 0.000000);
    r0.w = max(1.00000001e-010, r11.y);
    r0.w = r11.x / r0.w;
    r1.w = r0.z ? r3.y : r0.w;
    r4.xyz = r1.www * -r1.xyz;
    r3.xzw = r1.www * -r1.xyz + cb0[67].xyz;
    r5.xyz = cb0[5].xyw * r3.zzz;
    r5.xyz = r3.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r3.www * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r1.x = dot(r10.xyz, float3(0.333333343,0.333333343,0.333333343));
    r1.y = cmp(asint(cb1[115].y) != 0);
    r2.w = cmp(0 < r11.y);
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
      r6.xyzw = t2.SampleLevel(s2_s, r7.xyz, 0).xyzw;
      r2.xyz = r6.xyz * r3.xxx;
      r0.x = 1 + -r6.w;
      r0.x = -r3.x * r0.x + 1;
      r2.xyz = cb0[135].zzz * r2.xyz;
      r1.y = 1 + -r1.x;
      r3.xzw = r0.xxx * r9.yzw;
      r9.yzw = r2.xyz * r1.yyy + r3.xzw;
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
        r3.xzw = t3.SampleLevel(s3_s, r6.xyz, 0).xyz;
        r6.xyz = t3.SampleLevel(s3_s, r6.xyz, cb1[124].z).xyz;
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
        r4.xyzw = t4.SampleLevel(s0_s, r4.xyz, 0).xyzw;
        r1.yzw = r1.yzw * r4.www + r4.xyz;
        r2.x = r4.w * r2.x;
      }
      r0.x = 1 + -r1.x;
      r2.xyz = r2.xxx * r9.yzw;
      r9.yzw = r1.yzw * r0.xxx + r2.xyz;
    }
    r0.x = cmp(r1.x < cb1[4].y);
    r0.x = r0.x ? 0 : r1.x;
    o0.xyz = r9.yzw * r0.yyy;
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