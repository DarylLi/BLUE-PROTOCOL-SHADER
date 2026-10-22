// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

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

SamplerState s7_s : register(s7);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = -cb1[129].xy + v0.xy;
  r1.xy = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r1.xy = v0.ww * r1.xy;
  r1.xy = float2(2,-2) * r1.xy;
  r2.xyz = t9.SampleLevel(s0_s, r0.xy, 0).xyz;
  r3.xyzw = t10.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r4.xyzw = t11.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r5.xyzw = t12.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r1.z = t8.SampleLevel(s0_s, r0.xy, 0).x;
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
  r4.w = t15.SampleLevel(s7_s, r0.xy, 0).x;
  r10.zw = -cb1[129].xy * cb1[132].zw + r0.xy;
  r10.zw = min(cb0[6].xy, r10.zw);
  r19.xy = float2(0.5,0.5) * cb1[132].xy;
  r19.xy = floor(r19.xy);
  r20.xy = float2(1,1) / r19.xy;
  r19.zw = r10.zw * r19.xy + float2(-0.5,-0.5);
  r19.zw = floor(r19.zw);
  r19.zw = r19.zw / r19.xy;
  r19.zw = r20.xy * float2(0.5,0.5) + r19.zw;
  r10.zw = -r19.zw + r10.zw;
  r21.xy = r10.zw * r19.xy;
  r22.xyzw = t7.SampleLevel(s5_s, r19.zw, 0).xyzw;
  r20.z = 0;
  r23.xyzw = r19.zwzw + r20.xzzy;
  r24.xyzw = t7.SampleLevel(s5_s, r23.xy, 0).xyzw;
  r23.xyzw = t7.SampleLevel(s5_s, r23.zw, 0).xyzw;
  r19.zw = r19.zw + r20.xy;
  r20.xyzw = t7.SampleLevel(s5_s, r19.zw, 0).xyzw;
  r10.zw = -r10.wz * r19.yx + float2(1,1);
  r19.x = r10.z * r10.w;
  r19.yz = r10.zw * r21.xy;
  r19.w = r21.y * r21.x;
  r21.x = r22.w;
  r21.y = r24.w;
  r21.z = r23.w;
  r21.w = r20.w;
  r21.xyzw = r21.xyzw + -r1.zzzz;
  r21.xyzw = float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005) + abs(r21.xyzw);
  r21.xyzw = float4(1,1,1,1) / r21.xyzw;
  r19.xyzw = r21.xyzw * r19.xyzw;
  r9.y = dot(r19.xyzw, float4(1,1,1,1));
  r9.y = 1 / r9.y;
  r21.xyz = r19.yyy * r24.xyz;
  r21.xyz = r19.xxx * r22.xyz + r21.xyz;
  r19.xyz = r19.zzz * r23.xyz + r21.xyz;
  r19.xyz = r19.www * r20.xyz + r19.xyz;
  r10.z = cb0[2].w + -r1.z;
  r10.z = saturate(cb0[3].x * r10.z);
  r20.xyz = -r6.xyz;
  r19.xyz = r19.xyz * r9.yyy + r20.xyz;
  r19.xyz = r10.zzz * r19.xyz + r6.xyz;
  r21.xyz = cmp((int3)r7.xxx != int3(0,14,7));
  r10.zw = r21.yz ? r21.xx : 0;
  if (r10.z != 0) {
    r12.xyz = -r12.xyz * r10.xxx + r12.xyz;
    r4.xyz = r7.zzz ? r4.xyz : r12.xyz;
    r4.xyz = r4.xyz * cb1[136].www + cb1[136].xyz;
    r12.xyz = -r18.xyz * r10.xxx + r18.xyz;
    r4.xyz = r9.xxx ? r12.xyz : r4.xyz;
    if (r7.z == 0) {
      r7.x = dot(r19.xyz, r19.xyz);
      r7.x = sqrt(r7.x);
      r9.y = max(9.99999975e-006, r7.x);
      r12.xyz = r19.xyz / r9.yyy;
      r21.xyz = r2.xyz * r2.www + -r12.xyz;
      r21.xyz = r7.xxx * r21.xyz + r12.xyz;
      r9.y = dot(r12.xyz, r6.xyz);
      r10.z = 1 + -r9.y;
      r9.y = r7.x * r10.z + r9.y;
      r7.x = r7.x * 10 + -5;
      r7.x = -cb0[13].x * r7.x;
      r7.x = 1.44269502 * r7.x;
      r7.x = exp2(r7.x);
      r7.x = 1 + r7.x;
      r7.x = 1 / r7.x;
      r7.x = saturate(r7.x * cb0[13].y + cb0[13].z);
      r7.x = log2(r7.x);
      r7.x = cb0[13].w * r7.x;
      r7.x = exp2(r7.x);
      r10.z = 1 + -r7.x;
      r7.x = cb0[1].w * r10.z + r7.x;
      r10.z = cmp(cb0[14].x == 0.000000);
      r11.w = min(r8.w, r4.w);
      r12.x = min(r11.w, r7.x);
      r7.x = r11.w * r7.x;
      r7.x = r10.z ? r12.x : r7.x;
    } else {
      r21.xyz = r6.xyz;
      r7.x = 1;
      r9.y = 1;
    }
    if (r9.z != 0) {
      r12.x = t0[0].val[0/4];
      r12.y = t0[0].val[0/4+1];
      r12.z = t0[0].val[0/4+2];
      r12.w = t0[0].val[0/4+3];
      r20.w = 1;
      r12.x = dot(r12.xyzw, r20.xyzw);
      r22.x = t0[1].val[0/4];
      r22.y = t0[1].val[0/4+1];
      r22.z = t0[1].val[0/4+2];
      r22.w = t0[1].val[0/4+3];
      r12.y = dot(r22.xyzw, r20.xyzw);
      r22.x = t0[2].val[0/4];
      r22.y = t0[2].val[0/4+1];
      r22.z = t0[2].val[0/4+2];
      r22.w = t0[2].val[0/4+3];
      r12.z = dot(r22.xyzw, r20.xyzw);
      r20.xyzw = r6.xyzz * r6.yzzx;
      r22.x = t0[3].val[0/4];
      r22.y = t0[3].val[0/4+1];
      r22.z = t0[3].val[0/4+2];
      r22.w = t0[3].val[0/4+3];
      r22.x = dot(r22.xyzw, r20.xyzw);
      r23.x = t0[4].val[0/4];
      r23.y = t0[4].val[0/4+1];
      r23.z = t0[4].val[0/4+2];
      r23.w = t0[4].val[0/4+3];
      r22.y = dot(r23.xyzw, r20.xyzw);
      r23.x = t0[5].val[0/4];
      r23.y = t0[5].val[0/4+1];
      r23.z = t0[5].val[0/4+2];
      r23.w = t0[5].val[0/4+3];
      r22.z = dot(r23.xyzw, r20.xyzw);
      r10.z = r6.y * r6.y;
      r10.z = r6.x * r6.x + -r10.z;
      r20.x = t0[6].val[0/4];
      r20.y = t0[6].val[0/4+1];
      r20.z = t0[6].val[0/4+2];
      r12.xyz = r22.xyz + r12.xyz;
      r12.xyz = r20.xyz * r10.zzz + r12.xyz;
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = cb1[187].xyz * r12.xyz;
      r20.xyz = r5.xyz * r5.xyz;
      r12.xyz = r12.xyz * r7.xxx;
      r12.xyz = r12.xyz * r20.xyz;
    } else {
      r12.xyz = float3(0,0,0);
    }
    r20.xyz = r5.xyz * r5.xyz;
    r22.xyz = r5.xyz * r5.xyz + r4.xyz;
    r4.xyz = r7.www ? r22.xyz : r4.xyz;
    if (r9.w != 0) {
      r22.xyz = cb1[49].xyz * r1.yyy;
      r22.xyz = r1.xxx * cb1[48].xyz + r22.xyz;
      r22.xyz = cb1[50].xyz + r22.xyz;
      r1.x = dot(r22.xyz, r22.xyz);
      r1.x = rsqrt(r1.x);
      r22.xyz = r22.xyz * r1.xxx;
      r1.x = dot(-r22.xyz, r6.xyz);
      r23.xyz = -r6.xyz * r1.xxx + -r22.xyz;
      r1.y = dot(r23.xyz, r23.xyz);
      r1.y = rsqrt(r1.y);
      r21.xyz = r23.xyz * r1.yyy;
      r1.y = max(0.00392156886, r3.y);
      r7.w = dot(-r22.xyz, r21.xyz);
      r9.w = dot(r6.xyz, r21.xyz);
      r10.z = max(-1, r9.w);
      r10.z = min(1, r10.z);
      r1.x = max(-1, r1.x);
      r1.xy = min(float2(1,1), r1.xy);
      r11.w = abs(r1.x) * -0.156582996 + 1.57079637;
      r12.w = 1 + -abs(r1.x);
      r12.w = sqrt(r12.w);
      r13.w = r12.w * r11.w;
      r15.w = cmp(r1.x >= 0);
      r11.w = -r11.w * r12.w + 3.14159274;
      r11.w = r15.w ? r13.w : r11.w;
      r11.w = 1.57079637 + -r11.w;
      r12.w = abs(r10.z) * -0.156582996 + 1.57079637;
      r13.w = 1 + -abs(r10.z);
      r13.w = sqrt(r13.w);
      r15.w = r13.w * r12.w;
      r16.w = cmp(r10.z >= 0);
      r12.w = -r12.w * r13.w + 3.14159274;
      r12.w = r16.w ? r15.w : r12.w;
      r12.w = 1.57079637 + -r12.w;
      r11.w = -r12.w + r11.w;
      r11.w = 0.5 * abs(r11.w);
      r11.w = cos(r11.w);
      r23.xyz = -r10.zzz * r6.xyz + r21.xyz;
      r22.xyz = -r1.xxx * r6.xyz + -r22.xyz;
      r12.w = dot(r23.xyz, r22.xyz);
      r13.w = dot(r23.xyz, r23.xyz);
      r15.w = dot(r22.xyz, r22.xyz);
      r13.w = r13.w * r15.w + 9.99999975e-005;
      r13.w = rsqrt(r13.w);
      r12.w = r13.w * r12.w;
      r22.xy = r12.ww * float2(0.5,17) + float2(0.5,-16.7800007);
      r22.x = saturate(r22.x);
      r12.w = sqrt(r22.x);
      r13.w = r1.y * r1.y;
      r1.y = r1.y * r1.y + 0.200000003;
      r13.w = r13.w * 2 + 0.200000003;
      r15.w = 0.997551024 * r12.w;
      r16.w = -r1.x * r1.x + 1;
      r16.w = sqrt(r16.w);
      r17.w = -0.0699428469 * r1.x;
      r15.w = r15.w * r16.w + r17.w;
      r1.y = r1.y * r12.w;
      r22.xz = float2(1.41421354,3.54490757) * r1.yy;
      r1.x = r10.z + r1.x;
      r1.y = -r15.w * -0.139885694 + r1.x;
      r1.y = r1.y * r1.y;
      r1.y = -0.5 * r1.y;
      r10.z = r22.x * r22.x;
      r1.y = r1.y / r10.z;
      r1.y = 1.44269502 * r1.y;
      r1.y = exp2(r1.y);
      r1.y = r1.y / r22.z;
      r1.y = r1.y * r12.w;
      r10.z = saturate(r7.w * 0.5 + 0.5);
      r10.z = sqrt(r10.z);
      r10.z = 1 + -r10.z;
      r12.w = r10.z * r10.z;
      r12.w = r12.w * r12.w;
      r10.z = r12.w * r10.z;
      r10.z = r10.z * 0.953479409 + 0.0465205684;
      r1.y = r10.z * r1.y;
      r1.y = r1.y * r14.w;
      r7.w = saturate(-r7.w);
      r7.w = 1 + -r7.w;
      r1.x = -0.140000001 + r1.x;
      r1.x = r1.x * r1.x;
      r1.xy = float2(-0.5,0.5) * r1.xy;
      r10.z = r13.w * r13.w;
      r1.x = r1.x / r10.z;
      r1.x = 1.44269502 * r1.x;
      r1.x = exp2(r1.x);
      r10.z = 2.50662827 * r13.w;
      r1.x = r1.x / r10.z;
      r10.z = -r11.w * 0.5 + 1;
      r12.w = r10.z * r10.z;
      r12.w = r12.w * r12.w;
      r10.z = r12.w * r10.z;
      r10.z = r10.z * 0.953479409 + 0.0465205684;
      r12.w = 1 + -r10.z;
      r12.w = r12.w * r12.w;
      r10.z = r12.w * r10.z;
      r11.w = 0.800000012 / r11.w;
      r22.xzw = log2(r14.xyz);
      r22.xzw = r22.xzw * r11.www;
      r22.xzw = exp2(r22.xzw);
      r11.w = 1.44269502 * r22.y;
      r11.w = exp2(r11.w);
      r1.x = r11.w * r1.x;
      r1.x = r1.x * r10.z;
      r22.xyz = r1.xxx * r22.xzw;
      r22.xyz = r1.yyy * r7.www + r22.xyz;
      r1.x = 1 + -abs(r9.w);
      r1.y = dot(r21.xyz, r21.xyz);
      r1.y = 1 + r1.y;
      r1.y = 0.25 * r1.y;
      r1.y = min(1, r1.y);
      r1.x = r1.x + -r1.y;
      r1.x = r1.x * 0.330000013 + r1.y;
      r1.x = r10.x * r1.x;
      r1.x = 0.318309873 * r1.x;
      r23.xyz = sqrt(r14.xyz);
      r22.xyz = r23.xyz * r1.xxx + r22.xyz;
      r22.xyz = min(float3(0,0,0), -r22.xyz);
      r4.xyz = float3(-3.14159274,-3.14159274,-3.14159274) * r22.xyz;
    }
    r20.xyz = r20.xyz * r5.www + r4.xyz;
    r4.xyz = r10.yyy ? r20.xyz : r4.xyz;
    r20.xyz = r8.yyy ? cb1[363].xyz : cb1[187].xyz;
    r20.xyz = r8.xxx ? cb1[362].xyz : r20.xyz;
    if (r7.z != 0) {
      r1.x = cmp(r5.w < 1);
      r1.y = r1.x ? 0 : 1;
      r1.y = r1.y * r8.w;
      r22.xyz = cb1[361].www * r5.xyz;
      r14.xyz = -r5.xyz * cb1[361].www + r14.xyz;
      r14.xyz = r1.yyy * r14.xyz + r22.xyz;
      r1.y = cmp(0 < r5.w);
      r1.x = r1.x ? r1.y : 0;
      r1.x = r1.x ? 0 : 1;
      r1.x = r14.w * r1.x;
      r4.xyz = r1.xxx * float3(0.5,0.5,0.5) + r14.xyz;
      r21.xyz = float3(0,0,1);
    }
    r22.x = t0[0].val[0/4];
    r22.y = t0[0].val[0/4+1];
    r22.z = t0[0].val[0/4+2];
    r22.w = t0[0].val[0/4+3];
    r21.w = 1;
    r14.x = dot(r22.xyzw, r21.xyzw);
    r22.x = t0[1].val[0/4];
    r22.y = t0[1].val[0/4+1];
    r22.z = t0[1].val[0/4+2];
    r22.w = t0[1].val[0/4+3];
    r14.y = dot(r22.xyzw, r21.xyzw);
    r22.x = t0[2].val[0/4];
    r22.y = t0[2].val[0/4+1];
    r22.z = t0[2].val[0/4+2];
    r22.w = t0[2].val[0/4+3];
    r14.z = dot(r22.xyzw, r21.xyzw);
    r22.xyzw = r21.xyzz * r21.yzzx;
    r23.x = t0[3].val[0/4];
    r23.y = t0[3].val[0/4+1];
    r23.z = t0[3].val[0/4+2];
    r23.w = t0[3].val[0/4+3];
    r23.x = dot(r23.xyzw, r22.xyzw);
    r24.x = t0[4].val[0/4];
    r24.y = t0[4].val[0/4+1];
    r24.z = t0[4].val[0/4+2];
    r24.w = t0[4].val[0/4+3];
    r23.y = dot(r24.xyzw, r22.xyzw);
    r24.x = t0[5].val[0/4];
    r24.y = t0[5].val[0/4+1];
    r24.z = t0[5].val[0/4+2];
    r24.w = t0[5].val[0/4+3];
    r23.z = dot(r24.xyzw, r22.xyzw);
    r1.x = r21.y * r21.y;
    r1.x = r21.x * r21.x + -r1.x;
    r21.x = t0[6].val[0/4];
    r21.y = t0[6].val[0/4+1];
    r21.z = t0[6].val[0/4+2];
    r14.xyz = r23.xyz + r14.xyz;
    r14.xyz = r21.xyz * r1.xxx + r14.xyz;
    r14.xyz = max(float3(0,0,0), r14.xyz);
    r14.xyz = r14.xyz * r20.xyz;
    r1.x = r9.y * r7.x;
    r1.y = 1 + -r7.x;
    r20.xyz = cb0[1].xyz * r1.yyy;
    r14.xyz = r1.xxx * r14.xyz + r20.xyz;
    r4.xyz = r14.xyz * r4.xyz + r12.xyz;
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
    r12.xyzw = t13.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r7.xyw = r7.yyy ? r13.xyz : r11.xyz;
    r7.xyw = cb1[137].www * r7.xyw;
    r7.xyz = r7.zzz ? float3(0,0,0) : r7.xyw;
    r7.xyz = cb1[137].xyz + r7.xyz;
    r1.x = (int)r3.w & 16;
    r11.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r11.xyzw = r1.xxxx ? r11.xyzw : float4(0,0,0,0);
    r1.y = dot(r11.xyz, r11.xyz);
    r1.y = rsqrt(r1.y);
    r10.yzw = r11.yzx * r1.yyy;
    r10.yzw = r1.xxx ? r10.yzw : float3(0,0,0);
    r1.x = r3.z + -r14.w;
    r1.x = r5.x * r1.x + r14.w;
    r1.y = 0.0799999982 * r1.x;
    r11.xyz = -r1.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r18.xyz;
    r11.xyz = r10.xxx * r11.xyz + r1.yyy;
    r7.xyz = r9.xxx ? r11.xyz : r7.xyz;
    r1.xy = cmp(float2(0,0) < cb2[0].yz);
    r1.y = r1.y ? r1.x : 0;
    if (r1.y != 0) {
      r1.y = dot(r19.xyz, r19.xyz);
      r1.y = sqrt(r1.y);
      r12.x = t0[0].val[0/4];
      r12.y = t0[0].val[0/4+1];
      r12.z = t0[0].val[0/4+2];
      r12.w = t0[0].val[0/4+3];
      r6.w = 1;
      r11.x = dot(r12.xyzw, r6.xyzw);
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
      r3.z = r6.y * r6.y;
      r3.z = r6.x * r6.x + -r3.z;
      r12.x = t0[6].val[0/4];
      r12.y = t0[6].val[0/4+1];
      r12.z = t0[6].val[0/4+2];
      r11.xyz = r13.xyz + r11.xyz;
      r11.xyz = r12.xyz * r3.zzz + r11.xyz;
      r11.xyz = max(float3(0,0,0), r11.xyz);
      r11.xyz = cb1[187].xyz * r11.xyz;
      r3.z = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
      r8.z = r3.z * r1.y + r8.z;
    }
    r1.y = cmp(0 < abs(r11.w));
    r11.xyz = r10.zwy * r6.xyz;
    r11.xyz = r6.zxy * r10.wyz + -r11.xyz;
    r3.z = dot(r11.xyz, r11.xyz);
    r3.z = rsqrt(r3.z);
    r11.xyz = r11.xyz * r3.zzz;
    r3.z = cmp(r11.w >= 0);
    r10.xyz = r3.zzz ? r11.xyz : r10.yzw;
    r11.xyz = r10.xyz * -r16.xyz;
    r11.xyz = r10.zxy * -r16.yzx + -r11.xyz;
    r12.xyz = r11.xyz * r10.xyz;
    r10.xyz = r11.zxy * r10.yzx + -r12.xyz;
    r3.z = saturate(5 * r3.y);
    r3.z = abs(r11.w) * r3.z;
    r2.xyz = -r2.xyz * r2.www + r10.xyz;
    r2.xyz = r3.zzz * r2.xyz + r6.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r2.xyz = r1.yyy ? r2.xyz : r6.xyz;
    r3.x = dot(-r16.xyz, r2.xyz);
    r1.y = r3.x + r3.x;
    r10.xyz = r1.yyy * r2.xyz + r16.xyz;
    r3.x = saturate(r3.x);
    r1.y = r3.y * r3.y;
    r2.w = -r3.y * r3.y + 1;
    r3.z = sqrt(r2.w);
    r3.z = r3.y * r3.y + r3.z;
    r2.w = r3.z * r2.w;
    r10.xyz = r10.xyz + -r2.xyz;
    r2.xyz = r2.www * r10.xyz + r2.xyz;
    r10.xyzw = t14.Sample(s6_s, r0.xy).xyzw;
    r0.x = 1 + -r10.w;
    r11.xyzw = r10.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r12.xyzw = float4(0,0,0,1) + -r11.xyzw;
    r12.xyzw = r5.xxxx * r12.xyzw + r11.xyzw;
    r11.xyzw = r9.xxxx ? r12.xyzw : r11.xyzw;
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
    r2.w = asint(cb3[1].z) + -1;
    r1.z = min((uint)r2.w, (uint)r1.z);
    r0.zw = (uint2)r0.zw >> asuint(cb3[2].xx);
    r0.w = mad((int)r1.z, asint(cb3[1].y), (int)r0.w);
    r0.z = mad((int)r0.w, asint(cb3[1].x), (int)r0.z);
    r0.z = (int)r0.z + asint(cb3[0].w);
    r0.w = (uint)r0.z << 1;
    r0.w = t4.Load(r0.w).x;
    r0.w = min(asuint(cb3[0].y), (uint)r0.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.z = (((uint)r0.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r0.z = t4.Load(r0.z).x;
    r1.z = cmp(0 < cb0[0].x);
    if (r1.z != 0) {
      r2.w = dot(r19.xyz, r19.xyz);
      r2.w = sqrt(r2.w);
      if (cb1[196].x == 0) {
        r3.z = r2.w;
      } else {
        if (r9.z != 0) {
          r3.z = r2.w;
        } else {
          r3.w = max(0.100000001, r3.y);
          r4.w = cb0[0].y * r2.w;
          r5.z = 3.14159274 * r4.w;
          r5.w = dot(r19.xyz, r2.xyz);
          r6.w = max(0.00100000005, r2.w);
          r5.w = r5.w / r6.w;
          r6.w = 1 + -abs(r5.w);
          r6.w = sqrt(r6.w);
          r7.w = abs(r5.w) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r5.w) + -0.212114394;
          r7.w = r7.w * abs(r5.w) + 1.57072878;
          r8.x = r7.w * r6.w;
          r8.x = r8.x * -2 + 3.14159274;
          r5.w = cmp(r5.w < -r5.w);
          r5.w = r5.w ? r8.x : 0;
          r5.w = r7.w * r6.w + r5.w;
          r6.w = r3.w * 3.14159274 + -r5.z;
          r5.w = -abs(r6.w) + r5.w;
          r3.w = r3.w * 3.14159274 + r5.z;
          r3.w = r3.w + -abs(r6.w);
          r3.w = saturate(r5.w / r3.w);
          r3.w = 1 + -r3.w;
          r5.z = r3.w * -2 + 3;
          r3.w = r3.w * r3.w;
          r3.w = r5.z * r3.w;
          r4.w = r4.w * 3.14159274 + -0.100000001;
          r4.w = saturate(5 * r4.w);
          r3.z = r4.w * r3.w;
        }
      }
      r3.w = 1 + -r3.z;
      r3.z = cb0[1].w * r3.w + r3.z;
      r3.w = 1 + -r3.z;
      r8.xyw = cb0[1].xyz * r3.www;
      r3.w = 1 + -r2.w;
      r2.w = cb0[1].w * r3.w + r2.w;
    } else {
      r8.xyw = float3(0,0,0);
      r3.z = 1;
      r2.w = 1;
    }
    r2.w = r8.z * r2.w;
    r3.w = max(0.00100000005, r3.y);
    r3.w = log2(r3.w);
    r3.w = -r3.w * 1.20000005 + 1;
    r4.w = -1 + cb1[195].z;
    r5.z = r4.w + -r3.w;
    r9.yzw = float3(0,0,0);
    r5.w = r1.y;
    r6.w = 0;
    r7.w = 1;
    r10.w = 0;
    while (true) {
      r11.w = cmp((uint)r10.w >= (uint)r0.w);
      if (r11.w != 0) break;
      r11.w = cmp(r5.w < 0.00100000005);
      if (r11.w != 0) {
        break;
      }
      r11.w = (int)r0.z + (int)r10.w;
      r11.w = t5.Load(r11.w).x;
      r12.xyz = -cb4[r11.w+0].xyz + r15.xyz;
      r12.x = dot(r12.xyz, r12.xyz);
      r12.x = sqrt(r12.x);
      r12.x = cmp(r12.x < cb4[r11.w+0].w);
      if (r12.x != 0) {
        r12.x = (uint)r11.w << 2;
        r12.yzw = cb4[r12.x+1024].xyz * r15.yyy;
        r12.yzw = r15.xxx * cb4[r12.x+1023].xyz + r12.yzw;
        r12.yzw = r15.zzz * cb4[r12.x+1025].xyz + r12.yzw;
        r12.yzw = cb4[r12.x+1026].xyz + r12.yzw;
        r13.xyz = cb4[r12.x+1024].xyz * r2.yyy;
        r13.xyz = r2.xxx * cb4[r12.x+1023].xyz + r13.xyz;
        r13.xyz = r2.zzz * cb4[r12.x+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xyz = -r12.yzw * r13.xyz + -r13.xyz;
        r13.xyz = -r12.yzw * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xyz, r13.xyz);
        r12.x = min(r13.y, r13.z);
        r12.x = min(r13.x, r12.x);
        r13.xyz = r12.xxx * r2.xyz + r15.xyz;
        r14.xyz = cb4[r11.w+682].xyz + cb4[r11.w+0].xyz;
        r13.xyz = -r14.xyz + r13.xyz;
        r12.x = cb4[r11.w+2387].w * 0.699999988;
        r14.xyz = -cb4[r11.w+2387].www * float3(0.5,0.5,0.5) + cb4[r11.w+2387].xyz;
        r18.xyz = cb4[r11.w+2387].xyz * r12.yzw;
        r20.xyz = cmp(r18.xyz < -r14.xyz);
        r21.xyz = r12.yzw * cb4[r11.w+2387].xyz + r14.xyz;
        r21.xyz = abs(r21.xyz);
        r20.xyz = r20.xyz ? r21.xyz : 0;
        r18.xyz = cmp(r14.xyz < r18.xyz);
        r12.yzw = r12.yzw * cb4[r11.w+2387].xyz + -r14.xyz;
        r12.yzw = abs(r12.yzw);
        r12.yzw = r18.xyz ? r12.yzw : 0;
        r14.x = dot(r20.xyz, float3(1,1,1));
        r12.y = dot(r12.yzw, float3(1,1,1));
        r12.y = r14.x + r12.y;
        r12.x = 1 / r12.x;
        r12.x = saturate(r12.y * r12.x);
        r12.y = r12.x * -2 + 3;
        r12.x = r12.x * r12.x;
        r12.x = -r12.y * r12.x + 1;
        r13.w = cb4[r11.w+341].y;
        r13.xyzw = t3.SampleLevel(s3_s, r13.xyzw, r5.z).xyzw;
        r12.yzw = cb4[r11.w+341].xxx * r13.xyz;
        r12.yzw = r12.yzw * r12.xxx;
        r12.yzw = r12.yzw * r5.www;
        r9.yzw = r12.yzw * r3.zzz + r9.yzw;
        r12.y = -r13.w * r12.x + 1;
        r5.w = r12.y * r5.w;
        r11.w = cb4[r11.w+682].w * r12.x;
        r6.w = r11.w * r7.w + r6.w;
        r11.w = 1 + -r12.x;
        r7.w = r11.w * r7.w;
      }
      r10.w = (int)r10.w + 1;
    }
    r12.xyz = cb1[157].xyz * r9.yzw;
    r1.y = dot(cb1[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r12.w = r6.w * r1.y;
    if (r1.x != 0) {
      r3.w = cb2[0].x + -r3.w;
      r3.w = -1 + r3.w;
      r9.yzw = t1.SampleLevel(s1_s, r2.xyz, r3.w).xyz;
      r5.z = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r5.z = cb2[1].x * r5.z;
      r9.yzw = cb1[187].xyz * r9.yzw;
      r6.w = cmp(0 < cb2[0].w);
      if (r6.w != 0) {
        r2.xyz = t2.SampleLevel(s2_s, r2.xyz, r3.w).xyz;
        r2.xyz = r2.xyz * cb1[187].xyz + -r9.yzw;
        r9.yzw = cb2[0].www * r2.xyz + r9.yzw;
      }
      r2.x = cmp(cb2[0].z < 1);
      r13.xyz = r9.yzw * r5.www;
      r13.xyz = r13.xyz * r3.zzz + r12.xyz;
      r13.w = r5.z * r7.w + r12.w;
      r9.yzw = r9.yzw * r3.zzz + r8.xyw;
      r8.xyw = r2.xxx ? r8.xyw : r9.yzw;
      r12.xyzw = r2.xxxx ? r13.xyzw : r12.xyzw;
    }
    r2.x = saturate(r3.y * cb1[197].x + cb1[197].y);
    r2.y = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.x = r2.y * r2.x;
    r2.y = max(9.99999975e-005, r12.w);
    r2.y = r2.w / r2.y;
    r2.y = min(cb1[197].z, r2.y);
    r2.y = -1 + r2.y;
    r2.x = r2.x * r2.y + 1;
    r2.yzw = r8.xyw * r5.www;
    r2.xyz = r12.xyz * r2.xxx + r2.yzw;
    r2.xyz = cb1[135].yyy * r2.xyz + r11.xyz;
    if (r9.x != 0) {
      r17.y = r3.y;
      r3.zw = t6.SampleLevel(s4_s, r17.xy, 0).xy;
      r2.w = saturate(50 * r7.y);
      r2.w = r3.w * r2.w;
      r3.w = 1 + -r5.x;
      r2.w = r3.w * r2.w;
      r8.xyw = r7.xyz * r3.zzz + r2.www;
      r8.xyw = r8.xyw * r2.xyz;
      r17.z = r5.y;
      r3.zw = t6.SampleLevel(s4_s, r17.xz, 0).xy;
      r2.w = r3.z * 0.0399999991 + r3.w;
      r3.z = r2.w * r5.x;
      r2.w = -r2.w * r5.x + 1;
      r5.xzw = r10.xyz * r3.zzz;
      r5.xzw = r8.xyw * r2.www + r5.xzw;
      r0.x = r3.z * r0.x;
      r0.x = r0.x * r0.y;
      r0.y = r1.w + r1.w;
      r6.xyz = r0.yyy * r6.xyz + r16.xyz;
      if (r1.z != 0) {
        r0.y = dot(r19.xyz, r19.xyz);
        r0.y = sqrt(r0.y);
        if (cb1[196].x == 0) {
          r1.z = r0.y;
        } else {
          r1.w = max(0.100000001, r5.y);
          r2.w = cb0[0].y * r0.y;
          r3.z = 3.14159274 * r2.w;
          r3.w = dot(r19.xyz, r6.xyz);
          r6.w = max(0.00100000005, r0.y);
          r3.w = r3.w / r6.w;
          r6.w = 1 + -abs(r3.w);
          r6.w = sqrt(r6.w);
          r7.w = abs(r3.w) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r3.w) + -0.212114394;
          r7.w = r7.w * abs(r3.w) + 1.57072878;
          r8.x = r7.w * r6.w;
          r8.x = r8.x * -2 + 3.14159274;
          r3.w = cmp(r3.w < -r3.w);
          r3.w = r3.w ? r8.x : 0;
          r3.w = r7.w * r6.w + r3.w;
          r6.w = r1.w * 3.14159274 + -r3.z;
          r3.w = -abs(r6.w) + r3.w;
          r1.w = r1.w * 3.14159274 + r3.z;
          r1.w = r1.w + -abs(r6.w);
          r1.w = saturate(r3.w / r1.w);
          r1.w = 1 + -r1.w;
          r3.z = r1.w * -2 + 3;
          r1.w = r1.w * r1.w;
          r1.w = r3.z * r1.w;
          r2.w = r2.w * 3.14159274 + -0.100000001;
          r2.w = saturate(5 * r2.w);
          r1.z = r2.w * r1.w;
        }
        r1.w = 1 + -r1.z;
        r1.z = cb0[1].w * r1.w + r1.z;
        r1.w = 1 + -r1.z;
        r8.xyw = cb0[1].xyz * r1.www;
        r1.w = 1 + -r0.y;
        r0.y = cb0[1].w * r1.w + r0.y;
      } else {
        r8.xyw = float3(0,0,0);
        r1.z = 1;
        r0.y = 1;
      }
      r0.y = r8.z * r0.y;
      r1.w = max(0.00100000005, r5.y);
      r1.w = log2(r1.w);
      r1.w = -r1.w * 1.20000005 + 1;
      r2.w = r4.w + -r1.w;
      r9.xyz = float3(0,0,0);
      r3.z = r0.x;
      r3.w = 0;
      r4.w = 1;
      r6.w = 0;
      while (true) {
        r7.w = cmp((uint)r6.w >= (uint)r0.w);
        if (r7.w != 0) break;
        r7.w = cmp(r3.z < 0.00100000005);
        if (r7.w != 0) {
          break;
        }
        r7.w = (int)r0.z + (int)r6.w;
        r7.w = t5.Load(r7.w).x;
        r10.xyz = -cb4[r7.w+0].xyz + r15.xyz;
        r8.z = dot(r10.xyz, r10.xyz);
        r8.z = sqrt(r8.z);
        r8.z = cmp(r8.z < cb4[r7.w+0].w);
        if (r8.z != 0) {
          r8.z = (uint)r7.w << 2;
          r10.xyz = cb4[r8.z+1024].xyz * r15.yyy;
          r10.xyz = r15.xxx * cb4[r8.z+1023].xyz + r10.xyz;
          r10.xyz = r15.zzz * cb4[r8.z+1025].xyz + r10.xyz;
          r10.xyz = cb4[r8.z+1026].xyz + r10.xyz;
          r11.xyz = cb4[r8.z+1024].xyz * r6.yyy;
          r11.xyz = r6.xxx * cb4[r8.z+1023].xyz + r11.xyz;
          r11.xyz = r6.zzz * cb4[r8.z+1025].xyz + r11.xyz;
          r11.xyz = rcp(r11.xyz);
          r12.xyz = -r10.xyz * r11.xyz + -r11.xyz;
          r11.xyz = -r10.xyz * r11.xyz + r11.xyz;
          r11.xyz = max(r12.xyz, r11.xyz);
          r8.z = min(r11.y, r11.z);
          r8.z = min(r11.x, r8.z);
          r11.xyz = r8.zzz * r6.xyz + r15.xyz;
          r12.xyz = cb4[r7.w+682].xyz + cb4[r7.w+0].xyz;
          r11.xyz = -r12.xyz + r11.xyz;
          r8.z = cb4[r7.w+2387].w * 0.699999988;
          r12.xyz = -cb4[r7.w+2387].www * float3(0.5,0.5,0.5) + cb4[r7.w+2387].xyz;
          r13.xyz = cb4[r7.w+2387].xyz * r10.xyz;
          r14.xyz = cmp(r13.xyz < -r12.xyz);
          r16.xyz = r10.xyz * cb4[r7.w+2387].xyz + r12.xyz;
          r16.xyz = abs(r16.xyz);
          r14.xyz = r14.xyz ? r16.xyz : 0;
          r13.xyz = cmp(r12.xyz < r13.xyz);
          r10.xyz = r10.xyz * cb4[r7.w+2387].xyz + -r12.xyz;
          r10.xyz = abs(r10.xyz);
          r10.xyz = r13.xyz ? r10.xyz : 0;
          r9.w = dot(r14.xyz, float3(1,1,1));
          r10.x = dot(r10.xyz, float3(1,1,1));
          r9.w = r10.x + r9.w;
          r8.z = 1 / r8.z;
          r8.z = saturate(r9.w * r8.z);
          r9.w = r8.z * -2 + 3;
          r8.z = r8.z * r8.z;
          r8.z = -r9.w * r8.z + 1;
          r11.w = cb4[r7.w+341].y;
          r10.xyzw = t3.SampleLevel(s3_s, r11.xyzw, r2.w).xyzw;
          r10.xyz = cb4[r7.w+341].xxx * r10.xyz;
          r10.xyz = r10.xyz * r8.zzz;
          r10.xyz = r10.xyz * r3.zzz;
          r9.xyz = r10.xyz * r1.zzz + r9.xyz;
          r9.w = -r10.w * r8.z + 1;
          r3.z = r9.w * r3.z;
          r7.w = cb4[r7.w+682].w * r8.z;
          r3.w = r7.w * r4.w + r3.w;
          r7.w = 1 + -r8.z;
          r4.w = r7.w * r4.w;
        }
        r6.w = (int)r6.w + 1;
      }
      r9.xyz = cb1[157].xyz * r9.xyz;
      r9.w = r3.w * r1.y;
      if (r1.x != 0) {
        r0.x = cb2[0].x + -r1.w;
        r0.x = -1 + r0.x;
        r1.xyw = t1.SampleLevel(s1_s, r6.xyz, r0.x).xyz;
        r0.z = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r0.z = cb2[1].x * r0.z;
        r1.xyw = cb1[187].xyz * r1.xyw;
        r0.w = cmp(0 < cb2[0].w);
        if (r0.w != 0) {
          r6.xyz = t2.SampleLevel(s2_s, r6.xyz, r0.x).xyz;
          r6.xyz = r6.xyz * cb1[187].xyz + -r1.xyw;
          r1.xyw = cb2[0].www * r6.xyz + r1.xyw;
        }
        r0.x = cmp(cb2[0].z < 1);
        r6.xyz = r3.zzz * r1.xyw;
        r6.xyz = r6.xyz * r1.zzz + r9.xyz;
        r6.w = r0.z * r4.w + r9.w;
        r1.xyz = r1.xyw * r1.zzz + r8.xyw;
        r8.xyw = r0.xxx ? r8.xyw : r1.xyz;
        r9.xyzw = r0.xxxx ? r6.xyzw : r9.xyzw;
      }
      r0.x = saturate(r5.y * cb1[197].x + cb1[197].y);
      r0.z = r0.x * -2 + 3;
      r0.x = r0.x * r0.x;
      r0.x = r0.z * r0.x;
      r0.z = max(9.99999975e-005, r9.w);
      r0.y = r0.y / r0.z;
      r0.y = min(cb1[197].z, r0.y);
      r0.y = -1 + r0.y;
      r0.x = r0.x * r0.y + 1;
      r0.yzw = r8.xyw * r3.zzz;
      r0.xyz = r9.xyz * r0.xxx + r0.yzw;
      r0.xyz = cb1[135].yyy * r0.xyz + r5.xzw;
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