// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

TextureCubeArray<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[2728];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r1.xy = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r1.xy = v0.ww * r1.xy;
  r1.xy = float2(2,-2) * r1.xy;
  r2.xyz = t8.SampleLevel(s0_s, r0.xy, 0).xyz;
  r3.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r4.xyzw = t10.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r5.xyzw = t11.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r1.z = t7.SampleLevel(s0_s, r0.xy, 0).x;
  r1.w = r1.z * cb1[65].x + cb1[65].y;
  r1.z = r1.z * cb1[65].z + -cb1[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r6.xy = cb1[132].xy * r0.xy;
  r6.xy = (uint2)r6.xy;
  r1.w = (uint)cb1[152].x;
  r2.w = (int)r6.y + (int)r6.x;
  r1.w = (int)r1.w + (int)r2.w;
  r1.w = (int)r1.w & 1;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r2.xyz * r2.www;
  r7.xy = float2(255,0.0799999982) * r3.wz;
  r3.w = round(r7.x);
  r3.w = (uint)r3.w;
  r7.x = (int)r3.w & 15;
  r8.xyzw = cmp((int4)r7.xxxx == int4(12,13,2,3));
  r7.zw = (int2)r8.yw | (int2)r8.xz;
  r8.z = r4.w * 16 + -8;
  r8.z = exp2(r8.z);
  r8.z = -0.00390625 + r8.z;
  r9.z = cb1[135].z * r8.z;
  r9.y = r4.w;
  r9.xw = float2(0,1);
  r8.zw = r7.zz ? r9.xy : r9.zw;
  r9.xyzw = cmp((int4)r7.xxxx == int4(4,5,6,7));
  r10.x = (int)r7.w | (int)r9.x;
  r10.x = (int)r9.y | (int)r10.x;
  r10.x = (int)r9.z | (int)r10.x;
  r10.x = (int)r9.w | (int)r10.x;
  r10.yz = cmp((int2)r7.xx == int2(8,9));
  r10.x = (int)r10.y | (int)r10.x;
  r10.x = (int)r8.x | (int)r10.x;
  r10.x = (int)r8.y | (int)r10.x;
  r10.x = (int)r10.z | (int)r10.x;
  r5.xyzw = (int4)r5.xyzw & (int4)r10.xxxx;
  r10.x = r10.z ? 0 : r3.x;
  r11.xyz = -r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r11.xyz = r10.xxx * r11.xyz + r7.yyy;
  r7.y = (int)r9.y | (int)r10.z;
  r9.y = cmp(0 < cb1[156].y);
  r10.z = cmp(0 < cb1[207].z);
  r9.y = r9.y ? r10.z : 0;
  r10.z = cmp(0 != cb1[156].y);
  r12.xyz = r10.zzz ? float3(1,1,1) : r4.xyz;
  r10.zw = r1.ww ? float2(1,0) : float2(0,1);
  r13.xyz = r11.xyz * r10.www;
  r13.w = r10.w * r3.z;
  r12.xyz = r9.yyy ? r10.zzz : r12.xyz;
  r11.w = r3.z;
  r13.xyzw = r9.yyyy ? r13.xyzw : r11.xyzw;
  r12.w = r13.w;
  r4.w = r11.w;
  r12.xyzw = r7.yyyy ? r12.xyzw : r4.xyzw;
  r14.xyzw = r7.zzzz ? r4.xyzw : r12.xyzw;
  r10.zw = r1.xy * r1.zz;
  r15.xyz = cb1[49].xyz * r10.www;
  r15.xyz = r10.zzz * cb1[48].xyz + r15.xyz;
  r15.xyz = r1.zzz * cb1[50].xyz + r15.xyz;
  r15.xyz = cb1[51].xyz + r15.xyz;
  r16.xyz = -cb1[67].xyz + r15.xyz;
  r1.w = dot(r16.xyz, r16.xyz);
  r1.w = rsqrt(r1.w);
  r16.xyz = r16.xyz * r1.www;
  r1.w = dot(r6.xyz, -r16.xyz);
  r17.x = saturate(r1.w);
  r3.z = r17.x * 0.5 + 0.5;
  r3.z = r3.z * r17.x + -1;
  r4.w = saturate(-r3.y * 1.25 + 1.25);
  r3.z = r3.z * r4.w + 1;
  r18.xyz = float3(1.11111116,1.11111116,1.11111116) * r14.xyz;
  r4.w = -1 + r17.x;
  r4.w = 0.850000024 * r4.w;
  r19.xyz = r18.xyz * r18.xyz + -r18.xyz;
  r19.xyz = r19.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r18.xyz;
  r19.xyz = float3(1,1,1) + -r19.xyz;
  r19.xyz = r4.www * r19.xyz + float3(1,1,1);
  r18.xyz = r19.xyz * r18.xyz;
  r4.w = 1 + -r17.x;
  r9.y = r4.w * r4.w;
  r9.y = r9.y * r9.y;
  r10.z = r9.y * r4.w;
  r4.w = -r9.y * r4.w + 1;
  r4.w = r4.w * 0.0399999991 + r10.z;
  r4.w = r5.x * -r4.w + 1;
  r19.xyz = r14.xyz * r4.www;
  r18.xyz = r18.xyz * r3.zzz;
  r4.w = r10.x * r5.x;
  r18.xyz = r18.xyz * float3(0.899999976,0.899999976,0.899999976) + -r19.xyz;
  r18.xyz = r4.www * r18.xyz + r19.xyz;
  r4.w = t14.SampleLevel(s6_s, r0.xy, 0).x;
  r19.xyz = cmp((int3)r7.xxx != int3(0,14,7));
  r10.zw = r19.yz ? r19.xx : 0;
  if (r10.z != 0) {
    r12.xyz = -r12.xyz * r10.xxx + r12.xyz;
    r4.xyz = r7.zzz ? r4.xyz : r12.xyz;
    r4.xyz = r4.xyz * cb1[136].www + cb1[136].xyz;
    r12.xyz = -r18.xyz * r10.xxx + r18.xyz;
    r4.xyz = r9.xxx ? r12.xyz : r4.xyz;
    if (r7.z == 0) {
      r7.x = cmp(cb0[14].x == 0.000000);
      r9.y = min(r8.w, r4.w);
      r10.z = min(1, r9.y);
      r7.x = r7.x ? r10.z : r9.y;
    } else {
      r7.x = 1;
    }
    if (r9.z != 0) {
      r12.xyz = -r6.xyz;
      r19.x = t0[0].val[0/4];
      r19.y = t0[0].val[0/4+1];
      r19.z = t0[0].val[0/4+2];
      r19.w = t0[0].val[0/4+3];
      r12.w = 1;
      r19.x = dot(r19.xyzw, r12.xyzw);
      r20.x = t0[1].val[0/4];
      r20.y = t0[1].val[0/4+1];
      r20.z = t0[1].val[0/4+2];
      r20.w = t0[1].val[0/4+3];
      r19.y = dot(r20.xyzw, r12.xyzw);
      r20.x = t0[2].val[0/4];
      r20.y = t0[2].val[0/4+1];
      r20.z = t0[2].val[0/4+2];
      r20.w = t0[2].val[0/4+3];
      r19.z = dot(r20.xyzw, r12.xyzw);
      r12.xyzw = r6.xyzz * r6.yzzx;
      r20.x = t0[3].val[0/4];
      r20.y = t0[3].val[0/4+1];
      r20.z = t0[3].val[0/4+2];
      r20.w = t0[3].val[0/4+3];
      r20.x = dot(r20.xyzw, r12.xyzw);
      r21.x = t0[4].val[0/4];
      r21.y = t0[4].val[0/4+1];
      r21.z = t0[4].val[0/4+2];
      r21.w = t0[4].val[0/4+3];
      r20.y = dot(r21.xyzw, r12.xyzw);
      r21.x = t0[5].val[0/4];
      r21.y = t0[5].val[0/4+1];
      r21.z = t0[5].val[0/4+2];
      r21.w = t0[5].val[0/4+3];
      r20.z = dot(r21.xyzw, r12.xyzw);
      r9.y = r6.y * r6.y;
      r9.y = r6.x * r6.x + -r9.y;
      r12.x = t0[6].val[0/4];
      r12.y = t0[6].val[0/4+1];
      r12.z = t0[6].val[0/4+2];
      r19.xyz = r20.xyz + r19.xyz;
      r12.xyz = r12.xyz * r9.yyy + r19.xyz;
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = cb1[187].xyz * r12.xyz;
      r19.xyz = r5.xyz * r5.xyz;
      r12.xyz = r12.xyz * r7.xxx;
      r12.xyz = r12.xyz * r19.xyz;
    } else {
      r12.xyz = float3(0,0,0);
    }
    r19.xyz = r5.xyz * r5.xyz;
    r20.xyz = r5.xyz * r5.xyz + r4.xyz;
    r4.xyz = r7.www ? r20.xyz : r4.xyz;
    if (r9.w != 0) {
      r9.yzw = cb1[49].xyz * r1.yyy;
      r9.yzw = r1.xxx * cb1[48].xyz + r9.yzw;
      r9.yzw = cb1[50].xyz + r9.yzw;
      r1.x = dot(r9.yzw, r9.yzw);
      r1.x = rsqrt(r1.x);
      r9.yzw = r9.yzw * r1.xxx;
      r1.x = dot(-r9.yzw, r6.xyz);
      r20.xyz = -r6.xyz * r1.xxx + -r9.yzw;
      r1.y = dot(r20.xyz, r20.xyz);
      r1.y = rsqrt(r1.y);
      r20.xyz = r20.xyz * r1.yyy;
      r1.y = max(0.00392156886, r3.y);
      r7.w = dot(-r9.yzw, r20.xyz);
      r10.z = dot(r6.xyz, r20.xyz);
      r11.w = max(-1, r10.z);
      r11.w = min(1, r11.w);
      r1.x = max(-1, r1.x);
      r1.xy = min(float2(1,1), r1.xy);
      r12.w = abs(r1.x) * -0.156582996 + 1.57079637;
      r13.w = 1 + -abs(r1.x);
      r13.w = sqrt(r13.w);
      r15.w = r13.w * r12.w;
      r16.w = cmp(r1.x >= 0);
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
      r21.xyz = -r11.www * r6.xyz + r20.xyz;
      r9.yzw = -r1.xxx * r6.xyz + -r9.yzw;
      r13.w = dot(r21.xyz, r9.yzw);
      r15.w = dot(r21.xyz, r21.xyz);
      r9.y = dot(r9.yzw, r9.yzw);
      r9.y = r15.w * r9.y + 9.99999975e-005;
      r9.y = rsqrt(r9.y);
      r9.y = r13.w * r9.y;
      r9.yz = r9.yy * float2(0.5,17) + float2(0.5,-16.7800007);
      r9.y = saturate(r9.y);
      r9.y = sqrt(r9.y);
      r9.w = r1.y * r1.y;
      r1.y = r1.y * r1.y + 0.200000003;
      r9.w = r9.w * 2 + 0.200000003;
      r13.w = 0.997551024 * r9.y;
      r15.w = -r1.x * r1.x + 1;
      r15.w = sqrt(r15.w);
      r16.w = -0.0699428469 * r1.x;
      r13.w = r13.w * r15.w + r16.w;
      r1.y = r1.y * r9.y;
      r21.xy = float2(1.41421354,3.54490757) * r1.yy;
      r1.x = r11.w + r1.x;
      r1.y = -r13.w * -0.139885694 + r1.x;
      r1.y = r1.y * r1.y;
      r1.y = -0.5 * r1.y;
      r11.w = r21.x * r21.x;
      r1.y = r1.y / r11.w;
      r1.y = 1.44269502 * r1.y;
      r1.y = exp2(r1.y);
      r1.y = r1.y / r21.y;
      r1.y = r1.y * r9.y;
      r9.y = saturate(r7.w * 0.5 + 0.5);
      r9.y = sqrt(r9.y);
      r9.y = 1 + -r9.y;
      r11.w = r9.y * r9.y;
      r11.w = r11.w * r11.w;
      r9.y = r11.w * r9.y;
      r9.y = r9.y * 0.953479409 + 0.0465205684;
      r1.y = r9.y * r1.y;
      r1.y = r1.y * r14.w;
      r7.w = saturate(-r7.w);
      r7.w = 1 + -r7.w;
      r1.x = -0.140000001 + r1.x;
      r1.x = r1.x * r1.x;
      r1.xy = float2(-0.5,0.5) * r1.xy;
      r9.y = r9.w * r9.w;
      r1.x = r1.x / r9.y;
      r1.x = 1.44269502 * r1.x;
      r1.x = exp2(r1.x);
      r9.yz = float2(2.50662827,1.44269502) * r9.wz;
      r1.x = r1.x / r9.y;
      r9.y = -r12.w * 0.5 + 1;
      r9.w = r9.y * r9.y;
      r9.w = r9.w * r9.w;
      r9.y = r9.w * r9.y;
      r9.y = r9.y * 0.953479409 + 0.0465205684;
      r9.w = 1 + -r9.y;
      r9.w = r9.w * r9.w;
      r9.y = r9.w * r9.y;
      r9.w = 0.800000012 / r12.w;
      r21.xyz = log2(r14.xyz);
      r21.xyz = r21.xyz * r9.www;
      r21.xyz = exp2(r21.xyz);
      r9.z = exp2(r9.z);
      r1.x = r9.z * r1.x;
      r1.x = r1.x * r9.y;
      r9.yzw = r1.xxx * r21.xyz;
      r9.yzw = r1.yyy * r7.www + r9.yzw;
      r1.x = 1 + -abs(r10.z);
      r1.y = dot(r20.xyz, r20.xyz);
      r1.y = 1 + r1.y;
      r1.y = 0.25 * r1.y;
      r1.y = min(1, r1.y);
      r1.x = r1.x + -r1.y;
      r1.x = r1.x * 0.330000013 + r1.y;
      r1.x = r10.x * r1.x;
      r1.x = 0.318309873 * r1.x;
      r21.xyz = sqrt(r14.xyz);
      r9.yzw = r21.xyz * r1.xxx + r9.yzw;
      r9.yzw = min(float3(0,0,0), -r9.yzw);
      r4.xyz = float3(-3.14159274,-3.14159274,-3.14159274) * r9.yzw;
    } else {
      r20.xyz = r6.xyz;
    }
    r9.yzw = r19.xyz * r5.www + r4.xyz;
    r4.xyz = r10.yyy ? r9.yzw : r4.xyz;
    r9.yzw = r8.yyy ? cb1[363].xyz : cb1[187].xyz;
    r9.yzw = r8.xxx ? cb1[362].xyz : r9.yzw;
    if (r7.z != 0) {
      r1.x = cmp(r5.w < 1);
      r1.y = r1.x ? 0 : 1;
      r1.y = r1.y * r8.w;
      r19.xyz = cb1[361].www * r5.xyz;
      r14.xyz = -r5.xyz * cb1[361].www + r14.xyz;
      r14.xyz = r1.yyy * r14.xyz + r19.xyz;
      r1.y = cmp(0 < r5.w);
      r1.x = r1.x ? r1.y : 0;
      r1.x = r1.x ? 0 : 1;
      r1.x = r14.w * r1.x;
      r4.xyz = r1.xxx * float3(0.5,0.5,0.5) + r14.xyz;
      r20.xyz = float3(0,0,1);
    }
    r19.x = t0[0].val[0/4];
    r19.y = t0[0].val[0/4+1];
    r19.z = t0[0].val[0/4+2];
    r19.w = t0[0].val[0/4+3];
    r20.w = 1;
    r14.x = dot(r19.xyzw, r20.xyzw);
    r19.x = t0[1].val[0/4];
    r19.y = t0[1].val[0/4+1];
    r19.z = t0[1].val[0/4+2];
    r19.w = t0[1].val[0/4+3];
    r14.y = dot(r19.xyzw, r20.xyzw);
    r19.x = t0[2].val[0/4];
    r19.y = t0[2].val[0/4+1];
    r19.z = t0[2].val[0/4+2];
    r19.w = t0[2].val[0/4+3];
    r14.z = dot(r19.xyzw, r20.xyzw);
    r19.xyzw = r20.xyzz * r20.yzzx;
    r21.x = t0[3].val[0/4];
    r21.y = t0[3].val[0/4+1];
    r21.z = t0[3].val[0/4+2];
    r21.w = t0[3].val[0/4+3];
    r21.x = dot(r21.xyzw, r19.xyzw);
    r22.x = t0[4].val[0/4];
    r22.y = t0[4].val[0/4+1];
    r22.z = t0[4].val[0/4+2];
    r22.w = t0[4].val[0/4+3];
    r21.y = dot(r22.xyzw, r19.xyzw);
    r22.x = t0[5].val[0/4];
    r22.y = t0[5].val[0/4+1];
    r22.z = t0[5].val[0/4+2];
    r22.w = t0[5].val[0/4+3];
    r21.z = dot(r22.xyzw, r19.xyzw);
    r1.x = r20.y * r20.y;
    r1.x = r20.x * r20.x + -r1.x;
    r19.x = t0[6].val[0/4];
    r19.y = t0[6].val[0/4+1];
    r19.z = t0[6].val[0/4+2];
    r14.xyz = r21.xyz + r14.xyz;
    r14.xyz = r19.xyz * r1.xxx + r14.xyz;
    r14.xyz = max(float3(0,0,0), r14.xyz);
    r9.yzw = r14.xyz * r9.yzw;
    r1.x = 1 + -r7.x;
    r14.xyz = cb0[1].xyz * r1.xxx;
    r9.yzw = r7.xxx * r9.yzw + r14.xyz;
    r4.xyz = r9.yzw * r4.xyz + r12.xyz;
    r4.xyz = cb1[135].yyy * r4.xyz;
    r1.x = cmp(cb1[207].z == 0.000000);
    r1.y = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.y = r1.x ? r1.y : 0;
    r1.y = (int)r1.y & (int)r7.y;
    o0.w = r1.x ? r1.y : 0;
  } else {
    r4.xyz = float3(0,0,0);
    o0.w = 0;
  }
  if (r10.w != 0) {
    r12.xyzw = t12.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r7.xyw = r7.yyy ? r13.xyz : r11.xyz;
    r7.xyw = cb1[137].www * r7.xyw;
    r7.xyz = r7.zzz ? float3(0,0,0) : r7.xyw;
    r7.xyz = cb1[137].xyz + r7.xyz;
    r1.x = (int)r3.w & 16;
    r11.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r11.xyzw = r1.xxxx ? r11.xyzw : float4(0,0,0,0);
    r1.y = dot(r11.xyz, r11.xyz);
    r1.y = rsqrt(r1.y);
    r9.yzw = r11.yzx * r1.yyy;
    r9.yzw = r1.xxx ? r9.yzw : float3(0,0,0);
    r1.x = r3.z + -r14.w;
    r1.x = r5.x * r1.x + r14.w;
    r1.y = 0.0799999982 * r1.x;
    r10.yzw = -r1.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r18.xyz;
    r10.xyz = r10.xxx * r10.yzw + r1.yyy;
    r7.xyz = r9.xxx ? r10.xyz : r7.xyz;
    r1.xy = cmp(float2(0,0) < cb2[0].yz);
    r1.y = r1.y ? r1.x : 0;
    if (r1.y != 0) {
      r1.y = dot(r6.xyz, r6.xyz);
      r1.y = sqrt(r1.y);
      r10.x = t0[0].val[0/4];
      r10.y = t0[0].val[0/4+1];
      r10.z = t0[0].val[0/4+2];
      r10.w = t0[0].val[0/4+3];
      r6.w = 1;
      r10.x = dot(r10.xyzw, r6.xyzw);
      r12.x = t0[1].val[0/4];
      r12.y = t0[1].val[0/4+1];
      r12.z = t0[1].val[0/4+2];
      r12.w = t0[1].val[0/4+3];
      r10.y = dot(r12.xyzw, r6.xyzw);
      r12.x = t0[2].val[0/4];
      r12.y = t0[2].val[0/4+1];
      r12.z = t0[2].val[0/4+2];
      r12.w = t0[2].val[0/4+3];
      r10.z = dot(r12.xyzw, r6.xyzw);
      r12.xyzw = r6.xyzz * r6.yzzx;
      r13.x = t0[3].val[0/4];
      r13.y = t0[3].val[0/4+1];
      r13.z = t0[3].val[0/4+2];
      r13.w = t0[3].val[0/4+3];
      r11.x = dot(r13.xyzw, r12.xyzw);
      r13.x = t0[4].val[0/4];
      r13.y = t0[4].val[0/4+1];
      r13.z = t0[4].val[0/4+2];
      r13.w = t0[4].val[0/4+3];
      r11.y = dot(r13.xyzw, r12.xyzw);
      r13.x = t0[5].val[0/4];
      r13.y = t0[5].val[0/4+1];
      r13.z = t0[5].val[0/4+2];
      r13.w = t0[5].val[0/4+3];
      r11.z = dot(r13.xyzw, r12.xyzw);
      r3.z = r6.y * r6.y;
      r3.z = r6.x * r6.x + -r3.z;
      r12.x = t0[6].val[0/4];
      r12.y = t0[6].val[0/4+1];
      r12.z = t0[6].val[0/4+2];
      r10.xyz = r11.xyz + r10.xyz;
      r10.xyz = r12.xyz * r3.zzz + r10.xyz;
      r10.xyz = max(float3(0,0,0), r10.xyz);
      r10.xyz = cb1[187].xyz * r10.xyz;
      r3.z = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
      r8.z = r3.z * r1.y + r8.z;
    }
    r1.y = cmp(0 < abs(r11.w));
    r10.xyz = r9.zwy * r6.xyz;
    r10.xyz = r6.zxy * r9.wyz + -r10.xyz;
    r3.z = dot(r10.xyz, r10.xyz);
    r3.z = rsqrt(r3.z);
    r10.xyz = r10.xyz * r3.zzz;
    r3.z = cmp(r11.w >= 0);
    r9.yzw = r3.zzz ? r10.xyz : r9.yzw;
    r10.xyz = r9.yzw * -r16.xyz;
    r10.xyz = r9.wyz * -r16.yzx + -r10.xyz;
    r11.xyz = r10.xyz * r9.yzw;
    r9.yzw = r10.zxy * r9.zwy + -r11.xyz;
    r3.z = saturate(5 * r3.y);
    r3.z = abs(r11.w) * r3.z;
    r2.xyz = -r2.xyz * r2.www + r9.yzw;
    r2.xyz = r3.zzz * r2.xyz + r6.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r2.xyz = r1.yyy ? r2.xyz : r6.xyz;
    r3.x = dot(-r16.xyz, r2.xyz);
    r1.y = r3.x + r3.x;
    r9.yzw = r1.yyy * r2.xyz + r16.xyz;
    r3.x = saturate(r3.x);
    r1.y = r3.y * r3.y;
    r2.w = -r3.y * r3.y + 1;
    r3.z = sqrt(r2.w);
    r3.z = r3.y * r3.y + r3.z;
    r2.w = r3.z * r2.w;
    r9.yzw = r9.yzw + -r2.xyz;
    r2.yzw = r2.www * r9.yzw + r2.xyz;
    r10.xyzw = t13.Sample(s5_s, r0.xy).xyzw;
    r0.x = 1 + -r10.w;
    r11.xyzw = r10.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r11.xyzw = r9.xxxx ? float4(0,0,0,1) : r11.xyzw;
    r0.y = r8.w * r4.w + r3.x;
    r0.y = log2(r0.y);
    r0.y = r1.y * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r8.w * r4.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r1.y = r11.w * r0.y;
    r0.zw = (uint2)r0.zw;
    r1.z = r1.z * cb3[3].x + cb3[3].y;
    r1.z = log2(r1.z);
    r1.z = cb3[3].z * r1.z;
    r1.z = max(0, r1.z);
    r1.z = (uint)r1.z;
    r3.z = asint(cb3[1].z) + -1;
    r1.z = min((uint)r3.z, (uint)r1.z);
    r0.zw = (uint2)r0.zw >> asuint(cb3[2].xx);
    r0.w = mad((int)r1.z, asint(cb3[1].y), (int)r0.w);
    r0.z = mad((int)r0.w, asint(cb3[1].x), (int)r0.z);
    r0.z = (int)r0.z + asint(cb3[0].w);
    r0.w = (uint)r0.z << 1;
    r0.w = t4.Load(r0.w).x;
    r0.w = min(asuint(cb3[0].y), (uint)r0.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.z = (((uint)r0.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r0.z = t4.Load(r0.z).x;
    r1.z = max(0.00100000005, r3.y);
    r1.z = log2(r1.z);
    r1.z = -r1.z * 1.20000005 + 1;
    r3.z = -1 + cb1[195].z;
    r3.w = r3.z + -r1.z;
    r2.x = 0;
    r8.xyw = float3(0,0,0);
    r4.w = r1.y;
    r5.zw = float2(0,1);
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= (uint)r0.w);
      if (r7.w != 0) break;
      r7.w = cmp(r4.w < 0.00100000005);
      if (r7.w != 0) {
        break;
      }
      r7.w = (int)r0.z + (int)r6.w;
      r7.w = t5.Load(r7.w).x;
      r9.yzw = -cb4[r7.w+0].xyz + r15.xyz;
      r10.w = dot(r9.yzw, r9.yzw);
      r11.w = sqrt(r10.w);
      r12.x = cmp(r11.w < cb4[r7.w+0].w);
      if (r12.x != 0) {
        r12.x = cmp(0 < cb4[r7.w+341].z);
        if (r12.x != 0) {
          r12.x = (uint)r7.w << 2;
          r12.yzw = cb4[r12.x+1024].xyz * r15.yyy;
          r12.yzw = r15.xxx * cb4[r12.x+1023].xyz + r12.yzw;
          r12.yzw = r15.zzz * cb4[r12.x+1025].xyz + r12.yzw;
          r12.yzw = cb4[r12.x+1026].xyz + r12.yzw;
          r13.xyz = cb4[r12.x+1024].xyz * r2.zzz;
          r13.xyz = r2.yyy * cb4[r12.x+1023].xyz + r13.xyz;
          r13.xyz = r2.www * cb4[r12.x+1025].xyz + r13.xyz;
          r13.xyz = rcp(r13.xyz);
          r14.xyz = -r12.yzw * r13.xyz + -r13.xyz;
          r13.xyz = -r12.yzw * r13.xyz + r13.xyz;
          r13.xyz = max(r14.xyz, r13.xyz);
          r12.x = min(r13.y, r13.z);
          r12.x = min(r13.x, r12.x);
          r13.xyz = r12.xxx * r2.yzw + r15.xyz;
          r14.xyz = cb4[r7.w+682].xyz + cb4[r7.w+0].xyz;
          r13.xyz = -r14.xyz + r13.xyz;
          r12.x = cb4[r7.w+2387].w * 0.699999988;
          r14.xyz = -cb4[r7.w+2387].www * float3(0.5,0.5,0.5) + cb4[r7.w+2387].xyz;
          r18.xyz = cb4[r7.w+2387].xyz * r12.yzw;
          r19.xyz = cmp(r18.xyz < -r14.xyz);
          r20.xyz = r12.yzw * cb4[r7.w+2387].xyz + r14.xyz;
          r20.xyz = abs(r20.xyz);
          r19.xyz = r19.xyz ? r20.xyz : 0;
          r18.xyz = cmp(r14.xyz < r18.xyz);
          r12.yzw = r12.yzw * cb4[r7.w+2387].xyz + -r14.xyz;
          r12.yzw = abs(r12.yzw);
          r12.yzw = r18.xyz ? r12.yzw : 0;
          r14.x = dot(r19.xyz, float3(1,1,1));
          r12.y = dot(r12.yzw, float3(1,1,1));
          r12.y = r14.x + r12.y;
          r12.x = 1 / r12.x;
          r12.x = saturate(r12.y * r12.x);
          r12.y = r12.x * -2 + 3;
          r12.x = r12.x * r12.x;
          r12.x = -r12.y * r12.x + 1;
        } else {
          r11.w = saturate(r11.w / cb4[r7.w+0].w);
          r14.x = dot(r2.yzw, r9.yzw);
          r10.w = -cb4[r7.w+0].w * cb4[r7.w+0].w + r10.w;
          r10.w = r14.x * r14.x + -r10.w;
          r14.y = cmp(r10.w >= 0);
          r10.w = sqrt(r10.w);
          r10.w = r10.w + -r14.x;
          r9.yzw = r10.www * r2.yzw + r9.yzw;
          r18.yzw = -cb4[r7.w+682].xyz + r9.yzw;
          r9.y = r11.w * 2.5 + -1.5;
          r9.y = max(0, r9.y);
          r9.z = r9.y * r9.y;
          r9.y = -r9.y * 2 + 3;
          r18.x = -r9.z * r9.y + 1;
          r12.xyzw = r14.yyyy ? r18.xyzw : r2.xyzw;
          r13.xyz = r12.yzw;
        }
        r13.w = cb4[r7.w+341].y;
        r13.xyzw = t3.SampleLevel(s3_s, r13.xyzw, r3.w).xyzw;
        r9.yzw = cb4[r7.w+341].xxx * r13.xyz;
        r9.yzw = r9.yzw * r12.xxx;
        r8.xyw = r9.yzw * r4.www + r8.xyw;
        r9.y = -r13.w * r12.x + 1;
        r4.w = r9.y * r4.w;
        r7.w = cb4[r7.w+682].w * r12.x;
        r5.z = r7.w * r5.w + r5.z;
        r7.w = 1 + -r12.x;
        r5.w = r7.w * r5.w;
      }
      r6.w = (int)r6.w + 1;
    }
    r12.xyz = cb1[157].xyz * r8.xyw;
    r1.y = dot(cb1[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r12.w = r5.z * r1.y;
    if (r1.x != 0) {
      r1.z = cb2[0].x + -r1.z;
      r1.z = -1 + r1.z;
      r8.xyw = t1.SampleLevel(s1_s, r2.yzw, r1.z).xyz;
      r2.x = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r2.x = cb2[1].x * r2.x;
      r8.xyw = cb1[187].xyz * r8.xyw;
      r3.w = cmp(0 < cb2[0].w);
      if (r3.w != 0) {
        r2.yzw = t2.SampleLevel(s2_s, r2.yzw, r1.z).xyz;
        r2.yzw = r2.yzw * cb1[187].xyz + -r8.xyw;
        r8.xyw = cb2[0].www * r2.yzw + r8.xyw;
      }
      r1.z = cmp(cb2[0].z < 1);
      r13.xyz = r4.www * r8.xyw + r12.xyz;
      r13.w = r2.x * r5.w + r12.w;
      r2.xyz = r1.zzz ? float3(0,0,0) : r8.xyw;
      r12.xyzw = r1.zzzz ? r13.xyzw : r12.xyzw;
    } else {
      r2.xyz = float3(0,0,0);
    }
    r1.z = saturate(r3.y * cb1[197].x + cb1[197].y);
    r2.w = r1.z * -2 + 3;
    r1.z = r1.z * r1.z;
    r1.z = r2.w * r1.z;
    r2.w = max(9.99999975e-005, r12.w);
    r2.w = r8.z / r2.w;
    r2.w = min(cb1[197].z, r2.w);
    r2.w = -1 + r2.w;
    r1.z = r1.z * r2.w + 1;
    r2.xyz = r4.www * r2.xyz;
    r2.xyz = r12.xyz * r1.zzz + r2.xyz;
    r2.xyz = cb1[135].yyy * r2.xyz + r11.xyz;
    if (r9.x != 0) {
      r17.y = r3.y;
      r5.zw = t6.SampleLevel(s4_s, r17.xy, 0).xy;
      r1.z = saturate(50 * r7.y);
      r1.z = r5.w * r1.z;
      r2.w = 1 + -r5.x;
      r1.z = r2.w * r1.z;
      r8.xyw = r7.xyz * r5.zzz + r1.zzz;
      r8.xyw = r8.xyw * r2.xyz;
      r17.z = r5.y;
      r5.zw = t6.SampleLevel(s4_s, r17.xz, 0).xy;
      r1.z = r5.z * 0.0399999991 + r5.w;
      r2.w = r1.z * r5.x;
      r1.z = -r1.z * r5.x + 1;
      r0.y = r2.w * r0.y;
      r1.w = r1.w + r1.w;
      r6.yzw = r1.www * r6.xyz + r16.xyz;
      r1.w = max(0.00100000005, r5.y);
      r1.w = log2(r1.w);
      r1.w = -r1.w * 1.20000005 + 1;
      r2.w = r3.z + -r1.w;
      r6.x = 0;
      r5.xzw = float3(0,0,0);
      r3.z = r0.y;
      r3.w = 0;
      r4.w = 1;
      r7.w = 0;
      while (true) {
        r9.x = cmp((uint)r7.w >= (uint)r0.w);
        if (r9.x != 0) break;
        r9.x = cmp(r3.z < 0.00100000005);
        if (r9.x != 0) {
          break;
        }
        r9.x = (int)r0.z + (int)r7.w;
        r9.x = t5.Load(r9.x).x;
        r9.yzw = -cb4[r9.x+0].xyz + r15.xyz;
        r10.w = dot(r9.yzw, r9.yzw);
        r11.x = sqrt(r10.w);
        r11.y = cmp(r11.x < cb4[r9.x+0].w);
        if (r11.y != 0) {
          r11.y = cmp(0 < cb4[r9.x+341].z);
          if (r11.y != 0) {
            r11.y = (uint)r9.x << 2;
            r12.xyz = cb4[r11.y+1024].xyz * r15.yyy;
            r12.xyz = r15.xxx * cb4[r11.y+1023].xyz + r12.xyz;
            r12.xyz = r15.zzz * cb4[r11.y+1025].xyz + r12.xyz;
            r12.xyz = cb4[r11.y+1026].xyz + r12.xyz;
            r13.xyz = cb4[r11.y+1024].xyz * r6.zzz;
            r13.xyz = r6.yyy * cb4[r11.y+1023].xyz + r13.xyz;
            r11.yzw = r6.www * cb4[r11.y+1025].xyz + r13.xyz;
            r11.yzw = rcp(r11.yzw);
            r13.xyz = -r12.xyz * r11.yzw + -r11.yzw;
            r11.yzw = -r12.xyz * r11.yzw + r11.yzw;
            r11.yzw = max(r13.xyz, r11.yzw);
            r11.z = min(r11.z, r11.w);
            r11.y = min(r11.y, r11.z);
            r11.yzw = r11.yyy * r6.yzw + r15.xyz;
            r13.xyz = cb4[r9.x+682].xyz + cb4[r9.x+0].xyz;
            r13.xyz = -r13.xyz + r11.yzw;
            r11.y = cb4[r9.x+2387].w * 0.699999988;
            r14.xyz = -cb4[r9.x+2387].www * float3(0.5,0.5,0.5) + cb4[r9.x+2387].xyz;
            r16.xyz = cb4[r9.x+2387].xyz * r12.xyz;
            r17.xyz = cmp(r16.xyz < -r14.xyz);
            r18.xyz = r12.xyz * cb4[r9.x+2387].xyz + r14.xyz;
            r18.xyz = abs(r18.xyz);
            r17.xyz = r17.xyz ? r18.xyz : 0;
            r16.xyz = cmp(r14.xyz < r16.xyz);
            r12.xyz = r12.xyz * cb4[r9.x+2387].xyz + -r14.xyz;
            r12.xyz = abs(r12.xyz);
            r12.xyz = r16.xyz ? r12.xyz : 0;
            r11.z = dot(r17.xyz, float3(1,1,1));
            r11.w = dot(r12.xyz, float3(1,1,1));
            r11.z = r11.z + r11.w;
            r11.y = 1 / r11.y;
            r11.y = saturate(r11.z * r11.y);
            r11.z = r11.y * -2 + 3;
            r11.y = r11.y * r11.y;
            r12.x = -r11.z * r11.y + 1;
          } else {
            r11.x = saturate(r11.x / cb4[r9.x+0].w);
            r11.y = dot(r6.yzw, r9.yzw);
            r10.w = -cb4[r9.x+0].w * cb4[r9.x+0].w + r10.w;
            r10.w = r11.y * r11.y + -r10.w;
            r11.z = cmp(r10.w >= 0);
            r10.w = sqrt(r10.w);
            r10.w = r10.w + -r11.y;
            r9.yzw = r10.www * r6.yzw + r9.yzw;
            r14.yzw = -cb4[r9.x+682].xyz + r9.yzw;
            r9.y = r11.x * 2.5 + -1.5;
            r9.y = max(0, r9.y);
            r9.z = r9.y * r9.y;
            r9.y = -r9.y * 2 + 3;
            r14.x = -r9.z * r9.y + 1;
            r12.xyzw = r11.zzzz ? r14.xyzw : r6.xyzw;
            r13.xyz = r12.yzw;
          }
          r13.w = cb4[r9.x+341].y;
          r11.xyzw = t3.SampleLevel(s3_s, r13.xyzw, r2.w).xyzw;
          r9.yzw = cb4[r9.x+341].xxx * r11.xyz;
          r9.yzw = r9.yzw * r12.xxx;
          r5.xzw = r9.yzw * r3.zzz + r5.xzw;
          r9.y = -r11.w * r12.x + 1;
          r3.z = r9.y * r3.z;
          r9.x = cb4[r9.x+682].w * r12.x;
          r3.w = r9.x * r4.w + r3.w;
          r9.x = 1 + -r12.x;
          r4.w = r9.x * r4.w;
        }
        r7.w = (int)r7.w + 1;
      }
      r9.xyz = cb1[157].xyz * r5.xzw;
      r9.w = r3.w * r1.y;
      if (r1.x != 0) {
        r0.y = cb2[0].x + -r1.w;
        r0.y = -1 + r0.y;
        r1.xyw = t1.SampleLevel(s1_s, r6.yzw, r0.y).xyz;
        r0.z = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r0.z = cb2[1].x * r0.z;
        r1.xyw = cb1[187].xyz * r1.xyw;
        r0.w = cmp(0 < cb2[0].w);
        if (r0.w != 0) {
          r5.xzw = t2.SampleLevel(s2_s, r6.yzw, r0.y).xyz;
          r5.xzw = r5.xzw * cb1[187].xyz + -r1.xyw;
          r1.xyw = cb2[0].www * r5.xzw + r1.xyw;
        }
        r0.y = cmp(cb2[0].z < 1);
        r6.xyz = r3.zzz * r1.xyw + r9.xyz;
        r6.w = r0.z * r4.w + r9.w;
        r1.xyw = r0.yyy ? float3(0,0,0) : r1.xyw;
        r9.xyzw = r0.yyyy ? r6.xyzw : r9.xyzw;
      } else {
        r1.xyw = float3(0,0,0);
      }
      r0.y = saturate(r5.y * cb1[197].x + cb1[197].y);
      r0.z = r0.y * -2 + 3;
      r0.y = r0.y * r0.y;
      r0.y = r0.z * r0.y;
      r0.z = max(9.99999975e-005, r9.w);
      r0.z = r8.z / r0.z;
      r0.z = min(cb1[197].z, r0.z);
      r0.z = -1 + r0.z;
      r0.y = r0.y * r0.z + 1;
      r1.xyw = r3.zzz * r1.xyw;
      r0.yzw = r9.xyz * r0.yyy + r1.xyw;
      r0.yzw = cb1[135].yyy * r0.yzw;
      r0.yzw = r8.xyw * r1.zzz + r0.yzw;
      r0.xyz = r0.yzw * r0.xxx + r10.xyz;
    } else {
      r1.xy = t6.SampleLevel(s4_s, r3.xy, 0).xy;
      r0.w = saturate(50 * r7.y);
      r0.w = r0.w * r1.y;
      r1.xyz = r7.xyz * r1.xxx + r0.www;
      r0.xyz = r2.xyz * r1.xyz;
    }
    r0.xyz = min(float3(0,0,0), -r0.xyz);
    o0.xyz = r4.xyz + -r0.xyz;
  } else {
    o0.xyz = r4.xyz;
  }
  return;
}