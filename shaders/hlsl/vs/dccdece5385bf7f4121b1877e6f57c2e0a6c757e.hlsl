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
  float4 cb6[17];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[4];
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
  out float4 o5 : SV_POSITION0)
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
  r0.xyzw = t2.Load(r0.x).xyzw;
  r2.w = (int)v2.x + asint(cb4[0].w);
  r5.x = (uint)r2.w << 1;
  r5.xyz = t4.Load(r5.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t4.Load(r5.w).xyzw;
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
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r5.w);
  r10.xyz = r7.xyz * r5.www;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = rsqrt(r5.w);
  r11.xyz = r8.xyz * r5.www;
  r5.w = dot(r9.xyz, r9.xyz);
  r7.w = rsqrt(r5.w);
  r12.xyz = r9.xyz * r7.www;
  r13.xyz = r11.xyz * r5.yyy;
  r13.xyz = r5.xxx * r10.xyz + r13.xyz;
  o0.xyz = r5.zzz * r12.xyz + r13.xyz;
  r5.xyz = r11.xyz * r6.yyy;
  r5.xyz = r6.xxx * r10.xyz + r5.xyz;
  o1.xyz = r6.zzz * r12.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r1.w = 0.00390625 * r1.w;
  r1.w = trunc(r1.w);
  r5.xyz = cb0[7].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r6.xyz = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r6.xyz;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r6.x = dot(r6.xyz, r6.xyz);
  r6.x = sqrt(r6.x);
  r6.x = -cb0[8].x + r6.x;
  r6.x = saturate(cb0[8].y * r6.x);
  o2.y = 1 + -r6.x;
  r6.x = 1 + -r1.w;
  r6.x = cb0[8].w * r6.x;
  r1.w = cb0[8].z * r1.w + r6.x;
  r6.xyz = -cb0[5].xyz + r5.xyz;
  r6.x = dot(r6.xyz, r6.xyz);
  r6.x = sqrt(r6.x);
  r6.x = cb0[2].w * r4.w + r6.x;
  r5.xyz = -cb0[6].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r4.w + r5.x;
  r6.xyz = cmp(cb0[2].xyz < r6.xxx);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r5.y = dot(r6.xyz, cb0[4].xyz);
  r6.xyz = cmp(cb0[3].xyz < r5.xxx);
  r6.xyz = r6.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r6.xyz, cb0[4].xyz);
  r5.x = cb0[6].w * r5.x;
  r6.w = r5.y * cb0[5].w + r5.x;
  r5.x = cmp(abs(r6.w) < 0.999000013);
  r5.x = r5.x ? 1.000000 : 0;
  r6.z = r5.x * r1.w;
  r10.x = r1.x;
  r10.y = r2.x;
  r10.z = r3.x;
  r10.w = r4.x;
  r1.x = dot(v0.xyzw, r10.xyzw);
  r10.x = r1.y;
  r10.y = r2.y;
  r10.z = r3.y;
  r10.w = r4.y;
  r1.y = dot(v0.xyzw, r10.xyzw);
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
  r1.w = r1.w * r6.z;
  r2.x = (int)r2.w * asint(cb4[0].y);
  r2.xy = t3.Load(r2.x).xy;
  r2.z = cmp(r6.z >= 1);
  if (r2.z != 0) {
    r3.xyz = cb2[1].xyz * r4.yyy;
    r3.xyz = r4.xxx * cb2[0].xyz + r3.xyz;
    r3.xyz = r4.zzz * cb2[2].xyz + r3.xyz;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r2.z = asint(cb4[0].y) + -1;
    r3.w = (int)cb6[15].x;
    r4.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r3.y = sqrt(r5.w);
    r5.xyz = v0.yyy * r8.xyz;
    r5.xyz = v0.xxx * r7.xyz + r5.xyz;
    r5.xyz = v0.zzz * r9.xyz + r5.xyz;
    r5.xyz = r5.xyz / r3.yyy;
    r6.xy = cmp(int2(1,2) < (int2)r3.ww);
    r4.z = cmp((int)r3.w != 5);
    r4.z = r4.z ? r6.x : 0;
    if (r4.z != 0) {
      r10.xyzw = min(uint4(4,5,6,7), (uint4)r2.zzzz);
      r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r2.wwww, (int4)r10.xyzw);
      r4.z = t3.Load(r10.x).y;
      r10.xy = t3.Load(r10.y).xy;
      r8.xyz = r10.xxx * r8.xyz;
      r7.xyz = r4.zzz * r7.xyz + r8.xyz;
      r7.xyz = r10.yyy * r9.xyz + r7.xyz;
      r7.xyz = r7.xyz / r3.yyy;
      r8.xyz = -r7.xyz + r5.xyz;
      r9.xy = t3.Load(r10.z).xy;
      r9.zw = t3.Load(r10.w).xy;
      r4.z = r7.x + r7.y;
      r5.w = cmp(0 < r9.w);
      r10.xy = cmp((int2)r3.ww >= int2(6,4));
      r10.zw = r5.ww ? cb3[11].xy : cb3[8].xy;
      r4.z = r10.z + r4.z;
      r4.z = 0.5 + r4.z;
      r4.z = frac(r4.z);
      r4.z = r4.z * 2 + -1;
      r6.x = abs(r4.z) * abs(r4.z);
      r4.z = -abs(r4.z) * 2 + 3;
      r4.z = r6.x * r4.z + -0.5;
      r4.z = dot(r4.zz, r10.ww);
      r11.xyz = float3(0.0625,1,16) * r9.zzz;
      r11.xyz = frac(r11.xyz);
      r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r11.xyz = r11.xyz * r4.zzz;
      r11.xyz = r11.xyz * r9.xxx + r8.xyz;
      r8.xyz = r10.xxx ? r11.xyz : r8.xyz;
      if (r10.y != 0) {
        r11.xyzw = float4(0.0625,1,16,30.2999992) * r9.yyyy;
        r11.xyzw = frac(r11.xyzw);
        r9.yzw = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.yz = r5.ww ? cb3[12].xz : cb3[9].xz;
        r4.z = 3 * r11.w;
        r11.x = r11.w * 3 + r10.y;
        r11.y = r10.y * 0.75 + -r4.z;
        r10.yw = float2(0.5,0.5) + r11.xy;
        r10.yw = frac(r10.yw);
        r10.yw = r10.yw * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.yw) * abs(r10.yw);
        r10.yw = -abs(r10.yw) * float2(2,2) + float2(3,3);
        r10.yw = r11.xy * r10.yw + float2(-0.5,-0.5);
        r10.yw = r10.yw + r10.yw;
        r4.z = dot(r8.xyz, r8.xyz);
        r4.z = sqrt(r4.z);
        r6.x = r10.w * r10.w + r10.y;
        r7.w = r10.z * r9.x;
        r6.x = r7.w * r6.x;
        sincos(r6.x, r6.x, r11.x);
        r7.w = 1 + -r11.x;
        r12.xyzw = r7.wwww * r9.yyyz;
        r13.xyz = r6.xxx * r9.wyz;
        r14.xy = r12.zy * r9.wz + r13.zx;
        r15.xy = r12.xw * r9.yz + r11.xx;
        r14.z = r12.w * r9.w + -r13.y;
        r16.xw = r12.zy * r9.wz + -r13.zx;
        r16.y = r12.w * r9.w + r13.y;
        r6.x = r9.w * r9.w;
        r16.z = r6.x * r7.w + r11.x;
        if (r10.x != 0) {
          r10.xz = r5.ww ? cb3[12].yw : cb3[9].yw;
          r11.xyz = r5.www ? cb3[13].xyz : cb3[10].xyz;
          r12.xyz = cb3[0].yzx * r9.wyz;
          r12.xyz = r9.zwy * cb3[0].zxy + -r12.xyz;
          r5.w = dot(cb3[0].xyz, r9.yzw);
          r5.w = max(-1, r5.w);
          r5.w = min(1, r5.w);
          r12.w = r12.z + r5.w;
          r6.x = dot(r12.xyw, r12.xyw);
          r6.x = rsqrt(r6.x);
          r9.yzw = r12.wxy * r6.xxx;
          r6.x = 1 + -abs(r5.w);
          r6.x = sqrt(r6.x);
          r7.w = abs(r5.w) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r5.w) + -0.212114394;
          r7.w = r7.w * abs(r5.w) + 1.57072878;
          r8.w = r7.w * r6.x;
          r8.w = r8.w * -2 + 3.14159274;
          r5.w = cmp(r5.w < -r5.w);
          r5.w = r5.w ? r8.w : 0;
          r5.w = r7.w * r6.x + r5.w;
          r6.x = -r10.y * r10.y + r10.w;
          r12.x = r11.w * 3 + r11.z;
          r12.y = 0.870000005 * r12.x;
          r10.yw = float2(0.5,0.5) + r12.xy;
          r10.yw = frac(r10.yw);
          r10.yw = r10.yw * float2(2,2) + float2(-1,-1);
          r11.zw = abs(r10.yw) * abs(r10.yw);
          r10.yw = -abs(r10.yw) * float2(2,2) + float2(3,3);
          r10.yw = r11.zw * r10.yw + float2(-0.5,-0.5);
          r10.yw = r10.yw + r10.yw;
          r7.w = r10.w * r10.w;
          r7.w = r7.w * r10.y + 1;
          r7.w = saturate(0.5 * r7.w);
          r7.w = log2(r7.w);
          r7.w = r11.y * r7.w;
          r7.w = exp2(r7.w);
          r6.x = r6.x * r10.x;
          r5.w = r5.w * r10.z + r6.x;
          r5.w = r11.x * r7.w + r5.w;
          r5.w = r9.x * r5.w;
          sincos(r5.w, r6.x, r9.x);
          r5.w = 1 + -r9.x;
          r10.xyzw = r5.wwww * r9.zzzw;
          r11.xyz = r6.xxx * r9.yzw;
          r12.xy = r10.zy * r9.yw + r11.zx;
          r13.xy = r10.xw * r9.zw + r9.xx;
          r12.z = r10.w * r9.y + -r11.y;
          r17.xy = r10.yz * r9.wy + -r11.xz;
          r17.z = r10.w * r9.y + r11.y;
          r6.x = r9.y * r9.y;
          r12.w = r6.x * r5.w + r9.x;
          r15.z = r16.w;
          r15.w = r14.x;
          r13.z = r12.y;
          r13.w = r17.y;
          r9.x = dot(r15.xzw, r13.xzw);
          r17.w = r13.y;
          r9.y = dot(r15.xwz, r17.xzw);
          r9.z = dot(r15.xzw, r12.xzw);
          r14.w = r15.y;
          r15.x = dot(r14.ywz, r13.xzw);
          r15.y = dot(r14.yzw, r17.xzw);
          r15.z = dot(r14.ywz, r12.xzw);
          r10.x = dot(r16.xyz, r13.xzw);
          r10.y = dot(r16.xzy, r17.xzw);
          r10.z = dot(r16.xyz, r12.xzw);
          r16.xyz = r10.xyz;
        } else {
          r9.x = r15.x;
          r9.y = r16.w;
          r9.z = r14.x;
          r15.xz = r14.yz;
        }
        r9.x = dot(r9.xyz, r8.xyz);
        r9.y = dot(r15.xyz, r8.xyz);
        r9.z = dot(r16.xyz, r8.xyz);
        r5.w = dot(r9.xyz, r9.xyz);
        r5.w = rsqrt(r5.w);
        r9.xyz = r9.xyz * r5.www;
        r8.xyz = r9.xyz * r4.zzz;
      }
      r7.xyz = r8.xyz + r7.xyz;
    } else {
      r7.xyz = r5.xyz;
    }
    if (r6.y != 0) {
      r2.z = min(2, (uint)r2.z);
      r2.z = mad(asint(cb4[0].y), (int)r2.w, (int)r2.z);
      r6.xy = t3.Load(r2.z).xy;
      r2.z = cmp((int)r3.w == 5);
      if (r2.z != 0) {
        r8.xyz = float3(0.0625,1,16) * r6.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r6.xxx;
        r2.z = r4.x + r4.y;
        r2.z = cb3[2].x + r2.z;
        r9.x = r2.z + r6.y;
        r9.y = r2.z * cb3[3].y + r6.y;
        r4.z = cb3[3].y * r9.x;
        r9.z = 0.5 * r4.z;
        r9.w = r9.x + -r6.x;
        r9.xyzw = float4(0.5,0.5,0.5,1.5) + r9.xyzw;
        r9.xyzw = frac(r9.xyzw);
        r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r10.xyzw = abs(r9.xyzw) * abs(r9.xyzw);
        r9.xyzw = -abs(r9.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r9.xyzw = r10.xyzw * r9.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r9.xyzw = r9.xyzw + r9.xyzw;
        r10.w = r9.y * r9.z;
        r4.z = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r10.xy = r4.zz ? r10.xy : r10.zw;
        r4.z = -r9.y * r9.z + r10.x;
        r4.z = r10.y * r4.z + r10.w;
        r5.w = r10.x + -r4.z;
        r4.z = r10.y * r5.w + r4.z;
        r4.z = cb3[3].x * r4.z;
        r5.w = 1 + -cb3[0].w;
        r7.w = 1 + -cb3[3].x;
        r7.w = r9.x * r7.w;
        r4.z = r4.z * r5.w + r7.w;
        r5.w = r9.w * cb3[4].x + 1;
        r4.z = r5.w * r4.z;
        r8.xyz = r8.xyz * r4.zzz;
        r8.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
        r9.x = r2.z * 0.100000001 + r6.y;
        r2.z = cb3[18].x * cb3[7].x;
        r9.y = r2.z * 0.100000001 + r6.y;
        r9.xy = float2(0.5,0.5) + r9.xy;
        r9.xy = frac(r9.xy);
        r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
        r10.xy = abs(r9.xy) * abs(r9.xy);
        r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
        r9.xy = r10.xy * r9.xy + float2(-0.5,-0.5);
        r9.xy = r9.xy + r9.xy;
        r9.xy = r9.xy * r9.xy;
        r2.z = r9.y * r9.x;
        r2.z = -r2.z * cb3[7].x + 1;
        r4.z = cb3[0].w * r9.w;
        r2.z = r4.z * cb3[4].x + r2.z;
        r9.xyz = cb3[5].xyz + -r8.xyz;
        r9.xyz = cb3[6].yyy * r9.xyz;
        r9.xyz = r9.xyz * r2.zzz;
        r7.xyz = r9.xyz * r6.xxx + r8.xyz;
      } else {
        r8.xyz = float3(0.0625,1,16) * r6.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r6.xxx;
        r2.z = r4.x + r4.y;
        r2.z = cb3[2].x + r2.z;
        r9.x = r2.z + r6.y;
        r9.y = r2.z * cb3[3].y + r6.y;
        r2.z = cb3[3].y * r9.x;
        r9.z = 0.5 * r2.z;
        r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
        r9.xyz = frac(r9.xyz);
        r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.xyz = abs(r9.xyz) * abs(r9.xyz);
        r9.xyz = -abs(r9.xyz) * float3(2,2,2) + float3(3,3,3);
        r9.xyz = r10.xyz * r9.xyz + float3(-0.5,-0.5,-0.5);
        r9.xyz = r9.xyz + r9.xyz;
        r10.w = r9.y * r9.z;
        r2.z = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r4.xz = r2.zz ? r10.xy : r10.zw;
        r2.z = -r9.y * r9.z + r4.x;
        r2.z = r4.z * r2.z + r10.w;
        r4.x = r4.x + -r2.z;
        r2.z = r4.z * r4.x + r2.z;
        r2.z = cb3[3].x * r2.z;
        r4.x = 1 + -cb3[0].w;
        r4.z = 1 + -cb3[3].x;
        r4.z = r9.x * r4.z;
        r2.z = r2.z * r4.x + r4.z;
        r8.xyz = r8.xyz * r2.zzz;
        r7.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
      }
    }
    r2.z = dot(r7.xyz, r7.xyz);
    r2.z = sqrt(r2.z);
    r4.x = 1 / cb3[1].z;
    r4.x = -r4.x * 0.25 + r7.z;
    r4.x = max(0, r4.x);
    r4.x = cb3[1].z * r4.x;
    r4.z = cmp(r4.x != 0.000000);
    r5.w = log2(r4.x);
    r5.w = cb3[1].w * r5.w;
    r5.w = exp2(r5.w);
    r4.x = r4.z ? r5.w : r4.x;
    r6.x = r3.x * 0.00100000005 + cb3[1].x;
    r6.y = cb3[1].x * 0.800000012 + r4.y;
    r4.yz = float2(0.5,0.5) + r6.xy;
    r4.yz = frac(r4.yz);
    r4.yz = r4.yz * float2(2,2) + float2(-1,-1);
    r6.xy = abs(r4.yz) * abs(r4.yz);
    r4.yz = -abs(r4.yz) * float2(2,2) + float2(3,3);
    r4.yz = r6.xy * r4.yz + float2(-0.5,-0.5);
    r4.yz = r4.yz + r4.yz;
    r3.x = r4.z * r4.z + r4.y;
    r4.y = cmp(cb3[1].z != 0.000000);
    r4.z = cb3[6].x / cb3[1].z;
    r4.y = r4.y ? r4.z : cb3[6].x;
    r3.x = cb3[1].y * r3.x + r4.y;
    r3.x = r3.x * r4.x;
    r4.xy = cb3[0].xy * r3.xx + r7.xy;
    r4.xy = r3.ww ? r4.xy : r7.xy;
    r4.z = r7.z;
    r3.x = dot(r4.xyz, r4.xyz);
    r3.x = rsqrt(r3.x);
    r4.xyz = r4.xyz * r3.xxx;
    r4.xyz = r4.xyz * r2.zzz;
    r4.xyz = r3.www ? r4.xyz : r7.xyz;
    r4.xyz = r4.xyz + -r5.xyz;
    r3.xyw = r4.xyz * r3.yyy;
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r5.xyz = r1.zxy * r6.zzz + -cb1[70].zxy;
    r4.xyz = r5.xyz + -r4.xyz;
    r4.yz = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r2.z = r4.x * 9.99999975e-005 + 0.200000003;
    r5.yzw = t5.SampleLevel(s0_s, r4.yz, -1).xyz;
    r4.x = cb6[15].w + r5.z;
    r6.x = -r4.x + r2.z;
    r6.x = max(0, r6.x);
    r5.y = r5.y + -r5.z;
    r5.y = max(9.99999975e-005, r5.y);
    r5.y = r6.x / r5.y;
    r5.y = min(1, r5.y);
    r5.z = ceil(r5.y);
    r5.y = 1 + -r5.y;
    r5.y = min(0.200000003, r5.y);
    r5.y = r5.z * r5.y;
    r5.z = 5 * r5.y;
    r2.z = -r5.w + r2.z;
    r6.x = max(0, r2.z);
    r4.x = r4.x + -r5.w;
    r4.x = max(9.99999975e-005, r4.x);
    r4.x = r6.x / r4.x;
    r4.x = min(1, r4.x);
    r5.w = ceil(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = min(0.200000003, r4.x);
    r4.x = r5.w * r4.x;
    r4.x = 5 * r4.x;
    r6.xy = t6.SampleLevel(s1_s, r4.yz, -1).xy;
    r5.y = r5.y * 5 + -r4.x;
    r5.y = cmp(9.99999975e-006 < abs(r5.y));
    r5.w = cmp(r5.z >= r4.x);
    r5.w = r5.w ? r6.y : r6.x;
    r5.y = r5.y ? r5.w : r6.x;
    r5.y = cb6[16].x * r5.y;
    r4.x = max(r5.z, r4.x);
    r5.y = r5.y * r4.x;
    r2.z = 10000 * r2.z;
    r2.z = max(0, r2.z);
    r3.z = cb6[8].z + r3.z;
    r3.z = r5.x + -r3.z;
    r2.z = min(r3.z, r2.z);
    r2.z = cb6[16].z * r2.z;
    r2.z = r4.x * r2.z;
    r2.z = r5.y * r2.z;
    r4.xy = t7.SampleLevel(s2_s, r4.yz, -1).xy;
    r4.xy = float2(-1,-1) + r4.xy;
    r4.xy = r4.xy * r2.zz;
    r2.z = dot(r4.xy, r4.xy);
    r2.z = sqrt(r2.z);
    r4.z = -1.20000005 * r2.z;
    r3.xyz = r3.xyw * cb6[15].yyy + r4.xyz;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r1.xyz = r1.xyz * r6.zzz + r3.xyz;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  o5.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  r1.x = mad(asint(cb4[0].y), (int)r2.w, asint(cb4[0].z));
  r1.xy = t3.Load(r1.x).xy;
  o4.xy = r1.xy * cb5[2].xy + r0.xy;
  o4.zw = r1.xy * cb5[3].xy + r0.zw;
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r6.zw;
  o3.xy = r2.xy;
  o3.zw = float2(0,0);
  return;
}