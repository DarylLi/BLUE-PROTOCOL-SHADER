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
  float4 cb5[31];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
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
    r1.w = (int)cb5[28].w;
    r9.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r5.x = dot(r0.xyz, r0.xyz);
    r5.x = sqrt(r5.x);
    r10.xyz = v0.yyy * r2.xyz;
    r10.xyz = v0.xxx * r1.xyz + r10.xyz;
    r10.xyz = v0.zzz * r0.xyz + r10.xyz;
    r10.xyz = r10.xyz / r5.xxx;
    r9.zw = cmp(int2(1,2) < (int2)r1.ww);
    r10.w = cmp((int)r1.w != 5);
    r9.z = r9.z ? r10.w : 0;
    if (r9.z != 0) {
      r11.xyz = r7.xxx * r2.xyz;
      r11.xyz = r2.www * r1.xyz + r11.xyz;
      r11.xyz = r7.yyy * r0.xyz + r11.xyz;
      r11.xyz = r11.xyz / r5.xxx;
      r12.xyz = -r11.xyz + r10.xyz;
      r9.z = r11.x + r11.y;
      r10.w = cmp(0 < r8.w);
      r13.xy = cmp((int2)r1.ww >= int2(6,4));
      r13.zw = r10.ww ? cb3[11].xy : cb3[8].xy;
      r9.z = r13.z + r9.z;
      r9.z = 0.5 + r9.z;
      r9.z = frac(r9.z);
      r9.z = r9.z * 2 + -1;
      r11.w = abs(r9.z) * abs(r9.z);
      r9.z = -abs(r9.z) * 2 + 3;
      r9.z = r11.w * r9.z + -0.5;
      r9.z = dot(r9.zz, r13.ww);
      r14.xyz = float3(0.0625,1,16) * r8.zzz;
      r14.xyz = frac(r14.xyz);
      r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r14.xyz = r14.xyz * r9.zzz;
      r14.xyz = r14.xyz * r7.zzz + r12.xyz;
      r12.xyz = r13.xxx ? r14.xyz : r12.xyz;
      if (r13.y != 0) {
        r14.xyzw = float4(0.0625,1,16,30.2999992) * r7.wwww;
        r14.xyzw = frac(r14.xyzw);
        r13.yzw = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r14.xy = r10.ww ? cb3[12].xz : cb3[9].xz;
        r9.z = 3 * r14.w;
        r15.x = r14.w * 3 + r14.x;
        r15.y = r14.x * 0.75 + -r9.z;
        r14.xz = float2(0.5,0.5) + r15.xy;
        r14.xz = frac(r14.xz);
        r14.xz = r14.xz * float2(2,2) + float2(-1,-1);
        r15.xy = abs(r14.xz) * abs(r14.xz);
        r14.xz = -abs(r14.xz) * float2(2,2) + float2(3,3);
        r14.xz = r15.xy * r14.xz + float2(-0.5,-0.5);
        r14.xz = r14.xz + r14.xz;
        r9.z = dot(r12.xyz, r12.xyz);
        r9.z = sqrt(r9.z);
        r11.w = r14.z * r14.z + r14.x;
        r12.w = r14.y * r7.z;
        r11.w = r12.w * r11.w;
        sincos(r11.w, r15.x, r16.x);
        r11.w = 1 + -r16.x;
        r17.xyzw = r11.wwww * r13.yyyz;
        r15.xyz = r15.xxx * r13.wyz;
        r18.xy = r17.zy * r13.wz + r15.zx;
        r19.xy = r17.xw * r13.yz + r16.xx;
        r18.z = r17.w * r13.w + -r15.y;
        r20.xw = r17.zy * r13.wz + -r15.zx;
        r20.y = r17.w * r13.w + r15.y;
        r12.w = r13.w * r13.w;
        r20.z = r12.w * r11.w + r16.x;
        if (r13.x != 0) {
          r15.xy = r10.ww ? cb3[12].yw : cb3[9].yw;
          r16.xyz = r10.www ? cb3[13].xyz : cb3[10].xyz;
          r17.xyz = cb3[0].yzx * r13.wyz;
          r17.xyz = r13.zwy * cb3[0].zxy + -r17.xyz;
          r10.w = dot(cb3[0].xyz, r13.yzw);
          r10.w = max(-1, r10.w);
          r10.w = min(1, r10.w);
          r17.w = r17.z + r10.w;
          r11.w = dot(r17.xyw, r17.xyw);
          r11.w = rsqrt(r11.w);
          r13.xyz = r17.wxy * r11.www;
          r11.w = 1 + -abs(r10.w);
          r11.w = sqrt(r11.w);
          r12.w = abs(r10.w) * -0.0187292993 + 0.0742610022;
          r12.w = r12.w * abs(r10.w) + -0.212114394;
          r12.w = r12.w * abs(r10.w) + 1.57072878;
          r13.w = r12.w * r11.w;
          r13.w = r13.w * -2 + 3.14159274;
          r10.w = cmp(r10.w < -r10.w);
          r10.w = r10.w ? r13.w : 0;
          r10.w = r12.w * r11.w + r10.w;
          r11.w = -r14.x * r14.x + r14.z;
          r14.x = r14.w * 3 + r16.z;
          r14.y = 0.870000005 * r14.x;
          r14.xy = float2(0.5,0.5) + r14.xy;
          r14.xy = frac(r14.xy);
          r14.xy = r14.xy * float2(2,2) + float2(-1,-1);
          r14.zw = abs(r14.xy) * abs(r14.xy);
          r14.xy = -abs(r14.xy) * float2(2,2) + float2(3,3);
          r14.xy = r14.zw * r14.xy + float2(-0.5,-0.5);
          r14.xy = r14.xy + r14.xy;
          r12.w = r14.y * r14.y;
          r12.w = r12.w * r14.x + 1;
          r12.w = saturate(0.5 * r12.w);
          r12.w = log2(r12.w);
          r12.w = r16.y * r12.w;
          r12.w = exp2(r12.w);
          r11.w = r11.w * r15.x;
          r10.w = r10.w * r15.y + r11.w;
          r10.w = r16.x * r12.w + r10.w;
          r10.w = r10.w * r7.z;
          sincos(r10.w, r14.x, r15.x);
          r10.w = 1 + -r15.x;
          r16.xyzw = r10.wwww * r13.yyyz;
          r14.xyz = r14.xxx * r13.xyz;
          r17.xy = r16.zy * r13.xz + r14.zx;
          r21.xy = r16.xw * r13.yz + r15.xx;
          r17.z = r16.w * r13.x + -r14.y;
          r22.xy = r16.yz * r13.zx + -r14.xz;
          r22.z = r16.w * r13.x + r14.y;
          r11.w = r13.x * r13.x;
          r17.w = r11.w * r10.w + r15.x;
          r19.z = r20.w;
          r19.w = r18.x;
          r21.z = r17.y;
          r21.w = r22.y;
          r13.x = dot(r19.xzw, r21.xzw);
          r22.w = r21.y;
          r13.y = dot(r19.xwz, r22.xzw);
          r13.z = dot(r19.xzw, r17.xzw);
          r18.w = r19.y;
          r19.x = dot(r18.ywz, r21.xzw);
          r19.y = dot(r18.yzw, r22.xzw);
          r19.z = dot(r18.ywz, r17.xzw);
          r14.x = dot(r20.xyz, r21.xzw);
          r14.y = dot(r20.xzy, r22.xzw);
          r14.z = dot(r20.xyz, r17.xzw);
          r20.xyz = r14.xyz;
        } else {
          r13.x = r19.x;
          r13.y = r20.w;
          r13.z = r18.x;
          r19.xz = r18.yz;
        }
        r13.x = dot(r13.xyz, r12.xyz);
        r13.y = dot(r19.xyz, r12.xyz);
        r13.z = dot(r20.xyz, r12.xyz);
        r10.w = dot(r13.xyz, r13.xyz);
        r10.w = rsqrt(r10.w);
        r13.xyz = r13.xyz * r10.www;
        r12.xyz = r13.xyz * r9.zzz;
      }
      r11.xyz = r12.xyz + r11.xyz;
    } else {
      r11.xyz = r10.xyz;
    }
    if (r9.w != 0) {
      r9.z = cmp((int)r1.w == 5);
      if (r9.z != 0) {
        r12.xyz = float3(0.0625,1,16) * r8.yyy;
        r12.xyz = frac(r12.xyz);
        r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r12.xyz = r12.xyz * r8.xxx;
        r9.z = r9.x + r9.y;
        r9.z = cb3[2].x + r9.z;
        r13.x = r9.z + r8.y;
        r13.y = r9.z * cb3[3].y + r8.y;
        r9.w = cb3[3].y * r13.x;
        r13.z = 0.5 * r9.w;
        r13.w = r13.x + -r8.x;
        r13.xyzw = float4(0.5,0.5,0.5,1.5) + r13.xyzw;
        r13.xyzw = frac(r13.xyzw);
        r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r14.xyzw = abs(r13.xyzw) * abs(r13.xyzw);
        r13.xyzw = -abs(r13.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r13.xyzw = r14.xyzw * r13.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r13.xyzw = r13.xyzw + r13.xyzw;
        r14.w = r13.y * r13.z;
        r9.w = cmp(r14.w < 0);
        r14.y = abs(r14.w);
        r14.xz = float2(-1,1);
        r14.xy = r9.ww ? r14.xy : r14.zw;
        r9.w = -r13.y * r13.z + r14.x;
        r9.w = r14.y * r9.w + r14.w;
        r10.w = r14.x + -r9.w;
        r9.w = r14.y * r10.w + r9.w;
        r9.w = cb3[3].x * r9.w;
        r10.w = 1 + -cb3[0].w;
        r11.w = 1 + -cb3[3].x;
        r11.w = r13.x * r11.w;
        r9.w = r9.w * r10.w + r11.w;
        r10.w = r13.w * cb3[4].x + 1;
        r9.w = r10.w * r9.w;
        r12.xyz = r12.xyz * r9.www;
        r12.xyz = r12.xyz * cb3[2].yyy + r11.xyz;
        r13.x = r9.z * 0.100000001 + r8.y;
        r9.z = cb3[18].x * cb3[7].x;
        r13.y = r9.z * 0.100000001 + r8.y;
        r9.zw = float2(0.5,0.5) + r13.xy;
        r9.zw = frac(r9.zw);
        r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
        r13.xy = abs(r9.zw) * abs(r9.zw);
        r9.zw = -abs(r9.zw) * float2(2,2) + float2(3,3);
        r9.zw = r13.xy * r9.zw + float2(-0.5,-0.5);
        r9.zw = r9.zw + r9.zw;
        r9.zw = r9.zw * r9.zw;
        r9.z = r9.w * r9.z;
        r9.z = -r9.z * cb3[7].x + 1;
        r9.w = cb3[0].w * r13.w;
        r9.z = r9.w * cb3[4].x + r9.z;
        r13.xyz = cb3[5].xyz + -r12.xyz;
        r13.xyz = cb3[6].yyy * r13.xyz;
        r13.xyz = r13.xyz * r9.zzz;
        r11.xyz = r13.xyz * r8.xxx + r12.xyz;
      } else {
        r12.xyz = float3(0.0625,1,16) * r8.yyy;
        r12.xyz = frac(r12.xyz);
        r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r12.xyz = r12.xyz * r8.xxx;
        r9.x = r9.x + r9.y;
        r9.x = cb3[2].x + r9.x;
        r13.x = r9.x + r8.y;
        r13.y = r9.x * cb3[3].y + r8.y;
        r9.x = cb3[3].y * r13.x;
        r13.z = 0.5 * r9.x;
        r9.xzw = float3(0.5,0.5,0.5) + r13.xyz;
        r9.xzw = frac(r9.xzw);
        r9.xzw = r9.xzw * float3(2,2,2) + float3(-1,-1,-1);
        r13.xyz = abs(r9.xzw) * abs(r9.xzw);
        r9.xzw = -abs(r9.xzw) * float3(2,2,2) + float3(3,3,3);
        r9.xzw = r13.xyz * r9.xzw + float3(-0.5,-0.5,-0.5);
        r9.xzw = r9.xzw + r9.xzw;
        r13.w = r9.z * r9.w;
        r10.w = cmp(r13.w < 0);
        r13.y = abs(r13.w);
        r13.xz = float2(-1,1);
        r13.xy = r10.ww ? r13.xy : r13.zw;
        r9.z = -r9.z * r9.w + r13.x;
        r9.z = r13.y * r9.z + r13.w;
        r9.w = r13.x + -r9.z;
        r9.z = r13.y * r9.w + r9.z;
        r9.z = cb3[3].x * r9.z;
        r9.w = 1 + -cb3[0].w;
        r10.w = 1 + -cb3[3].x;
        r9.x = r10.w * r9.x;
        r9.x = r9.z * r9.w + r9.x;
        r9.xzw = r12.xyz * r9.xxx;
        r11.xyz = r9.xzw * cb3[2].yyy + r11.xyz;
      }
    }
    r9.x = dot(r11.xyz, r11.xyz);
    r9.x = sqrt(r9.x);
    r9.z = 1 / cb3[1].z;
    r9.z = -r9.z * 0.25 + r11.z;
    r9.z = max(0, r9.z);
    r9.z = cb3[1].z * r9.z;
    r9.w = cmp(r9.z != 0.000000);
    r10.w = log2(r9.z);
    r10.w = cb3[1].w * r10.w;
    r10.w = exp2(r10.w);
    r9.z = r9.w ? r10.w : r9.z;
    r12.x = r3.x * 0.00100000005 + cb3[1].x;
    r12.y = cb3[1].x * 0.800000012 + r9.y;
    r9.yw = float2(0.5,0.5) + r12.xy;
    r9.yw = frac(r9.yw);
    r9.yw = r9.yw * float2(2,2) + float2(-1,-1);
    r12.xy = abs(r9.yw) * abs(r9.yw);
    r9.yw = -abs(r9.yw) * float2(2,2) + float2(3,3);
    r9.yw = r12.xy * r9.yw + float2(-0.5,-0.5);
    r9.yw = r9.yw + r9.yw;
    r9.y = r9.w * r9.w + r9.y;
    r9.w = cmp(cb3[1].z != 0.000000);
    r10.w = cb3[6].x / cb3[1].z;
    r9.w = r9.w ? r10.w : cb3[6].x;
    r9.y = cb3[1].y * r9.y + r9.w;
    r9.y = r9.y * r9.z;
    r9.yz = cb3[0].xy * r9.yy + r11.xy;
    r12.xy = r1.ww ? r9.yz : r11.xy;
    r12.z = r11.z;
    r9.y = dot(r12.xyz, r12.xyz);
    r9.y = rsqrt(r9.y);
    r9.yzw = r12.xyz * r9.yyy;
    r9.xyz = r9.yzw * r9.xxx;
    r9.xyz = r1.www ? r9.xyz : r11.xyz;
    r9.xyz = r9.xyz + -r10.xyz;
    r9.xyz = r9.xyz * r5.xxx;
    r10.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
    r10.xyz = floor(r10.xyz);
    r10.xyz = r10.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r11.xyz = r5.wyz * r4.zzz + -cb1[70].zxy;
    r10.xyz = r11.xyz + -r10.xyz;
    r10.yz = float2(9.99999975e-005,9.99999975e-005) * r10.yz;
    r1.w = r10.x * 9.99999975e-005 + 0.200000003;
    r11.yzw = t3.SampleLevel(s0_s, r10.yz, -1).xyz;
    r5.x = cb5[29].z + r11.z;
    r9.w = -r5.x + r1.w;
    r9.w = max(0, r9.w);
    r10.x = r11.y + -r11.z;
    r10.x = max(9.99999975e-005, r10.x);
    r9.w = r9.w / r10.x;
    r9.w = min(1, r9.w);
    r10.x = ceil(r9.w);
    r9.w = 1 + -r9.w;
    r9.w = min(0.200000003, r9.w);
    r9.w = r10.x * r9.w;
    r10.x = 5 * r9.w;
    r1.w = -r11.w + r1.w;
    r10.w = max(0, r1.w);
    r5.x = r5.x + -r11.w;
    r5.x = max(9.99999975e-005, r5.x);
    r5.x = r10.w / r5.x;
    r5.x = min(1, r5.x);
    r10.w = ceil(r5.x);
    r5.x = 1 + -r5.x;
    r5.x = min(0.200000003, r5.x);
    r5.x = r10.w * r5.x;
    r5.x = 5 * r5.x;
    r11.yz = t4.SampleLevel(s1_s, r10.yz, -1).xy;
    r9.w = r9.w * 5 + -r5.x;
    r9.w = cmp(9.99999975e-006 < abs(r9.w));
    r10.w = cmp(r10.x >= r5.x);
    r10.w = r10.w ? r11.z : r11.y;
    r9.w = r9.w ? r10.w : r11.y;
    r9.w = cb5[29].w * r9.w;
    r5.x = max(r10.x, r5.x);
    r9.w = r9.w * r5.x;
    r1.w = 10000 * r1.w;
    r1.w = max(0, r1.w);
    r10.x = cb5[15].z + r3.z;
    r10.x = r11.x + -r10.x;
    r1.w = min(r10.x, r1.w);
    r1.w = cb5[30].y * r1.w;
    r1.w = r5.x * r1.w;
    r1.w = r9.w * r1.w;
    r10.xy = t5.SampleLevel(s2_s, r10.yz, -1).xy;
    r10.xy = float2(-1,-1) + r10.xy;
    r10.xy = r10.xy * r1.ww;
    r1.w = dot(r10.xy, r10.xy);
    r1.w = sqrt(r1.w);
    r10.z = -1.20000005 * r1.w;
    r9.xyz = r9.xyz * cb5[29].xxx + r10.xyz;
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
    r0.w = (int)cb5[28].w;
    r6.xy = float2(0.00100000005,0.00100000005) * r3.xy;
    r1.w = dot(r0.xyz, r0.xyz);
    r1.w = sqrt(r1.w);
    r9.xyz = v0.yyy * r2.xyz;
    r9.xyz = v0.xxx * r1.xyz + r9.xyz;
    r9.xyz = v0.zzz * r0.xyz + r9.xyz;
    r9.xyz = r9.xyz / r1.www;
    r6.zw = cmp(int2(1,2) < (int2)r0.ww);
    r3.y = cmp((int)r0.w != 5);
    r3.y = r3.y ? r6.z : 0;
    if (r3.y != 0) {
      r2.xyz = r7.xxx * r2.xyz;
      r1.xyz = r2.www * r1.xyz + r2.xyz;
      r0.xyz = r7.yyy * r0.xyz + r1.xyz;
      r0.xyz = r0.xyz / r1.www;
      r1.xyz = r9.xyz + -r0.xyz;
      r2.x = r0.x + r0.y;
      r2.y = cmp(0 < r8.w);
      r2.zw = cmp((int2)r0.ww >= int2(6,4));
      r7.xy = r2.yy ? cb3[11].xy : cb3[8].xy;
      r2.x = r7.x + r2.x;
      r2.x = 0.5 + r2.x;
      r2.x = frac(r2.x);
      r2.x = r2.x * 2 + -1;
      r3.y = abs(r2.x) * abs(r2.x);
      r2.x = -abs(r2.x) * 2 + 3;
      r2.x = r3.y * r2.x + -0.5;
      r2.x = dot(r2.xx, r7.yy);
      r11.xyz = float3(0.0625,1,16) * r8.zzz;
      r11.xyz = frac(r11.xyz);
      r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r11.xyz = r11.xyz * r2.xxx;
      r11.xyz = r11.xyz * r7.zzz + r1.xyz;
      r1.xyz = r2.zzz ? r11.xyz : r1.xyz;
      if (r2.w != 0) {
        r11.xyzw = float4(0.0625,1,16,30.2999992) * r7.wwww;
        r11.xyzw = frac(r11.xyzw);
        r7.xyw = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r2.xw = r2.yy ? cb3[12].xz : cb3[9].xz;
        r3.y = 3 * r11.w;
        r11.x = r11.w * 3 + r2.x;
        r11.y = r2.x * 0.75 + -r3.y;
        r8.zw = float2(0.5,0.5) + r11.xy;
        r8.zw = frac(r8.zw);
        r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
        r11.xy = abs(r8.zw) * abs(r8.zw);
        r8.zw = -abs(r8.zw) * float2(2,2) + float2(3,3);
        r8.zw = r11.xy * r8.zw + float2(-0.5,-0.5);
        r8.zw = r8.zw + r8.zw;
        r2.x = dot(r1.xyz, r1.xyz);
        r2.x = sqrt(r2.x);
        r3.y = r8.w * r8.w + r8.z;
        r2.w = r7.z * r2.w;
        r2.w = r2.w * r3.y;
        sincos(r2.w, r11.x, r12.x);
        r2.w = 1 + -r12.x;
        r13.xyzw = r2.wwww * r7.xxxy;
        r11.xyz = r11.xxx * r7.wxy;
        r14.xy = r13.zy * r7.wy + r11.zx;
        r15.xy = r13.xw * r7.xy + r12.xx;
        r14.z = r13.w * r7.w + -r11.y;
        r16.xw = r13.zy * r7.wy + -r11.zx;
        r16.y = r13.w * r7.w + r11.y;
        r3.y = r7.w * r7.w;
        r16.z = r3.y * r2.w + r12.x;
        if (r2.z != 0) {
          r2.zw = r2.yy ? cb3[12].yw : cb3[9].yw;
          r11.xyz = r2.yyy ? cb3[13].xyz : cb3[10].xyz;
          r12.xyz = cb3[0].yzx * r7.wxy;
          r12.xyz = r7.ywx * cb3[0].zxy + -r12.xyz;
          r2.y = dot(cb3[0].xyz, r7.xyw);
          r2.y = max(-1, r2.y);
          r2.y = min(1, r2.y);
          r12.w = r12.z + r2.y;
          r3.y = dot(r12.xyw, r12.xyw);
          r3.y = rsqrt(r3.y);
          r7.xyw = r12.wxy * r3.yyy;
          r3.y = 1 + -abs(r2.y);
          r3.y = sqrt(r3.y);
          r5.w = abs(r2.y) * -0.0187292993 + 0.0742610022;
          r5.w = r5.w * abs(r2.y) + -0.212114394;
          r5.w = r5.w * abs(r2.y) + 1.57072878;
          r6.z = r5.w * r3.y;
          r6.z = r6.z * -2 + 3.14159274;
          r2.y = cmp(r2.y < -r2.y);
          r2.y = r2.y ? r6.z : 0;
          r2.y = r5.w * r3.y + r2.y;
          r3.y = -r8.z * r8.z + r8.w;
          r12.x = r11.w * 3 + r11.z;
          r12.y = 0.870000005 * r12.x;
          r8.zw = float2(0.5,0.5) + r12.xy;
          r8.zw = frac(r8.zw);
          r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
          r11.zw = abs(r8.zw) * abs(r8.zw);
          r8.zw = -abs(r8.zw) * float2(2,2) + float2(3,3);
          r8.zw = r11.zw * r8.zw + float2(-0.5,-0.5);
          r8.zw = r8.zw + r8.zw;
          r5.w = r8.w * r8.w;
          r5.w = r5.w * r8.z + 1;
          r5.w = saturate(0.5 * r5.w);
          r5.w = log2(r5.w);
          r5.w = r11.y * r5.w;
          r5.w = exp2(r5.w);
          r2.z = r3.y * r2.z;
          r2.y = r2.y * r2.w + r2.z;
          r2.y = r11.x * r5.w + r2.y;
          r2.y = r7.z * r2.y;
          sincos(r2.y, r11.x, r12.x);
          r2.y = 1 + -r12.x;
          r13.xyzw = r2.yyyy * r7.yyyw;
          r11.xyz = r11.xxx * r7.xyw;
          r17.xy = r13.zy * r7.xw + r11.zx;
          r18.xy = r13.xw * r7.yw + r12.xx;
          r17.z = r13.w * r7.x + -r11.y;
          r19.xy = r13.yz * r7.wx + -r11.xz;
          r19.z = r13.w * r7.x + r11.y;
          r2.z = r7.x * r7.x;
          r17.w = r2.z * r2.y + r12.x;
          r15.z = r16.w;
          r15.w = r14.x;
          r18.z = r17.y;
          r18.w = r19.y;
          r7.x = dot(r15.xzw, r18.xzw);
          r19.w = r18.y;
          r7.y = dot(r15.xwz, r19.xzw);
          r7.z = dot(r15.xzw, r17.xzw);
          r14.w = r15.y;
          r15.x = dot(r14.ywz, r18.xzw);
          r15.y = dot(r14.yzw, r19.xzw);
          r15.z = dot(r14.ywz, r17.xzw);
          r11.x = dot(r16.xyz, r18.xzw);
          r11.y = dot(r16.xzy, r19.xzw);
          r11.z = dot(r16.xyz, r17.xzw);
          r16.xyz = r11.xyz;
        } else {
          r7.x = r15.x;
          r7.y = r16.w;
          r7.z = r14.x;
          r15.xz = r14.yz;
        }
        r7.x = dot(r7.xyz, r1.xyz);
        r7.y = dot(r15.xyz, r1.xyz);
        r7.z = dot(r16.xyz, r1.xyz);
        r2.y = dot(r7.xyz, r7.xyz);
        r2.y = rsqrt(r2.y);
        r2.yzw = r7.xyz * r2.yyy;
        r1.xyz = r2.yzw * r2.xxx;
      }
      r0.xyz = r1.xyz + r0.xyz;
    } else {
      r0.xyz = r9.xyz;
    }
    if (r6.w != 0) {
      r1.x = cmp((int)r0.w == 5);
      if (r1.x != 0) {
        r1.xyz = float3(0.0625,1,16) * r8.yyy;
        r1.xyz = frac(r1.xyz);
        r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r1.xyz = r1.xyz * r8.xxx;
        r2.x = r6.x + r6.y;
        r2.x = cb3[2].x + r2.x;
        r7.x = r2.x + r8.y;
        r7.y = r2.x * cb3[3].y + r8.y;
        r2.y = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.y;
        r7.w = r7.x + -r8.x;
        r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
        r7.xyzw = frac(r7.xyzw);
        r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
        r11.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
        r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
        r7.xyzw = r11.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
        r7.xyzw = r7.xyzw + r7.xyzw;
        r11.w = r7.y * r7.z;
        r2.y = cmp(r11.w < 0);
        r11.y = abs(r11.w);
        r11.xz = float2(-1,1);
        r2.yz = r2.yy ? r11.xy : r11.zw;
        r2.w = -r7.y * r7.z + r2.y;
        r2.w = r2.z * r2.w + r11.w;
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
        r2.x = r6.x + r6.y;
        r2.x = cb3[2].x + r2.x;
        r7.x = r2.x + r8.y;
        r7.y = r2.x * cb3[3].y + r8.y;
        r2.x = cb3[3].y * r7.x;
        r7.z = 0.5 * r2.x;
        r2.xyz = float3(0.5,0.5,0.5) + r7.xyz;
        r2.xyz = frac(r2.xyz);
        r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
        r6.xzw = abs(r2.xyz) * abs(r2.xyz);
        r2.xyz = -abs(r2.xyz) * float3(2,2,2) + float3(3,3,3);
        r2.xyz = r6.xzw * r2.xyz + float3(-0.5,-0.5,-0.5);
        r2.xyz = r2.xyz + r2.xyz;
        r7.w = r2.y * r2.z;
        r2.w = cmp(r7.w < 0);
        r7.y = abs(r7.w);
        r7.xz = float2(-1,1);
        r6.xz = r2.ww ? r7.xy : r7.zw;
        r2.y = -r2.y * r2.z + r6.x;
        r2.y = r6.z * r2.y + r7.w;
        r2.z = r6.x + -r2.y;
        r2.y = r6.z * r2.z + r2.y;
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
    r2.y = cb3[1].x * 0.800000012 + r6.y;
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
    r2.xy = r0.ww ? r1.yz : r0.xy;
    r2.z = r0.z;
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = rsqrt(r1.y);
    r2.xyz = r2.xyz * r1.yyy;
    r1.xyz = r2.xyz * r1.xxx;
    r0.xyz = r0.www ? r1.xyz : r0.xyz;
    r0.xyz = r0.xyz + -r9.xyz;
    r0.xyz = r0.xyz * r1.www;
    r0.w = cb5[15].z + r3.z;
    r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
    r1.xyz = floor(r1.xyz);
    r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
    r2.xyz = -cb1[113].zxy + r10.zxy;
    r1.xyz = r2.xyz + -r1.xyz;
    r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
    r1.x = r1.x * 9.99999975e-005 + 0.200000003;
    r2.yzw = t3.SampleLevel(s0_s, r1.yz, -1).xyz;
    r1.w = cb5[29].z + r2.z;
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
    r2.y = cb5[29].w * r2.y;
    r1.w = max(r2.z, r1.w);
    r2.y = r2.y * r1.w;
    r1.x = max(0, r1.x);
    r0.w = r2.x + -r0.w;
    r0.w = min(r1.x, r0.w);
    r0.w = cb5[30].y * r0.w;
    r0.w = r1.w * r0.w;
    r0.w = r2.y * r0.w;
    r1.xy = t5.SampleLevel(s2_s, r1.yz, -1).xy;
    r1.xy = float2(-1,-1) + r1.xy;
    r1.xy = r1.xy * r0.ww;
    r0.w = dot(r1.xy, r1.xy);
    r0.w = sqrt(r0.w);
    r1.z = -1.20000005 * r0.w;
    r0.xyz = r0.xyz * cb5[29].xxx + r1.xyz;
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