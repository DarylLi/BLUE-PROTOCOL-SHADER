// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[15];
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
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0)
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
  r0.yzw = t1.Load(r0.z).xyz;
  r3.xyzw = t0.Load(r0.x).xyzw;
  r0.x = 0.00390625 * r1.w;
  r0.x = trunc(r0.x);
  r4.xyz = cb0[7].xyz + r3.xyz;
  r5.xyz = cb2[1].xyz * r4.yyy;
  r4.xyw = cb2[0].xyz * r4.xxx + r5.xyz;
  r4.xyz = cb2[2].xyz * r4.zzz + r4.xyw;
  r4.xyz = cb2[3].xyz + r4.xyz;
  r5.xyz = cb1[70].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[8].x + r1.w;
  r1.w = saturate(cb0[8].y * r1.w);
  o3.y = 1 + -r1.w;
  r1.w = 1 + -r0.x;
  r1.w = cb0[8].w * r1.w;
  r0.x = cb0[8].z * r0.x + r1.w;
  r5.xyz = -cb0[5].xyz + r4.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[2].w * r3.w + r1.w;
  r4.xyz = -cb0[6].xyz + r4.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r3.w + r2.w;
  r4.xyz = cmp(cb0[2].xyz < r1.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r4.xyz, cb0[4].xyz);
  r4.xyz = cmp(cb0[3].xyz < r2.www);
  r4.xyz = r4.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r4.xyz, cb0[4].xyz);
  r2.w = cb0[6].w * r2.w;
  r4.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r4.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r4.z = r1.w * r0.x;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r0.y;
  r5.w = r3.x;
  r6.x = dot(v0.xyzw, r5.xyzw);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r0.z;
  r7.w = r3.y;
  r6.y = dot(v0.xyzw, r7.xyzw);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r0.w;
  r8.w = r3.z;
  r6.z = dot(v0.xyzw, r8.xyzw);
  r5.yzw = cb2[1].xyz * r6.yyy;
  r5.yzw = cb2[0].xyz * r6.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r6.zzz + r5.yzw;
  r7.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r7.xzw + r5.yzw;
  r1.xyw = cb2[1].xyz * r1.yyy;
  r1.xyw = r5.xxx * cb2[0].xyz + r1.xyw;
  r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
  r7.xyz = cb2[1].xyz * r7.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r7.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.xzw = cb2[1].xyz * r0.zzz;
  r0.xyz = r0.yyy * cb2[0].xyz + r0.xzw;
  r0.xyz = r8.zzz * cb2[2].xyz + r0.xyz;
  r7.xyz = cb2[1].xyz * r3.yyy;
  r7.xyz = r3.xxx * cb2[0].xyz + r7.xyz;
  r3.xyz = r3.zzz * cb2[2].xyz + r7.xyz;
  r3.xyz = cb2[3].xyz + r3.xyz;
  r0.w = (int)v2.x + asint(cb4[0].w);
  r1.w = (int)r0.w * asint(cb4[0].y);
  r4.xy = t2.Load(r1.w).xy;
  r1.w = asint(cb4[0].y) + -1;
  r7.xyzw = min(uint4(2,4,5,6), (uint4)r1.wwww);
  r7.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.wwww, (int4)r7.xyzw);
  r8.xy = t2.Load(r7.x).xy;
  r2.w = t2.Load(r7.y).y;
  r7.xy = t2.Load(r7.z).xy;
  r7.zw = t2.Load(r7.w).xy;
  r1.w = min(7, (uint)r1.w);
  r0.w = mad(asint(cb4[0].y), (int)r0.w, (int)r1.w);
  r8.zw = t2.Load(r0.w).xy;
  r0.w = cmp(r4.z >= 1);
  if (r0.w != 0) {
    r9.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r9.xyz = floor(r9.xyz);
    r9.xyz = r9.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r10.xyz = r5.wyz * r4.zzz + -cb1[70].zxy;
    r9.xyz = r10.xyz + -r9.xyz;
    r9.yz = float2(9.99999975e-005,9.99999975e-005) * r9.yz;
    r1.w = r9.x * 9.99999975e-005 + 0.200000003;
    r10.yzw = t3.SampleLevel(s0_s, r9.yz, -1).xyz;
    r5.x = cb5[13].z + r10.z;
    r9.x = -r5.x + r1.w;
    r9.w = r10.y + -r10.z;
    r9.xw = max(float2(0,9.99999975e-005), r9.xw);
    r9.x = r9.x / r9.w;
    r9.x = min(1, r9.x);
    r9.w = ceil(r9.x);
    r9.x = 1 + -r9.x;
    r9.x = min(0.200000003, r9.x);
    r9.x = r9.w * r9.x;
    r9.w = 5 * r9.x;
    r1.w = -r10.w + r1.w;
    r10.y = max(0, r1.w);
    r5.x = r5.x + -r10.w;
    r5.x = max(9.99999975e-005, r5.x);
    r5.x = r10.y / r5.x;
    r5.x = min(1, r5.x);
    r10.y = ceil(r5.x);
    r5.x = 1 + -r5.x;
    r5.x = min(0.200000003, r5.x);
    r5.x = r10.y * r5.x;
    r5.x = 5 * r5.x;
    r10.yz = t4.SampleLevel(s1_s, r9.yz, -1).xy;
    r9.x = r9.x * 5 + -r5.x;
    r9.x = cmp(9.99999975e-006 < abs(r9.x));
    r10.w = cmp(r9.w >= r5.x);
    r10.z = r10.w ? r10.z : r10.y;
    r9.x = r9.x ? r10.z : r10.y;
    r9.x = cb5[13].w * r9.x;
    r5.x = max(r9.w, r5.x);
    r9.x = r9.x * r5.x;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r9.w = cb5[7].z + r3.z;
    r9.w = r10.x + -r9.w;
    r1.w = min(r9.w, r1.w);
    r1.w = cb5[14].y * r1.w;
    r1.w = r5.x * r1.w;
    r1.w = r9.x * r1.w;
    r9.xy = t5.SampleLevel(s2_s, r9.yz, -1).xy;
    r9.xy = float2(-1,-1) + r9.xy;
    r9.xy = r9.xy * r1.ww;
    r1.w = dot(r9.xy, r9.xy);
    r1.w = sqrt(r1.w);
    r9.z = -1.20000005 * r1.w;
    r1.w = (int)cb5[14].z;
    r10.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r5.x = dot(r0.xyz, r0.xyz);
    r5.x = sqrt(r5.x);
    r11.xyz = v0.yyy * r2.xyz;
    r11.xyz = v0.xxx * r1.xyz + r11.xyz;
    r11.xyz = v0.zzz * r0.xyz + r11.xyz;
    r11.xyz = r11.xyz / r5.xxx;
    r10.zw = cmp(int2(1,2) < (int2)r1.ww);
    r9.w = cmp((int)r1.w != 5);
    r9.w = r9.w ? r10.z : 0;
    if (r9.w != 0) {
      r12.xyz = r7.xxx * r2.xyz;
      r12.xyz = r2.www * r1.xyz + r12.xyz;
      r12.xyz = r7.yyy * r0.xyz + r12.xyz;
      r12.xyz = r12.xyz / r5.xxx;
      r13.xyz = -r12.xyz + r11.xyz;
      r9.w = r12.x + r12.y;
      r10.z = cmp(0 < r8.w);
      r14.xy = cmp((int2)r1.ww >= int2(6,4));
      r14.zw = r10.zz ? cb3[11].xy : cb3[8].xy;
      r9.w = r14.z + r9.w;
      r9.w = 0.5 + r9.w;
      r9.w = frac(r9.w);
      r9.w = r9.w * 2 + -1;
      r11.w = abs(r9.w) * abs(r9.w);
      r9.w = -abs(r9.w) * 2 + 3;
      r9.w = r11.w * r9.w + -0.5;
      r9.w = dot(r9.ww, r14.ww);
      r15.xyz = float3(0.0625,1,16) * r8.zzz;
      r15.xyz = frac(r15.xyz);
      r15.xyz = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r15.xyz = r15.xyz * r9.www;
      r15.xyz = r15.xyz * r7.zzz + r13.xyz;
      r13.xyz = r14.xxx ? r15.xyz : r13.xyz;
      if (r14.y != 0) {
        r15.xyzw = float4(0.0625,1,16,30.2999992) * r7.wwww;
        r15.xyzw = frac(r15.xyzw);
        r14.yzw = r15.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r15.xy = r10.zz ? cb3[12].xz : cb3[9].xz;
        r9.w = 3 * r15.w;
        r16.x = r15.w * 3 + r15.x;
        r16.y = r15.x * 0.75 + -r9.w;
        r15.xz = float2(0.5,0.5) + r16.xy;
        r15.xz = frac(r15.xz);
        r15.xz = r15.xz * float2(2,2) + float2(-1,-1);
        r16.xy = abs(r15.xz) * abs(r15.xz);
        r15.xz = -abs(r15.xz) * float2(2,2) + float2(3,3);
        r15.xz = r16.xy * r15.xz + float2(-0.5,-0.5);
        r15.xz = r15.xz + r15.xz;
        r9.w = dot(r13.xyz, r13.xyz);
        r9.w = sqrt(r9.w);
        r11.w = r15.z * r15.z + r15.x;
        r12.w = r15.y * r7.z;
        r11.w = r12.w * r11.w;
        sincos(r11.w, r16.x, r17.x);
        r11.w = 1 + -r17.x;
        r18.xyzw = r11.wwww * r14.yyyz;
        r16.xyz = r16.xxx * r14.wyz;
        r19.xy = r18.zy * r14.wz + r16.zx;
        r20.xy = r18.xw * r14.yz + r17.xx;
        r19.z = r18.w * r14.w + -r16.y;
        r21.xw = r18.zy * r14.wz + -r16.zx;
        r21.y = r18.w * r14.w + r16.y;
        r12.w = r14.w * r14.w;
        r21.z = r12.w * r11.w + r17.x;
        if (r14.x != 0) {
          r16.xy = r10.zz ? cb3[12].yw : cb3[9].yw;
          r17.xyz = r10.zzz ? cb3[13].xyz : cb3[10].xyz;
          r18.xyz = cb3[0].yzx * r14.wyz;
          r18.xyz = r14.zwy * cb3[0].zxy + -r18.xyz;
          r10.z = dot(cb3[0].xyz, r14.yzw);
          r10.z = max(-1, r10.z);
          r10.z = min(1, r10.z);
          r18.w = r18.z + r10.z;
          r11.w = dot(r18.xyw, r18.xyw);
          r11.w = rsqrt(r11.w);
          r14.xyz = r18.wxy * r11.www;
          r11.w = 1 + -abs(r10.z);
          r11.w = sqrt(r11.w);
          r12.w = abs(r10.z) * -0.0187292993 + 0.0742610022;
          r12.w = r12.w * abs(r10.z) + -0.212114394;
          r12.w = r12.w * abs(r10.z) + 1.57072878;
          r13.w = r12.w * r11.w;
          r13.w = r13.w * -2 + 3.14159274;
          r10.z = cmp(r10.z < -r10.z);
          r10.z = r10.z ? r13.w : 0;
          r10.z = r12.w * r11.w + r10.z;
          r11.w = -r15.x * r15.x + r15.z;
          r15.x = r15.w * 3 + r17.z;
          r15.y = 0.870000005 * r15.x;
          r15.xy = float2(0.5,0.5) + r15.xy;
          r15.xy = frac(r15.xy);
          r15.xy = r15.xy * float2(2,2) + float2(-1,-1);
          r15.zw = abs(r15.xy) * abs(r15.xy);
          r15.xy = -abs(r15.xy) * float2(2,2) + float2(3,3);
          r15.xy = r15.zw * r15.xy + float2(-0.5,-0.5);
          r15.xy = r15.xy + r15.xy;
          r12.w = r15.y * r15.y;
          r12.w = r12.w * r15.x + 1;
          r12.w = saturate(0.5 * r12.w);
          r12.w = log2(r12.w);
          r12.w = r17.y * r12.w;
          r12.w = exp2(r12.w);
          r11.w = r11.w * r16.x;
          r10.z = r10.z * r16.y + r11.w;
          r10.z = r17.x * r12.w + r10.z;
          r10.z = r10.z * r7.z;
          sincos(r10.z, r15.x, r16.x);
          r10.z = 1 + -r16.x;
          r17.xyzw = r10.zzzz * r14.yyyz;
          r15.xyz = r15.xxx * r14.xyz;
          r18.xy = r17.zy * r14.xz + r15.zx;
          r22.xy = r17.xw * r14.yz + r16.xx;
          r18.z = r17.w * r14.x + -r15.y;
          r23.xy = r17.yz * r14.zx + -r15.xz;
          r23.z = r17.w * r14.x + r15.y;
          r11.w = r14.x * r14.x;
          r18.w = r11.w * r10.z + r16.x;
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
        r10.z = dot(r14.xyz, r14.xyz);
        r10.z = rsqrt(r10.z);
        r14.xyz = r14.xyz * r10.zzz;
        r13.xyz = r14.xyz * r9.www;
      }
      r12.xyz = r13.xyz + r12.xyz;
    } else {
      r12.xyz = r11.xyz;
    }
    if (r10.w != 0) {
      r9.w = cmp((int)r1.w == 5);
      if (r9.w != 0) {
        r13.xyz = float3(0.0625,1,16) * r8.yyy;
        r13.xyz = frac(r13.xyz);
        r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r13.xyz = r13.xyz * r8.xxx;
        r9.w = r10.x + r10.y;
        r9.w = cb3[2].x + r9.w;
        r14.x = r9.w + r8.y;
        r14.y = r9.w * cb3[3].y + r8.y;
        r10.z = cb3[3].y * r14.x;
        r14.z = 0.5 * r10.z;
        r14.w = r14.x + -r8.x;
        r14.xyzw = float4(0.5,0.5,0.5,1.5) + r14.xyzw;
        r14.xyzw = frac(r14.xyzw);
        r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r15.xyzw = abs(r14.xyzw) * abs(r14.xyzw);
        r14.xyzw = -abs(r14.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r14.xyzw = r15.xyzw * r14.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r14.xyzw = r14.xyzw + r14.xyzw;
        r15.w = r14.y * r14.z;
        r10.z = cmp(r15.w < 0);
        r15.y = abs(r15.w);
        r15.xz = float2(-1,1);
        r10.zw = r10.zz ? r15.xy : r15.zw;
        r11.w = -r14.y * r14.z + r10.z;
        r11.w = r10.w * r11.w + r15.w;
        r10.z = -r11.w + r10.z;
        r10.z = r10.w * r10.z + r11.w;
        r10.z = cb3[3].x * r10.z;
        r10.w = 1 + -cb3[0].w;
        r11.w = 1 + -cb3[3].x;
        r11.w = r14.x * r11.w;
        r10.z = r10.z * r10.w + r11.w;
        r10.w = r14.w * cb3[4].x + 1;
        r10.z = r10.z * r10.w;
        r13.xyz = r13.xyz * r10.zzz;
        r13.xyz = r13.xyz * cb3[2].yyy + r12.xyz;
        r14.x = r9.w * 0.100000001 + r8.y;
        r9.w = cb3[18].x * cb3[7].x;
        r14.y = r9.w * 0.100000001 + r8.y;
        r10.zw = float2(0.5,0.5) + r14.xy;
        r10.zw = frac(r10.zw);
        r10.zw = r10.zw * float2(2,2) + float2(-1,-1);
        r14.xy = abs(r10.zw) * abs(r10.zw);
        r10.zw = -abs(r10.zw) * float2(2,2) + float2(3,3);
        r10.zw = r14.xy * r10.zw + float2(-0.5,-0.5);
        r10.zw = r10.zw + r10.zw;
        r10.zw = r10.zw * r10.zw;
        r9.w = r10.w * r10.z;
        r9.w = -r9.w * cb3[7].x + 1;
        r10.z = cb3[0].w * r14.w;
        r9.w = r10.z * cb3[4].x + r9.w;
        r14.xyz = cb3[5].xyz + -r13.xyz;
        r14.xyz = cb3[6].yyy * r14.xyz;
        r14.xyz = r14.xyz * r9.www;
        r12.xyz = r14.xyz * r8.xxx + r13.xyz;
      } else {
        r13.xyz = float3(0.0625,1,16) * r8.yyy;
        r13.xyz = frac(r13.xyz);
        r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r13.xyz = r13.xyz * r8.xxx;
        r9.w = r10.x + r10.y;
        r9.w = cb3[2].x + r9.w;
        r14.x = r9.w + r8.y;
        r14.y = r9.w * cb3[3].y + r8.y;
        r9.w = cb3[3].y * r14.x;
        r14.z = 0.5 * r9.w;
        r10.xzw = float3(0.5,0.5,0.5) + r14.xyz;
        r10.xzw = frac(r10.xzw);
        r10.xzw = r10.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r14.xyz = abs(r10.xzw) * abs(r10.xzw);
        r10.xzw = -abs(r10.xzw) * float3(2,2,2) + float3(3,3,3);
        r10.xzw = r14.xyz * r10.xzw + float3(-0.5,-0.5,-0.5);
        r10.xzw = r10.xzw + r10.xzw;
        r14.w = r10.z * r10.w;
        r9.w = cmp(r14.w < 0);
        r14.y = abs(r14.w);
        r14.xz = float2(-1,1);
        r14.xy = r9.ww ? r14.xy : r14.zw;
        r9.w = -r10.z * r10.w + r14.x;
        r9.w = r14.y * r9.w + r14.w;
        r10.z = r14.x + -r9.w;
        r9.w = r14.y * r10.z + r9.w;
        r9.w = cb3[3].x * r9.w;
        r10.z = 1 + -cb3[0].w;
        r10.w = 1 + -cb3[3].x;
        r10.x = r10.x * r10.w;
        r9.w = r9.w * r10.z + r10.x;
        r10.xzw = r13.xyz * r9.www;
        r12.xyz = r10.xzw * cb3[2].yyy + r12.xyz;
      }
    }
    r9.w = dot(r12.xyz, r12.xyz);
    r9.w = sqrt(r9.w);
    r10.x = 1 / cb3[1].z;
    r10.x = -r10.x * 0.25 + r12.z;
    r10.x = max(0, r10.x);
    r10.x = cb3[1].z * r10.x;
    r10.z = cmp(r10.x != 0.000000);
    r10.w = log2(r10.x);
    r10.w = cb3[1].w * r10.w;
    r10.w = exp2(r10.w);
    r10.x = r10.z ? r10.w : r10.x;
    r13.x = r3.x * 0.00100000005 + cb3[1].x;
    r13.y = cb3[1].x * 0.800000012 + r10.y;
    r10.yz = float2(0.5,0.5) + r13.xy;
    r10.yz = frac(r10.yz);
    r10.yz = r10.yz * float2(2,2) + float2(-1,-1);
    r13.xy = abs(r10.yz) * abs(r10.yz);
    r10.yz = -abs(r10.yz) * float2(2,2) + float2(3,3);
    r10.yz = r13.xy * r10.yz + float2(-0.5,-0.5);
    r10.yz = r10.yz + r10.yz;
    r10.y = r10.z * r10.z + r10.y;
    r10.z = cmp(cb3[1].z != 0.000000);
    r10.w = cb3[6].x / cb3[1].z;
    r10.z = r10.z ? r10.w : cb3[6].x;
    r10.y = cb3[1].y * r10.y + r10.z;
    r10.x = r10.y * r10.x;
    r10.xy = cb3[0].xy * r10.xx + r12.xy;
    r10.xy = r1.ww ? r10.xy : r12.xy;
    r10.z = r12.z;
    r10.w = dot(r10.xyz, r10.xyz);
    r10.w = rsqrt(r10.w);
    r10.xyz = r10.xyz * r10.www;
    r10.xyz = r10.xyz * r9.www;
    r10.xyz = r1.www ? r10.xyz : r12.xyz;
    r10.xyz = r10.xyz + -r11.xyz;
    r10.xyz = r10.xyz * r5.xxx;
    r9.xyz = r10.xyz * cb5[14].www + r9.xyz;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r5.xyz = r5.yzw * r4.zzz + r9.xyz;
  r9.xyw = cb2[13].xyz + cb1[113].xyz;
  r6.w = v0.w;
  r10.x = cb2[10].x;
  r10.y = cb2[11].x;
  r10.z = cb2[12].x;
  r10.w = r9.x;
  r10.x = dot(r6.xyzw, r10.xyzw);
  r11.x = cb2[10].y;
  r11.y = cb2[11].y;
  r11.z = cb2[12].y;
  r11.w = r9.y;
  r10.y = dot(r6.xyzw, r11.xyzw);
  r9.x = cb2[10].z;
  r9.y = cb2[11].z;
  r9.z = cb2[12].z;
  r10.z = dot(r6.xyzw, r9.xyzw);
  if (r0.w != 0) {
    r0.w = cb5[7].z + r3.z;
    r1.w = (int)cb5[14].z;
    r3.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r5.w = dot(r0.xyz, r0.xyz);
    r5.w = sqrt(r5.w);
    r6.xyz = v0.yyy * r2.xyz;
    r6.xyz = v0.xxx * r1.xyz + r6.xyz;
    r6.xyz = v0.zzz * r0.xyz + r6.xyz;
    r6.xyz = r6.xyz / r5.www;
    r9.xy = cmp(int2(1,2) < (int2)r1.ww);
    r6.w = cmp((int)r1.w != 5);
    r6.w = r6.w ? r9.x : 0;
    if (r6.w != 0) {
      r2.xyz = r7.xxx * r2.xyz;
      r1.xyz = r2.www * r1.xyz + r2.xyz;
      r0.xyz = r7.yyy * r0.xyz + r1.xyz;
      r0.xyz = r0.xyz / r5.www;
      r1.xyz = r6.xyz + -r0.xyz;
      r2.x = r0.x + r0.y;
      r2.y = cmp(0 < r8.w);
      r2.zw = cmp((int2)r1.ww >= int2(6,4));
      r7.xy = r2.yy ? cb3[11].xy : cb3[8].xy;
      r2.x = r7.x + r2.x;
      r2.x = 0.5 + r2.x;
      r2.x = frac(r2.x);
      r2.x = r2.x * 2 + -1;
      r6.w = abs(r2.x) * abs(r2.x);
      r2.x = -abs(r2.x) * 2 + 3;
      r2.x = r6.w * r2.x + -0.5;
      r2.x = dot(r2.xx, r7.yy);
      r9.xzw = float3(0.0625,1,16) * r8.zzz;
      r9.xzw = frac(r9.xzw);
      r9.xzw = r9.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r9.xzw = r9.xzw * r2.xxx;
      r9.xzw = r9.xzw * r7.zzz + r1.xyz;
      r1.xyz = r2.zzz ? r9.xzw : r1.xyz;
      if (r2.w != 0) {
        r11.xyzw = float4(0.0625,1,16,30.2999992) * r7.wwww;
        r11.xyzw = frac(r11.xyzw);
        r7.xyw = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xw = r2.yy ? cb3[12].xz : cb3[9].xz;
        r6.w = 3 * r11.w;
        r11.x = r11.w * 3 + r2.x;
        r11.y = r2.x * 0.75 + -r6.w;
        r8.zw = float2(0.5,0.5) + r11.xy;
        r8.zw = frac(r8.zw);
        r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
        r9.xz = abs(r8.zw) * abs(r8.zw);
        r8.zw = -abs(r8.zw) * float2(2,2) + float2(3,3);
        r8.zw = r9.xz * r8.zw + float2(-0.5,-0.5);
        r8.zw = r8.zw + r8.zw;
        r2.x = dot(r1.xyz, r1.xyz);
        r2.x = sqrt(r2.x);
        r6.w = r8.w * r8.w + r8.z;
        r2.w = r7.z * r2.w;
        r2.w = r2.w * r6.w;
        sincos(r2.w, r9.x, r11.x);
        r2.w = 1 + -r11.x;
        r12.xyzw = r2.wwww * r7.xxxy;
        r9.xzw = r9.xxx * r7.wxy;
        r13.xy = r12.zy * r7.wy + r9.wx;
        r14.xy = r12.xw * r7.xy + r11.xx;
        r13.z = r12.w * r7.w + -r9.z;
        r15.xw = r12.zy * r7.wy + -r9.wx;
        r15.y = r12.w * r7.w + r9.z;
        r6.w = r7.w * r7.w;
        r15.z = r6.w * r2.w + r11.x;
        if (r2.z != 0) {
          r2.zw = r2.yy ? cb3[12].yw : cb3[9].yw;
          r9.xzw = r2.yyy ? cb3[13].xyz : cb3[10].xyz;
          r11.xyz = cb3[0].yzx * r7.wxy;
          r12.xyz = r7.ywx * cb3[0].zxy + -r11.xyz;
          r2.y = dot(cb3[0].xyz, r7.xyw);
          r2.y = max(-1, r2.y);
          r2.y = min(1, r2.y);
          r12.w = r12.z + r2.y;
          r6.w = dot(r12.xyw, r12.xyw);
          r6.w = rsqrt(r6.w);
          r7.xyw = r12.wxy * r6.www;
          r6.w = 1 + -abs(r2.y);
          r6.w = sqrt(r6.w);
          r10.w = abs(r2.y) * -0.0187292993 + 0.0742610022;
          r10.w = r10.w * abs(r2.y) + -0.212114394;
          r10.w = r10.w * abs(r2.y) + 1.57072878;
          r11.x = r10.w * r6.w;
          r11.x = r11.x * -2 + 3.14159274;
          r2.y = cmp(r2.y < -r2.y);
          r2.y = r2.y ? r11.x : 0;
          r2.y = r10.w * r6.w + r2.y;
          r6.w = -r8.z * r8.z + r8.w;
          r11.x = r11.w * 3 + r9.w;
          r11.y = 0.870000005 * r11.x;
          r8.zw = float2(0.5,0.5) + r11.xy;
          r8.zw = frac(r8.zw);
          r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
          r11.xy = abs(r8.zw) * abs(r8.zw);
          r8.zw = -abs(r8.zw) * float2(2,2) + float2(3,3);
          r8.zw = r11.xy * r8.zw + float2(-0.5,-0.5);
          r8.zw = r8.zw + r8.zw;
          r8.w = r8.w * r8.w;
          r8.z = r8.w * r8.z + 1;
          r8.z = saturate(0.5 * r8.z);
          r8.z = log2(r8.z);
          r8.z = r9.z * r8.z;
          r8.z = exp2(r8.z);
          r2.z = r6.w * r2.z;
          r2.y = r2.y * r2.w + r2.z;
          r2.y = r9.x * r8.z + r2.y;
          r2.y = r7.z * r2.y;
          sincos(r2.y, r9.x, r11.x);
          r2.y = 1 + -r11.x;
          r12.xyzw = r2.yyyy * r7.yyyw;
          r9.xzw = r9.xxx * r7.xyw;
          r16.xy = r12.zy * r7.xw + r9.wx;
          r17.xy = r12.xw * r7.yw + r11.xx;
          r16.z = r12.w * r7.x + -r9.z;
          r18.xy = r12.yz * r7.wx + -r9.xw;
          r18.z = r12.w * r7.x + r9.z;
          r2.z = r7.x * r7.x;
          r16.w = r2.z * r2.y + r11.x;
          r14.z = r15.w;
          r14.w = r13.x;
          r17.z = r16.y;
          r17.w = r18.y;
          r7.x = dot(r14.xzw, r17.xzw);
          r18.w = r17.y;
          r7.y = dot(r14.xwz, r18.xzw);
          r7.z = dot(r14.xzw, r16.xzw);
          r13.w = r14.y;
          r14.x = dot(r13.ywz, r17.xzw);
          r14.y = dot(r13.yzw, r18.xzw);
          r14.z = dot(r13.ywz, r16.xzw);
          r11.x = dot(r15.xyz, r17.xzw);
          r11.y = dot(r15.xzy, r18.xzw);
          r11.z = dot(r15.xyz, r16.xzw);
          r15.xyz = r11.xyz;
        } else {
          r7.x = r14.x;
          r7.y = r15.w;
          r7.z = r13.x;
          r14.xz = r13.yz;
        }
        r7.x = dot(r7.xyz, r1.xyz);
        r7.y = dot(r14.xyz, r1.xyz);
        r7.z = dot(r15.xyz, r1.xyz);
        r2.y = dot(r7.xyz, r7.xyz);
        r2.y = rsqrt(r2.y);
        r2.yzw = r7.xyz * r2.yyy;
        r1.xyz = r2.yzw * r2.xxx;
      }
      r0.xyz = r1.xyz + r0.xyz;
    } else {
      r0.xyz = r6.xyz;
    }
    if (r9.y != 0) {
      r1.x = cmp((int)r1.w == 5);
      if (r1.x != 0) {
        r1.xyz = float3(0.0625,1,16) * r8.yyy;
        r1.xyz = frac(r1.xyz);
        r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r1.xyz = r1.xyz * r8.xxx;
        r2.x = r3.y + r3.z;
        r2.x = cb3[2].x + r2.x;
        r7.x = r2.x + r8.y;
        r7.y = r2.x * cb3[3].y + r8.y;
        r2.y = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.y;
        r7.w = r7.x + -r8.x;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r9.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r9.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r9.w = r7.y * r7.z;
        r2.y = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r2.yz = r2.yy ? r9.xy : r9.zw;
        r2.w = -r7.y * r7.z + r2.y;
        r2.w = r2.z * r2.w + r9.w;
        r2.y = r2.y + -r2.w;
        r2.y = r2.z * r2.y + r2.w;
        r2.y = cb3[3].x * r2.y;
        r2.z = 1 + -cb3[0].w;
        r2.w = 1 + -cb3[3].x;
        r2.w = r7.x * r2.w;
        r2.y = r2.y * r2.z + r2.w;
        r2.z = r7.w * cb3[4].x + 1;
        r2.y = r2.y * r2.z;
        r1.xyz = r2.yyy * r1.xyz;
        r1.xyz = r1.xyz * cb3[2].yyy + r0.xyz;
        r2.x = r2.x * 0.100000001 + r8.y;
        r2.z = cb3[18].x * cb3[7].x;
        r2.y = r2.z * 0.100000001 + r8.y;
        r2.xy = float2(0.5,0.5) + r2.xy;
        r2.xy = frac(r2.xy);
        r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
        r2.zw = abs(r2.xy) * abs(r2.xy);
        r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
        r2.xy = r2.zw * r2.xy + float2(-0.5,-0.5);
        r2.xy = r2.xy + r2.xy;
        r2.xy = r2.xy * r2.xy;
        r2.x = r2.y * r2.x;
        r2.x = -r2.x * cb3[7].x + 1;
        r2.y = cb3[0].w * r7.w;
        r2.x = r2.y * cb3[4].x + r2.x;
        r2.yzw = cb3[5].xyz + -r1.xyz;
        r2.yzw = cb3[6].yyy * r2.yzw;
        r2.xyz = r2.yzw * r2.xxx;
        r0.xyz = r2.xyz * r8.xxx + r1.xyz;
      } else {
        r1.xyz = float3(0.0625,1,16) * r8.yyy;
        r1.xyz = frac(r1.xyz);
        r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r1.xyz = r1.xyz * r8.xxx;
        r2.x = r3.y + r3.z;
        r2.x = cb3[2].x + r2.x;
        r7.x = r2.x + r8.y;
        r7.y = r2.x * cb3[3].y + r8.y;
        r2.x = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.x;
        r2.xyz = float3(0.5,0.5,0.5) + r7.xyz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = abs(r2.xyz) * abs(r2.xyz);
        r2.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
        r2.xyz = r7.xyz * r2.xyz + float3(-0.5,-0.5,-0.5);
        r2.xyz = r2.xyz + r2.xyz;
        r7.w = r2.y * r2.z;
        r2.w = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r7.xy = r2.ww ? r7.xy : r7.zw;
        r2.y = -r2.y * r2.z + r7.x;
        r2.y = r7.y * r2.y + r7.w;
        r2.z = r7.x + -r2.y;
        r2.y = r7.y * r2.z + r2.y;
        r2.y = cb3[3].x * r2.y;
        r2.z = 1 + -cb3[0].w;
        r2.w = 1 + -cb3[3].x;
        r2.x = r2.x * r2.w;
        r2.x = r2.y * r2.z + r2.x;
        r1.xyz = r2.xxx * r1.xyz;
        r0.xyz = r1.xyz * cb3[2].yyy + r0.xyz;
      }
    }
    r1.x = dot(r0.xyz, r0.xyz);
    r1.x = sqrt(r1.x);
    r1.y = 1 / cb3[1].z;
    r1.y = -r1.y * 0.25 + r0.z;
    r1.y = max(0, r1.y);
    r1.y = cb3[1].z * r1.y;
    r1.z = cmp(r1.y != 0.000000);
    r2.x = log2(r1.y);
    r2.x = cb3[1].w * r2.x;
    r2.x = exp2(r2.x);
    r1.y = r1.z ? r2.x : r1.y;
    r2.x = r3.x * 0.00100000005 + cb3[1].x;
    r2.y = cb3[1].x * 0.800000012 + r3.z;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = frac(r2.xy);
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.zw = abs(r2.xy) * abs(r2.xy);
    r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
    r2.xy = r2.zw * r2.xy + float2(-0.5,-0.5);
    r2.xy = r2.xy + r2.xy;
    r1.z = r2.y * r2.y + r2.x;
    r2.x = cmp(cb3[1].z != 0.000000);
    r2.y = cb3[6].x / cb3[1].z;
    r2.x = r2.x ? r2.y : cb3[6].x;
    r1.z = cb3[1].y * r1.z + r2.x;
    r1.y = r1.z * r1.y;
    r1.yz = cb3[0].xy * r1.yy + r0.xy;
    r2.xy = r1.ww ? r1.yz : r0.xy;
    r2.z = r0.z;
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = rsqrt(r1.y);
    r2.xyz = r2.xyz * r1.yyy;
    r1.xyz = r2.xyz * r1.xxx;
    r0.xyz = r1.www ? r1.xyz : r0.xyz;
    r0.xyz = r0.xyz + -r6.xyz;
    r0.xyz = r0.xyz * r5.www;
    r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r1.xyz = floor(r1.xyz);
    r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r2.xyz = -cb1[113].zxy + r10.zxy;
    r1.xyz = r2.xyz + -r1.xyz;
    r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
    r1.x = r1.x * 9.99999975e-005 + 0.200000003;
    r2.yzw = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
    r1.w = cb5[13].z + r2.z;
    r3.x = r1.x + -r1.w;
    r3.x = max(0, r3.x);
    r2.y = r2.y + -r2.z;
    r2.y = max(9.99999975e-005, r2.y);
    r2.y = r3.x / r2.y;
    r2.y = min(1, r2.y);
    r2.z = ceil(r2.y);
    r2.y = 1 + -r2.y;
    r2.y = min(0.200000003, r2.y);
    r2.y = r2.z * r2.y;
    r2.z = 5 * r2.y;
    r1.xw = -r2.ww + r1.xw;
    r3.x = max(0, r1.x);
    r1.w = max(9.99999975e-005, r1.w);
    r1.w = r3.x / r1.w;
    r1.w = min(1, r1.w);
    r2.w = ceil(r1.w);
    r1.w = 1 + -r1.w;
    r1.w = min(0.200000003, r1.w);
    r1.w = r2.w * r1.w;
    r1.xw = float2(10000,5) * r1.xw;
    r3.xy = t4.SampleLevel(s1_s, r1.yz, -1).xy;
    r2.y = r2.y * 5 + -r1.w;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r2.w = cmp(r2.z >= r1.w);
    r2.w = r2.w ? r3.y : r3.x;
    r2.y = r2.y ? r2.w : r3.x;
    r2.y = cb5[13].w * r2.y;
    r1.w = max(r2.z, r1.w);
    r2.y = r2.y * r1.w;
    r1.x = max(0, r1.x);
    r0.w = r2.x + -r0.w;
    r0.w = min(r1.x, r0.w);
    r0.w = cb5[14].y * r0.w;
    r0.w = r1.w * r0.w;
    r0.w = r2.y * r0.w;
    r1.xy = t5.SampleLevel(s2_s, r1.yz, -1).xy;
    r1.xy = float2(-1,-1) + r1.xy;
    r1.xy = r1.xy * r0.ww;
    r0.w = dot(r1.xy, r1.xy);
    r0.w = sqrt(r0.w);
    r1.z = -1.20000005 * r0.w;
    r0.xyz = r0.xyz * cb5[14].www + r1.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r10.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r5.yyyy;
  r0.xyzw = r5.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r5.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.x = r3.w;
  o3.zw = r4.zw;
  o4.xy = r4.xy;
  o4.zw = float2(0,0);
  return;
}