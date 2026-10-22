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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR1,
  out float4 o2 : TEXCOORD0)
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
  o1.y = 1 + -r1.w;
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
  r0.x = dot(v0.xyzw, r5.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r0.z;
  r6.w = r3.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r7.x = r1.z;
  r7.y = r2.z;
  r7.z = r0.w;
  r7.w = r3.z;
  r0.w = dot(v0.xyzw, r7.xyzw);
  r5.yzw = cb2[1].xyz * r1.xxx;
  r5.yzw = cb2[0].xyz * r0.xxx + r5.yzw;
  r5.yzw = cb2[2].xyz * r0.www + r5.yzw;
  r6.xzw = cb2[3].xyz + cb1[70].xyz;
  r5.yzw = r6.xzw + r5.yzw;
  r0.x = 1;
  r0.x = r0.x * r4.z;
  r0.w = (int)v2.x + asint(cb4[0].w);
  r1.x = (int)r0.w * asint(cb4[0].y);
  r1.xw = t2.Load(r1.x).xy;
  r2.y = cmp(r4.z >= 1);
  if (r2.y != 0) {
    r6.xzw = cb2[1].xyz * r3.yyy;
    r6.xzw = r3.xxx * cb2[0].xyz + r6.xzw;
    r3.xyz = r3.zzz * cb2[2].xyz + r6.xzw;
    r3.xyz = cb2[3].xyz + r3.xyz;
    r6.xzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r6.xzw = floor(r6.xzw);
    r6.xzw = r6.xzw * float3(500,500,500) + float3(250,-4750,-4750);
    r7.xyw = r5.wyz * r4.zzz + -cb1[70].zxy;
    r6.xzw = r7.xyw + -r6.xzw;
    r2.yw = float2(9.99999975e-005,9.99999975e-005) * r6.zw;
    r4.x = r6.x * 9.99999975e-005 + 0.200000003;
    r6.xzw = t3.SampleLevel(s0_s, r2.yw, -1).xyz;
    r4.y = cb5[13].z + r6.z;
    r7.y = r4.x + -r4.y;
    r7.y = max(0, r7.y);
    r6.x = r6.x + -r6.z;
    r6.x = max(9.99999975e-005, r6.x);
    r6.x = r7.y / r6.x;
    r6.x = min(1, r6.x);
    r6.z = ceil(r6.x);
    r6.x = 1 + -r6.x;
    r6.x = min(0.200000003, r6.x);
    r6.x = r6.z * r6.x;
    r6.z = 5 * r6.x;
    r4.xy = -r6.ww + r4.xy;
    r7.y = max(0, r4.x);
    r4.y = max(9.99999975e-005, r4.y);
    r4.y = r7.y / r4.y;
    r4.y = min(1, r4.y);
    r6.w = ceil(r4.y);
    r4.y = 1 + -r4.y;
    r4.y = min(0.200000003, r4.y);
    r4.y = r6.w * r4.y;
    r4.xy = float2(10000,5) * r4.xy;
    r7.yw = t4.SampleLevel(s1_s, r2.yw, -1).xy;
    r6.x = r6.x * 5 + -r4.y;
    r6.x = cmp(9.99999975e-006 < abs(r6.x));
    r6.w = cmp(r6.z >= r4.y);
    r6.w = r6.w ? r7.w : r7.y;
    r6.x = r6.x ? r6.w : r7.y;
    r6.x = cb5[13].w * r6.x;
    r4.y = max(r6.z, r4.y);
    r6.x = r6.x * r4.y;
    r4.x = max(0, r4.x);
    r3.z = cb5[7].z + r3.z;
    r3.z = r7.x + -r3.z;
    r3.z = min(r4.x, r3.z);
    r3.z = cb5[14].y * r3.z;
    r3.z = r4.y * r3.z;
    r3.z = r6.x * r3.z;
    r2.yw = t5.SampleLevel(s2_s, r2.yw, -1).xy;
    r2.yw = float2(-1,-1) + r2.yw;
    r8.xy = r3.zz * r2.yw;
    r2.y = dot(r8.xy, r8.xy);
    r2.y = sqrt(r2.y);
    r8.z = -1.20000005 * r2.y;
    r6.xzw = cb2[1].xyz * r1.yyy;
    r6.xzw = r5.xxx * cb2[0].xyz + r6.xzw;
    r6.xzw = r1.zzz * cb2[2].xyz + r6.xzw;
    r7.xyw = cb2[1].xyz * r6.yyy;
    r2.xyw = r2.xxx * cb2[0].xyz + r7.xyw;
    r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
    r7.xyw = cb2[1].xyz * r0.zzz;
    r7.xyw = r0.yyy * cb2[0].xyz + r7.xyw;
    r7.xyz = r7.zzz * cb2[2].xyz + r7.xyw;
    r0.y = asint(cb4[0].y) + -1;
    r0.z = (int)cb5[14].z;
    r1.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = sqrt(r2.w);
    r9.xyz = v0.yyy * r2.xyz;
    r9.xyz = v0.xxx * r6.xzw + r9.xyz;
    r9.xyz = v0.zzz * r7.xyz + r9.xyz;
    r9.xyz = r9.xyz / r2.www;
    r3.yz = cmp(int2(1,2) < (int2)r0.zz);
    r4.x = cmp((int)r0.z != 5);
    r3.y = r3.y ? r4.x : 0;
    if (r3.y != 0) {
      r10.xyzw = min(uint4(4,5,6,7), (uint4)r0.yyyy);
      r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.wwww, (int4)r10.xyzw);
      r3.y = t2.Load(r10.x).y;
      r4.xy = t2.Load(r10.y).xy;
      r2.xyz = r4.xxx * r2.xyz;
      r2.xyz = r3.yyy * r6.xzw + r2.xyz;
      r2.xyz = r4.yyy * r7.xyz + r2.xyz;
      r2.xyz = r2.xyz / r2.www;
      r6.xyz = r9.xyz + -r2.xyz;
      r4.xy = t2.Load(r10.z).xy;
      r7.xy = t2.Load(r10.w).xy;
      r3.y = r2.x + r2.y;
      r5.x = cmp(0 < r7.y);
      r7.yz = cmp((int2)r0.zz >= int2(6,4));
      r10.xy = r5.xx ? cb3[11].xy : cb3[8].xy;
      r3.y = r10.x + r3.y;
      r3.y = 0.5 + r3.y;
      r3.y = frac(r3.y);
      r3.y = r3.y * 2 + -1;
      r6.w = abs(r3.y) * abs(r3.y);
      r3.y = -abs(r3.y) * 2 + 3;
      r3.y = r6.w * r3.y + -0.5;
      r3.y = dot(r3.yy, r10.yy);
      r10.xyz = float3(0.0625,1,16) * r7.xxx;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r3.yyy;
      r10.xyz = r10.xyz * r4.xxx + r6.xyz;
      r6.xyz = r7.yyy ? r10.xyz : r6.xyz;
      if (r7.z != 0) {
        r10.xyzw = float4(0.0625,1,16,30.2999992) * r4.yyyy;
        r10.xyzw = frac(r10.xyzw);
        r7.xzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.xy = r5.xx ? cb3[12].xz : cb3[9].xz;
        r3.y = 3 * r10.w;
        r11.x = r10.w * 3 + r10.x;
        r11.y = r10.x * 0.75 + -r3.y;
        r10.xz = float2(0.5,0.5) + r11.xy;
        r10.xz = frac(r10.xz);
        r10.xz = r10.xz * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.xz) * abs(r10.xz);
        r10.xz = -abs(r10.xz) * float2(2,2) + float2(3,3);
        r10.xz = r11.xy * r10.xz + float2(-0.5,-0.5);
        r10.xz = r10.xz + r10.xz;
        r3.y = dot(r6.xyz, r6.xyz);
        r3.y = sqrt(r3.y);
        r4.y = r10.z * r10.z + r10.x;
        r6.w = r10.y * r4.x;
        r4.y = r6.w * r4.y;
        sincos(r4.y, r11.x, r12.x);
        r4.y = 1 + -r12.x;
        r13.xyzw = r4.yyyy * r7.xxxz;
        r11.xyz = r11.xxx * r7.wxz;
        r14.xy = r13.zy * r7.wz + r11.zx;
        r15.xy = r13.xw * r7.xz + r12.xx;
        r14.z = r13.w * r7.w + -r11.y;
        r16.xw = r13.zy * r7.wz + -r11.zx;
        r16.y = r13.w * r7.w + r11.y;
        r6.w = r7.w * r7.w;
        r16.z = r6.w * r4.y + r12.x;
        if (r7.y != 0) {
          r11.xy = r5.xx ? cb3[12].yw : cb3[9].yw;
          r12.xyz = r5.xxx ? cb3[13].xyz : cb3[10].xyz;
          r13.xyz = cb3[0].yzx * r7.wxz;
          r13.xyz = r7.zwx * cb3[0].zxy + -r13.xyz;
          r4.y = dot(cb3[0].xyz, r7.xzw);
          r4.y = max(-1, r4.y);
          r4.y = min(1, r4.y);
          r13.w = r13.z + r4.y;
          r5.x = dot(r13.xyw, r13.xyw);
          r5.x = rsqrt(r5.x);
          r7.xyz = r13.wxy * r5.xxx;
          r5.x = 1 + -abs(r4.y);
          r5.x = sqrt(r5.x);
          r6.w = abs(r4.y) * -0.0187292993 + 0.0742610022;
          r6.w = r6.w * abs(r4.y) + -0.212114394;
          r6.w = r6.w * abs(r4.y) + 1.57072878;
          r7.w = r6.w * r5.x;
          r7.w = r7.w * -2 + 3.14159274;
          r4.y = cmp(r4.y < -r4.y);
          r4.y = r4.y ? r7.w : 0;
          r4.y = r6.w * r5.x + r4.y;
          r5.x = -r10.x * r10.x + r10.z;
          r10.x = r10.w * 3 + r12.z;
          r10.y = 0.870000005 * r10.x;
          r10.xy = float2(0.5,0.5) + r10.xy;
          r10.xy = frac(r10.xy);
          r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
          r10.zw = abs(r10.xy) * abs(r10.xy);
          r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
          r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
          r10.xy = r10.xy + r10.xy;
          r6.w = r10.y * r10.y;
          r6.w = r6.w * r10.x + 1;
          r6.w = saturate(0.5 * r6.w);
          r6.w = log2(r6.w);
          r6.w = r12.y * r6.w;
          r6.w = exp2(r6.w);
          r5.x = r5.x * r11.x;
          r4.y = r4.y * r11.y + r5.x;
          r4.y = r12.x * r6.w + r4.y;
          r4.x = r4.x * r4.y;
          sincos(r4.x, r4.x, r5.x);
          r4.y = 1 + -r5.x;
          r10.xyzw = r4.yyyy * r7.yyyz;
          r11.xyz = r4.xxx * r7.xyz;
          r12.xy = r10.zy * r7.xz + r11.zx;
          r13.xy = r10.xw * r7.yz + r5.xx;
          r12.z = r10.w * r7.x + -r11.y;
          r17.xy = r10.yz * r7.zx + -r11.xz;
          r17.z = r10.w * r7.x + r11.y;
          r4.x = r7.x * r7.x;
          r12.w = r4.x * r4.y + r5.x;
          r15.z = r16.w;
          r15.w = r14.x;
          r13.z = r12.y;
          r13.w = r17.y;
          r7.x = dot(r15.xzw, r13.xzw);
          r17.w = r13.y;
          r7.y = dot(r15.xwz, r17.xzw);
          r7.z = dot(r15.xzw, r12.xzw);
          r14.w = r15.y;
          r15.x = dot(r14.ywz, r13.xzw);
          r15.y = dot(r14.yzw, r17.xzw);
          r15.z = dot(r14.ywz, r12.xzw);
          r10.x = dot(r16.xyz, r13.xzw);
          r10.y = dot(r16.xzy, r17.xzw);
          r10.z = dot(r16.xyz, r12.xzw);
          r16.xyz = r10.xyz;
        } else {
          r7.x = r15.x;
          r7.y = r16.w;
          r7.z = r14.x;
          r15.xz = r14.yz;
        }
        r7.x = dot(r7.xyz, r6.xyz);
        r7.y = dot(r15.xyz, r6.xyz);
        r7.z = dot(r16.xyz, r6.xyz);
        r4.x = dot(r7.xyz, r7.xyz);
        r4.x = rsqrt(r4.x);
        r7.xyz = r7.xyz * r4.xxx;
        r6.xyz = r7.xyz * r3.yyy;
      }
      r2.xyz = r6.xyz + r2.xyz;
    } else {
      r2.xyz = r9.xyz;
    }
    if (r3.z != 0) {
      r0.y = min(2, (uint)r0.y);
      r0.y = mad(asint(cb4[0].y), (int)r0.w, (int)r0.y);
      r0.yw = t2.Load(r0.y).xy;
      r3.y = cmp((int)r0.z == 5);
      if (r3.y != 0) {
        r6.xyz = float3(0.0625,1,16) * r0.www;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r0.yyy;
        r3.y = r1.y + r1.z;
        r3.y = cb3[2].x + r3.y;
        r7.x = r3.y + r0.w;
        r7.y = r3.y * cb3[3].y + r0.w;
        r3.z = cb3[3].y * r7.x;
        r7.z = 0.5 * r3.z;
        r7.w = r7.x + -r0.y;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r10.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r10.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r10.w = r7.y * r7.z;
        r3.z = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r4.xy = r3.zz ? r10.xy : r10.zw;
        r3.z = -r7.y * r7.z + r4.x;
        r3.z = r4.y * r3.z + r10.w;
        r4.x = r4.x + -r3.z;
        r3.z = r4.y * r4.x + r3.z;
        r3.z = cb3[3].x * r3.z;
        r4.x = 1 + -cb3[0].w;
        r4.y = 1 + -cb3[3].x;
        r4.y = r7.x * r4.y;
        r3.z = r3.z * r4.x + r4.y;
        r4.x = r7.w * cb3[4].x + 1;
        r3.z = r4.x * r3.z;
        r6.xyz = r6.xyz * r3.zzz;
        r6.xyz = r6.xyz * cb3[2].yyy + r2.xyz;
        r4.x = r3.y * 0.100000001 + r0.w;
        r3.y = cb3[18].x * cb3[7].x;
        r4.y = r3.y * 0.100000001 + r0.w;
        r3.yz = float2(0.5,0.5) + r4.xy;
        r3.yz = frac(r3.yz);
        r3.yz = r3.yz * float2(2,2) + float2(-1,-1);
        r4.xy = abs(r3.yz) * abs(r3.yz);
        r3.yz = -abs(r3.yz) * float2(2,2) + float2(3,3);
        r3.yz = r4.xy * r3.yz + float2(-0.5,-0.5);
        r3.yz = r3.yz + r3.yz;
        r3.yz = r3.yz * r3.yz;
        r3.y = r3.z * r3.y;
        r3.y = -r3.y * cb3[7].x + 1;
        r3.z = cb3[0].w * r7.w;
        r3.y = r3.z * cb3[4].x + r3.y;
        r7.xyz = cb3[5].xyz + -r6.xyz;
        r7.xyz = cb3[6].yyy * r7.xyz;
        r7.xyz = r7.xyz * r3.yyy;
        r2.xyz = r7.xyz * r0.yyy + r6.xyz;
      } else {
        r6.xyz = float3(0.0625,1,16) * r0.www;
        r6.xyz = frac(r6.xyz);
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xyz = r6.xyz * r0.yyy;
        r0.y = r1.y + r1.z;
        r0.y = cb3[2].x + r0.y;
        r7.x = r0.y + r0.w;
        r7.y = r0.y * cb3[3].y + r0.w;
        r0.y = cb3[3].y * r7.x;
        r7.z = 0.5 * r0.y;
        r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.xyz = abs(r7.xyz) * abs(r7.xyz);
        r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
        r7.xyz = r10.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
        r7.xyz = r7.xyz + r7.xyz;
        r10.w = r7.y * r7.z;
        r0.y = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r0.yw = r0.yy ? r10.xy : r10.zw;
        r1.y = -r7.y * r7.z + r0.y;
        r1.y = r0.w * r1.y + r10.w;
        r0.y = -r1.y + r0.y;
        r0.y = r0.w * r0.y + r1.y;
        r0.y = cb3[3].x * r0.y;
        r0.w = 1 + -cb3[0].w;
        r1.y = 1 + -cb3[3].x;
        r1.y = r7.x * r1.y;
        r0.y = r0.y * r0.w + r1.y;
        r6.xyz = r6.xyz * r0.yyy;
        r2.xyz = r6.xyz * cb3[2].yyy + r2.xyz;
      }
    }
    r0.y = dot(r2.xyz, r2.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 1 / cb3[1].z;
    r0.w = -r0.w * 0.25 + r2.z;
    r0.w = max(0, r0.w);
    r0.w = cb3[1].z * r0.w;
    r1.y = cmp(r0.w != 0.000000);
    r3.y = log2(r0.w);
    r3.y = cb3[1].w * r3.y;
    r3.y = exp2(r3.y);
    r0.w = r1.y ? r3.y : r0.w;
    r3.x = r3.x * 0.00100000005 + cb3[1].x;
    r3.y = cb3[1].x * 0.800000012 + r1.z;
    r1.yz = float2(0.5,0.5) + r3.xy;
    r1.yz = frac(r1.yz);
    r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
    r3.xy = abs(r1.yz) * abs(r1.yz);
    r1.yz = -abs(r1.yz) * float2(2,2) + float2(3,3);
    r1.yz = r3.xy * r1.yz + float2(-0.5,-0.5);
    r1.yz = r1.yz + r1.yz;
    r1.y = r1.z * r1.z + r1.y;
    r1.z = cmp(cb3[1].z != 0.000000);
    r3.x = cb3[6].x / cb3[1].z;
    r1.z = r1.z ? r3.x : cb3[6].x;
    r1.y = cb3[1].y * r1.y + r1.z;
    r0.w = r1.y * r0.w;
    r1.yz = cb3[0].xy * r0.ww + r2.xy;
    r3.xy = r0.zz ? r1.yz : r2.xy;
    r3.z = r2.z;
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = r3.xyz * r0.www;
    r3.xyz = r3.xyz * r0.yyy;
    r0.yzw = r0.zzz ? r3.xyz : r2.xyz;
    r0.yzw = r0.yzw + -r9.xyz;
    r0.yzw = r0.yzw * r2.www;
    r0.yzw = r0.yzw * cb5[14].www + r8.xyz;
  } else {
    r0.yzw = float3(0,0,0);
  }
  r0.yzw = r5.yzw * r4.zzz + r0.yzw;
  r2.xyzw = cb1[1].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb1[2].xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * cb1[3].xyzw + r2.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.x = r3.w;
  o1.zw = r4.zw;
  o2.xy = r1.xw;
  o2.zw = float2(0,0);
  return;
}