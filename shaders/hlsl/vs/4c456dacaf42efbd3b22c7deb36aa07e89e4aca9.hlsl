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
  float4 cb2[5];
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
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR1,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD6)
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
  o1.xyz = r4.zzz * r11.xyz + r12.xyz;
  r4.xyz = r10.xyz * r5.yyy;
  r4.xyz = r5.xxx * r9.xyz + r4.xyz;
  o2.xyz = r5.zzz * r11.xyz + r4.xyz;
  o2.w = cb2[4].w * r5.w;
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
  o3.y = 1 + -r5.x;
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
  r1.x = dot(v0.xyzw, r9.xyzw);
  r9.x = r1.y;
  r9.y = r2.y;
  r9.z = r3.y;
  r9.w = r0.y;
  r1.y = dot(v0.xyzw, r9.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r0.z;
  r1.z = dot(v0.xyzw, r3.xyzw);
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r1.w = r1.w * r5.z;
  r2.x = (int)r2.w * asint(cb4[0].y);
  r2.xy = t2.Load(r2.x).xy;
  r2.z = cmp(r5.z >= 1);
  if (r2.z != 0) {
    r3.xyz = cb2[1].xyz * r0.yyy;
    r3.xyz = r0.xxx * cb2[0].xyz + r3.xyz;
    r0.xyz = r0.zzz * cb2[2].xyz + r3.xyz;
    r0.xyz = cb2[3].xyz + r0.xyz;
    r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r3.xyz = floor(r3.xyz);
    r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r4.xyz = r1.zxy * r5.zzz + -cb1[70].zxy;
    r3.xyz = r4.xyz + -r3.xyz;
    r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
    r2.z = r3.x * 9.99999975e-005 + 0.200000003;
    r9.xyz = t4.SampleLevel(s0_s, r3.yz, -1).xyz;
    r3.x = cb5[13].z + r9.y;
    r3.w = -r3.x + r2.z;
    r3.w = max(0, r3.w);
    r4.y = r9.x + -r9.y;
    r4.y = max(9.99999975e-005, r4.y);
    r3.w = r3.w / r4.y;
    r3.w = min(1, r3.w);
    r4.y = ceil(r3.w);
    r3.w = 1 + -r3.w;
    r3.w = min(0.200000003, r3.w);
    r3.w = r4.y * r3.w;
    r4.y = 5 * r3.w;
    r2.z = -r9.z + r2.z;
    r4.z = max(0, r2.z);
    r3.x = r3.x + -r9.z;
    r3.x = max(9.99999975e-005, r3.x);
    r3.x = r4.z / r3.x;
    r3.x = min(1, r3.x);
    r4.z = ceil(r3.x);
    r3.x = 1 + -r3.x;
    r3.x = min(0.200000003, r3.x);
    r3.x = r4.z * r3.x;
    r3.x = 5 * r3.x;
    r5.xy = t5.SampleLevel(s1_s, r3.yz, -1).xy;
    r3.w = r3.w * 5 + -r3.x;
    r3.w = cmp(9.99999975e-006 < abs(r3.w));
    r4.z = cmp(r4.y >= r3.x);
    r4.z = r4.z ? r5.y : r5.x;
    r3.w = r3.w ? r4.z : r5.x;
    r3.w = cb5[13].w * r3.w;
    r3.x = max(r4.y, r3.x);
    r3.w = r3.w * r3.x;
    r2.z = 10000 * r2.z;
    r2.z = max(0, r2.z);
    r0.z = cb5[7].z + r0.z;
    r0.z = r4.x + -r0.z;
    r0.z = min(r2.z, r0.z);
    r0.z = cb5[14].y * r0.z;
    r0.z = r3.x * r0.z;
    r0.z = r3.w * r0.z;
    r3.xy = t6.SampleLevel(s2_s, r3.yz, -1).xy;
    r3.xy = float2(-1,-1) + r3.xy;
    r3.xy = r3.xy * r0.zz;
    r0.z = dot(r3.xy, r3.xy);
    r0.z = sqrt(r0.z);
    r3.z = -1.20000005 * r0.z;
    r0.z = asint(cb4[0].y) + -1;
    r2.z = (int)cb5[14].z;
    r4.xy = float2(0.00100000005,0.00100000005) * r0.xy;
    r0.y = sqrt(r4.w);
    r9.xyz = v0.yyy * r7.xyz;
    r9.xyz = v0.xxx * r6.xyz + r9.xyz;
    r9.xyz = v0.zzz * r8.xyz + r9.xyz;
    r9.xyz = r9.xyz / r0.yyy;
    r4.zw = cmp(int2(1,2) < (int2)r2.zz);
    r3.w = cmp((int)r2.z != 5);
    r3.w = r3.w ? r4.z : 0;
    if (r3.w != 0) {
      r10.xyzw = min(uint4(4,5,6,7), (uint4)r0.zzzz);
      r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r2.wwww, (int4)r10.xyzw);
      r3.w = t2.Load(r10.x).y;
      r5.xy = t2.Load(r10.y).xy;
      r7.xyz = r5.xxx * r7.xyz;
      r6.xyz = r3.www * r6.xyz + r7.xyz;
      r6.xyz = r5.yyy * r8.xyz + r6.xyz;
      r6.xyz = r6.xyz / r0.yyy;
      r7.xyz = r9.xyz + -r6.xyz;
      r5.xy = t2.Load(r10.z).xy;
      r8.xy = t2.Load(r10.w).xy;
      r3.w = r6.x + r6.y;
      r4.z = cmp(0 < r8.y);
      r8.yz = cmp((int2)r2.zz >= int2(6,4));
      r10.xy = r4.zz ? cb3[11].xy : cb3[8].xy;
      r3.w = r10.x + r3.w;
      r3.w = 0.5 + r3.w;
      r3.w = frac(r3.w);
      r3.w = r3.w * 2 + -1;
      r6.w = abs(r3.w) * abs(r3.w);
      r3.w = -abs(r3.w) * 2 + 3;
      r3.w = r6.w * r3.w + -0.5;
      r3.w = dot(r3.ww, r10.yy);
      r10.xyz = float3(0.0625,1,16) * r8.xxx;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r3.www;
      r10.xyz = r10.xyz * r5.xxx + r7.xyz;
      r7.xyz = r8.yyy ? r10.xyz : r7.xyz;
      if (r8.z != 0) {
        r10.xyzw = float4(0.0625,1,16,30.2999992) * r5.yyyy;
        r10.xyzw = frac(r10.xyzw);
        r8.xzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r10.xy = r4.zz ? cb3[12].xz : cb3[9].xz;
        r3.w = 3 * r10.w;
        r11.x = r10.w * 3 + r10.x;
        r11.y = r10.x * 0.75 + -r3.w;
        r10.xz = float2(0.5,0.5) + r11.xy;
        r10.xz = frac(r10.xz);
        r10.xz = r10.xz * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r10.xz) * abs(r10.xz);
        r10.xz = -abs(r10.xz) * float2(2,2) + float2(3,3);
        r10.xz = r11.xy * r10.xz + float2(-0.5,-0.5);
        r10.xz = r10.xz + r10.xz;
        r3.w = dot(r7.xyz, r7.xyz);
        r3.w = sqrt(r3.w);
        r5.y = r10.z * r10.z + r10.x;
        r6.w = r10.y * r5.x;
        r5.y = r6.w * r5.y;
        sincos(r5.y, r11.x, r12.x);
        r5.y = 1 + -r12.x;
        r13.xyzw = r5.yyyy * r8.xxxz;
        r11.xyz = r11.xxx * r8.wxz;
        r14.xy = r13.zy * r8.wz + r11.zx;
        r15.xy = r13.xw * r8.xz + r12.xx;
        r14.z = r13.w * r8.w + -r11.y;
        r16.xw = r13.zy * r8.wz + -r11.zx;
        r16.y = r13.w * r8.w + r11.y;
        r6.w = r8.w * r8.w;
        r16.z = r6.w * r5.y + r12.x;
        if (r8.y != 0) {
          r11.xy = r4.zz ? cb3[12].yw : cb3[9].yw;
          r12.xyz = r4.zzz ? cb3[13].xyz : cb3[10].xyz;
          r13.xyz = cb3[0].yzx * r8.wxz;
          r13.xyz = r8.zwx * cb3[0].zxy + -r13.xyz;
          r4.z = dot(cb3[0].xyz, r8.xzw);
          r4.z = max(-1, r4.z);
          r4.z = min(1, r4.z);
          r13.w = r13.z + r4.z;
          r5.y = dot(r13.xyw, r13.xyw);
          r5.y = rsqrt(r5.y);
          r8.xyz = r13.wxy * r5.yyy;
          r5.y = 1 + -abs(r4.z);
          r5.y = sqrt(r5.y);
          r6.w = abs(r4.z) * -0.0187292993 + 0.0742610022;
          r6.w = r6.w * abs(r4.z) + -0.212114394;
          r6.w = r6.w * abs(r4.z) + 1.57072878;
          r7.w = r6.w * r5.y;
          r7.w = r7.w * -2 + 3.14159274;
          r4.z = cmp(r4.z < -r4.z);
          r4.z = r4.z ? r7.w : 0;
          r4.z = r6.w * r5.y + r4.z;
          r5.y = -r10.x * r10.x + r10.z;
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
          r5.y = r5.y * r11.x;
          r4.z = r4.z * r11.y + r5.y;
          r4.z = r12.x * r6.w + r4.z;
          r4.z = r5.x * r4.z;
          sincos(r4.z, r5.x, r10.x);
          r4.z = 1 + -r10.x;
          r11.xyzw = r4.zzzz * r8.yyyz;
          r10.yzw = r5.xxx * r8.xyz;
          r12.xy = r11.zy * r8.xz + r10.wy;
          r13.xy = r11.xw * r8.yz + r10.xx;
          r12.z = r11.w * r8.x + -r10.z;
          r17.xy = r11.yz * r8.zx + -r10.yw;
          r17.z = r11.w * r8.x + r10.z;
          r5.x = r8.x * r8.x;
          r12.w = r5.x * r4.z + r10.x;
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
        r4.z = dot(r8.xyz, r8.xyz);
        r4.z = rsqrt(r4.z);
        r8.xyz = r8.xyz * r4.zzz;
        r7.xyz = r8.xyz * r3.www;
      }
      r6.xyz = r7.xyz + r6.xyz;
    } else {
      r6.xyz = r9.xyz;
    }
    if (r4.w != 0) {
      r0.z = min(2, (uint)r0.z);
      r0.z = mad(asint(cb4[0].y), (int)r2.w, (int)r0.z);
      r4.zw = t2.Load(r0.z).xy;
      r0.z = cmp((int)r2.z == 5);
      if (r0.z != 0) {
        r7.xyz = float3(0.0625,1,16) * r4.www;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r4.zzz;
        r0.z = r4.x + r4.y;
        r0.z = cb3[2].x + r0.z;
        r8.x = r0.z + r4.w;
        r8.y = r0.z * cb3[3].y + r4.w;
        r2.w = cb3[3].y * r8.x;
        r8.z = 0.5 * r2.w;
        r8.w = r8.x + -r4.z;
        r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
        r8.xyzw = frac(r8.xyzw);
        r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r10.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
        r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r8.xyzw = r10.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r8.xyzw = r8.xyzw + r8.xyzw;
        r10.w = r8.y * r8.z;
        r2.w = cmp(r10.w < 0);
        r10.y = abs(r10.w);
        r10.xz = float2(-1,1);
        r5.xy = r2.ww ? r10.xy : r10.zw;
        r2.w = -r8.y * r8.z + r5.x;
        r2.w = r5.y * r2.w + r10.w;
        r3.w = r5.x + -r2.w;
        r2.w = r5.y * r3.w + r2.w;
        r2.w = cb3[3].x * r2.w;
        r3.w = 1 + -cb3[0].w;
        r5.x = 1 + -cb3[3].x;
        r5.x = r8.x * r5.x;
        r2.w = r2.w * r3.w + r5.x;
        r3.w = r8.w * cb3[4].x + 1;
        r2.w = r3.w * r2.w;
        r7.xyz = r7.xyz * r2.www;
        r7.xyz = r7.xyz * cb3[2].yyy + r6.xyz;
        r5.x = r0.z * 0.100000001 + r4.w;
        r0.z = cb3[18].x * cb3[7].x;
        r5.y = r0.z * 0.100000001 + r4.w;
        r5.xy = float2(0.5,0.5) + r5.xy;
        r5.xy = frac(r5.xy);
        r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
        r8.xy = abs(r5.xy) * abs(r5.xy);
        r5.xy = -abs(r5.xy) * float2(2,2) + float2(3,3);
        r5.xy = r8.xy * r5.xy + float2(-0.5,-0.5);
        r5.xy = r5.xy + r5.xy;
        r5.xy = r5.xy * r5.xy;
        r0.z = r5.y * r5.x;
        r0.z = -r0.z * cb3[7].x + 1;
        r2.w = cb3[0].w * r8.w;
        r0.z = r2.w * cb3[4].x + r0.z;
        r8.xyz = cb3[5].xyz + -r7.xyz;
        r8.xyz = cb3[6].yyy * r8.xyz;
        r8.xyz = r8.xyz * r0.zzz;
        r6.xyz = r8.xyz * r4.zzz + r7.xyz;
      } else {
        r7.xyz = float3(0.0625,1,16) * r4.www;
        r7.xyz = frac(r7.xyz);
        r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r7.xyz = r7.xyz * r4.zzz;
        r0.z = r4.x + r4.y;
        r0.z = cb3[2].x + r0.z;
        r8.x = r0.z + r4.w;
        r8.y = r0.z * cb3[3].y + r4.w;
        r0.z = cb3[3].y * r8.x;
        r8.z = 0.5 * r0.z;
        r4.xzw = float3(0.5,0.5,0.5) + r8.xyz;
        r4.xzw = frac(r4.xzw);
        r4.xzw = r4.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r8.xyz = abs(r4.xzw) * abs(r4.xzw);
        r4.xzw = -abs(r4.xzw) * float3(2,2,2) + float3(3,3,3);
        r4.xzw = r8.xyz * r4.xzw + float3(-0.5,-0.5,-0.5);
        r4.xzw = r4.xzw + r4.xzw;
        r8.w = r4.z * r4.w;
        r0.z = cmp(r8.w < 0);
        r8.y = abs(r8.w);
        r8.xz = float2(-1,1);
        r5.xy = r0.zz ? r8.xy : r8.zw;
        r0.z = -r4.z * r4.w + r5.x;
        r0.z = r5.y * r0.z + r8.w;
        r2.w = r5.x + -r0.z;
        r0.z = r5.y * r2.w + r0.z;
        r0.z = cb3[3].x * r0.z;
        r2.w = 1 + -cb3[0].w;
        r3.w = 1 + -cb3[3].x;
        r3.w = r4.x * r3.w;
        r0.z = r0.z * r2.w + r3.w;
        r4.xzw = r7.xyz * r0.zzz;
        r6.xyz = r4.xzw * cb3[2].yyy + r6.xyz;
      }
    }
    r0.z = dot(r6.xyz, r6.xyz);
    r0.z = sqrt(r0.z);
    r2.w = 1 / cb3[1].z;
    r2.w = -r2.w * 0.25 + r6.z;
    r2.w = max(0, r2.w);
    r2.w = cb3[1].z * r2.w;
    r3.w = cmp(r2.w != 0.000000);
    r4.x = log2(r2.w);
    r4.x = cb3[1].w * r4.x;
    r4.x = exp2(r4.x);
    r2.w = r3.w ? r4.x : r2.w;
    r5.x = r0.x * 0.00100000005 + cb3[1].x;
    r5.y = cb3[1].x * 0.800000012 + r4.y;
    r4.xy = float2(0.5,0.5) + r5.xy;
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
    r4.xy = cb3[0].xy * r0.xx + r6.xy;
    r4.xy = r2.zz ? r4.xy : r6.xy;
    r4.z = r6.z;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = rsqrt(r0.x);
    r4.xyz = r4.xyz * r0.xxx;
    r4.xyz = r4.xyz * r0.zzz;
    r4.xyz = r2.zzz ? r4.xyz : r6.xyz;
    r4.xyz = r4.xyz + -r9.xyz;
    r0.xyz = r4.xyz * r0.yyy;
    r0.xyz = r0.xyz * cb5[14].www + r3.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r1.xyz * r5.zzz + r0.xyz;
  r3.xyzw = cb1[1].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * cb1[2].xyzw + r3.xyzw;
  r3.xyzw = r1.wwww * cb1[3].xyzw + r3.xyzw;
  o0.xy = cb1[364].xy * r3.zz + r3.xy;
  o0.zw = r3.zw;
  o1.w = 0;
  o3.x = r0.w;
  o3.zw = r5.zw;
  o4.xy = r2.xy;
  o4.zw = float2(0,0);
  o5.w = r1.w;
  o5.xyz = r0.xyz;
  return;
}