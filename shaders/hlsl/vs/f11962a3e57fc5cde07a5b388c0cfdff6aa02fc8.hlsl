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
  float4 cb5[12];
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
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r1.w = r1.w * cb0[5].w + r2.w;
  r1.w = cmp(abs(r1.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r0.x = r1.w * r0.x;
  r4.x = r1.x;
  r4.y = r2.x;
  r4.z = r0.y;
  r4.w = r3.x;
  r1.x = dot(v0.xyzw, r4.xyzw);
  r5.x = r1.y;
  r5.y = r2.y;
  r5.z = r0.z;
  r5.w = r3.y;
  r1.w = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.z;
  r6.y = r2.z;
  r6.z = r0.w;
  r6.w = r3.z;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r4.yzw = cb2[1].xyz * r1.www;
  r4.yzw = cb2[0].xyz * r1.xxx + r4.yzw;
  r4.yzw = cb2[2].xyz * r0.www + r4.yzw;
  r5.xzw = cb2[3].xyz + cb1[70].xyz;
  r4.yzw = r5.xzw + r4.yzw;
  r0.w = 1;
  r0.w = r0.w * r0.x;
  r1.x = cmp(r0.x >= 1);
  if (r1.x != 0) {
    r5.xzw = cb2[1].xyz * r3.yyy;
    r3.xyw = r3.xxx * cb2[0].xyz + r5.xzw;
    r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r1.xyw = cb2[1].xyz * r1.yyy;
    r1.xyw = r4.xxx * cb2[0].xyz + r1.xyw;
    r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
    r5.xyz = cb2[1].xyz * r5.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r5.xyz;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r5.xyz = cb2[1].xyz * r0.zzz;
    r5.xyz = r0.yyy * cb2[0].xyz + r5.xyz;
    r5.xyz = r6.zzz * cb2[2].xyz + r5.xyz;
    r0.y = asint(cb4[0].y) + -1;
    r0.z = (int)v2.x + asint(cb4[0].w);
    r1.w = (int)cb5[10].x;
    r3.yw = float2(0.00100000005,0.00100000005) * r3.xy;
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = sqrt(r2.w);
    r6.xyz = v0.yyy * r2.xyz;
    r6.xyz = v0.xxx * r1.xyz + r6.xyz;
    r6.xyz = v0.zzz * r5.xyz + r6.xyz;
    r6.xyz = r6.xyz / r2.www;
    r7.xy = cmp(int2(1,2) < (int2)r1.ww);
    r4.x = cmp((int)r1.w != 5);
    r4.x = r4.x ? r7.x : 0;
    if (r4.x != 0) {
      r8.xyzw = min(uint4(4,5,6,7), (uint4)r0.yyyy);
      r8.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.zzzz, (int4)r8.xyzw);
      r4.x = t2.Load(r8.x).y;
      r7.xz = t2.Load(r8.y).xy;
      r2.xyz = r7.xxx * r2.xyz;
      r1.xyz = r4.xxx * r1.xyz + r2.xyz;
      r1.xyz = r7.zzz * r5.xyz + r1.xyz;
      r1.xyz = r1.xyz / r2.www;
      r2.xyz = r6.xyz + -r1.xyz;
      r5.xy = t2.Load(r8.z).xy;
      r5.zw = t2.Load(r8.w).xy;
      r4.x = r1.x + r1.y;
      r5.w = cmp(0 < r5.w);
      r7.xz = cmp((int2)r1.ww >= int2(6,4));
      r8.xy = r5.ww ? cb3[11].xy : cb3[8].xy;
      r4.x = r8.x + r4.x;
      r4.x = 0.5 + r4.x;
      r4.x = frac(r4.x);
      r4.x = r4.x * 2 + -1;
      r6.w = abs(r4.x) * abs(r4.x);
      r4.x = -abs(r4.x) * 2 + 3;
      r4.x = r6.w * r4.x + -0.5;
      r4.x = dot(r4.xx, r8.yy);
      r8.xyz = float3(0.0625,1,16) * r5.zzz;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = r8.xyz * r4.xxx;
      r8.xyz = r8.xyz * r5.xxx + r2.xyz;
      r2.xyz = r7.xxx ? r8.xyz : r2.xyz;
      if (r7.z != 0) {
        r8.xyzw = float4(0.0625,1,16,30.2999992) * r5.yyyy;
        r8.xyzw = frac(r8.xyzw);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r5.yz = r5.ww ? cb3[12].xz : cb3[9].xz;
        r4.x = 3 * r8.w;
        r9.x = r8.w * 3 + r5.y;
        r9.y = r5.y * 0.75 + -r4.x;
        r7.zw = float2(0.5,0.5) + r9.xy;
        r7.zw = frac(r7.zw);
        r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
        r9.xy = abs(r7.zw) * abs(r7.zw);
        r7.zw = -abs(r7.zw) * float2(2,2) + float2(3,3);
        r7.zw = r9.xy * r7.zw + float2(-0.5,-0.5);
        r7.zw = r7.zw + r7.zw;
        r4.x = dot(r2.xyz, r2.xyz);
        r4.x = sqrt(r4.x);
        r5.y = r7.w * r7.w + r7.z;
        r5.z = r5.x * r5.z;
        r5.y = r5.z * r5.y;
        sincos(r5.y, r9.x, r10.x);
        r5.y = 1 + -r10.x;
        r11.xyzw = r5.yyyy * r8.xxxy;
        r9.xyz = r9.xxx * r8.zxy;
        r12.xy = r11.zy * r8.zy + r9.zx;
        r13.xy = r11.xw * r8.xy + r10.xx;
        r12.z = r11.w * r8.z + -r9.y;
        r14.xw = r11.zy * r8.zy + -r9.zx;
        r14.y = r11.w * r8.z + r9.y;
        r5.z = r8.z * r8.z;
        r14.z = r5.z * r5.y + r10.x;
        if (r7.x != 0) {
          r5.yz = r5.ww ? cb3[12].yw : cb3[9].yw;
          r9.xyz = r5.www ? cb3[13].xyz : cb3[10].xyz;
          r10.xyz = cb3[0].yzx * r8.zxy;
          r10.xyz = r8.yzx * cb3[0].zxy + -r10.xyz;
          r5.w = dot(cb3[0].xyz, r8.xyz);
          r5.w = max(-1, r5.w);
          r5.w = min(1, r5.w);
          r10.w = r10.z + r5.w;
          r6.w = dot(r10.xyw, r10.xyw);
          r6.w = rsqrt(r6.w);
          r8.xyz = r10.wxy * r6.www;
          r6.w = 1 + -abs(r5.w);
          r6.w = sqrt(r6.w);
          r7.x = abs(r5.w) * -0.0187292993 + 0.0742610022;
          r7.x = r7.x * abs(r5.w) + -0.212114394;
          r7.x = r7.x * abs(r5.w) + 1.57072878;
          r9.w = r7.x * r6.w;
          r9.w = r9.w * -2 + 3.14159274;
          r5.w = cmp(r5.w < -r5.w);
          r5.w = r5.w ? r9.w : 0;
          r5.w = r7.x * r6.w + r5.w;
          r6.w = -r7.z * r7.z + r7.w;
          r10.x = r8.w * 3 + r9.z;
          r10.y = 0.870000005 * r10.x;
          r7.xz = float2(0.5,0.5) + r10.xy;
          r7.xz = frac(r7.xz);
          r7.xz = r7.xz * float2(2,2) + float2(-1,-1);
          r9.zw = abs(r7.xz) * abs(r7.xz);
          r7.xz = -abs(r7.xz) * float2(2,2) + float2(3,3);
          r7.xz = r9.zw * r7.xz + float2(-0.5,-0.5);
          r7.xz = r7.xz + r7.xz;
          r7.z = r7.z * r7.z;
          r7.x = r7.z * r7.x + 1;
          r7.x = saturate(0.5 * r7.x);
          r7.x = log2(r7.x);
          r7.x = r9.y * r7.x;
          r7.x = exp2(r7.x);
          r5.y = r6.w * r5.y;
          r5.y = r5.w * r5.z + r5.y;
          r5.y = r9.x * r7.x + r5.y;
          r5.x = r5.x * r5.y;
          sincos(r5.x, r5.x, r7.x);
          r5.y = 1 + -r7.x;
          r9.xyzw = r5.yyyy * r8.yyyz;
          r5.xzw = r5.xxx * r8.xyz;
          r10.xy = r9.zy * r8.xz + r5.wx;
          r11.xy = r9.xw * r8.yz + r7.xx;
          r10.z = r9.w * r8.x + -r5.z;
          r15.xy = r9.yz * r8.zx + -r5.xw;
          r15.z = r9.w * r8.x + r5.z;
          r5.x = r8.x * r8.x;
          r10.w = r5.x * r5.y + r7.x;
          r13.z = r14.w;
          r13.w = r12.x;
          r11.z = r10.y;
          r11.w = r15.y;
          r5.x = dot(r13.xzw, r11.xzw);
          r15.w = r11.y;
          r5.y = dot(r13.xwz, r15.xzw);
          r5.z = dot(r13.xzw, r10.xzw);
          r12.w = r13.y;
          r13.x = dot(r12.ywz, r11.xzw);
          r13.y = dot(r12.yzw, r15.xzw);
          r13.z = dot(r12.ywz, r10.xzw);
          r8.x = dot(r14.xyz, r11.xzw);
          r8.y = dot(r14.xzy, r15.xzw);
          r8.z = dot(r14.xyz, r10.xzw);
          r14.xyz = r8.xyz;
        } else {
          r5.x = r13.x;
          r5.y = r14.w;
          r5.z = r12.x;
          r13.xz = r12.yz;
        }
        r5.x = dot(r5.xyz, r2.xyz);
        r5.y = dot(r13.xyz, r2.xyz);
        r5.z = dot(r14.xyz, r2.xyz);
        r5.w = dot(r5.xyz, r5.xyz);
        r5.w = rsqrt(r5.w);
        r5.xyz = r5.xyz * r5.www;
        r2.xyz = r5.xyz * r4.xxx;
      }
      r1.xyz = r2.xyz + r1.xyz;
    } else {
      r1.xyz = r6.xyz;
    }
    if (r7.y != 0) {
      r0.y = min(2, (uint)r0.y);
      r0.y = mad(asint(cb4[0].y), (int)r0.z, (int)r0.y);
      r0.yz = t2.Load(r0.y).xy;
      r2.x = cmp((int)r1.w == 5);
      if (r2.x != 0) {
        r2.xyz = float3(0.0625,1,16) * r0.zzz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xyz = r2.xyz * r0.yyy;
        r4.x = r3.y + r3.w;
        r4.x = cb3[2].x + r4.x;
        r5.x = r4.x + r0.z;
        r5.y = r4.x * cb3[3].y + r0.z;
        r6.w = cb3[3].y * r5.x;
        r5.z = 0.5 * r6.w;
        r5.w = r5.x + -r0.y;
        r5.xyzw = float4(0.5,0.5,0.5,1.5) + r5.xyzw;
        r5.xyzw = frac(r5.xyzw);
        r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r7.xyzw = abs(r5.xyzw) * abs(r5.xyzw);
        r5.xyzw = -abs(r5.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r5.xyzw = r7.xyzw * r5.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r5.xyzw = r5.xyzw + r5.xyzw;
        r7.w = r5.y * r5.z;
        r6.w = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r7.xy = r6.ww ? r7.xy : r7.zw;
        r5.y = -r5.y * r5.z + r7.x;
        r5.y = r7.y * r5.y + r7.w;
        r5.z = r7.x + -r5.y;
        r5.y = r7.y * r5.z + r5.y;
        r5.y = cb3[3].x * r5.y;
        r5.z = 1 + -cb3[0].w;
        r6.w = 1 + -cb3[3].x;
        r5.x = r6.w * r5.x;
        r5.x = r5.y * r5.z + r5.x;
        r5.y = r5.w * cb3[4].x + 1;
        r5.x = r5.x * r5.y;
        r2.xyz = r5.xxx * r2.xyz;
        r2.xyz = r2.xyz * cb3[2].yyy + r1.xyz;
        r5.x = r4.x * 0.100000001 + r0.z;
        r4.x = cb3[18].x * cb3[7].x;
        r5.y = r4.x * 0.100000001 + r0.z;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r7.xy = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r7.xy * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r5.xy = r5.xy * r5.xy;
        r4.x = r5.y * r5.x;
        r4.x = -r4.x * cb3[7].x + 1;
        r5.x = cb3[0].w * r5.w;
        r4.x = r5.x * cb3[4].x + r4.x;
        r5.xyz = cb3[5].xyz + -r2.xyz;
        r5.xyz = cb3[6].yyy * r5.xyz;
        r5.xyz = r5.xyz * r4.xxx;
        r1.xyz = r5.xyz * r0.yyy + r2.xyz;
      } else {
        r2.xyz = float3(0.0625,1,16) * r0.zzz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xyz = r2.xyz * r0.yyy;
        r0.y = r3.y + r3.w;
        r0.y = cb3[2].x + r0.y;
        r5.x = r0.y + r0.z;
        r5.y = r0.y * cb3[3].y + r0.z;
        r0.y = cb3[3].y * r5.x;
        r5.z = 0.5 * r0.y;
        r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
        r5.xyz = frac(r5.xyz);
        r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = abs(r5.xyz) * abs(r5.xyz);
        r5.xyz = -abs(r5.xyz) * float3(2,2,2) + float3(3,3,3);
        r5.xyz = r7.xyz * r5.xyz + float3(-0.5,-0.5,-0.5);
        r5.xyz = r5.xyz + r5.xyz;
        r7.w = r5.y * r5.z;
        r0.y = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r0.yz = r0.yy ? r7.xy : r7.zw;
        r3.y = -r5.y * r5.z + r0.y;
        r3.y = r0.z * r3.y + r7.w;
        r0.y = -r3.y + r0.y;
        r0.y = r0.z * r0.y + r3.y;
        r0.y = cb3[3].x * r0.y;
        r0.z = 1 + -cb3[0].w;
        r3.y = 1 + -cb3[3].x;
        r3.y = r5.x * r3.y;
        r0.y = r0.y * r0.z + r3.y;
        r2.xyz = r2.xyz * r0.yyy;
        r1.xyz = r2.xyz * cb3[2].yyy + r1.xyz;
      }
    }
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.z = 1 / cb3[1].z;
    r0.z = -r0.z * 0.25 + r1.z;
    r0.z = max(0, r0.z);
    r0.z = cb3[1].z * r0.z;
    r2.x = cmp(r0.z != 0.000000);
    r2.y = log2(r0.z);
    r2.y = cb3[1].w * r2.y;
    r2.y = exp2(r2.y);
    r0.z = r2.x ? r2.y : r0.z;
    r2.x = r3.x * 0.00100000005 + cb3[1].x;
    r2.y = cb3[1].x * 0.800000012 + r3.w;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = frac(r2.xy);
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r3.xy = abs(r2.xy) * abs(r2.xy);
    r2.xy = -abs(r2.xy) * float2(2,2) + float2(3,3);
    r2.xy = r3.xy * r2.xy + float2(-0.5,-0.5);
    r2.xy = r2.xy + r2.xy;
    r2.x = r2.y * r2.y + r2.x;
    r2.y = cmp(cb3[1].z != 0.000000);
    r2.z = cb3[6].x / cb3[1].z;
    r2.y = r2.y ? r2.z : cb3[6].x;
    r2.x = cb3[1].y * r2.x + r2.y;
    r0.z = r2.x * r0.z;
    r2.xy = cb3[0].xy * r0.zz + r1.xy;
    r2.xy = r1.ww ? r2.xy : r1.xy;
    r2.z = r1.z;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r2.xyz = r2.xyz * r0.yyy;
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
    r1.xyz = r1.xyz + -r6.xyz;
    r1.xyz = r1.xyz * r2.www;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r3.xyw = r4.wyz * r0.xxx + -cb1[70].zxy;
    r2.xyz = r3.xyw + -r2.xyz;
    r0.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r1.w = r2.x * 9.99999975e-005 + 0.200000003;
    r2.xyz = t3.SampleLevel(s0_s, r0.yz, -1).xyz;
    r2.w = cb5[10].w + r2.y;
    r3.y = -r2.w + r1.w;
    r3.y = max(0, r3.y);
    r2.x = r2.x + -r2.y;
    r2.x = max(9.99999975e-005, r2.x);
    r2.x = r3.y / r2.x;
    r2.x = min(1, r2.x);
    r2.y = ceil(r2.x);
    r2.x = 1 + -r2.x;
    r2.x = min(0.200000003, r2.x);
    r2.x = r2.y * r2.x;
    r1.w = -r2.z + r1.w;
    r3.y = max(0, r1.w);
    r2.z = r2.w + -r2.z;
    r2.z = max(9.99999975e-005, r2.z);
    r2.z = r3.y / r2.z;
    r2.z = min(1, r2.z);
    r2.w = ceil(r2.z);
    r2.z = 1 + -r2.z;
    r2.z = min(0.200000003, r2.z);
    r2.z = r2.w * r2.z;
    r2.yz = float2(5,5) * r2.xz;
    r3.yw = t4.SampleLevel(s1_s, r0.yz, -1).xy;
    r2.x = r2.x * 5 + -r2.z;
    r2.x = cmp(9.99999975e-006 < abs(r2.x));
    r2.w = cmp(r2.y >= r2.z);
    r2.w = r2.w ? r3.w : r3.y;
    r2.x = r2.x ? r2.w : r3.y;
    r2.x = cb5[11].x * r2.x;
    r2.y = max(r2.y, r2.z);
    r2.x = r2.x * r2.y;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r2.z = cb5[5].z + r3.z;
    r2.z = r3.x + -r2.z;
    r1.w = min(r2.z, r1.w);
    r1.w = cb5[11].z * r1.w;
    r1.w = r2.y * r1.w;
    r1.w = r2.x * r1.w;
    r0.yz = t5.SampleLevel(s2_s, r0.yz, -1).xy;
    r0.yz = float2(-1,-1) + r0.yz;
    r2.xy = r1.ww * r0.yz;
    r0.y = dot(r2.xy, r2.xy);
    r0.y = sqrt(r0.y);
    r2.z = -1.20000005 * r0.y;
    r1.xyz = r1.xyz * cb5[10].yyy + r2.xyz;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r0.xyz = r4.yzw * r0.xxx + r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = r0.wwww * cb1[3].xyzw + r1.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}