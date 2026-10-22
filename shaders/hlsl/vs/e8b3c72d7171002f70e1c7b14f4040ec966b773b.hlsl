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
  out float4 o4 : HIT_PROXY_ID0,
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
  r2.xyzw = t1.Load(r0.y).xyzw;
  r3.xyzw = t1.Load(r0.z).xyzw;
  r0.xyzw = t0.Load(r0.x).xyzw;
  r4.x = (int)v2.x + asint(cb4[0].w);
  r4.y = (uint)r4.x << 1;
  r4.yzw = t3.Load(r4.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r4.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.xyzw = t3.Load(r5.x).xyzw;
  r6.xyz = r5.yzx * r4.yzw;
  r4.yzw = r5.xyz * r4.zwy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = r4.yzw * r5.yzx;
  r4.yzw = r4.wyz * r5.zxy + -r6.xyz;
  r4.yzw = r4.yzw * r5.www;
  r6.xyz = cb2[1].xyz * r1.yyy;
  r6.xyz = r1.xxx * cb2[0].xyz + r6.xyz;
  r6.xyz = r1.zzz * cb2[2].xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r2.yyy;
  r7.xyz = r2.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r2.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r3.yyy;
  r8.xyz = r3.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r3.zzz * cb2[2].xyz + r8.xyz;
  r6.w = dot(r6.xyz, r6.xyz);
  r6.w = rsqrt(r6.w);
  r9.xyz = r6.xyz * r6.www;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = rsqrt(r6.w);
  r10.xyz = r7.xyz * r6.www;
  r6.w = dot(r8.xyz, r8.xyz);
  r7.w = rsqrt(r6.w);
  r11.xyz = r8.xyz * r7.www;
  r12.xyz = r10.xyz * r4.zzz;
  r12.xyz = r4.yyy * r9.xyz + r12.xyz;
  o0.xyz = r4.www * r11.xyz + r12.xyz;
  r4.yzw = r10.xyz * r5.yyy;
  r4.yzw = r5.xxx * r9.xyz + r4.yzw;
  o1.xyz = r5.zzz * r11.xyz + r4.yzw;
  o1.w = cb2[4].w * r5.w;
  r4.y = 0.00390625 * r1.w;
  r4.y = trunc(r4.y);
  r5.xyz = cb0[7].xyz + r0.xyz;
  r9.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r9.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r9.xyz = cb1[70].xyz + r5.xyz;
  r4.z = dot(r9.xyz, r9.xyz);
  r4.z = sqrt(r4.z);
  r4.z = -cb0[8].x + r4.z;
  r4.z = saturate(cb0[8].y * r4.z);
  o2.y = 1 + -r4.z;
  r4.z = 1 + -r4.y;
  r4.z = cb0[8].w * r4.z;
  r4.z = cb0[8].z * r4.y + r4.z;
  r9.xyz = -cb0[5].xyz + r5.xyz;
  r4.w = dot(r9.xyz, r9.xyz);
  r4.w = sqrt(r4.w);
  r4.w = cb0[2].w * r0.w + r4.w;
  r5.xyz = -cb0[6].xyz + r5.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = cb0[2].w * r0.w + r5.x;
  r5.yzw = cmp(cb0[2].xyz < r4.www);
  r5.yzw = r5.yzw ? float3(1,1,1) : 0;
  r4.w = dot(r5.yzw, cb0[4].xyz);
  r5.xyz = cmp(cb0[3].xyz < r5.xxx);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r5.x = dot(r5.xyz, cb0[4].xyz);
  r5.x = cb0[6].w * r5.x;
  r5.w = r4.w * cb0[5].w + r5.x;
  r4.w = cmp(abs(r5.w) < 0.999000013);
  r4.w = r4.w ? 1.000000 : 0;
  r5.z = r4.z * r4.w;
  r9.x = r1.x;
  r9.y = r2.x;
  r9.z = r3.x;
  r9.w = r0.x;
  r1.x = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.y;
  r9.y = r2.y;
  r9.z = r3.y;
  r9.w = r0.y;
  r1.y = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.z;
  r9.y = r2.z;
  r9.z = r3.z;
  r9.w = r0.z;
  r1.z = dot(v0.xyzw, r9.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r2.xyz = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.x = 1;
  r2.x = r2.x * r5.z;
  r2.y = (int)r4.x * asint(cb4[0].y);
  r2.yz = t2.Load(r2.y).xy;
  r3.x = cmp(r5.z >= 1);
  if (r3.x != 0) {
    r3.xyz = cb2[1].xyz * r0.yyy;
    r3.xyz = r0.xxx * cb2[0].xyz + r3.xyz;
    r0.xyz = r0.zzz * cb2[2].xyz + r3.xyz;
    r0.xyz = cb2[3].xyz + r0.xyz;
    r3.x = asint(cb4[0].y) + -1;
    r3.y = (int)cb5[10].x;
    r4.zw = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r6.w);
    r9.xyz = v0.yyy * r7.xyz;
    r9.xyz = v0.xxx * r6.xyz + r9.xyz;
    r9.xyz = v0.zzz * r8.xyz + r9.xyz;
    r9.xyz = r9.xyz / r0.yyy;
    r5.xy = cmp(int2(1,2) < (int2)r3.yy);
    r3.z = cmp((int)r3.y != 5);
    r3.z = r3.z ? r5.x : 0;
    if (r3.z != 0) {
      r10.xyzw = min(uint4(4,5,6,7), (uint4)r3.xxxx);
      r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r4.xxxx, (int4)r10.xyzw);
      r3.z = t2.Load(r10.x).y;
      r10.xy = t2.Load(r10.y).xy;
      r7.xyz = r10.xxx * r7.xyz;
      r6.xyz = r3.zzz * r6.xyz + r7.xyz;
      r6.xyz = r10.yyy * r8.xyz + r6.xyz;
      r6.xyz = r6.xyz / r0.yyy;
      r7.xyz = r9.xyz + -r6.xyz;
      r8.xy = t2.Load(r10.z).xy;
      r8.zw = t2.Load(r10.w).xy;
      r3.z = r6.x + r6.y;
      r5.x = cmp(0 < r8.w);
      r10.xy = cmp((int2)r3.yy >= int2(6,4));
      r10.zw = r5.xx ? cb3[11].xy : cb3[8].xy;
      r3.z = r10.z + r3.z;
      r3.z = 0.5 + r3.z;
      r3.z = frac(r3.z);
      r3.z = r3.z * 2 + -1;
      r6.w = abs(r3.z) * abs(r3.z);
      r3.z = -abs(r3.z) * 2 + 3;
      r3.z = r6.w * r3.z + -0.5;
      r3.z = dot(r3.zz, r10.ww);
      r11.xyz = float3(0.0625,1,16) * r8.zzz;
      r11.xyz = frac(r11.xyz);
      r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r11.xyz = r11.xyz * r3.zzz;
      r11.xyz = r11.xyz * r8.xxx + r7.xyz;
      r7.xyz = r10.xxx ? r11.xyz : r7.xyz;
      if (r10.y != 0) {
        r11.xyzw = float4(0.0625,1,16,30.2999992) * r8.yyyy;
        r11.xyzw = frac(r11.xyzw);
        r8.yzw = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.yz = r5.xx ? cb3[12].xz : cb3[9].xz;
        r3.z = 3 * r11.w;
        r11.x = r11.w * 3 + r10.y;
        r11.y = r10.y * 0.75 + -r3.z;
        r10.yw = float2(0.5,0.5) + r11.xy;
        r10.yw = frac(r10.yw);
        r10.yw = r10.yw * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.yw) * abs(r10.yw);
        r10.yw = -abs(r10.yw) * float2(2,2) + float2(3,3);
        r10.yw = r11.xy * r10.yw + float2(-0.5,-0.5);
        r10.yw = r10.yw + r10.yw;
        r3.z = dot(r7.xyz, r7.xyz);
        r3.z = sqrt(r3.z);
        r6.w = r10.w * r10.w + r10.y;
        r7.w = r10.z * r8.x;
        r6.w = r7.w * r6.w;
        sincos(r6.w, r11.x, r12.x);
        r6.w = 1 + -r12.x;
        r13.xyzw = r6.wwww * r8.yyyz;
        r11.xyz = r11.xxx * r8.wyz;
        r14.xy = r13.zy * r8.wz + r11.zx;
        r15.xy = r13.xw * r8.yz + r12.xx;
        r14.z = r13.w * r8.w + -r11.y;
        r16.xw = r13.zy * r8.wz + -r11.zx;
        r16.y = r13.w * r8.w + r11.y;
        r7.w = r8.w * r8.w;
        r16.z = r7.w * r6.w + r12.x;
        if (r10.x != 0) {
          r10.xz = r5.xx ? cb3[12].yw : cb3[9].yw;
          r11.xyz = r5.xxx ? cb3[13].xyz : cb3[10].xyz;
          r12.xyz = cb3[0].yzx * r8.wyz;
          r12.xyz = r8.zwy * cb3[0].zxy + -r12.xyz;
          r5.x = dot(cb3[0].xyz, r8.yzw);
          r5.x = max(-1, r5.x);
          r5.x = min(1, r5.x);
          r12.w = r12.z + r5.x;
          r6.w = dot(r12.xyw, r12.xyw);
          r6.w = rsqrt(r6.w);
          r8.yzw = r12.wxy * r6.www;
          r6.w = 1 + -abs(r5.x);
          r6.w = sqrt(r6.w);
          r7.w = abs(r5.x) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r5.x) + -0.212114394;
          r7.w = r7.w * abs(r5.x) + 1.57072878;
          r9.w = r7.w * r6.w;
          r9.w = r9.w * -2 + 3.14159274;
          r5.x = cmp(r5.x < -r5.x);
          r5.x = r5.x ? r9.w : 0;
          r5.x = r7.w * r6.w + r5.x;
          r6.w = -r10.y * r10.y + r10.w;
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
          r6.w = r6.w * r10.x;
          r5.x = r5.x * r10.z + r6.w;
          r5.x = r11.x * r7.w + r5.x;
          r5.x = r8.x * r5.x;
          sincos(r5.x, r5.x, r8.x);
          r6.w = 1 + -r8.x;
          r10.xyzw = r6.wwww * r8.zzzw;
          r11.xyz = r5.xxx * r8.yzw;
          r12.xy = r10.zy * r8.yw + r11.zx;
          r13.xy = r10.xw * r8.zw + r8.xx;
          r12.z = r10.w * r8.y + -r11.y;
          r17.xy = r10.yz * r8.wy + -r11.xz;
          r17.z = r10.w * r8.y + r11.y;
          r5.x = r8.y * r8.y;
          r12.w = r5.x * r6.w + r8.x;
          r15.z = r16.w;
          r15.w = r14.x;
          r13.z = r12.y;
          r13.w = r17.y;
          r8.x = dot(r15.xzw, r13.xzw);
          r17.w = r13.y;
          r8.y = dot(r15.xwz, r17.xzw);
          r8.z = dot(r15.xzw, r12.xzw);
          r14.w = r15.y;
          r15.x = dot(r14.ywz, r13.xzw);
          r15.y = dot(r14.yzw, r17.xzw);
          r15.z = dot(r14.ywz, r12.xzw);
          r10.x = dot(r16.xyz, r13.xzw);
          r10.y = dot(r16.xzy, r17.xzw);
          r10.z = dot(r16.xyz, r12.xzw);
          r16.xyz = r10.xyz;
        } else {
          r8.x = r15.x;
          r8.y = r16.w;
          r8.z = r14.x;
          r15.xz = r14.yz;
        }
        r8.x = dot(r8.xyz, r7.xyz);
        r8.y = dot(r15.xyz, r7.xyz);
        r8.z = dot(r16.xyz, r7.xyz);
        r5.x = dot(r8.xyz, r8.xyz);
        r5.x = rsqrt(r5.x);
        r8.xyz = r8.xyz * r5.xxx;
        r7.xyz = r8.xyz * r3.zzz;
      }
      r6.xyz = r7.xyz + r6.xyz;
    } else {
      r6.xyz = r9.xyz;
    }
    if (r5.y != 0) {
      r3.x = min(2, (uint)r3.x);
      r3.x = mad(asint(cb4[0].y), (int)r4.x, (int)r3.x);
      r3.xz = t2.Load(r3.x).xy;
      r4.x = cmp((int)r3.y == 5);
      if (r4.x != 0) {
        r7.xyz = float3(0.0625,1,16) * r3.zzz;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r3.xxx;
        r4.x = r4.z + r4.w;
        r4.x = cb3[2].x + r4.x;
        r8.x = r4.x + r3.z;
        r8.y = r4.x * cb3[3].y + r3.z;
        r5.x = cb3[3].y * r8.x;
        r8.z = 0.5 * r5.x;
        r8.w = r8.x + -r3.x;
        r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
        r8.xyzw = frac(r8.xyzw);
        r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r10.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
        r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r8.xyzw = r10.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r8.xyzw = r8.xyzw + r8.xyzw;
        r10.w = r8.y * r8.z;
        r5.x = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r5.xy = r5.xx ? r10.xy : r10.zw;
        r6.w = -r8.y * r8.z + r5.x;
        r6.w = r5.y * r6.w + r10.w;
        r5.x = -r6.w + r5.x;
        r5.x = r5.y * r5.x + r6.w;
        r5.x = cb3[3].x * r5.x;
        r5.y = 1 + -cb3[0].w;
        r6.w = 1 + -cb3[3].x;
        r6.w = r8.x * r6.w;
        r5.x = r5.x * r5.y + r6.w;
        r5.y = r8.w * cb3[4].x + 1;
        r5.x = r5.x * r5.y;
        r7.xyz = r7.xyz * r5.xxx;
        r7.xyz = r7.xyz * cb3[2].yyy + r6.xyz;
        r5.x = r4.x * 0.100000001 + r3.z;
        r4.x = cb3[18].x * cb3[7].x;
        r5.y = r4.x * 0.100000001 + r3.z;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r8.xy = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r8.xy * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r5.xy = r5.xy * r5.xy;
        r4.x = r5.y * r5.x;
        r4.x = -r4.x * cb3[7].x + 1;
        r5.x = cb3[0].w * r8.w;
        r4.x = r5.x * cb3[4].x + r4.x;
        r8.xyz = cb3[5].xyz + -r7.xyz;
        r8.xyz = cb3[6].yyy * r8.xyz;
        r8.xyz = r8.xyz * r4.xxx;
        r6.xyz = r8.xyz * r3.xxx + r7.xyz;
      } else {
        r7.xyz = float3(0.0625,1,16) * r3.zzz;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r3.xxx;
        r3.x = r4.z + r4.w;
        r3.x = cb3[2].x + r3.x;
        r8.x = r3.x + r3.z;
        r8.y = r3.x * cb3[3].y + r3.z;
        r3.x = cb3[3].y * r8.x;
        r8.z = 0.5 * r3.x;
        r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.xyz = abs(r8.xyz) * abs(r8.xyz);
        r8.xyz = -abs(r8.xyz) * float3(2,2,2) + float3(3,3,3);
        r8.xyz = r10.xyz * r8.xyz + float3(-0.5,-0.5,-0.5);
        r8.xyz = r8.xyz + r8.xyz;
        r10.w = r8.y * r8.z;
        r3.x = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r3.xz = r3.xx ? r10.xy : r10.zw;
        r4.x = -r8.y * r8.z + r3.x;
        r4.x = r3.z * r4.x + r10.w;
        r3.x = -r4.x + r3.x;
        r3.x = r3.z * r3.x + r4.x;
        r3.x = cb3[3].x * r3.x;
        r3.z = 1 + -cb3[0].w;
        r4.x = 1 + -cb3[3].x;
        r4.x = r8.x * r4.x;
        r3.x = r3.x * r3.z + r4.x;
        r7.xyz = r7.xyz * r3.xxx;
        r6.xyz = r7.xyz * cb3[2].yyy + r6.xyz;
      }
    }
    r3.x = dot(r6.xyz, r6.xyz);
    r3.x = sqrt(r3.x);
    r3.z = 1 / cb3[1].z;
    r3.z = -r3.z * 0.25 + r6.z;
    r3.z = max(0, r3.z);
    r3.z = cb3[1].z * r3.z;
    r4.x = cmp(r3.z != 0.000000);
    r4.z = log2(r3.z);
    r4.z = cb3[1].w * r4.z;
    r4.z = exp2(r4.z);
    r3.z = r4.x ? r4.z : r3.z;
    r5.x = r0.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r4.w;
    r4.xz = float2(0.5,0.5) + r5.xy;
    r4.xz = frac(r4.xz);
    r4.xz = r4.xz * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r4.xz) * abs(r4.xz);
    r4.xz = -abs(r4.xz) * float2(2,2) + float2(3,3);
    r4.xz = r5.xy * r4.xz + float2(-0.5,-0.5);
    r4.xz = r4.xz + r4.xz;
    r0.x = r4.z * r4.z + r4.x;
    r4.x = cmp(cb3[1].z != 0.000000);
    r4.z = cb3[6].x / cb3[1].z;
    r4.x = r4.x ? r4.z : cb3[6].x;
    r0.x = cb3[1].y * r0.x + r4.x;
    r0.x = r0.x * r3.z;
    r4.xz = cb3[0].xy * r0.xx + r6.xy;
    r7.xy = r3.yy ? r4.xz : r6.xy;
    r7.z = r6.z;
    r0.x = dot(r7.xyz, r7.xyz);
    r0.x = rsqrt(r0.x);
    r4.xzw = r7.xyz * r0.xxx;
    r4.xzw = r4.xzw * r3.xxx;
    r3.xyz = r3.yyy ? r4.xzw : r6.xyz;
    r3.xyz = r3.xyz + -r9.xyz;
    r3.xyz = r3.xyz * r0.yyy;
    r4.xzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xzw = floor(r4.xzw);
    r4.xzw = r4.xzw * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r4.xzw = r6.xyz + -r4.xzw;
    r0.xy = float2(9.99999975e-005,9.99999975e-005) * r4.zw;
    r4.x = r4.x * 9.99999975e-005 + 0.200000003;
    r6.yzw = t4.SampleLevel(s0_s, r0.xy, -1).xyz;
    r4.z = cb5[10].w + r6.z;
    r4.w = r4.x + -r4.z;
    r4.w = max(0, r4.w);
    r5.x = r6.y + -r6.z;
    r5.x = max(9.99999975e-005, r5.x);
    r4.w = r4.w / r5.x;
    r4.w = min(1, r4.w);
    r5.x = ceil(r4.w);
    r4.w = 1 + -r4.w;
    r4.w = min(0.200000003, r4.w);
    r4.w = r5.x * r4.w;
    r5.x = 5 * r4.w;
    r4.xz = -r6.ww + r4.xz;
    r5.y = max(0, r4.x);
    r4.z = max(9.99999975e-005, r4.z);
    r4.z = r5.y / r4.z;
    r4.z = min(1, r4.z);
    r5.y = ceil(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = min(0.200000003, r4.z);
    r4.z = r5.y * r4.z;
    r4.xz = float2(10000,5) * r4.xz;
    r6.yz = t5.SampleLevel(s1_s, r0.xy, -1).xy;
    r4.w = r4.w * 5 + -r4.z;
    r4.w = cmp(9.99999975e-006 < abs(r4.w));
    r5.y = cmp(r5.x >= r4.z);
    r5.y = r5.y ? r6.z : r6.y;
    r4.w = r4.w ? r5.y : r6.y;
    r4.w = cb5[11].x * r4.w;
    r4.z = max(r5.x, r4.z);
    r4.w = r4.w * r4.z;
    r4.x = max(0, r4.x);
    r0.z = cb5[5].z + r0.z;
    r0.z = r6.x + -r0.z;
    r0.z = min(r4.x, r0.z);
    r0.z = cb5[11].z * r0.z;
    r0.z = r4.z * r0.z;
    r0.z = r4.w * r0.z;
    r0.xy = t6.SampleLevel(s2_s, r0.xy, -1).xy;
    r0.xy = float2(-1,-1) + r0.xy;
    r0.xy = r0.zz * r0.xy;
    r4.x = dot(r0.xy, r0.xy);
    r4.x = sqrt(r4.x);
    r0.z = -1.20000005 * r4.x;
    r0.xyz = r3.xyz * cb5[10].yyy + r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r1.x = -r4.y * 256 + r1.w;
  o4.x = 0.00392156886 * r1.x;
  o4.y = 0.00392156886 * r2.w;
  o4.z = 0.00392156886 * r3.w;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o6.xyzw = r2.xxxx * cb1[3].xyzw + r1.xyzw;
  o0.w = 0;
  o2.x = r0.w;
  o2.zw = r5.zw;
  o3.xy = r2.yz;
  o3.zw = float2(0,0);
  o4.w = 0;
  o5.w = r2.x;
  o5.xyz = r0.xyz;
  return;
}