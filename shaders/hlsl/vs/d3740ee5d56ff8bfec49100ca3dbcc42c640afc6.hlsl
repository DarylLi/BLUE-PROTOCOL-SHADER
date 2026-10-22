// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[12];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
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
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD6,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[9].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t1.Load(r0.y).xyz;
  r3.xyz = t1.Load(r0.z).xyz;
  r4.xyzw = t0.Load(r0.x).xyzw;
  r0.xy = t2.Load(r0.x).xy;
  r0.z = (int)v2.x + asint(cb4[0].w);
  r0.w = (uint)r0.z << 1;
  r5.xyz = t4.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r0.w).xyzw;
  r7.xyz = r6.yzx * r5.xyz;
  r5.xyz = r6.xyz * r5.yzx + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = r5.xyz * r6.yzx;
  r5.xyz = r5.zxy * r6.zxy + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = cb2[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r10.xyz = r7.xyz * r0.www;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = r8.xyz * r0.www;
  r0.w = dot(r9.xyz, r9.xyz);
  r2.w = rsqrt(r0.w);
  r12.xyz = r9.xyz * r2.www;
  r13.xyz = r11.xyz * r5.yyy;
  r5.xyw = r5.xxx * r10.xyz + r13.xyz;
  o0.xyz = r5.zzz * r12.xyz + r5.xyw;
  r5.xyz = r11.xyz * r6.yyy;
  r5.xyz = r6.xxx * r10.xyz + r5.xyz;
  o1.xyz = r6.zzz * r12.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[7].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = -cb0[8].x + r2.w;
  r2.w = saturate(cb0[8].y * r2.w);
  o2.y = 1 + -r2.w;
  r2.w = 1 + -r1.w;
  r2.w = cb0[8].w * r2.w;
  r1.w = cb0[8].z * r1.w + r2.w;
  r6.xyz = -cb0[5].xyz + r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[2].w * r4.w + r2.w;
  r5.xyz = -cb0[6].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r4.w + r5.x;
  r5.yzw = cmp(cb0[2].xyz < r2.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r2.w = dot(r5.yzw, cb0[4].xyz);
  r5.xyz = cmp(cb0[3].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[4].xyz);
  r5.x = cb0[6].w * r5.x;
  r5.w = r2.w * cb0[5].w + r5.x;
  r2.w = cmp(abs(r5.w) < 0.999000013);
  r2.w = r2.w ? 1.000000 : 0;
  r5.z = r2.w * r1.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.y = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r1.w = r1.w * r5.z;
  r2.x = (int)r0.z * asint(cb4[0].y);
  r2.xy = t3.Load(r2.x).xy;
  r2.z = cmp(r5.z >= 1);
  if (r2.z != 0) {
    r3.xyz = cb2[1].xyz * r4.yyy;
    r3.xyz = r4.xxx * cb2[0].xyz + r3.xyz;
    r3.xyz = r4.zzz * cb2[2].xyz + r3.xyz;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r2.z = asint(cb4[0].y) + -1;
    r2.w = (int)cb6[9].w;
    r3.yw = float2(0.00100000005,0.00100000005) * r3.xy;
    r0.w = sqrt(r0.w);
    r4.xyz = v0.yyy * r8.xyz;
    r4.xyz = v0.xxx * r7.xyz + r4.xyz;
    r4.xyz = v0.zzz * r9.xyz + r4.xyz;
    r4.xyz = r4.xyz / r0.www;
    r5.xy = cmp(int2(1,2) < (int2)r2.ww);
    r6.x = cmp((int)r2.w != 5);
    r5.x = r5.x ? r6.x : 0;
    if (r5.x != 0) {
      r6.xyzw = min(uint4(4,5,6,7), (uint4)r2.zzzz);
      r6.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.zzzz, (int4)r6.xyzw);
      r5.x = t3.Load(r6.x).y;
      r6.xy = t3.Load(r6.y).xy;
      r8.xyz = r6.xxx * r8.xyz;
      r7.xyz = r5.xxx * r7.xyz + r8.xyz;
      r7.xyz = r6.yyy * r9.xyz + r7.xyz;
      r7.xyz = r7.xyz / r0.www;
      r8.xyz = -r7.xyz + r4.xyz;
      r6.xy = t3.Load(r6.z).xy;
      r6.zw = t3.Load(r6.w).xy;
      r5.x = r7.x + r7.y;
      r6.w = cmp(0 < r6.w);
      r9.xy = cmp((int2)r2.ww >= int2(6,4));
      r9.zw = r6.ww ? cb3[11].xy : cb3[8].xy;
      r5.x = r9.z + r5.x;
      r5.x = 0.5 + r5.x;
      r5.x = frac(r5.x);
      r5.x = r5.x * 2 + -1;
      r7.w = abs(r5.x) * abs(r5.x);
      r5.x = -abs(r5.x) * 2 + 3;
      r5.x = r7.w * r5.x + -0.5;
      r5.x = dot(r5.xx, r9.ww);
      r10.xyz = float3(0.0625,1,16) * r6.zzz;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r5.xxx;
      r10.xyz = r10.xyz * r6.xxx + r8.xyz;
      r8.xyz = r9.xxx ? r10.xyz : r8.xyz;
      if (r9.y != 0) {
        r10.xyzw = float4(0.0625,1,16,30.2999992) * r6.yyyy;
        r10.xyzw = frac(r10.xyzw);
        r9.yzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.yz = r6.ww ? cb3[12].xz : cb3[9].xz;
        r5.x = 3 * r10.w;
        r10.x = r10.w * 3 + r6.y;
        r10.y = r6.y * 0.75 + -r5.x;
        r10.xy = float2(0.5,0.5) + r10.xy;
        r10.xy = frac(r10.xy);
        r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.xy) * abs(r10.xy);
        r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
        r10.xy = r11.xy * r10.xy + float2(-0.5,-0.5);
        r10.xy = r10.xy + r10.xy;
        r5.x = dot(r8.xyz, r8.xyz);
        r5.x = sqrt(r5.x);
        r6.y = r10.y * r10.y + r10.x;
        r6.z = r6.x * r6.z;
        r6.y = r6.z * r6.y;
        sincos(r6.y, r11.x, r12.x);
        r6.y = 1 + -r12.x;
        r13.xyzw = r6.yyyy * r9.yyyz;
        r11.xyz = r11.xxx * r9.wyz;
        r14.xy = r13.zy * r9.wz + r11.zx;
        r15.xy = r13.xw * r9.yz + r12.xx;
        r14.z = r13.w * r9.w + -r11.y;
        r16.xw = r13.zy * r9.wz + -r11.zx;
        r16.y = r13.w * r9.w + r11.y;
        r6.z = r9.w * r9.w;
        r16.z = r6.z * r6.y + r12.x;
        if (r9.x != 0) {
          r6.yz = r6.ww ? cb3[12].yw : cb3[9].yw;
          r11.xyz = r6.www ? cb3[13].xyz : cb3[10].xyz;
          r12.xyz = cb3[0].yzx * r9.wyz;
          r12.xyz = r9.zwy * cb3[0].zxy + -r12.xyz;
          r6.w = dot(cb3[0].xyz, r9.yzw);
          r6.w = max(-1, r6.w);
          r6.w = min(1, r6.w);
          r12.w = r12.z + r6.w;
          r7.w = dot(r12.xyw, r12.xyw);
          r7.w = rsqrt(r7.w);
          r9.xyz = r12.wxy * r7.www;
          r7.w = 1 + -abs(r6.w);
          r7.w = sqrt(r7.w);
          r8.w = abs(r6.w) * -0.0187292993 + 0.0742610022;
          r8.w = r8.w * abs(r6.w) + -0.212114394;
          r8.w = r8.w * abs(r6.w) + 1.57072878;
          r9.w = r8.w * r7.w;
          r9.w = r9.w * -2 + 3.14159274;
          r6.w = cmp(r6.w < -r6.w);
          r6.w = r6.w ? r9.w : 0;
          r6.w = r8.w * r7.w + r6.w;
          r7.w = -r10.x * r10.x + r10.y;
          r10.x = r10.w * 3 + r11.z;
          r10.y = 0.870000005 * r10.x;
          r10.xy = float2(0.5,0.5) + r10.xy;
          r10.xy = frac(r10.xy);
          r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
          r10.zw = abs(r10.xy) * abs(r10.xy);
          r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
          r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
          r10.xy = r10.xy + r10.xy;
          r8.w = r10.y * r10.y;
          r8.w = r8.w * r10.x + 1;
          r8.w = saturate(0.5 * r8.w);
          r8.w = log2(r8.w);
          r8.w = r11.y * r8.w;
          r8.w = exp2(r8.w);
          r6.y = r7.w * r6.y;
          r6.y = r6.w * r6.z + r6.y;
          r6.y = r11.x * r8.w + r6.y;
          r6.x = r6.x * r6.y;
          sincos(r6.x, r6.x, r10.x);
          r6.y = 1 + -r10.x;
          r11.xyzw = r6.yyyy * r9.yyyz;
          r6.xzw = r6.xxx * r9.xyz;
          r12.xy = r11.zy * r9.xz + r6.wx;
          r13.xy = r11.xw * r9.yz + r10.xx;
          r12.z = r11.w * r9.x + -r6.z;
          r17.xy = r11.yz * r9.zx + -r6.xw;
          r17.z = r11.w * r9.x + r6.z;
          r6.x = r9.x * r9.x;
          r12.w = r6.x * r6.y + r10.x;
          r15.z = r16.w;
          r15.w = r14.x;
          r13.z = r12.y;
          r13.w = r17.y;
          r6.x = dot(r15.xzw, r13.xzw);
          r17.w = r13.y;
          r6.y = dot(r15.xwz, r17.xzw);
          r6.z = dot(r15.xzw, r12.xzw);
          r14.w = r15.y;
          r15.x = dot(r14.ywz, r13.xzw);
          r15.y = dot(r14.yzw, r17.xzw);
          r15.z = dot(r14.ywz, r12.xzw);
          r9.x = dot(r16.xyz, r13.xzw);
          r9.y = dot(r16.xzy, r17.xzw);
          r9.z = dot(r16.xyz, r12.xzw);
          r16.xyz = r9.xyz;
        } else {
          r6.x = r15.x;
          r6.y = r16.w;
          r6.z = r14.x;
          r15.xz = r14.yz;
        }
        r6.x = dot(r6.xyz, r8.xyz);
        r6.y = dot(r15.xyz, r8.xyz);
        r6.z = dot(r16.xyz, r8.xyz);
        r6.w = dot(r6.xyz, r6.xyz);
        r6.w = rsqrt(r6.w);
        r6.xyz = r6.xyz * r6.www;
        r8.xyz = r6.xyz * r5.xxx;
      }
      r6.xyz = r8.xyz + r7.xyz;
    } else {
      r6.xyz = r4.xyz;
    }
    if (r5.y != 0) {
      r2.z = min(2, (uint)r2.z);
      r2.z = mad(asint(cb4[0].y), (int)r0.z, (int)r2.z);
      r5.xy = t3.Load(r2.z).xy;
      r2.z = cmp((int)r2.w == 5);
      if (r2.z != 0) {
        r7.xyz = float3(0.0625,1,16) * r5.yyy;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r5.xxx;
        r2.z = r3.y + r3.w;
        r2.z = cb3[2].x + r2.z;
        r8.x = r2.z + r5.y;
        r8.y = r2.z * cb3[3].y + r5.y;
        r6.w = cb3[3].y * r8.x;
        r8.z = 0.5 * r6.w;
        r8.w = r8.x + -r5.x;
        r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
        r8.xyzw = frac(r8.xyzw);
        r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r9.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
        r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r8.xyzw = r9.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r8.xyzw = r8.xyzw + r8.xyzw;
        r9.w = r8.y * r8.z;
        r6.w = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r9.xy = r6.ww ? r9.xy : r9.zw;
        r6.w = -r8.y * r8.z + r9.x;
        r6.w = r9.y * r6.w + r9.w;
        r7.w = r9.x + -r6.w;
        r6.w = r9.y * r7.w + r6.w;
        r6.w = cb3[3].x * r6.w;
        r7.w = 1 + -cb3[0].w;
        r8.y = 1 + -cb3[3].x;
        r8.x = r8.x * r8.y;
        r6.w = r6.w * r7.w + r8.x;
        r7.w = r8.w * cb3[4].x + 1;
        r6.w = r7.w * r6.w;
        r7.xyz = r7.xyz * r6.www;
        r7.xyz = r7.xyz * cb3[2].yyy + r6.xyz;
        r8.x = r2.z * 0.100000001 + r5.y;
        r2.z = cb3[18].x * cb3[7].x;
        r8.y = r2.z * 0.100000001 + r5.y;
        r8.xy = float2(0.5,0.5) + r8.xy;
        r8.xy = frac(r8.xy);
        r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
        r9.xy = abs(r8.xy) * abs(r8.xy);
        r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
        r8.xy = r9.xy * r8.xy + float2(-0.5,-0.5);
        r8.xy = r8.xy + r8.xy;
        r8.xy = r8.xy * r8.xy;
        r2.z = r8.y * r8.x;
        r2.z = -r2.z * cb3[7].x + 1;
        r6.w = cb3[0].w * r8.w;
        r2.z = r6.w * cb3[4].x + r2.z;
        r8.xyz = cb3[5].xyz + -r7.xyz;
        r8.xyz = cb3[6].yyy * r8.xyz;
        r8.xyz = r8.xyz * r2.zzz;
        r6.xyz = r8.xyz * r5.xxx + r7.xyz;
      } else {
        r7.xyz = float3(0.0625,1,16) * r5.yyy;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r5.xxx;
        r2.z = r3.y + r3.w;
        r2.z = cb3[2].x + r2.z;
        r8.x = r2.z + r5.y;
        r8.y = r2.z * cb3[3].y + r5.y;
        r2.z = cb3[3].y * r8.x;
        r8.z = 0.5 * r2.z;
        r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r9.xyz = abs(r8.xyz) * abs(r8.xyz);
        r8.xyz = -abs(r8.xyz) * float3(2,2,2) + float3(3,3,3);
        r8.xyz = r9.xyz * r8.xyz + float3(-0.5,-0.5,-0.5);
        r8.xyz = r8.xyz + r8.xyz;
        r9.w = r8.y * r8.z;
        r2.z = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r5.xy = r2.zz ? r9.xy : r9.zw;
        r2.z = -r8.y * r8.z + r5.x;
        r2.z = r5.y * r2.z + r9.w;
        r3.y = r5.x + -r2.z;
        r2.z = r5.y * r3.y + r2.z;
        r2.z = cb3[3].x * r2.z;
        r3.y = 1 + -cb3[0].w;
        r5.x = 1 + -cb3[3].x;
        r5.x = r8.x * r5.x;
        r2.z = r2.z * r3.y + r5.x;
        r7.xyz = r7.xyz * r2.zzz;
        r6.xyz = r7.xyz * cb3[2].yyy + r6.xyz;
      }
    }
    r2.z = dot(r6.xyz, r6.xyz);
    r2.z = sqrt(r2.z);
    r3.y = 1 / cb3[1].z;
    r3.y = -r3.y * 0.25 + r6.z;
    r3.y = max(0, r3.y);
    r3.y = cb3[1].z * r3.y;
    r5.x = cmp(r3.y != 0.000000);
    r5.y = log2(r3.y);
    r5.y = cb3[1].w * r5.y;
    r5.y = exp2(r5.y);
    r3.y = r5.x ? r5.y : r3.y;
    r5.x = r3.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r3.w;
    r3.xw = float2(0.5,0.5) + r5.xy;
    r3.xw = frac(r3.xw);
    r3.xw = r3.xw * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r3.xw) * abs(r3.xw);
    r3.xw = -abs(r3.xw) * float2(2,2) + float2(3,3);
    r3.xw = r5.xy * r3.xw + float2(-0.5,-0.5);
    r3.xw = r3.xw + r3.xw;
    r3.x = r3.w * r3.w + r3.x;
    r3.w = cmp(cb3[1].z != 0.000000);
    r5.x = cb3[6].x / cb3[1].z;
    r3.w = r3.w ? r5.x : cb3[6].x;
    r3.x = cb3[1].y * r3.x + r3.w;
    r3.x = r3.x * r3.y;
    r3.xy = cb3[0].xy * r3.xx + r6.xy;
    r7.xy = r2.ww ? r3.xy : r6.xy;
    r7.z = r6.z;
    r3.x = dot(r7.xyz, r7.xyz);
    r3.x = rsqrt(r3.x);
    r3.xyw = r7.xyz * r3.xxx;
    r3.xyw = r3.xyw * r2.zzz;
    r3.xyw = r2.www ? r3.xyw : r6.xyz;
    r3.xyw = r3.xyw + -r4.xyz;
    r3.xyw = r3.xyw * r0.www;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r4.xyz = r6.xyz + -r4.xyz;
    r2.zw = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r0.w = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t5.SampleLevel(s0_s, r2.zw, -1).xyz;
    r5.x = cb6[10].z + r4.y;
    r5.y = -r5.x + r0.w;
    r5.y = max(0, r5.y);
    r4.x = r4.x + -r4.y;
    r4.x = max(9.99999975e-005, r4.x);
    r4.x = r5.y / r4.x;
    r4.x = min(1, r4.x);
    r4.y = ceil(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = min(0.200000003, r4.x);
    r4.x = r4.y * r4.x;
    r0.w = -r4.z + r0.w;
    r5.y = max(0, r0.w);
    r4.z = r5.x + -r4.z;
    r4.z = max(9.99999975e-005, r4.z);
    r4.z = r5.y / r4.z;
    r4.z = min(1, r4.z);
    r5.x = ceil(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = min(0.200000003, r4.z);
    r4.z = r5.x * r4.z;
    r4.yz = float2(5,5) * r4.xz;
    r5.xy = t6.SampleLevel(s1_s, r2.zw, -1).xy;
    r4.x = r4.x * 5 + -r4.z;
    r4.x = cmp(9.99999975e-006 < abs(r4.x));
    r6.y = cmp(r4.y >= r4.z);
    r5.y = r6.y ? r5.y : r5.x;
    r4.x = r4.x ? r5.y : r5.x;
    r4.x = cb6[10].w * r4.x;
    r4.y = max(r4.y, r4.z);
    r4.x = r4.x * r4.y;
    r0.w = 10000 * r0.w;
    r0.w = max(0, r0.w);
    r3.z = cb6[5].z + r3.z;
    r3.z = r6.x + -r3.z;
    r0.w = min(r3.z, r0.w);
    r0.w = cb6[11].y * r0.w;
    r0.w = r4.y * r0.w;
    r0.w = r4.x * r0.w;
    r2.zw = t7.SampleLevel(s2_s, r2.zw, -1).xy;
    r2.zw = float2(-1,-1) + r2.zw;
    r4.xy = r2.zw * r0.ww;
    r0.w = dot(r4.xy, r4.xy);
    r0.w = sqrt(r0.w);
    r4.z = -1.20000005 * r0.w;
    r3.xyz = r3.xyw * cb6[10].xxx + r4.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r5.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o6.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  r0.z = mad(asint(cb4[0].y), (int)r0.z, asint(cb4[0].z));
  r0.zw = t3.Load(r0.z).xy;
  o4.xy = r0.zw * cb5[2].xy + r0.xy;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  o5.xyzw = r1.xyzw;
  return;
}