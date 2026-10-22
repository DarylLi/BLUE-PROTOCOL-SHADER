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
    r5.xzw = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r5.xzw = floor(r5.xzw);
    r5.xzw = r5.xzw * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyw = r4.wyz * r0.xxx + -cb1[70].zxy;
    r5.xzw = r6.xyw + -r5.xzw;
    r1.xw = float2(9.99999975e-005,9.99999975e-005) * r5.zw;
    r2.y = r5.x * 9.99999975e-005 + 0.200000003;
    r5.xzw = t3.SampleLevel(s0_s, r1.xw, -1).xyz;
    r2.w = cb5[13].z + r5.z;
    r3.w = r2.y + -r2.w;
    r3.w = max(0, r3.w);
    r5.x = r5.x + -r5.z;
    r5.x = max(9.99999975e-005, r5.x);
    r3.w = r3.w / r5.x;
    r3.w = min(1, r3.w);
    r5.x = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r5.x * r3.w;
    r5.x = 5 * r3.w;
    r2.yw = -r5.ww + r2.yw;
    r5.z = max(0, r2.y);
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r5.z / r2.w;
    r2.w = min(1, r2.w);
    r5.z = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r5.z * r2.w;
    r2.yw = float2(10000,5) * r2.yw;
    r5.zw = t4.SampleLevel(s1_s, r1.xw, -1).xy;
    r3.w = r3.w * 5 + -r2.w;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r6.y = cmp(r5.x >= r2.w);
    r5.w = r6.y ? r5.w : r5.z;
    r3.w = r3.w ? r5.w : r5.z;
    r3.w = cb5[13].w * r3.w;
    r2.w = max(r5.x, r2.w);
    r3.w = r3.w * r2.w;
    r2.y = max(0, r2.y);
    r3.z = cb5[7].z + r3.z;
    r3.z = r6.x + -r3.z;
    r2.y = min(r3.z, r2.y);
    r2.y = cb5[14].y * r2.y;
    r2.y = r2.w * r2.y;
    r2.y = r3.w * r2.y;
    r1.xw = t5.SampleLevel(s2_s, r1.xw, -1).xy;
    r1.xw = float2(-1,-1) + r1.xw;
    r7.xy = r2.yy * r1.xw;
    r1.x = dot(r7.xy, r7.xy);
    r1.x = sqrt(r1.x);
    r7.z = -1.20000005 * r1.x;
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
    r1.w = (int)cb5[14].z;
    r3.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = sqrt(r2.w);
    r6.xyz = v0.yyy * r2.xyz;
    r6.xyz = v0.xxx * r1.xyz + r6.xyz;
    r6.xyz = v0.zzz * r5.xyz + r6.xyz;
    r6.xyz = r6.xyz / r2.www;
    r8.xy = cmp(int2(1,2) < (int2)r1.ww);
    r3.w = cmp((int)r1.w != 5);
    r3.w = r3.w ? r8.x : 0;
    if (r3.w != 0) {
      r9.xyzw = min(uint4(4,5,6,7), (uint4)r0.yyyy);
      r9.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.zzzz, (int4)r9.xyzw);
      r3.w = t2.Load(r9.x).y;
      r8.xz = t2.Load(r9.y).xy;
      r2.xyz = r8.xxx * r2.xyz;
      r1.xyz = r3.www * r1.xyz + r2.xyz;
      r1.xyz = r8.zzz * r5.xyz + r1.xyz;
      r1.xyz = r1.xyz / r2.www;
      r2.xyz = r6.xyz + -r1.xyz;
      r5.xy = t2.Load(r9.z).xy;
      r5.zw = t2.Load(r9.w).xy;
      r3.w = r1.x + r1.y;
      r4.x = cmp(0 < r5.w);
      r8.xz = cmp((int2)r1.ww >= int2(6,4));
      r9.xy = r4.xx ? cb3[11].xy : cb3[8].xy;
      r3.w = r9.x + r3.w;
      r3.w = 0.5 + r3.w;
      r3.w = frac(r3.w);
      r3.w = r3.w * 2 + -1;
      r5.w = abs(r3.w) * abs(r3.w);
      r3.w = -abs(r3.w) * 2 + 3;
      r3.w = r5.w * r3.w + -0.5;
      r3.w = dot(r3.ww, r9.yy);
      r9.xyz = float3(0.0625,1,16) * r5.zzz;
      r9.xyz = frac(r9.xyz);
      r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r9.xyz = r9.xyz * r3.www;
      r9.xyz = r9.xyz * r5.xxx + r2.xyz;
      r2.xyz = r8.xxx ? r9.xyz : r2.xyz;
      if (r8.z != 0) {
        r9.xyzw = float4(0.0625,1,16,30.2999992) * r5.yyyy;
        r9.xyzw = frac(r9.xyzw);
        r5.yzw = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.zw = r4.xx ? cb3[12].xz : cb3[9].xz;
        r3.w = 3 * r9.w;
        r9.x = r9.w * 3 + r8.z;
        r9.y = r8.z * 0.75 + -r3.w;
        r9.xy = float2(0.5,0.5) + r9.xy;
        r9.xy = frac(r9.xy);
        r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
        r10.xy = abs(r9.xy) * abs(r9.xy);
        r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
        r9.xy = r10.xy * r9.xy + float2(-0.5,-0.5);
        r9.xy = r9.xy + r9.xy;
        r3.w = dot(r2.xyz, r2.xyz);
        r3.w = sqrt(r3.w);
        r6.w = r9.y * r9.y + r9.x;
        r7.w = r8.w * r5.x;
        r6.w = r7.w * r6.w;
        sincos(r6.w, r10.x, r11.x);
        r6.w = 1 + -r11.x;
        r12.xyzw = r6.wwww * r5.yyyz;
        r10.xyz = r10.xxx * r5.wyz;
        r13.xy = r12.zy * r5.wz + r10.zx;
        r14.xy = r12.xw * r5.yz + r11.xx;
        r13.z = r12.w * r5.w + -r10.y;
        r15.xw = r12.zy * r5.wz + -r10.zx;
        r15.y = r12.w * r5.w + r10.y;
        r7.w = r5.w * r5.w;
        r15.z = r7.w * r6.w + r11.x;
        if (r8.x != 0) {
          r8.xz = r4.xx ? cb3[12].yw : cb3[9].yw;
          r10.xyz = r4.xxx ? cb3[13].xyz : cb3[10].xyz;
          r11.xyz = cb3[0].yzx * r5.wyz;
          r11.xyz = r5.zwy * cb3[0].zxy + -r11.xyz;
          r4.x = dot(cb3[0].xyz, r5.yzw);
          r4.x = max(-1, r4.x);
          r4.x = min(1, r4.x);
          r11.w = r11.z + r4.x;
          r5.y = dot(r11.xyw, r11.xyw);
          r5.y = rsqrt(r5.y);
          r5.yzw = r11.wxy * r5.yyy;
          r6.w = 1 + -abs(r4.x);
          r6.w = sqrt(r6.w);
          r7.w = abs(r4.x) * -0.0187292993 + 0.0742610022;
          r7.w = r7.w * abs(r4.x) + -0.212114394;
          r7.w = r7.w * abs(r4.x) + 1.57072878;
          r8.w = r7.w * r6.w;
          r8.w = r8.w * -2 + 3.14159274;
          r4.x = cmp(r4.x < -r4.x);
          r4.x = r4.x ? r8.w : 0;
          r4.x = r7.w * r6.w + r4.x;
          r6.w = -r9.x * r9.x + r9.y;
          r9.x = r9.w * 3 + r10.z;
          r9.y = 0.870000005 * r9.x;
          r9.xy = float2(0.5,0.5) + r9.xy;
          r9.xy = frac(r9.xy);
          r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
          r9.zw = abs(r9.xy) * abs(r9.xy);
          r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
          r9.xy = r9.zw * r9.xy + float2(-0.5,-0.5);
          r9.xy = r9.xy + r9.xy;
          r7.w = r9.y * r9.y;
          r7.w = r7.w * r9.x + 1;
          r7.w = saturate(0.5 * r7.w);
          r7.w = log2(r7.w);
          r7.w = r10.y * r7.w;
          r7.w = exp2(r7.w);
          r6.w = r6.w * r8.x;
          r4.x = r4.x * r8.z + r6.w;
          r4.x = r10.x * r7.w + r4.x;
          r4.x = r5.x * r4.x;
          sincos(r4.x, r4.x, r5.x);
          r6.w = 1 + -r5.x;
          r9.xyzw = r6.wwww * r5.zzzw;
          r8.xzw = r4.xxx * r5.yzw;
          r10.xy = r9.zy * r5.yw + r8.wx;
          r11.xy = r9.xw * r5.zw + r5.xx;
          r10.z = r9.w * r5.y + -r8.z;
          r12.xy = r9.yz * r5.wy + -r8.xw;
          r12.z = r9.w * r5.y + r8.z;
          r4.x = r5.y * r5.y;
          r10.w = r4.x * r6.w + r5.x;
          r14.z = r15.w;
          r14.w = r13.x;
          r11.z = r10.y;
          r11.w = r12.y;
          r5.x = dot(r14.xzw, r11.xzw);
          r12.w = r11.y;
          r5.y = dot(r14.xwz, r12.xzw);
          r5.z = dot(r14.xzw, r10.xzw);
          r13.w = r14.y;
          r14.x = dot(r13.ywz, r11.xzw);
          r14.y = dot(r13.yzw, r12.xzw);
          r14.z = dot(r13.ywz, r10.xzw);
          r9.x = dot(r15.xyz, r11.xzw);
          r9.y = dot(r15.xzy, r12.xzw);
          r9.z = dot(r15.xyz, r10.xzw);
          r15.xyz = r9.xyz;
        } else {
          r5.x = r14.x;
          r5.y = r15.w;
          r5.z = r13.x;
          r14.xz = r13.yz;
        }
        r5.x = dot(r5.xyz, r2.xyz);
        r5.y = dot(r14.xyz, r2.xyz);
        r5.z = dot(r15.xyz, r2.xyz);
        r4.x = dot(r5.xyz, r5.xyz);
        r4.x = rsqrt(r4.x);
        r5.xyz = r5.xyz * r4.xxx;
        r2.xyz = r5.xyz * r3.www;
      }
      r1.xyz = r2.xyz + r1.xyz;
    } else {
      r1.xyz = r6.xyz;
    }
    if (r8.y != 0) {
      r0.y = min(2, (uint)r0.y);
      r0.y = mad(asint(cb4[0].y), (int)r0.z, (int)r0.y);
      r0.yz = t2.Load(r0.y).xy;
      r2.x = cmp((int)r1.w == 5);
      if (r2.x != 0) {
        r2.xyz = float3(0.0625,1,16) * r0.zzz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xyz = r2.xyz * r0.yyy;
        r3.w = r3.y + r3.z;
        r3.w = cb3[2].x + r3.w;
        r5.x = r3.w + r0.z;
        r5.y = r3.w * cb3[3].y + r0.z;
        r4.x = cb3[3].y * r5.x;
        r5.z = 0.5 * r4.x;
        r5.w = r5.x + -r0.y;
        r5.xyzw = float4(0.5,0.5,0.5,1.5) + r5.xyzw;
        r5.xyzw = frac(r5.xyzw);
        r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r8.xyzw = abs(r5.xyzw) * abs(r5.xyzw);
        r5.xyzw = -abs(r5.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r5.xyzw = r8.xyzw * r5.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r5.xyzw = r5.xyzw + r5.xyzw;
        r8.w = r5.y * r5.z;
        r4.x = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r8.xy = r4.xx ? r8.xy : r8.zw;
        r4.x = -r5.y * r5.z + r8.x;
        r4.x = r8.y * r4.x + r8.w;
        r5.y = r8.x + -r4.x;
        r4.x = r8.y * r5.y + r4.x;
        r4.x = cb3[3].x * r4.x;
        r5.y = 1 + -cb3[0].w;
        r5.z = 1 + -cb3[3].x;
        r5.x = r5.x * r5.z;
        r4.x = r4.x * r5.y + r5.x;
        r5.x = r5.w * cb3[4].x + 1;
        r4.x = r5.x * r4.x;
        r2.xyz = r4.xxx * r2.xyz;
        r2.xyz = r2.xyz * cb3[2].yyy + r1.xyz;
        r5.x = r3.w * 0.100000001 + r0.z;
        r3.w = cb3[18].x * cb3[7].x;
        r5.y = r3.w * 0.100000001 + r0.z;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r8.xy = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r8.xy * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r5.xy = r5.xy * r5.xy;
        r3.w = r5.y * r5.x;
        r3.w = -r3.w * cb3[7].x + 1;
        r4.x = cb3[0].w * r5.w;
        r3.w = r4.x * cb3[4].x + r3.w;
        r5.xyz = cb3[5].xyz + -r2.xyz;
        r5.xyz = cb3[6].yyy * r5.xyz;
        r5.xyz = r5.xyz * r3.www;
        r1.xyz = r5.xyz * r0.yyy + r2.xyz;
      } else {
        r2.xyz = float3(0.0625,1,16) * r0.zzz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xyz = r2.xyz * r0.yyy;
        r0.y = r3.y + r3.z;
        r0.y = cb3[2].x + r0.y;
        r5.x = r0.y + r0.z;
        r5.y = r0.y * cb3[3].y + r0.z;
        r0.y = cb3[3].y * r5.x;
        r5.z = 0.5 * r0.y;
        r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
        r5.xyz = frac(r5.xyz);
        r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = abs(r5.xyz) * abs(r5.xyz);
        r5.xyz = -abs(r5.xyz) * float3(2,2,2) + float3(3,3,3);
        r5.xyz = r8.xyz * r5.xyz + float3(-0.5,-0.5,-0.5);
        r5.xyz = r5.xyz + r5.xyz;
        r8.w = r5.y * r5.z;
        r0.y = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r0.yz = r0.yy ? r8.xy : r8.zw;
        r3.y = -r5.y * r5.z + r0.y;
        r3.y = r0.z * r3.y + r8.w;
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
    r2.y = cb3[1].x * 0.800000012 + r3.z;
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
    r1.xyz = r1.xyz * cb5[14].www + r7.xyz;
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