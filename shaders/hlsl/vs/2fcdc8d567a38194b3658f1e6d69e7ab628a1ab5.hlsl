// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[17];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR1,
  out float4 o6 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r4.x = (uint)r2.w << 1;
  r4.xyz = t3.Load(r4.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r4.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t3.Load(r4.w).xyzw;
  r6.xyz = r5.yzx * r4.xyz;
  r4.xyz = r5.xyz * r4.yzx + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = r4.xyz * r5.yzx;
  r4.xyz = r4.zxy * r5.zxy + -r6.xyz;
  r4.xyz = r4.xyz * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = rsqrt(r4.w);
  r9.xyz = r6.xyz * r4.www;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = rsqrt(r4.w);
  r10.xyz = r7.xyz * r4.www;
  r4.w = dot(r8.xyz, r8.xyz);
  r6.w = rsqrt(r4.w);
  r11.xyz = r8.xyz * r6.www;
  r12.xyz = r10.xyz * r4.yyy;
  r12.xyz = r4.xxx * r9.xyz + r12.xyz;
  o3.xyz = r4.zzz * r11.xyz + r12.xyz;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  o4.xyz = r5.zzz * r11.xyz + r4.xyz;
  o4.w = cb2[4].w * r5.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r4.xyz = cb0[7].xyz + r0.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r5.xyz = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r5.xyz;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = -cb0[8].x + r5.x;
  r5.x = saturate(cb0[8].y * r5.x);
  o5.y = 1 + -r5.x;
  r5.x = 1 + -r1.w;
  r5.x = cb0[8].w * r5.x;
  r1.w = cb0[8].z * r1.w + r5.x;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r0.w + r5.x;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = cb0[2].w * r0.w + r4.x;
  r5.xyz = cmp(cb0[2].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r4.y = dot(r5.xyz, cb0[4].xyz);
  r5.xyz = cmp(cb0[3].xyz < r4.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r4.x = dot(r5.xyz, cb0[4].xyz);
  r4.x = cb0[6].w * r4.x;
  r5.w = r4.y * cb0[5].w + r4.x;
  r4.x = cmp(abs(r5.w) < 0.999000013);
  r4.x = r4.x ? 1.000000 : 0;
  r5.z = r4.x * r1.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r9.x = dot(v0.xyzw, r9.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r0.y;
  r9.y = dot(v0.xyzw, r10.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r9.z = dot(v0.xyzw, r3.xyzw);
  r1.xyz = cb2[1].xyz * r9.yyy;
  r1.xyz = cb2[0].xyz * r9.xxx + r1.xyz;
  r1.xyz = cb2[2].xyz * r9.zzz + r1.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb2[1].xyz * r0.yyy;
  r2.xyz = r0.xxx * cb2[0].xyz + r2.xyz;
  r0.xyz = r0.zzz * cb2[2].xyz + r2.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.w = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r1.w).xy;
  r1.w = asint(cb4[0].y) + -1;
  r3.xyzw = min(uint4(2,4,5,6), (uint4)r1.wwww);
  r3.xyzw = mad(asint(cb4[0].yyyy), (int4)r2.wwww, (int4)r3.xyzw);
  r4.xy = t2.Load(r3.x).xy;
  r2.z = t2.Load(r3.y).y;
  r3.xy = t2.Load(r3.z).xy;
  r3.zw = t2.Load(r3.w).xy;
  r1.w = min(7, (uint)r1.w);
  r1.w = mad(asint(cb4[0].y), (int)r2.w, (int)r1.w);
  r5.xy = t2.Load(r1.w).xy;
  r1.w = cmp(r5.z >= 1);
  if (r1.w != 0) {
    r2.w = (int)cb5[15].y;
    r10.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r4.z = sqrt(r4.w);
    r11.xyz = v0.yyy * r7.xyz;
    r11.xyz = v0.xxx * r6.xyz + r11.xyz;
    r11.xyz = v0.zzz * r8.xyz + r11.xyz;
    r11.xyz = r11.xyz / r4.zzz;
    r10.zw = cmp(int2(1,2) < (int2)r2.ww);
    r6.w = cmp((int)r2.w != 5);
    r6.w = r6.w ? r10.z : 0;
    if (r6.w != 0) {
      r12.xyz = r3.xxx * r7.xyz;
      r12.xyz = r2.zzz * r6.xyz + r12.xyz;
      r12.xyz = r3.yyy * r8.xyz + r12.xyz;
      r12.xyz = r12.xyz / r4.zzz;
      r13.xyz = -r12.xyz + r11.xyz;
      r6.w = r12.x + r12.y;
      r7.w = cmp(0 < r5.y);
      r14.xy = cmp((int2)r2.ww >= int2(6,4));
      r14.zw = r7.ww ? cb3[11].xy : cb3[8].xy;
      r6.w = r14.z + r6.w;
      r6.w = 0.5 + r6.w;
      r6.w = frac(r6.w);
      r6.w = r6.w * 2 + -1;
      r8.w = abs(r6.w) * abs(r6.w);
      r6.w = -abs(r6.w) * 2 + 3;
      r6.w = r8.w * r6.w + -0.5;
      r6.w = dot(r6.ww, r14.ww);
      r15.xyz = float3(0.0625,1,16) * r5.xxx;
      r15.xyz = frac(r15.xyz);
      r15.xyz = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r15.xyz = r15.xyz * r6.www;
      r15.xyz = r15.xyz * r3.zzz + r13.xyz;
      r13.xyz = r14.xxx ? r15.xyz : r13.xyz;
      if (r14.y != 0) {
        r15.xyzw = float4(0.0625,1,16,30.2999992) * r3.wwww;
        r15.xyzw = frac(r15.xyzw);
        r14.yzw = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r15.xy = r7.ww ? cb3[12].xz : cb3[9].xz;
        r6.w = 3 * r15.w;
        r16.x = r15.w * 3 + r15.x;
        r16.y = r15.x * 0.75 + -r6.w;
        r15.xz = float2(0.5,0.5) + r16.xy;
        r15.xz = frac(r15.xz);
        r15.xz = r15.xz * float2(2,2) + float2(-1,-1);
        r16.xy = abs(r15.xz) * abs(r15.xz);
        r15.xz = -abs(r15.xz) * float2(2,2) + float2(3,3);
        r15.xz = r16.xy * r15.xz + float2(-0.5,-0.5);
        r15.xz = r15.xz + r15.xz;
        r6.w = dot(r13.xyz, r13.xyz);
        r6.w = sqrt(r6.w);
        r8.w = r15.z * r15.z + r15.x;
        r10.z = r15.y * r3.z;
        r8.w = r10.z * r8.w;
        sincos(r8.w, r16.x, r17.x);
        r8.w = 1 + -r17.x;
        r18.xyzw = r8.wwww * r14.yyyz;
        r16.xyz = r16.xxx * r14.wyz;
        r19.xy = r18.zy * r14.wz + r16.zx;
        r20.xy = r18.xw * r14.yz + r17.xx;
        r19.z = r18.w * r14.w + -r16.y;
        r21.xw = r18.zy * r14.wz + -r16.zx;
        r21.y = r18.w * r14.w + r16.y;
        r10.z = r14.w * r14.w;
        r21.z = r10.z * r8.w + r17.x;
        if (r14.x != 0) {
          r16.xy = r7.ww ? cb3[12].yw : cb3[9].yw;
          r17.xyz = r7.www ? cb3[13].xyz : cb3[10].xyz;
          r18.xyz = cb3[0].yzx * r14.wyz;
          r18.xyz = r14.zwy * cb3[0].zxy + -r18.xyz;
          r7.w = dot(cb3[0].xyz, r14.yzw);
          r7.w = max(-1, r7.w);
          r7.w = min(1, r7.w);
          r18.w = r18.z + r7.w;
          r8.w = dot(r18.xyw, r18.xyw);
          r8.w = rsqrt(r8.w);
          r14.xyz = r18.wxy * r8.www;
          r8.w = 1 + -abs(r7.w);
          r8.w = sqrt(r8.w);
          r10.z = abs(r7.w) * -0.0187292993 + 0.0742610022;
          r10.z = r10.z * abs(r7.w) + -0.212114394;
          r10.z = r10.z * abs(r7.w) + 1.57072878;
          r11.w = r10.z * r8.w;
          r11.w = r11.w * -2 + 3.14159274;
          r7.w = cmp(r7.w < -r7.w);
          r7.w = r7.w ? r11.w : 0;
          r7.w = r10.z * r8.w + r7.w;
          r8.w = -r15.x * r15.x + r15.z;
          r15.x = r15.w * 3 + r17.z;
          r15.y = 0.870000005 * r15.x;
          r15.xy = float2(0.5,0.5) + r15.xy;
          r15.xy = frac(r15.xy);
          r15.xy = r15.xy * float2(2,2) + float2(-1,-1);
          r15.zw = abs(r15.xy) * abs(r15.xy);
          r15.xy = -abs(r15.xy) * float2(2,2) + float2(3,3);
          r15.xy = r15.zw * r15.xy + float2(-0.5,-0.5);
          r15.xy = r15.xy + r15.xy;
          r10.z = r15.y * r15.y;
          r10.z = r10.z * r15.x + 1;
          r10.z = saturate(0.5 * r10.z);
          r10.z = log2(r10.z);
          r10.z = r17.y * r10.z;
          r10.z = exp2(r10.z);
          r8.w = r8.w * r16.x;
          r7.w = r7.w * r16.y + r8.w;
          r7.w = r17.x * r10.z + r7.w;
          r7.w = r7.w * r3.z;
          sincos(r7.w, r15.x, r16.x);
          r7.w = 1 + -r16.x;
          r17.xyzw = r7.wwww * r14.yyyz;
          r15.xyz = r15.xxx * r14.xyz;
          r18.xy = r17.zy * r14.xz + r15.zx;
          r22.xy = r17.xw * r14.yz + r16.xx;
          r18.z = r17.w * r14.x + -r15.y;
          r23.xy = r17.yz * r14.zx + -r15.xz;
          r23.z = r17.w * r14.x + r15.y;
          r8.w = r14.x * r14.x;
          r18.w = r8.w * r7.w + r16.x;
          r20.z = r21.w;
          r20.w = r19.x;
          r22.z = r18.y;
          r22.w = r23.y;
          r14.x = dot(r20.xzw, r22.xzw);
          r23.w = r22.y;
          r14.y = dot(r20.xwz, r23.xzw);
          r14.z = dot(r20.xzw, r18.xzw);
          r19.w = r20.y;
          r20.x = dot(r19.ywz, r22.xzw);
          r20.y = dot(r19.yzw, r23.xzw);
          r20.z = dot(r19.ywz, r18.xzw);
          r15.x = dot(r21.xyz, r22.xzw);
          r15.y = dot(r21.xzy, r23.xzw);
          r15.z = dot(r21.xyz, r18.xzw);
          r21.xyz = r15.xyz;
        } else {
          r14.x = r20.x;
          r14.y = r21.w;
          r14.z = r19.x;
          r20.xz = r19.yz;
        }
        r14.x = dot(r14.xyz, r13.xyz);
        r14.y = dot(r20.xyz, r13.xyz);
        r14.z = dot(r21.xyz, r13.xyz);
        r7.w = dot(r14.xyz, r14.xyz);
        r7.w = rsqrt(r7.w);
        r14.xyz = r14.xyz * r7.www;
        r13.xyz = r14.xyz * r6.www;
      }
      r12.xyz = r13.xyz + r12.xyz;
    } else {
      r12.xyz = r11.xyz;
    }
    if (r10.w != 0) {
      r6.w = cmp((int)r2.w == 5);
      if (r6.w != 0) {
        r13.xyz = float3(0.0625,1,16) * r4.yyy;
        r13.xyz = frac(r13.xyz);
        r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r13.xyz = r13.xyz * r4.xxx;
        r6.w = r10.x + r10.y;
        r6.w = cb3[2].x + r6.w;
        r14.x = r6.w + r4.y;
        r14.y = r6.w * cb3[3].y + r4.y;
        r7.w = cb3[3].y * r14.x;
        r14.z = 0.5 * r7.w;
        r14.w = r14.x + -r4.x;
        r14.xyzw = float4(0.5,0.5,0.5,1.5) + r14.xyzw;
        r14.xyzw = frac(r14.xyzw);
        r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r15.xyzw = abs(r14.xyzw) * abs(r14.xyzw);
        r14.xyzw = -abs(r14.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r14.xyzw = r15.xyzw * r14.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r14.xyzw = r14.xyzw + r14.xyzw;
        r15.w = r14.y * r14.z;
        r7.w = cmp(r15.w < 0);
        r15.y = abs(r15.w);
        r15.xz = float2(-1,1);
        r10.zw = r7.ww ? r15.xy : r15.zw;
        r7.w = -r14.y * r14.z + r10.z;
        r7.w = r10.w * r7.w + r15.w;
        r8.w = r10.z + -r7.w;
        r7.w = r10.w * r8.w + r7.w;
        r7.w = cb3[3].x * r7.w;
        r8.w = 1 + -cb3[0].w;
        r10.z = 1 + -cb3[3].x;
        r10.z = r14.x * r10.z;
        r7.w = r7.w * r8.w + r10.z;
        r8.w = r14.w * cb3[4].x + 1;
        r7.w = r8.w * r7.w;
        r13.xyz = r13.xyz * r7.www;
        r13.xyz = r13.xyz * cb3[2].yyy + r12.xyz;
        r14.x = r6.w * 0.100000001 + r4.y;
        r6.w = cb3[18].x * cb3[7].x;
        r14.y = r6.w * 0.100000001 + r4.y;
        r10.zw = float2(0.5,0.5) + r14.xy;
        r10.zw = frac(r10.zw);
        r10.zw = r10.zw * float2(2,2) + float2(-1,-1);
        r14.xy = abs(r10.zw) * abs(r10.zw);
        r10.zw = -abs(r10.zw) * float2(2,2) + float2(3,3);
        r10.zw = r14.xy * r10.zw + float2(-0.5,-0.5);
        r10.zw = r10.zw + r10.zw;
        r10.zw = r10.zw * r10.zw;
        r6.w = r10.w * r10.z;
        r6.w = -r6.w * cb3[7].x + 1;
        r7.w = cb3[0].w * r14.w;
        r6.w = r7.w * cb3[4].x + r6.w;
        r14.xyz = cb3[5].xyz + -r13.xyz;
        r14.xyz = cb3[6].yyy * r14.xyz;
        r14.xyz = r14.xyz * r6.www;
        r12.xyz = r14.xyz * r4.xxx + r13.xyz;
      } else {
        r13.xyz = float3(0.0625,1,16) * r4.yyy;
        r13.xyz = frac(r13.xyz);
        r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r13.xyz = r13.xyz * r4.xxx;
        r6.w = r10.x + r10.y;
        r6.w = cb3[2].x + r6.w;
        r14.x = r6.w + r4.y;
        r14.y = r6.w * cb3[3].y + r4.y;
        r6.w = cb3[3].y * r14.x;
        r14.z = 0.5 * r6.w;
        r10.xzw = float3(0.5,0.5,0.5) + r14.xyz;
        r10.xzw = frac(r10.xzw);
        r10.xzw = r10.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r14.xyz = abs(r10.xzw) * abs(r10.xzw);
        r10.xzw = -abs(r10.xzw) * float3(2,2,2) + float3(3,3,3);
        r10.xzw = r14.xyz * r10.xzw + float3(-0.5,-0.5,-0.5);
        r10.xzw = r10.xzw + r10.xzw;
        r14.w = r10.z * r10.w;
        r6.w = cmp(r14.w < 0);
        r14.y = abs(r14.w);
        r14.xz = float2(-1,1);
        r14.xy = r6.ww ? r14.xy : r14.zw;
        r6.w = -r10.z * r10.w + r14.x;
        r6.w = r14.y * r6.w + r14.w;
        r7.w = r14.x + -r6.w;
        r6.w = r14.y * r7.w + r6.w;
        r6.w = cb3[3].x * r6.w;
        r7.w = 1 + -cb3[0].w;
        r8.w = 1 + -cb3[3].x;
        r8.w = r10.x * r8.w;
        r6.w = r6.w * r7.w + r8.w;
        r10.xzw = r13.xyz * r6.www;
        r12.xyz = r10.xzw * cb3[2].yyy + r12.xyz;
      }
    }
    r6.w = dot(r12.xyz, r12.xyz);
    r6.w = sqrt(r6.w);
    r7.w = 1 / cb3[1].z;
    r7.w = -r7.w * 0.25 + r12.z;
    r7.w = max(0, r7.w);
    r7.w = cb3[1].z * r7.w;
    r8.w = cmp(r7.w != 0.000000);
    r10.x = log2(r7.w);
    r10.x = cb3[1].w * r10.x;
    r10.x = exp2(r10.x);
    r7.w = r8.w ? r10.x : r7.w;
    r13.x = r0.x * 0.00100000005 + cb3[1].x;
    r13.y = cb3[1].x * 0.800000012 + r10.y;
    r10.xy = float2(0.5,0.5) + r13.xy;
    r10.xy = frac(r10.xy);
    r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
    r10.zw = abs(r10.xy) * abs(r10.xy);
    r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
    r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
    r10.xy = r10.xy + r10.xy;
    r8.w = r10.y * r10.y + r10.x;
    r10.x = cmp(cb3[1].z != 0.000000);
    r10.y = cb3[6].x / cb3[1].z;
    r10.x = r10.x ? r10.y : cb3[6].x;
    r8.w = cb3[1].y * r8.w + r10.x;
    r7.w = r8.w * r7.w;
    r10.xy = cb3[0].xy * r7.ww + r12.xy;
    r10.xy = r2.ww ? r10.xy : r12.xy;
    r10.z = r12.z;
    r7.w = dot(r10.xyz, r10.xyz);
    r7.w = rsqrt(r7.w);
    r10.xyz = r10.xyz * r7.www;
    r10.xyz = r10.xyz * r6.www;
    r10.xyz = r2.www ? r10.xyz : r12.xyz;
    r10.xyz = r10.xyz + -r11.xyz;
    r10.xyz = r10.xyz * r4.zzz;
    r11.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r11.xyz = floor(r11.xyz);
    r11.xyz = r11.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r12.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r11.xyz = r12.xyz + -r11.xyz;
    r11.yz = float2(9.99999975e-005,9.99999975e-005) * r11.yz;
    r2.w = r11.x * 9.99999975e-005 + 0.200000003;
    r12.yzw = t4.SampleLevel(s0_s, r11.yz, -1).xyz;
    r4.z = cb5[16].x + r12.z;
    r6.w = -r4.z + r2.w;
    r6.w = max(0, r6.w);
    r7.w = r12.y + -r12.z;
    r7.w = max(9.99999975e-005, r7.w);
    r6.w = r6.w / r7.w;
    r6.w = min(1, r6.w);
    r7.w = ceil(r6.w);
    r6.w = 1 + -r6.w;
    r6.w = min(0.200000003, r6.w);
    r6.w = r7.w * r6.w;
    r7.w = 5 * r6.w;
    r2.w = -r12.w + r2.w;
    r8.w = max(0, r2.w);
    r4.z = r4.z + -r12.w;
    r4.z = max(9.99999975e-005, r4.z);
    r4.z = r8.w / r4.z;
    r4.z = min(1, r4.z);
    r8.w = ceil(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = min(0.200000003, r4.z);
    r4.z = r8.w * r4.z;
    r4.z = 5 * r4.z;
    r11.xw = t5.SampleLevel(s1_s, r11.yz, -1).xy;
    r6.w = r6.w * 5 + -r4.z;
    r6.w = cmp(9.99999975e-006 < abs(r6.w));
    r8.w = cmp(r7.w >= r4.z);
    r8.w = r8.w ? r11.w : r11.x;
    r6.w = r6.w ? r8.w : r11.x;
    r6.w = cb5[16].y * r6.w;
    r4.z = max(r7.w, r4.z);
    r6.w = r6.w * r4.z;
    r2.w = 10000 * r2.w;
    r2.w = max(0, r2.w);
    r7.w = cb5[8].z + r0.z;
    r7.w = r12.x + -r7.w;
    r2.w = min(r7.w, r2.w);
    r2.w = cb5[16].w * r2.w;
    r2.w = r4.z * r2.w;
    r2.w = r6.w * r2.w;
    r11.xy = t6.SampleLevel(s2_s, r11.yz, -1).xy;
    r11.xy = float2(-1,-1) + r11.xy;
    r11.xy = r11.xy * r2.ww;
    r2.w = dot(r11.xy, r11.xy);
    r2.w = sqrt(r2.w);
    r11.z = -1.20000005 * r2.w;
    r10.xyz = r10.xyz * cb5[15].zzz + r11.xyz;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r10.xyz;
  r10.xyw = cb2[13].xyz + cb1[113].xyz;
  r9.w = v0.w;
  r11.x = cb2[10].x;
  r11.y = cb2[11].x;
  r11.z = cb2[12].x;
  r11.w = r10.x;
  r11.x = dot(r9.xyzw, r11.xyzw);
  r12.x = cb2[10].y;
  r12.y = cb2[11].y;
  r12.z = cb2[12].y;
  r12.w = r10.y;
  r11.y = dot(r9.xyzw, r12.xyzw);
  r10.x = cb2[10].z;
  r10.y = cb2[11].z;
  r10.z = cb2[12].z;
  r11.z = dot(r9.xyzw, r10.xyzw);
  if (r1.w != 0) {
    r1.w = (int)cb5[15].y;
    r9.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r4.w);
    r10.xyz = v0.yyy * r7.xyz;
    r10.xyz = v0.xxx * r6.xyz + r10.xyz;
    r10.xyz = v0.zzz * r8.xyz + r10.xyz;
    r10.xyz = r10.xyz / r0.yyy;
    r4.zw = cmp(int2(1,2) < (int2)r1.ww);
    r2.w = cmp((int)r1.w != 5);
    r2.w = r2.w ? r4.z : 0;
    if (r2.w != 0) {
      r7.xyz = r3.xxx * r7.xyz;
      r6.xyz = r2.zzz * r6.xyz + r7.xyz;
      r6.xyz = r3.yyy * r8.xyz + r6.xyz;
      r6.xyz = r6.xyz / r0.yyy;
      r7.xyz = r10.xyz + -r6.xyz;
      r2.z = r6.x + r6.y;
      r2.w = cmp(0 < r5.y);
      r3.xy = cmp((int2)r1.ww >= int2(6,4));
      r8.xy = r2.ww ? cb3[11].xy : cb3[8].xy;
      r2.z = r8.x + r2.z;
      r2.z = 0.5 + r2.z;
      r2.z = frac(r2.z);
      r2.z = r2.z * 2 + -1;
      r4.z = abs(r2.z) * abs(r2.z);
      r2.z = -abs(r2.z) * 2 + 3;
      r2.z = r4.z * r2.z + -0.5;
      r2.z = dot(r2.zz, r8.yy);
      r8.xyz = float3(0.0625,1,16) * r5.xxx;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = r8.xyz * r2.zzz;
      r8.xyz = r8.xyz * r3.zzz + r7.xyz;
      r7.xyz = r3.xxx ? r8.xyz : r7.xyz;
      if (r3.y != 0) {
        r8.xyzw = float4(0.0625,1,16,30.2999992) * r3.wwww;
        r8.xyzw = frac(r8.xyzw);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r3.yw = r2.ww ? cb3[12].xz : cb3[9].xz;
        r2.z = 3 * r8.w;
        r5.x = r8.w * 3 + r3.y;
        r5.y = r3.y * 0.75 + -r2.z;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r9.zw = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r9.zw * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r2.z = dot(r7.xyz, r7.xyz);
        r2.z = sqrt(r2.z);
        r3.y = r5.y * r5.y + r5.x;
        r3.w = r3.z * r3.w;
        r3.y = r3.w * r3.y;
        sincos(r3.y, r12.x, r13.x);
        r3.y = 1 + -r13.x;
        r14.xyzw = r3.yyyy * r8.xxxy;
        r12.xyz = r12.xxx * r8.zxy;
        r15.xy = r14.zy * r8.zy + r12.zx;
        r16.xy = r14.xw * r8.xy + r13.xx;
        r15.z = r14.w * r8.z + -r12.y;
        r17.xw = r14.zy * r8.zy + -r12.zx;
        r17.y = r14.w * r8.z + r12.y;
        r3.w = r8.z * r8.z;
        r17.z = r3.w * r3.y + r13.x;
        if (r3.x != 0) {
          r3.xy = r2.ww ? cb3[12].yw : cb3[9].yw;
          r12.xyz = r2.www ? cb3[13].xyz : cb3[10].xyz;
          r13.xyz = cb3[0].yzx * r8.zxy;
          r13.xyz = r8.yzx * cb3[0].zxy + -r13.xyz;
          r2.w = dot(cb3[0].xyz, r8.xyz);
          r2.w = max(-1, r2.w);
          r2.w = min(1, r2.w);
          r13.w = r13.z + r2.w;
          r3.w = dot(r13.xyw, r13.xyw);
          r3.w = rsqrt(r3.w);
          r8.xyz = r13.wxy * r3.www;
          r3.w = 1 + -abs(r2.w);
          r3.w = sqrt(r3.w);
          r4.z = abs(r2.w) * -0.0187292993 + 0.0742610022;
          r4.z = r4.z * abs(r2.w) + -0.212114394;
          r4.z = r4.z * abs(r2.w) + 1.57072878;
          r6.w = r4.z * r3.w;
          r6.w = r6.w * -2 + 3.14159274;
          r2.w = cmp(r2.w < -r2.w);
          r2.w = r2.w ? r6.w : 0;
          r2.w = r4.z * r3.w + r2.w;
          r3.w = -r5.x * r5.x + r5.y;
          r5.x = r8.w * 3 + r12.z;
          r5.y = 0.870000005 * r5.x;
          r5.xy = float2(0.5,0.5) + r5.xy;
          r5.xy = frac(r5.xy);
          r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
          r9.zw = abs(r5.xy) * abs(r5.xy);
          r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
          r5.xy = r9.zw * r5.xy + float2(-0.5,-0.5);
          r5.xy = r5.xy + r5.xy;
          r4.z = r5.y * r5.y;
          r4.z = r4.z * r5.x + 1;
          r4.z = saturate(0.5 * r4.z);
          r4.z = log2(r4.z);
          r4.z = r12.y * r4.z;
          r4.z = exp2(r4.z);
          r3.x = r3.w * r3.x;
          r2.w = r2.w * r3.y + r3.x;
          r2.w = r12.x * r4.z + r2.w;
          r2.w = r3.z * r2.w;
          sincos(r2.w, r3.x, r5.x);
          r2.w = 1 + -r5.x;
          r12.xyzw = r2.wwww * r8.yyyz;
          r3.xyz = r3.xxx * r8.xyz;
          r13.xy = r12.zy * r8.xz + r3.zx;
          r14.xy = r12.xw * r8.yz + r5.xx;
          r13.z = r12.w * r8.x + -r3.y;
          r18.xy = r12.yz * r8.zx + -r3.xz;
          r18.z = r12.w * r8.x + r3.y;
          r3.x = r8.x * r8.x;
          r13.w = r3.x * r2.w + r5.x;
          r16.z = r17.w;
          r16.w = r15.x;
          r14.z = r13.y;
          r14.w = r18.y;
          r3.x = dot(r16.xzw, r14.xzw);
          r18.w = r14.y;
          r3.y = dot(r16.xwz, r18.xzw);
          r3.z = dot(r16.xzw, r13.xzw);
          r15.w = r16.y;
          r16.x = dot(r15.ywz, r14.xzw);
          r16.y = dot(r15.yzw, r18.xzw);
          r16.z = dot(r15.ywz, r13.xzw);
          r8.x = dot(r17.xyz, r14.xzw);
          r8.y = dot(r17.xzy, r18.xzw);
          r8.z = dot(r17.xyz, r13.xzw);
          r17.xyz = r8.xyz;
        } else {
          r3.x = r16.x;
          r3.y = r17.w;
          r3.z = r15.x;
          r16.xz = r15.yz;
        }
        r3.x = dot(r3.xyz, r7.xyz);
        r3.y = dot(r16.xyz, r7.xyz);
        r3.z = dot(r17.xyz, r7.xyz);
        r2.w = dot(r3.xyz, r3.xyz);
        r2.w = rsqrt(r2.w);
        r3.xyz = r3.xyz * r2.www;
        r7.xyz = r3.xyz * r2.zzz;
      }
      r3.xyz = r7.xyz + r6.xyz;
    } else {
      r3.xyz = r10.xyz;
    }
    if (r4.w != 0) {
      r2.z = cmp((int)r1.w == 5);
      if (r2.z != 0) {
        r6.xyz = float3(0.0625,1,16) * r4.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r4.xxx;
        r2.z = r9.x + r9.y;
        r2.z = cb3[2].x + r2.z;
        r7.x = r2.z + r4.y;
        r7.y = r2.z * cb3[3].y + r4.y;
        r2.w = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.w;
        r7.w = r7.x + -r4.x;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r8.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r8.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r8.w = r7.y * r7.z;
        r2.w = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r4.zw = r2.ww ? r8.xy : r8.zw;
        r2.w = -r7.y * r7.z + r4.z;
        r2.w = r4.w * r2.w + r8.w;
        r3.w = r4.z + -r2.w;
        r2.w = r4.w * r3.w + r2.w;
        r2.w = cb3[3].x * r2.w;
        r3.w = 1 + -cb3[0].w;
        r4.z = 1 + -cb3[3].x;
        r4.z = r7.x * r4.z;
        r2.w = r2.w * r3.w + r4.z;
        r3.w = r7.w * cb3[4].x + 1;
        r2.w = r3.w * r2.w;
        r6.xyz = r6.xyz * r2.www;
        r6.xyz = r6.xyz * cb3[2].yyy + r3.xyz;
        r5.x = r2.z * 0.100000001 + r4.y;
        r2.z = cb3[18].x * cb3[7].x;
        r5.y = r2.z * 0.100000001 + r4.y;
        r2.zw = float2(0.5,0.5) + r5.xy;
        r2.zw = frac(r2.zw);
        r2.zw = r2.zw * float2(2,2) + float2(-1,-1);
        r4.zw = abs(r2.zw) * abs(r2.zw);
        r2.zw = -abs(r2.zw) * float2(2,2) + float2(3,3);
        r2.zw = r4.zw * r2.zw + float2(-0.5,-0.5);
        r2.zw = r2.zw + r2.zw;
        r2.zw = r2.zw * r2.zw;
        r2.z = r2.w * r2.z;
        r2.z = -r2.z * cb3[7].x + 1;
        r2.w = cb3[0].w * r7.w;
        r2.z = r2.w * cb3[4].x + r2.z;
        r7.xyz = cb3[5].xyz + -r6.xyz;
        r7.xyz = cb3[6].yyy * r7.xyz;
        r7.xyz = r7.xyz * r2.zzz;
        r3.xyz = r7.xyz * r4.xxx + r6.xyz;
      } else {
        r6.xyz = float3(0.0625,1,16) * r4.yyy;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r4.xzw = r6.xyz * r4.xxx;
        r2.z = r9.x + r9.y;
        r2.z = cb3[2].x + r2.z;
        r6.x = r2.z + r4.y;
        r6.y = r2.z * cb3[3].y + r4.y;
        r2.z = cb3[3].y * r6.x;
        r6.z = 0.5 * r2.z;
        r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = abs(r6.xyz) * abs(r6.xyz);
        r6.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
        r6.xyz = r7.xyz * r6.xyz + float3(-0.5,-0.5,-0.5);
        r6.xyz = r6.xyz + r6.xyz;
        r7.w = r6.y * r6.z;
        r2.z = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r2.zw = r2.zz ? r7.xy : r7.zw;
        r3.w = -r6.y * r6.z + r2.z;
        r3.w = r2.w * r3.w + r7.w;
        r2.z = -r3.w + r2.z;
        r2.z = r2.w * r2.z + r3.w;
        r2.z = cb3[3].x * r2.z;
        r2.w = 1 + -cb3[0].w;
        r3.w = 1 + -cb3[3].x;
        r3.w = r6.x * r3.w;
        r2.z = r2.z * r2.w + r3.w;
        r4.xyz = r4.xzw * r2.zzz;
        r3.xyz = r4.xyz * cb3[2].yyy + r3.xyz;
      }
    }
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = sqrt(r2.z);
    r2.w = 1 / cb3[1].z;
    r2.w = -r2.w * 0.25 + r3.z;
    r2.w = max(0, r2.w);
    r2.w = cb3[1].z * r2.w;
    r3.w = cmp(r2.w != 0.000000);
    r4.x = log2(r2.w);
    r4.x = cb3[1].w * r4.x;
    r4.x = exp2(r4.x);
    r2.w = r3.w ? r4.x : r2.w;
    r4.x = r0.x * 0.00100000005 + cb3[1].x;
    r4.y = cb3[1].x * 0.800000012 + r9.y;
    r4.xy = float2(0.5,0.5) + r4.xy;
    r4.xy = frac(r4.xy);
    r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
    r4.zw = abs(r4.xy) * abs(r4.xy);
    r4.xy = -abs(r4.xy) * float2(2,2) + float2(3,3);
    r4.xy = r4.zw * r4.xy + float2(-0.5,-0.5);
    r4.xy = r4.xy + r4.xy;
    r0.x = r4.y * r4.y + r4.x;
    r3.w = cmp(cb3[1].z != 0.000000);
    r4.x = cb3[6].x / cb3[1].z;
    r3.w = r3.w ? r4.x : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r3.w;
    r0.x = r0.x * r2.w;
    r4.xy = cb3[0].xy * r0.xx + r3.xy;
    r4.xy = r1.ww ? r4.xy : r3.xy;
    r4.z = r3.z;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = rsqrt(r0.x);
    r4.xyz = r4.xyz * r0.xxx;
    r4.xyz = r4.xyz * r2.zzz;
    r3.xyz = r1.www ? r4.xyz : r3.xyz;
    r3.xyz = r3.xyz + -r10.xyz;
    r3.xyz = r3.xyz * r0.yyy;
    r0.x = cb5[8].z + r0.z;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = -cb1[113].zxy + r11.zxy;
    r4.xyz = r6.xyz + -r4.xyz;
    r0.yz = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r1.w = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t4.SampleLevel(s0_s, r0.yz, -1).xyz;
    r2.z = cb5[16].x + r4.y;
    r2.w = -r2.z + r1.w;
    r2.w = max(0, r2.w);
    r3.w = r4.x + -r4.y;
    r3.w = max(9.99999975e-005, r3.w);
    r2.w = r2.w / r3.w;
    r2.w = min(1, r2.w);
    r3.w = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.w * r2.w;
    r3.w = 5 * r2.w;
    r1.w = -r4.z + r1.w;
    r4.x = max(0, r1.w);
    r2.z = r2.z + -r4.z;
    r2.z = max(9.99999975e-005, r2.z);
    r2.z = r4.x / r2.z;
    r2.z = min(1, r2.z);
    r4.x = ceil(r2.z);
    r2.z = 1 + -r2.z;
    r2.z = min(0.200000003, r2.z);
    r2.z = r4.x * r2.z;
    r2.z = 5 * r2.z;
    r4.xy = t5.SampleLevel(s1_s, r0.yz, -1).xy;
    r2.w = r2.w * 5 + -r2.z;
    r2.w = cmp(9.99999975e-006 < abs(r2.w));
    r4.z = cmp(r3.w >= r2.z);
    r4.y = r4.z ? r4.y : r4.x;
    r2.w = r2.w ? r4.y : r4.x;
    r2.w = cb5[16].y * r2.w;
    r2.z = max(r3.w, r2.z);
    r2.w = r2.w * r2.z;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r0.x = r6.x + -r0.x;
    r0.x = min(r1.w, r0.x);
    r0.x = cb5[16].w * r0.x;
    r0.x = r2.z * r0.x;
    r0.x = r2.w * r0.x;
    r0.yz = t6.SampleLevel(s2_s, r0.yz, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r0.xy = r0.xx * r0.yz;
    r1.w = dot(r0.xy, r0.xy);
    r1.w = sqrt(r1.w);
    r0.z = -1.20000005 * r1.w;
    r0.xyz = r3.xyz * cb5[15].zzz + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r11.xyz + r0.xyz;
  r3.xyzw = cb1[92].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb1[91].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb1[93].xyzw + r3.xyzw;
  o2.xyzw = cb1[94].xyzw + r3.xyzw;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = cmp(1 < asint(cb1[135].x));
  r0.y = 0.00100000005 * r1.w;
  r0.x = r0.x ? r0.y : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  o3.w = 0;
  o5.x = r0.w;
  o5.zw = r5.zw;
  o6.xy = r2.xy;
  o6.zw = float2(0,0);
  return;
}