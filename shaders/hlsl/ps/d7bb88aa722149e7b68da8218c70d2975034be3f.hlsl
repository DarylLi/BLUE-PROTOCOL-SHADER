// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[364];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[15];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r0.zw = v0.ww * r0.zw;
  r0.zw = float2(2,-2) * r0.zw;
  r1.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
  r2.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r3.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r4.xyzw = t8.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r1.w = t4.SampleLevel(s0_s, r0.xy, 0).x;
  r5.x = r1.w * cb1[65].x + cb1[65].y;
  r1.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = 1 / r1.w;
  r1.w = r5.x + r1.w;
  r5.xy = cb1[132].xy * r0.xy;
  r5.xy = (uint2)r5.xy;
  r5.z = (uint)cb1[152].x;
  r5.x = (int)r5.y + (int)r5.x;
  r5.x = (int)r5.z + (int)r5.x;
  r5.x = (int)r5.x & 1;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r5.y = dot(r1.xyz, r1.xyz);
  r5.y = rsqrt(r5.y);
  r6.xyz = r5.yyy * r1.xyz;
  r5.zw = float2(255,0.0799999982) * r2.wz;
  r2.w = round(r5.z);
  r2.w = (uint)r2.w;
  r5.z = (int)r2.w & 15;
  r7.xyzw = cmp((int4)r5.zzzz == int4(12,13,2,3));
  r7.zw = (int2)r7.yw | (int2)r7.xz;
  r8.x = r3.w * 16 + -8;
  r8.x = exp2(r8.x);
  r8.x = -0.00390625 + r8.x;
  r8.z = cb1[135].z * r8.x;
  r8.y = r3.w;
  r8.xw = float2(0,1);
  r8.xy = r7.zz ? r8.xy : r8.zw;
  r9.xyzw = cmp((int4)r5.zzzz == int4(4,5,6,7));
  r8.z = (int)r7.w | (int)r9.x;
  r8.z = (int)r9.y | (int)r8.z;
  r8.z = (int)r9.z | (int)r8.z;
  r8.z = (int)r9.w | (int)r8.z;
  r10.xy = cmp((int2)r5.zz == int2(8,9));
  r8.z = (int)r8.z | (int)r10.x;
  r8.z = (int)r7.x | (int)r8.z;
  r8.z = (int)r7.y | (int)r8.z;
  r8.z = (int)r10.y | (int)r8.z;
  r4.xyzw = (int4)r4.xyzw & (int4)r8.zzzz;
  r8.z = r10.y ? 0 : r2.x;
  r11.xyz = -r2.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r11.xyz = r8.zzz * r11.xyz + r5.www;
  r5.w = (int)r9.y | (int)r10.y;
  r8.w = cmp(0 < cb1[156].y);
  r9.y = cmp(0 < cb1[207].z);
  r8.w = r8.w ? r9.y : 0;
  r9.y = cmp(0 != cb1[156].y);
  r10.yzw = r9.yyy ? float3(1,1,1) : r3.xyz;
  r12.xy = r5.xx ? float2(1,0) : float2(0,1);
  r13.xyz = r12.yyy * r11.xyz;
  r13.w = r12.y * r2.z;
  r12.xyz = r8.www ? r12.xxx : r10.yzw;
  r11.w = r2.z;
  r13.xyzw = r8.wwww ? r13.xyzw : r11.xyzw;
  r12.w = r13.w;
  r3.w = r11.w;
  r12.xyzw = r5.wwww ? r12.xyzw : r3.xyzw;
  r14.xyzw = r7.zzzz ? r3.xyzw : r12.xyzw;
  r10.yz = r1.ww * r0.zw;
  r15.xyz = cb1[49].xyz * r10.zzz;
  r10.yzw = r10.yyy * cb1[48].xyz + r15.xyz;
  r10.yzw = r1.www * cb1[50].xyz + r10.yzw;
  r10.yzw = cb1[51].xyz + r10.yzw;
  r10.yzw = -cb1[67].xyz + r10.yzw;
  r1.w = dot(r10.yzw, r10.yzw);
  r1.w = rsqrt(r1.w);
  r10.yzw = r10.yzw * r1.www;
  r1.w = dot(r6.xyz, -r10.yzw);
  r15.x = saturate(r1.w);
  r2.z = r15.x * 0.5 + 0.5;
  r2.z = r2.z * r15.x + -1;
  r3.w = saturate(-r2.y * 1.25 + 1.25);
  r2.z = r2.z * r3.w + 1;
  r16.xyz = float3(1.11111116,1.11111116,1.11111116) * r14.xyz;
  r3.w = -1 + r15.x;
  r3.w = 0.850000024 * r3.w;
  r17.xyz = r16.xyz * r16.xyz + -r16.xyz;
  r17.xyz = r17.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r16.xyz;
  r17.xyz = float3(1,1,1) + -r17.xyz;
  r17.xyz = r3.www * r17.xyz + float3(1,1,1);
  r16.xyz = r17.xyz * r16.xyz;
  r3.w = 1 + -r15.x;
  r5.x = r3.w * r3.w;
  r5.x = r5.x * r5.x;
  r8.w = r5.x * r3.w;
  r3.w = -r5.x * r3.w + 1;
  r3.w = r3.w * 0.0399999991 + r8.w;
  r3.w = r4.x * -r3.w + 1;
  r17.xyz = r14.xyz * r3.www;
  r16.xyz = r16.xyz * r2.zzz;
  r3.w = r8.z * r4.x;
  r16.xyz = r16.xyz * float3(0.899999976,0.899999976,0.899999976) + -r17.xyz;
  r16.xyz = r3.www * r16.xyz + r17.xyz;
  r3.w = t11.SampleLevel(s5_s, r0.xy, 0).x;
  r17.xyz = cmp((int3)r5.zzz != int3(0,14,7));
  r5.xz = r17.yz ? r17.xx : 0;
  if (r5.x != 0) {
    r12.xyz = -r12.xyz * r8.zzz + r12.xyz;
    r3.xyz = r7.zzz ? r3.xyz : r12.xyz;
    r3.xyz = r3.xyz * cb1[136].www + cb1[136].xyz;
    r12.xyz = -r16.xyz * r8.zzz + r16.xyz;
    r3.xyz = r9.xxx ? r12.xyz : r3.xyz;
    if (r7.z == 0) {
      r5.x = cmp(cb0[14].x == 0.000000);
      r8.w = min(r8.y, r3.w);
      r9.y = min(1, r8.w);
      r5.x = r5.x ? r9.y : r8.w;
    } else {
      r5.x = 1;
    }
    if (r9.z != 0) {
      r12.xyz = -r6.xyz;
      r17.x = t0[0].val[0/4];
      r17.y = t0[0].val[0/4+1];
      r17.z = t0[0].val[0/4+2];
      r17.w = t0[0].val[0/4+3];
      r12.w = 1;
      r17.x = dot(r17.xyzw, r12.xyzw);
      r18.x = t0[1].val[0/4];
      r18.y = t0[1].val[0/4+1];
      r18.z = t0[1].val[0/4+2];
      r18.w = t0[1].val[0/4+3];
      r17.y = dot(r18.xyzw, r12.xyzw);
      r18.x = t0[2].val[0/4];
      r18.y = t0[2].val[0/4+1];
      r18.z = t0[2].val[0/4+2];
      r18.w = t0[2].val[0/4+3];
      r17.z = dot(r18.xyzw, r12.xyzw);
      r12.xyzw = r6.xyzz * r6.yzzx;
      r18.x = t0[3].val[0/4];
      r18.y = t0[3].val[0/4+1];
      r18.z = t0[3].val[0/4+2];
      r18.w = t0[3].val[0/4+3];
      r18.x = dot(r18.xyzw, r12.xyzw);
      r19.x = t0[4].val[0/4];
      r19.y = t0[4].val[0/4+1];
      r19.z = t0[4].val[0/4+2];
      r19.w = t0[4].val[0/4+3];
      r18.y = dot(r19.xyzw, r12.xyzw);
      r19.x = t0[5].val[0/4];
      r19.y = t0[5].val[0/4+1];
      r19.z = t0[5].val[0/4+2];
      r19.w = t0[5].val[0/4+3];
      r18.z = dot(r19.xyzw, r12.xyzw);
      r8.w = r6.y * r6.y;
      r8.w = r6.x * r6.x + -r8.w;
      r12.x = t0[6].val[0/4];
      r12.y = t0[6].val[0/4+1];
      r12.z = t0[6].val[0/4+2];
      r17.xyz = r18.xyz + r17.xyz;
      r12.xyz = r12.xyz * r8.www + r17.xyz;
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = cb1[187].xyz * r12.xyz;
      r17.xyz = r4.xyz * r4.xyz;
      r12.xyz = r12.xyz * r5.xxx;
      r12.xyz = r12.xyz * r17.xyz;
    } else {
      r12.xyz = float3(0,0,0);
    }
    r17.xyz = r4.xyz * r4.xyz;
    r18.xyz = r4.xyz * r4.xyz + r3.xyz;
    r3.xyz = r7.www ? r18.xyz : r3.xyz;
    if (r9.w != 0) {
      r9.yzw = cb1[49].xyz * r0.www;
      r9.yzw = r0.zzz * cb1[48].xyz + r9.yzw;
      r9.yzw = cb1[50].xyz + r9.yzw;
      r0.z = dot(r9.yzw, r9.yzw);
      r0.z = rsqrt(r0.z);
      r9.yzw = r9.yzw * r0.zzz;
      r0.z = dot(-r9.yzw, r6.xyz);
      r18.xyz = -r6.xyz * r0.zzz + -r9.yzw;
      r0.w = dot(r18.xyz, r18.xyz);
      r0.w = rsqrt(r0.w);
      r18.xyz = r18.xyz * r0.www;
      r0.w = max(0.00392156886, r2.y);
      r7.w = dot(-r9.yzw, r18.xyz);
      r8.w = dot(r6.xyz, r18.xyz);
      r11.w = max(-1, r8.w);
      r11.w = min(1, r11.w);
      r0.z = max(-1, r0.z);
      r0.zw = min(float2(1,1), r0.zw);
      r12.w = abs(r0.z) * -0.156582996 + 1.57079637;
      r13.w = 1 + -abs(r0.z);
      r13.w = sqrt(r13.w);
      r15.w = r13.w * r12.w;
      r16.w = cmp(r0.z >= 0);
      r12.w = -r12.w * r13.w + 3.14159274;
      r12.w = r16.w ? r15.w : r12.w;
      r12.w = 1.57079637 + -r12.w;
      r13.w = abs(r11.w) * -0.156582996 + 1.57079637;
      r15.w = 1 + -abs(r11.w);
      r15.w = sqrt(r15.w);
      r16.w = r15.w * r13.w;
      r17.w = cmp(r11.w >= 0);
      r13.w = -r13.w * r15.w + 3.14159274;
      r13.w = r17.w ? r16.w : r13.w;
      r13.w = 1.57079637 + -r13.w;
      r12.w = -r13.w + r12.w;
      r12.w = 0.5 * abs(r12.w);
      r12.w = cos(r12.w);
      r19.xyz = -r11.www * r6.xyz + r18.xyz;
      r9.yzw = -r0.zzz * r6.xyz + -r9.yzw;
      r13.w = dot(r19.xyz, r9.yzw);
      r15.w = dot(r19.xyz, r19.xyz);
      r9.y = dot(r9.yzw, r9.yzw);
      r9.y = r15.w * r9.y + 9.99999975e-005;
      r9.y = rsqrt(r9.y);
      r9.y = r13.w * r9.y;
      r9.yz = r9.yy * float2(0.5,17) + float2(0.5,-16.7800007);
      r9.y = saturate(r9.y);
      r9.y = sqrt(r9.y);
      r9.w = r0.w * r0.w;
      r0.w = r0.w * r0.w + 0.200000003;
      r9.w = r9.w * 2 + 0.200000003;
      r13.w = 0.997551024 * r9.y;
      r15.w = -r0.z * r0.z + 1;
      r15.w = sqrt(r15.w);
      r16.w = -0.0699428469 * r0.z;
      r13.w = r13.w * r15.w + r16.w;
      r0.w = r0.w * r9.y;
      r19.xy = float2(1.41421354,3.54490757) * r0.ww;
      r0.z = r11.w + r0.z;
      r0.w = -r13.w * -0.139885694 + r0.z;
      r0.w = r0.w * r0.w;
      r0.w = -0.5 * r0.w;
      r11.w = r19.x * r19.x;
      r0.w = r0.w / r11.w;
      r0.w = 1.44269502 * r0.w;
      r0.w = exp2(r0.w);
      r0.w = r0.w / r19.y;
      r0.w = r0.w * r9.y;
      r9.y = saturate(r7.w * 0.5 + 0.5);
      r9.y = sqrt(r9.y);
      r9.y = 1 + -r9.y;
      r11.w = r9.y * r9.y;
      r11.w = r11.w * r11.w;
      r9.y = r11.w * r9.y;
      r9.y = r9.y * 0.953479409 + 0.0465205684;
      r0.w = r9.y * r0.w;
      r0.w = r0.w * r14.w;
      r7.w = saturate(-r7.w);
      r7.w = 1 + -r7.w;
      r0.z = -0.140000001 + r0.z;
      r0.z = r0.z * r0.z;
      r0.zw = float2(-0.5,0.5) * r0.zw;
      r9.y = r9.w * r9.w;
      r0.z = r0.z / r9.y;
      r0.z = 1.44269502 * r0.z;
      r0.z = exp2(r0.z);
      r9.yz = float2(2.50662827,1.44269502) * r9.wz;
      r0.z = r0.z / r9.y;
      r9.y = -r12.w * 0.5 + 1;
      r9.w = r9.y * r9.y;
      r9.w = r9.w * r9.w;
      r9.y = r9.w * r9.y;
      r9.y = r9.y * 0.953479409 + 0.0465205684;
      r9.w = 1 + -r9.y;
      r9.w = r9.w * r9.w;
      r9.y = r9.w * r9.y;
      r9.w = 0.800000012 / r12.w;
      r19.xyz = log2(r14.xyz);
      r19.xyz = r19.xyz * r9.www;
      r19.xyz = exp2(r19.xyz);
      r9.z = exp2(r9.z);
      r0.z = r9.z * r0.z;
      r0.z = r0.z * r9.y;
      r9.yzw = r0.zzz * r19.xyz;
      r9.yzw = r0.www * r7.www + r9.yzw;
      r0.z = 1 + -abs(r8.w);
      r0.w = dot(r18.xyz, r18.xyz);
      r0.w = 1 + r0.w;
      r0.w = 0.25 * r0.w;
      r0.w = min(1, r0.w);
      r0.z = r0.z + -r0.w;
      r0.z = r0.z * 0.330000013 + r0.w;
      r0.z = r8.z * r0.z;
      r0.z = 0.318309873 * r0.z;
      r19.xyz = sqrt(r14.xyz);
      r9.yzw = r19.xyz * r0.zzz + r9.yzw;
      r9.yzw = min(float3(0,0,0), -r9.yzw);
      r3.xyz = float3(-3.14159274,-3.14159274,-3.14159274) * r9.yzw;
    } else {
      r18.xyz = r6.xyz;
    }
    r9.yzw = r17.xyz * r4.www + r3.xyz;
    r3.xyz = r10.xxx ? r9.yzw : r3.xyz;
    r9.yzw = r7.yyy ? cb1[363].xyz : cb1[187].xyz;
    r7.xyw = r7.xxx ? cb1[362].xyz : r9.yzw;
    if (r7.z != 0) {
      r0.z = cmp(r4.w < 1);
      r0.w = r0.z ? 0 : 1;
      r0.w = r0.w * r8.y;
      r9.yzw = cb1[361].www * r4.xyz;
      r14.xyz = -r4.xyz * cb1[361].www + r14.xyz;
      r9.yzw = r0.www * r14.xyz + r9.yzw;
      r0.w = cmp(0 < r4.w);
      r0.z = r0.z ? r0.w : 0;
      r0.z = r0.z ? 0 : 1;
      r0.z = r14.w * r0.z;
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + r9.yzw;
      r18.xyz = float3(0,0,1);
    }
    r17.x = t0[0].val[0/4];
    r17.y = t0[0].val[0/4+1];
    r17.z = t0[0].val[0/4+2];
    r17.w = t0[0].val[0/4+3];
    r18.w = 1;
    r14.x = dot(r17.xyzw, r18.xyzw);
    r17.x = t0[1].val[0/4];
    r17.y = t0[1].val[0/4+1];
    r17.z = t0[1].val[0/4+2];
    r17.w = t0[1].val[0/4+3];
    r14.y = dot(r17.xyzw, r18.xyzw);
    r17.x = t0[2].val[0/4];
    r17.y = t0[2].val[0/4+1];
    r17.z = t0[2].val[0/4+2];
    r17.w = t0[2].val[0/4+3];
    r14.z = dot(r17.xyzw, r18.xyzw);
    r17.xyzw = r18.xyzz * r18.yzzx;
    r19.x = t0[3].val[0/4];
    r19.y = t0[3].val[0/4+1];
    r19.z = t0[3].val[0/4+2];
    r19.w = t0[3].val[0/4+3];
    r19.x = dot(r19.xyzw, r17.xyzw);
    r20.x = t0[4].val[0/4];
    r20.y = t0[4].val[0/4+1];
    r20.z = t0[4].val[0/4+2];
    r20.w = t0[4].val[0/4+3];
    r19.y = dot(r20.xyzw, r17.xyzw);
    r20.x = t0[5].val[0/4];
    r20.y = t0[5].val[0/4+1];
    r20.z = t0[5].val[0/4+2];
    r20.w = t0[5].val[0/4+3];
    r19.z = dot(r20.xyzw, r17.xyzw);
    r0.z = r18.y * r18.y;
    r0.z = r18.x * r18.x + -r0.z;
    r9.y = t0[6].val[0/4];
    r9.z = t0[6].val[0/4+1];
    r9.w = t0[6].val[0/4+2];
    r14.xyz = r19.xyz + r14.xyz;
    r9.yzw = r9.yzw * r0.zzz + r14.xyz;
    r9.yzw = max(float3(0,0,0), r9.yzw);
    r7.xyw = r9.yzw * r7.xyw;
    r0.z = 1 + -r5.x;
    r9.yzw = cb0[1].xyz * r0.zzz;
    r7.xyw = r5.xxx * r7.xyw + r9.yzw;
    r3.xyz = r7.xyw * r3.xyz + r12.xyz;
    r3.xyz = cb1[135].yyy * r3.xyz;
    r0.z = cmp(cb1[207].z == 0.000000);
    r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = r0.z ? r0.w : 0;
    r0.w = (int)r0.w & (int)r5.w;
    o0.w = r0.z ? r0.w : 0;
  } else {
    r3.xyz = float3(0,0,0);
    o0.w = 0;
  }
  if (r5.z != 0) {
    r12.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r5.xzw = r5.www ? r13.xyz : r11.xyz;
    r5.xzw = cb1[137].www * r5.xzw;
    r5.xzw = r7.zzz ? float3(0,0,0) : r5.xzw;
    r5.xzw = cb1[137].xyz + r5.xzw;
    r0.z = (int)r2.w & 16;
    r7.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r7.xyzw = r0.zzzz ? r7.xyzw : float4(0,0,0,0);
    r0.w = dot(r7.xyz, r7.xyz);
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.yzx * r0.www;
    r7.xyz = r0.zzz ? r7.xyz : float3(0,0,0);
    r0.z = r2.z + -r14.w;
    r0.z = r4.x * r0.z + r14.w;
    r0.w = 0.0799999982 * r0.z;
    r9.yzw = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r16.xyz;
    r9.yzw = r8.zzz * r9.yzw + r0.www;
    r5.xzw = r9.xxx ? r9.yzw : r5.xzw;
    r0.zw = cmp(float2(0,0) < cb2[0].yz);
    r0.w = r0.w ? r0.z : 0;
    if (r0.w != 0) {
      r0.w = dot(r6.xyz, r6.xyz);
      r0.w = sqrt(r0.w);
      r11.x = t0[0].val[0/4];
      r11.y = t0[0].val[0/4+1];
      r11.z = t0[0].val[0/4+2];
      r11.w = t0[0].val[0/4+3];
      r6.w = 1;
      r11.x = dot(r11.xyzw, r6.xyzw);
      r12.x = t0[1].val[0/4];
      r12.y = t0[1].val[0/4+1];
      r12.z = t0[1].val[0/4+2];
      r12.w = t0[1].val[0/4+3];
      r11.y = dot(r12.xyzw, r6.xyzw);
      r12.x = t0[2].val[0/4];
      r12.y = t0[2].val[0/4+1];
      r12.z = t0[2].val[0/4+2];
      r12.w = t0[2].val[0/4+3];
      r11.z = dot(r12.xyzw, r6.xyzw);
      r12.xyzw = r6.xyzz * r6.yzzx;
      r13.x = t0[3].val[0/4];
      r13.y = t0[3].val[0/4+1];
      r13.z = t0[3].val[0/4+2];
      r13.w = t0[3].val[0/4+3];
      r13.x = dot(r13.xyzw, r12.xyzw);
      r14.x = t0[4].val[0/4];
      r14.y = t0[4].val[0/4+1];
      r14.z = t0[4].val[0/4+2];
      r14.w = t0[4].val[0/4+3];
      r13.y = dot(r14.xyzw, r12.xyzw);
      r14.x = t0[5].val[0/4];
      r14.y = t0[5].val[0/4+1];
      r14.z = t0[5].val[0/4+2];
      r14.w = t0[5].val[0/4+3];
      r13.z = dot(r14.xyzw, r12.xyzw);
      r2.z = r6.y * r6.y;
      r2.z = r6.x * r6.x + -r2.z;
      r9.y = t0[6].val[0/4];
      r9.z = t0[6].val[0/4+1];
      r9.w = t0[6].val[0/4+2];
      r11.xyz = r13.xyz + r11.xyz;
      r9.yzw = r9.yzw * r2.zzz + r11.xyz;
      r9.yzw = max(float3(0,0,0), r9.yzw);
      r9.yzw = cb1[187].xyz * r9.yzw;
      r2.z = dot(r9.yzw, float3(0.300000012,0.589999974,0.109999999));
      r8.x = r2.z * r0.w + r8.x;
    }
    r0.w = cmp(0 < abs(r7.w));
    r9.yzw = r7.yzx * r6.xyz;
    r9.yzw = r6.zxy * r7.zxy + -r9.yzw;
    r2.z = dot(r9.yzw, r9.yzw);
    r2.z = rsqrt(r2.z);
    r9.yzw = r9.yzw * r2.zzz;
    r2.z = cmp(r7.w >= 0);
    r7.xyz = r2.zzz ? r9.yzw : r7.xyz;
    r9.yzw = r7.xyz * -r10.yzw;
    r9.yzw = r7.zxy * -r10.zwy + -r9.yzw;
    r11.xyz = r9.yzw * r7.xyz;
    r7.xyz = r9.wyz * r7.yzx + -r11.xyz;
    r2.z = saturate(5 * r2.y);
    r2.z = abs(r7.w) * r2.z;
    r1.xyz = -r1.xyz * r5.yyy + r7.xyz;
    r1.xyz = r2.zzz * r1.xyz + r6.xyz;
    r2.z = dot(r1.xyz, r1.xyz);
    r2.z = rsqrt(r2.z);
    r1.xyz = r2.zzz * r1.xyz;
    r1.xyz = r0.www ? r1.xyz : r6.xyz;
    r2.x = dot(-r10.yzw, r1.xyz);
    r0.w = r2.x + r2.x;
    r7.xyz = r0.www * r1.xyz + r10.yzw;
    r2.x = saturate(r2.x);
    r0.w = r2.y * r2.y;
    r2.z = -r2.y * r2.y + 1;
    r2.w = sqrt(r2.z);
    r2.w = r2.y * r2.y + r2.w;
    r2.z = r2.z * r2.w;
    r7.xyz = r7.xyz + -r1.xyz;
    r1.xyz = r2.zzz * r7.xyz + r1.xyz;
    r7.xyzw = t10.Sample(s4_s, r0.xy).xyzw;
    r0.x = 1 + -r7.w;
    r11.xyzw = r7.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r11.xyzw = r9.xxxx ? float4(0,0,0,1) : r11.xyzw;
    r0.y = r8.y * r3.w + r2.x;
    r0.y = log2(r0.y);
    r0.y = r0.w * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r8.y * r3.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r11.w * r0.y;
    if (r0.z != 0) {
      r2.z = max(0.00100000005, r2.y);
      r2.z = log2(r2.z);
      r2.z = -r2.z * 1.20000005 + 1;
      r2.w = -1 + cb2[0].x;
      r2.z = r2.w + -r2.z;
      r8.yzw = t1.SampleLevel(s1_s, r1.xyz, r2.z).xyz;
      r2.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r12.w = cb2[1].x * r2.w;
      r8.yzw = cb1[187].xyz * r8.yzw;
      r2.w = cmp(0 < cb2[0].w);
      if (r2.w != 0) {
        r1.xyz = t2.SampleLevel(s2_s, r1.xyz, r2.z).xyz;
        r1.xyz = r1.xyz * cb1[187].xyz + -r8.yzw;
        r8.yzw = cb2[0].www * r1.xyz + r8.yzw;
      }
      r1.x = cmp(cb2[0].z < 1);
      r12.xyz = r8.yzw * r0.www;
      r8.yzw = r1.xxx ? float3(0,0,0) : r8.yzw;
      r12.xyzw = r1.xxxx ? r12.xyzw : 0;
    } else {
      r8.yzw = float3(0,0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r1.x = saturate(r2.y * cb1[197].x + cb1[197].y);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = r1.y * r1.x;
    r1.y = max(9.99999975e-005, r12.w);
    r1.y = r8.x / r1.y;
    r1.y = min(cb1[197].z, r1.y);
    r1.y = -1 + r1.y;
    r1.x = r1.x * r1.y + 1;
    r8.yzw = r8.yzw * r0.www;
    r1.xyz = r12.xyz * r1.xxx + r8.yzw;
    r1.xyz = cb1[135].yyy * r1.xyz + r11.xyz;
    if (r9.x != 0) {
      r15.y = r2.y;
      r2.zw = t3.SampleLevel(s3_s, r15.xy, 0).xy;
      r0.w = saturate(50 * r5.z);
      r0.w = r2.w * r0.w;
      r2.w = 1 + -r4.x;
      r0.w = r2.w * r0.w;
      r8.yzw = r5.xzw * r2.zzz + r0.www;
      r8.yzw = r8.yzw * r1.xyz;
      r15.z = r4.y;
      r2.zw = t3.SampleLevel(s3_s, r15.xz, 0).xy;
      r0.w = r2.z * 0.0399999991 + r2.w;
      r2.z = r0.w * r4.x;
      r0.w = -r0.w * r4.x + 1;
      r0.y = r2.z * r0.y;
      r1.w = r1.w + r1.w;
      r4.xzw = r1.www * r6.xyz + r10.yzw;
      if (r0.z != 0) {
        r0.z = max(0.00100000005, r4.y);
        r0.z = log2(r0.z);
        r0.z = -r0.z * 1.20000005 + 1;
        r1.w = -1 + cb2[0].x;
        r0.z = r1.w + -r0.z;
        r6.xyz = t1.SampleLevel(s1_s, r4.xzw, r0.z).xyz;
        r1.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r9.w = cb2[1].x * r1.w;
        r6.xyz = cb1[187].xyz * r6.xyz;
        r1.w = cmp(0 < cb2[0].w);
        if (r1.w != 0) {
          r4.xzw = t2.SampleLevel(s2_s, r4.xzw, r0.z).xyz;
          r4.xzw = r4.xzw * cb1[187].xyz + -r6.xyz;
          r6.xyz = cb2[0].www * r4.xzw + r6.xyz;
        }
        r0.z = cmp(cb2[0].z < 1);
        r9.xyz = r6.xyz * r0.yyy;
        r4.xzw = r0.zzz ? float3(0,0,0) : r6.xyz;
        r6.xyzw = r0.zzzz ? r9.xyzw : 0;
      } else {
        r4.xzw = float3(0,0,0);
        r6.xyzw = float4(0,0,0,0);
      }
      r0.z = saturate(r4.y * cb1[197].x + cb1[197].y);
      r1.w = r0.z * -2 + 3;
      r0.z = r0.z * r0.z;
      r0.z = r1.w * r0.z;
      r1.w = max(9.99999975e-005, r6.w);
      r1.w = r8.x / r1.w;
      r1.w = min(cb1[197].z, r1.w);
      r1.w = -1 + r1.w;
      r0.z = r0.z * r1.w + 1;
      r4.xyz = r4.xzw * r0.yyy;
      r4.xyz = r6.xyz * r0.zzz + r4.xyz;
      r4.xyz = cb1[135].yyy * r4.xyz;
      r0.yzw = r8.yzw * r0.www + r4.xyz;
      r0.xyz = r0.yzw * r0.xxx + r7.xyz;
    } else {
      r2.xy = t3.SampleLevel(s3_s, r2.xy, 0).xy;
      r0.w = saturate(50 * r5.z);
      r0.w = r0.w * r2.y;
      r2.xyz = r5.xzw * r2.xxx + r0.www;
      r0.xyz = r2.xyz * r1.xyz;
    }
    r0.xyz = min(float3(0,0,0), -r0.xyz);
    o0.xyz = r3.xyz + -r0.xyz;
  } else {
    o0.xyz = r3.xyz;
  }
  return;
}