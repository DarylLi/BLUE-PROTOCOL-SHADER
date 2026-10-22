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
  float4 cb6[15];
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
    r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r4.xyz = floor(r4.xyz);
    r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r4.xyz = r6.xyz + -r4.xyz;
    r2.zw = float2(9.99999975e-005,9.99999975e-005) * r4.yz;
    r3.w = r4.x * 9.99999975e-005 + 0.200000003;
    r4.xyz = t5.SampleLevel(s0_s, r2.zw, -1).xyz;
    r5.x = cb6[13].z + r4.y;
    r5.y = -r5.x + r3.w;
    r5.y = max(0, r5.y);
    r4.x = r4.x + -r4.y;
    r4.x = max(9.99999975e-005, r4.x);
    r4.x = r5.y / r4.x;
    r4.x = min(1, r4.x);
    r4.y = ceil(r4.x);
    r4.x = 1 + -r4.x;
    r4.x = min(0.200000003, r4.x);
    r4.x = r4.y * r4.x;
    r3.w = -r4.z + r3.w;
    r5.y = max(0, r3.w);
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
    r4.x = cb6[13].w * r4.x;
    r4.y = max(r4.y, r4.z);
    r4.x = r4.x * r4.y;
    r3.w = 10000 * r3.w;
    r3.w = max(0, r3.w);
    r3.z = cb6[7].z + r3.z;
    r3.z = r6.x + -r3.z;
    r3.z = min(r3.w, r3.z);
    r3.z = cb6[14].y * r3.z;
    r3.z = r4.y * r3.z;
    r3.z = r4.x * r3.z;
    r2.zw = t7.SampleLevel(s2_s, r2.zw, -1).xy;
    r2.zw = float2(-1,-1) + r2.zw;
    r4.xy = r3.zz * r2.zw;
    r2.z = dot(r4.xy, r4.xy);
    r2.z = sqrt(r2.z);
    r4.z = -1.20000005 * r2.z;
    r2.z = asint(cb4[0].y) + -1;
    r2.w = (int)cb6[14].z;
    r3.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r0.w = sqrt(r0.w);
    r6.xyz = v0.yyy * r8.xyz;
    r6.xyz = v0.xxx * r7.xyz + r6.xyz;
    r6.xyz = v0.zzz * r9.xyz + r6.xyz;
    r6.xyz = r6.xyz / r0.www;
    r5.xy = cmp(int2(1,2) < (int2)r2.ww);
    r3.w = cmp((int)r2.w != 5);
    r3.w = r3.w ? r5.x : 0;
    if (r3.w != 0) {
      r10.xyzw = min(uint4(4,5,6,7), (uint4)r2.zzzz);
      r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.zzzz, (int4)r10.xyzw);
      r3.w = t3.Load(r10.x).y;
      r10.xy = t3.Load(r10.y).xy;
      r8.xyz = r10.xxx * r8.xyz;
      r7.xyz = r3.www * r7.xyz + r8.xyz;
      r7.xyz = r10.yyy * r9.xyz + r7.xyz;
      r7.xyz = r7.xyz / r0.www;
      r8.xyz = -r7.xyz + r6.xyz;
      r9.xy = t3.Load(r10.z).xy;
      r9.zw = t3.Load(r10.w).xy;
      r3.w = r7.x + r7.y;
      r5.x = cmp(0 < r9.w);
      r10.xy = cmp((int2)r2.ww >= int2(6,4));
      r10.zw = r5.xx ? cb3[11].xy : cb3[8].xy;
      r3.w = r10.z + r3.w;
      r3.w = 0.5 + r3.w;
      r3.w = frac(r3.w);
      r3.w = r3.w * 2 + -1;
      r6.w = abs(r3.w) * abs(r3.w);
      r3.w = -abs(r3.w) * 2 + 3;
      r3.w = r6.w * r3.w + -0.5;
      r3.w = dot(r3.ww, r10.ww);
      r11.xyz = float3(0.0625,1,16) * r9.zzz;
      r11.xyz = frac(r11.xyz);
      r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r11.xyz = r11.xyz * r3.www;
      r11.xyz = r11.xyz * r9.xxx + r8.xyz;
      r8.xyz = r10.xxx ? r11.xyz : r8.xyz;
      if (r10.y != 0) {
        r11.xyzw = float4(0.0625,1,16,30.2999992) * r9.yyyy;
        r11.xyzw = frac(r11.xyzw);
        r9.yzw = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.yz = r5.xx ? cb3[12].xz : cb3[9].xz;
        r3.w = 3 * r11.w;
        r11.x = r11.w * 3 + r10.y;
        r11.y = r10.y * 0.75 + -r3.w;
        r10.yw = float2(0.5,0.5) + r11.xy;
        r10.yw = frac(r10.yw);
        r10.yw = r10.yw * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.yw) * abs(r10.yw);
        r10.yw = -abs(r10.yw) * float2(2,2) + float2(3,3);
        r10.yw = r11.xy * r10.yw + float2(-0.5,-0.5);
        r10.yw = r10.yw + r10.yw;
        r3.w = dot(r8.xyz, r8.xyz);
        r3.w = sqrt(r3.w);
        r6.w = r10.w * r10.w + r10.y;
        r7.w = r10.z * r9.x;
        r6.w = r7.w * r6.w;
        sincos(r6.w, r11.x, r12.x);
        r6.w = 1 + -r12.x;
        r13.xyzw = r6.wwww * r9.yyyz;
        r11.xyz = r11.xxx * r9.wyz;
        r14.xy = r13.zy * r9.wz + r11.zx;
        r15.xy = r13.xw * r9.yz + r12.xx;
        r14.z = r13.w * r9.w + -r11.y;
        r16.xw = r13.zy * r9.wz + -r11.zx;
        r16.y = r13.w * r9.w + r11.y;
        r7.w = r9.w * r9.w;
        r16.z = r7.w * r6.w + r12.x;
        if (r10.x != 0) {
          r10.xz = r5.xx ? cb3[12].yw : cb3[9].yw;
          r11.xyz = r5.xxx ? cb3[13].xyz : cb3[10].xyz;
          r12.xyz = cb3[0].yzx * r9.wyz;
          r12.xyz = r9.zwy * cb3[0].zxy + -r12.xyz;
          r5.x = dot(cb3[0].xyz, r9.yzw);
          r5.x = max(-1, r5.x);
          r5.x = min(1, r5.x);
          r12.w = r12.z + r5.x;
          r6.w = dot(r12.xyw, r12.xyw);
          r6.w = rsqrt(r6.w);
          r9.yzw = r12.wxy * r6.www;
          r6.w = 1 + -abs(r5.x);
          r6.w = sqrt(r6.w);
          r7.w = abs(r5.x) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r5.x) + -0.212114394;
          r7.w = r7.w * abs(r5.x) + 1.57072878;
          r8.w = r7.w * r6.w;
          r8.w = r8.w * -2 + 3.14159274;
          r5.x = cmp(r5.x < -r5.x);
          r5.x = r5.x ? r8.w : 0;
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
          r5.x = r9.x * r5.x;
          sincos(r5.x, r5.x, r9.x);
          r6.w = 1 + -r9.x;
          r10.xyzw = r6.wwww * r9.zzzw;
          r11.xyz = r5.xxx * r9.yzw;
          r12.xy = r10.zy * r9.yw + r11.zx;
          r13.xy = r10.xw * r9.zw + r9.xx;
          r12.z = r10.w * r9.y + -r11.y;
          r17.xy = r10.yz * r9.wy + -r11.xz;
          r17.z = r10.w * r9.y + r11.y;
          r5.x = r9.y * r9.y;
          r12.w = r5.x * r6.w + r9.x;
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
        r5.x = dot(r9.xyz, r9.xyz);
        r5.x = rsqrt(r5.x);
        r9.xyz = r9.xyz * r5.xxx;
        r8.xyz = r9.xyz * r3.www;
      }
      r7.xyz = r8.xyz + r7.xyz;
    } else {
      r7.xyz = r6.xyz;
    }
    if (r5.y != 0) {
      r2.z = min(2, (uint)r2.z);
      r2.z = mad(asint(cb4[0].y), (int)r0.z, (int)r2.z);
      r5.xy = t3.Load(r2.z).xy;
      r2.z = cmp((int)r2.w == 5);
      if (r2.z != 0) {
        r8.xyz = float3(0.0625,1,16) * r5.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r5.xxx;
        r2.z = r3.y + r3.z;
        r2.z = cb3[2].x + r2.z;
        r9.x = r2.z + r5.y;
        r9.y = r2.z * cb3[3].y + r5.y;
        r3.w = cb3[3].y * r9.x;
        r9.z = 0.5 * r3.w;
        r9.w = r9.x + -r5.x;
        r9.xyzw = float4(0.5,0.5,0.5,1.5) + r9.xyzw;
        r9.xyzw = frac(r9.xyzw);
        r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r10.xyzw = abs(r9.xyzw) * abs(r9.xyzw);
        r9.xyzw = -abs(r9.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r9.xyzw = r10.xyzw * r9.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r9.xyzw = r9.xyzw + r9.xyzw;
        r10.w = r9.y * r9.z;
        r3.w = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r10.xy = r3.ww ? r10.xy : r10.zw;
        r3.w = -r9.y * r9.z + r10.x;
        r3.w = r10.y * r3.w + r10.w;
        r6.w = r10.x + -r3.w;
        r3.w = r10.y * r6.w + r3.w;
        r3.w = cb3[3].x * r3.w;
        r6.w = 1 + -cb3[0].w;
        r7.w = 1 + -cb3[3].x;
        r7.w = r9.x * r7.w;
        r3.w = r3.w * r6.w + r7.w;
        r6.w = r9.w * cb3[4].x + 1;
        r3.w = r6.w * r3.w;
        r8.xyz = r8.xyz * r3.www;
        r8.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
        r9.x = r2.z * 0.100000001 + r5.y;
        r2.z = cb3[18].x * cb3[7].x;
        r9.y = r2.z * 0.100000001 + r5.y;
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
        r3.w = cb3[0].w * r9.w;
        r2.z = r3.w * cb3[4].x + r2.z;
        r9.xyz = cb3[5].xyz + -r8.xyz;
        r9.xyz = cb3[6].yyy * r9.xyz;
        r9.xyz = r9.xyz * r2.zzz;
        r7.xyz = r9.xyz * r5.xxx + r8.xyz;
      } else {
        r8.xyz = float3(0.0625,1,16) * r5.yyy;
        r8.xyz = frac(r8.xyz);
        r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = r8.xyz * r5.xxx;
        r2.z = r3.y + r3.z;
        r2.z = cb3[2].x + r2.z;
        r9.x = r2.z + r5.y;
        r9.y = r2.z * cb3[3].y + r5.y;
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
        r3.yw = r2.zz ? r10.xy : r10.zw;
        r2.z = -r9.y * r9.z + r3.y;
        r2.z = r3.w * r2.z + r10.w;
        r3.y = r3.y + -r2.z;
        r2.z = r3.w * r3.y + r2.z;
        r2.z = cb3[3].x * r2.z;
        r3.y = 1 + -cb3[0].w;
        r3.w = 1 + -cb3[3].x;
        r3.w = r9.x * r3.w;
        r2.z = r2.z * r3.y + r3.w;
        r8.xyz = r8.xyz * r2.zzz;
        r7.xyz = r8.xyz * cb3[2].yyy + r7.xyz;
      }
    }
    r2.z = dot(r7.xyz, r7.xyz);
    r2.z = sqrt(r2.z);
    r3.y = 1 / cb3[1].z;
    r3.y = -r3.y * 0.25 + r7.z;
    r3.y = max(0, r3.y);
    r3.y = cb3[1].z * r3.y;
    r3.w = cmp(r3.y != 0.000000);
    r5.x = log2(r3.y);
    r5.x = cb3[1].w * r5.x;
    r5.x = exp2(r5.x);
    r3.y = r3.w ? r5.x : r3.y;
    r5.x = r3.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r3.z;
    r3.xz = float2(0.5,0.5) + r5.xy;
    r3.xz = frac(r3.xz);
    r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
    r5.xy = abs(r3.xz) * abs(r3.xz);
    r3.xz = -abs(r3.xz) * float2(2,2) + float2(3,3);
    r3.xz = r5.xy * r3.xz + float2(-0.5,-0.5);
    r3.xz = r3.xz + r3.xz;
    r3.x = r3.z * r3.z + r3.x;
    r3.z = cmp(cb3[1].z != 0.000000);
    r3.w = cb3[6].x / cb3[1].z;
    r3.z = r3.z ? r3.w : cb3[6].x;
    r3.x = cb3[1].y * r3.x + r3.z;
    r3.x = r3.x * r3.y;
    r3.xy = cb3[0].xy * r3.xx + r7.xy;
    r3.xy = r2.ww ? r3.xy : r7.xy;
    r3.z = r7.z;
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = rsqrt(r3.w);
    r3.xyz = r3.xyz * r3.www;
    r3.xyz = r3.xyz * r2.zzz;
    r3.xyz = r2.www ? r3.xyz : r7.xyz;
    r3.xyz = r3.xyz + -r6.xyz;
    r3.xyz = r3.xyz * r0.www;
    r3.xyz = r3.xyz * cb6[14].www + r4.xyz;
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