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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
    r0.z = (int)cb5[15].y;
    r1.yz = float2(0.00100000005,0.00100000005) * r3.xy;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = sqrt(r2.w);
    r8.xyz = v0.yyy * r2.xyz;
    r8.xyz = v0.xxx * r6.xzw + r8.xyz;
    r8.xyz = v0.zzz * r7.xyz + r8.xyz;
    r8.xyz = r8.xyz / r2.www;
    r4.xy = cmp(int2(1,2) < (int2)r0.zz);
    r3.y = cmp((int)r0.z != 5);
    r3.y = r3.y ? r4.x : 0;
    if (r3.y != 0) {
      r9.xyzw = min(uint4(4,5,6,7), (uint4)r0.yyyy);
      r9.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.wwww, (int4)r9.xyzw);
      r3.y = t2.Load(r9.x).y;
      r9.xy = t2.Load(r9.y).xy;
      r2.xyz = r9.xxx * r2.xyz;
      r2.xyz = r3.yyy * r6.xzw + r2.xyz;
      r2.xyz = r9.yyy * r7.xyz + r2.xyz;
      r2.xyz = r2.xyz / r2.www;
      r6.xyz = r8.xyz + -r2.xyz;
      r7.xy = t2.Load(r9.z).xy;
      r7.zw = t2.Load(r9.w).xy;
      r3.y = r2.x + r2.y;
      r4.x = cmp(0 < r7.w);
      r9.xy = cmp((int2)r0.zz >= int2(6,4));
      r9.zw = r4.xx ? cb3[11].xy : cb3[8].xy;
      r3.y = r9.z + r3.y;
      r3.y = 0.5 + r3.y;
      r3.y = frac(r3.y);
      r3.y = r3.y * 2 + -1;
      r5.x = abs(r3.y) * abs(r3.y);
      r3.y = -abs(r3.y) * 2 + 3;
      r3.y = r5.x * r3.y + -0.5;
      r3.y = dot(r3.yy, r9.ww);
      r10.xyz = float3(0.0625,1,16) * r7.zzz;
      r10.xyz = frac(r10.xyz);
      r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xyz = r10.xyz * r3.yyy;
      r10.xyz = r10.xyz * r7.xxx + r6.xyz;
      r6.xyz = r9.xxx ? r10.xyz : r6.xyz;
      if (r9.y != 0) {
        r10.xyzw = float4(0.0625,1,16,30.2999992) * r7.yyyy;
        r10.xyzw = frac(r10.xyzw);
        r7.yzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r9.yz = r4.xx ? cb3[12].xz : cb3[9].xz;
        r3.y = 3 * r10.w;
        r10.x = r10.w * 3 + r9.y;
        r10.y = r9.y * 0.75 + -r3.y;
        r9.yw = float2(0.5,0.5) + r10.xy;
        r9.yw = frac(r9.yw);
        r9.yw = r9.yw * float2(2,2) + float2(-1,-1);
        r10.xy = abs(r9.yw) * abs(r9.yw);
        r9.yw = -abs(r9.yw) * float2(2,2) + float2(3,3);
        r9.yw = r10.xy * r9.yw + float2(-0.5,-0.5);
        r9.yw = r9.yw + r9.yw;
        r3.y = dot(r6.xyz, r6.xyz);
        r3.y = sqrt(r3.y);
        r5.x = r9.w * r9.w + r9.y;
        r6.w = r9.z * r7.x;
        r5.x = r6.w * r5.x;
        sincos(r5.x, r5.x, r10.x);
        r6.w = 1 + -r10.x;
        r11.xyzw = r6.wwww * r7.yyyz;
        r12.xyz = r5.xxx * r7.wyz;
        r13.xy = r11.zy * r7.wz + r12.zx;
        r14.xy = r11.xw * r7.yz + r10.xx;
        r13.z = r11.w * r7.w + -r12.y;
        r15.xw = r11.zy * r7.wz + -r12.zx;
        r15.y = r11.w * r7.w + r12.y;
        r5.x = r7.w * r7.w;
        r15.z = r5.x * r6.w + r10.x;
        if (r9.x != 0) {
          r9.xz = r4.xx ? cb3[12].yw : cb3[9].yw;
          r10.xyz = r4.xxx ? cb3[13].xyz : cb3[10].xyz;
          r11.xyz = cb3[0].yzx * r7.wyz;
          r11.xyz = r7.zwy * cb3[0].zxy + -r11.xyz;
          r4.x = dot(cb3[0].xyz, r7.yzw);
          r4.x = max(-1, r4.x);
          r4.x = min(1, r4.x);
          r11.w = r11.z + r4.x;
          r5.x = dot(r11.xyw, r11.xyw);
          r5.x = rsqrt(r5.x);
          r7.yzw = r11.wxy * r5.xxx;
          r5.x = 1 + -abs(r4.x);
          r5.x = sqrt(r5.x);
          r6.w = abs(r4.x) * -0.0187292993 + 0.0742610022;
          r6.w = r6.w * abs(r4.x) + -0.212114394;
          r6.w = r6.w * abs(r4.x) + 1.57072878;
          r8.w = r6.w * r5.x;
          r8.w = r8.w * -2 + 3.14159274;
          r4.x = cmp(r4.x < -r4.x);
          r4.x = r4.x ? r8.w : 0;
          r4.x = r6.w * r5.x + r4.x;
          r5.x = -r9.y * r9.y + r9.w;
          r11.x = r10.w * 3 + r10.z;
          r11.y = 0.870000005 * r11.x;
          r9.yw = float2(0.5,0.5) + r11.xy;
          r9.yw = frac(r9.yw);
          r9.yw = r9.yw * float2(2,2) + float2(-1,-1);
          r10.zw = abs(r9.yw) * abs(r9.yw);
          r9.yw = -abs(r9.yw) * float2(2,2) + float2(3,3);
          r9.yw = r10.zw * r9.yw + float2(-0.5,-0.5);
          r9.yw = r9.yw + r9.yw;
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.y + 1;
          r6.w = saturate(0.5 * r6.w);
          r6.w = log2(r6.w);
          r6.w = r10.y * r6.w;
          r6.w = exp2(r6.w);
          r5.x = r5.x * r9.x;
          r4.x = r4.x * r9.z + r5.x;
          r4.x = r10.x * r6.w + r4.x;
          r4.x = r7.x * r4.x;
          sincos(r4.x, r4.x, r5.x);
          r6.w = 1 + -r5.x;
          r9.xyzw = r6.wwww * r7.zzzw;
          r10.xyz = r4.xxx * r7.yzw;
          r11.xy = r9.zy * r7.yw + r10.zx;
          r12.xy = r9.xw * r7.zw + r5.xx;
          r11.z = r9.w * r7.y + -r10.y;
          r16.xy = r9.yz * r7.wy + -r10.xz;
          r16.z = r9.w * r7.y + r10.y;
          r4.x = r7.y * r7.y;
          r11.w = r4.x * r6.w + r5.x;
          r14.z = r15.w;
          r14.w = r13.x;
          r12.z = r11.y;
          r12.w = r16.y;
          r7.x = dot(r14.xzw, r12.xzw);
          r16.w = r12.y;
          r7.y = dot(r14.xwz, r16.xzw);
          r7.z = dot(r14.xzw, r11.xzw);
          r13.w = r14.y;
          r14.x = dot(r13.ywz, r12.xzw);
          r14.y = dot(r13.yzw, r16.xzw);
          r14.z = dot(r13.ywz, r11.xzw);
          r9.x = dot(r15.xyz, r12.xzw);
          r9.y = dot(r15.xzy, r16.xzw);
          r9.z = dot(r15.xyz, r11.xzw);
          r15.xyz = r9.xyz;
        } else {
          r7.x = r14.x;
          r7.y = r15.w;
          r7.z = r13.x;
          r14.xz = r13.yz;
        }
        r7.x = dot(r7.xyz, r6.xyz);
        r7.y = dot(r14.xyz, r6.xyz);
        r7.z = dot(r15.xyz, r6.xyz);
        r4.x = dot(r7.xyz, r7.xyz);
        r4.x = rsqrt(r4.x);
        r7.xyz = r7.xyz * r4.xxx;
        r6.xyz = r7.xyz * r3.yyy;
      }
      r2.xyz = r6.xyz + r2.xyz;
    } else {
      r2.xyz = r8.xyz;
    }
    if (r4.y != 0) {
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
        r4.x = cb3[3].y * r7.x;
        r7.z = 0.5 * r4.x;
        r7.w = r7.x + -r0.y;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r9.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r9.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r9.w = r7.y * r7.z;
        r4.x = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r4.xy = r4.xx ? r9.xy : r9.zw;
        r5.x = -r7.y * r7.z + r4.x;
        r5.x = r4.y * r5.x + r9.w;
        r4.x = -r5.x + r4.x;
        r4.x = r4.y * r4.x + r5.x;
        r4.x = cb3[3].x * r4.x;
        r4.y = 1 + -cb3[0].w;
        r5.x = 1 + -cb3[3].x;
        r5.x = r7.x * r5.x;
        r4.x = r4.x * r4.y + r5.x;
        r4.y = r7.w * cb3[4].x + 1;
        r4.x = r4.x * r4.y;
        r6.xyz = r6.xyz * r4.xxx;
        r6.xyz = r6.xyz * cb3[2].yyy + r2.xyz;
        r4.x = r3.y * 0.100000001 + r0.w;
        r3.y = cb3[18].x * cb3[7].x;
        r4.y = r3.y * 0.100000001 + r0.w;
        r4.xy = float2(0.5,0.5) + r4.xy;
        r4.xy = frac(r4.xy);
        r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
        r7.xy = abs(r4.xy) * abs(r4.xy);
        r4.xy = -abs(r4.xy) * float2(2,2) + float2(3,3);
        r4.xy = r7.xy * r4.xy + float2(-0.5,-0.5);
        r4.xy = r4.xy + r4.xy;
        r4.xy = r4.xy * r4.xy;
        r3.y = r4.y * r4.x;
        r3.y = -r3.y * cb3[7].x + 1;
        r4.x = cb3[0].w * r7.w;
        r3.y = r4.x * cb3[4].x + r3.y;
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
        r9.xyz = abs(r7.xyz) * abs(r7.xyz);
        r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
        r7.xyz = r9.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
        r7.xyz = r7.xyz + r7.xyz;
        r9.w = r7.y * r7.z;
        r0.y = cmp(r9.w < 0);
        r9.y = abs(r9.w);
        r9.xz = float2(-1,1);
        r0.yw = r0.yy ? r9.xy : r9.zw;
        r1.y = -r7.y * r7.z + r0.y;
        r1.y = r0.w * r1.y + r9.w;
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
    r6.xy = r0.zz ? r1.yz : r2.xy;
    r6.z = r2.z;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r6.xyz = r6.xyz * r0.yyy;
    r0.yzw = r0.zzz ? r6.xyz : r2.xyz;
    r0.yzw = r0.yzw + -r8.xyz;
    r0.yzw = r0.yzw * r2.www;
    r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r2.xyz = floor(r2.xyz);
    r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r6.xyz = r5.wyz * r4.zzz + -cb1[70].zxy;
    r2.xyz = r6.xyz + -r2.xyz;
    r1.yz = float2(9.99999975e-005,9.99999975e-005) * r2.yz;
    r2.x = r2.x * 9.99999975e-005 + 0.200000003;
    r2.yzw = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
    r3.x = cb5[16].x + r2.z;
    r3.y = -r3.x + r2.x;
    r3.y = max(0, r3.y);
    r2.xy = r2.xy + -r2.wz;
    r2.y = max(9.99999975e-005, r2.y);
    r2.y = r3.y / r2.y;
    r2.y = min(1, r2.y);
    r2.z = ceil(r2.y);
    r2.y = 1 + -r2.y;
    r2.y = min(0.200000003, r2.y);
    r2.y = r2.z * r2.y;
    r3.y = max(0, r2.x);
    r2.w = r3.x + -r2.w;
    r2.w = max(9.99999975e-005, r2.w);
    r2.w = r3.y / r2.w;
    r2.w = min(1, r2.w);
    r3.x = ceil(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = min(0.200000003, r2.w);
    r2.w = r3.x * r2.w;
    r2.xzw = float3(10000,5,5) * r2.xyw;
    r3.xy = t4.SampleLevel(s1_s, r1.yz, -1).xy;
    r2.y = r2.y * 5 + -r2.w;
    r2.y = cmp(9.99999975e-006 < abs(r2.y));
    r4.x = cmp(r2.z >= r2.w);
    r3.y = r4.x ? r3.y : r3.x;
    r2.y = r2.y ? r3.y : r3.x;
    r2.y = cb5[16].y * r2.y;
    r2.z = max(r2.z, r2.w);
    r2.x = max(0, r2.x);
    r2.w = cb5[8].z + r3.z;
    r2.w = r6.x + -r2.w;
    r2.x = min(r2.x, r2.w);
    r2.x = cb5[16].w * r2.x;
    r2.xy = r2.zy * r2.xz;
    r2.x = r2.y * r2.x;
    r1.yz = t5.SampleLevel(s2_s, r1.yz, -1).xy;
    r1.yz = float2(-1,-1) + r1.yz;
    r2.xy = r2.xx * r1.yz;
    r1.y = dot(r2.xy, r2.xy);
    r1.y = sqrt(r1.y);
    r2.z = -1.20000005 * r1.y;
    r0.yzw = r0.yzw * cb5[15].zzz + r2.xyz;
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