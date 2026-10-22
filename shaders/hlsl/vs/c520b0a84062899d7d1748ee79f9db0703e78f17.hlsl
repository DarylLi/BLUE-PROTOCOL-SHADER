// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[31];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD4,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : LIGHTMAP_ID0,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r2.w].val[0/4];
  r4.y = t0[r2.w].val[0/4+1];
  r4.z = t0[r2.w].val[0/4+2];
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r7.xyz = r6.xxx * r2.xyz;
  r8.xyz = r6.yyy * r3.xzw;
  r6.xyz = r6.zzz * r4.xyz;
  r9.xyz = r8.xyz * r0.zzz;
  r9.xyz = r0.yyy * r7.xyz + r9.xyz;
  o0.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r1.yyy;
  r0.yzw = r1.xxx * r7.xyz + r0.yzw;
  o1.xyz = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r0.y = t0[r3.y].val[0/4];
  r0.z = t0[r3.y].val[0/4+1];
  r0.w = t0[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.yzw = cb0[70].xyz + r0.yzw;
  r0.yzw = r1.xyz + r0.yzw;
  r1.x = (int)r0.x * asint(cb2[0].y);
  r1.xy = t2.Load(r1.x).xy;
  r1.z = asint(cb2[0].y) + -1;
  r1.w = (int)cb3[28].w;
  r6.xyz = -cb0[70].xyz + r0.yzw;
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r8.x = t0[r5.w].val[0/4];
  r8.y = t0[r5.w].val[0/4+1];
  r8.z = t0[r5.w].val[0/4+2];
  r9.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(9,5,24));
  r10.x = t0[r9.x].val[0/4];
  r10.y = t0[r9.x].val[0/4+1];
  r10.w = t0[r9.x].val[0/4+2];
  r6.w = 1;
  r11.x = r7.x;
  r11.y = r5.x;
  r11.z = r8.x;
  r11.w = r10.x;
  r11.x = dot(r6.xyzw, r11.xyzw);
  r12.x = r7.y;
  r12.y = r5.y;
  r12.z = r8.y;
  r12.w = r10.y;
  r11.y = dot(r6.xyzw, r12.xyzw);
  r10.x = r7.z;
  r10.y = r5.z;
  r10.z = r8.z;
  r11.z = dot(r6.xyzw, r10.xyzw);
  r5.x = t0[r9.y].val[0/4];
  r5.y = t0[r9.y].val[0/4+1];
  r5.z = t0[r9.y].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r7.x = r2.x;
  r7.y = r3.x;
  r7.z = r4.x;
  r8.x = dot(r11.xyz, r7.xyz);
  r10.x = r2.y;
  r10.y = r3.z;
  r10.z = r4.y;
  r8.y = dot(r11.xyz, r10.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r8.z = dot(r11.xyz, r4.xyz);
  r2.xyz = r8.xyz / r2.www;
  r3.xy = cmp(int2(1,2) < (int2)r1.ww);
  r3.z = cmp((int)r1.w != 5);
  r3.x = r3.z ? r3.x : 0;
  if (r3.x != 0) {
    r8.xyzw = min(uint4(4,5,6,7), (uint4)r1.zzzz);
    r8.xyzw = mad(asint(cb2[0].yyyy), (int4)r0.xxxx, (int4)r8.xyzw);
    r3.x = t2.Load(r8.x).y;
    r3.zw = t2.Load(r8.y).xy;
    r7.x = dot(r3.xzw, r7.xyz);
    r7.y = dot(r3.xzw, r10.xyz);
    r7.z = dot(r3.xzw, r4.xyz);
    r3.xzw = r7.xyz / r2.www;
    r4.xyz = -r3.xzw + r2.xyz;
    r7.xy = t2.Load(r8.z).xy;
    r7.zw = t2.Load(r8.w).xy;
    r4.w = r3.x + r3.z;
    r6.w = cmp(0 < r7.w);
    r8.xy = cmp((int2)r1.ww >= int2(6,4));
    r8.zw = r6.ww ? cb1[11].xy : cb1[8].xy;
    r4.w = r8.z + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r7.w = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r7.w * r4.w + -0.5;
    r4.w = dot(r4.ww, r8.ww);
    r9.xyw = float3(0.0625,1,16) * r7.zzz;
    r9.xyw = frac(r9.xyw);
    r9.xyw = r9.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyw = r9.xyw * r4.www;
    r9.xyw = r9.xyw * r7.xxx + r4.xyz;
    r4.xyz = r8.xxx ? r9.xyw : r4.xyz;
    if (r8.y != 0) {
      r10.xyzw = float4(0.0625,1,16,30.2999992) * r7.yyyy;
      r10.xyzw = frac(r10.xyzw);
      r7.yzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.yz = r6.ww ? cb1[12].xz : cb1[9].xz;
      r4.w = 3 * r10.w;
      r9.x = r10.w * 3 + r8.y;
      r9.y = r8.y * 0.75 + -r4.w;
      r8.yw = float2(0.5,0.5) + r9.xy;
      r8.yw = frac(r8.yw);
      r8.yw = r8.yw * float2(2,2) + float2(-1,-1);
      r9.xy = abs(r8.yw) * abs(r8.yw);
      r8.yw = -abs(r8.yw) * float2(2,2) + float2(3,3);
      r8.yw = r9.xy * r8.yw + float2(-0.5,-0.5);
      r8.yw = r8.yw + r8.yw;
      r4.w = dot(r4.xyz, r4.xyz);
      r4.w = sqrt(r4.w);
      r9.x = r8.w * r8.w + r8.y;
      r8.z = r8.z * r7.x;
      r8.z = r8.z * r9.x;
      sincos(r8.z, r9.x, r10.x);
      r8.z = 1 + -r10.x;
      r11.xyzw = r8.zzzz * r7.yyyz;
      r9.xyw = r9.xxx * r7.wyz;
      r12.xy = r11.zy * r7.wz + r9.wx;
      r13.xy = r11.xw * r7.yz + r10.xx;
      r12.z = r11.w * r7.w + -r9.y;
      r14.xw = r11.zy * r7.wz + -r9.wx;
      r14.y = r11.w * r7.w + r9.y;
      r9.x = r7.w * r7.w;
      r14.z = r9.x * r8.z + r10.x;
      if (r8.x != 0) {
        r8.xz = r6.ww ? cb1[12].yw : cb1[9].yw;
        r9.xyw = r6.www ? cb1[13].xyz : cb1[10].xyz;
        r10.xyz = cb1[0].yzx * r7.wyz;
        r11.xyz = r7.zwy * cb1[0].zxy + -r10.xyz;
        r6.w = dot(cb1[0].xyz, r7.yzw);
        r6.w = max(-1, r6.w);
        r6.w = min(1, r6.w);
        r11.w = r11.z + r6.w;
        r7.y = dot(r11.xyw, r11.xyw);
        r7.y = rsqrt(r7.y);
        r7.yzw = r11.wxy * r7.yyy;
        r10.x = 1 + -abs(r6.w);
        r10.x = sqrt(r10.x);
        r10.y = abs(r6.w) * -0.0187292993 + 0.0742610022;
        r10.y = r10.y * abs(r6.w) + -0.212114394;
        r10.y = r10.y * abs(r6.w) + 1.57072878;
        r10.z = r10.y * r10.x;
        r10.z = r10.z * -2 + 3.14159274;
        r6.w = cmp(r6.w < -r6.w);
        r6.w = r6.w ? r10.z : 0;
        r6.w = r10.y * r10.x + r6.w;
        r8.y = -r8.y * r8.y + r8.w;
        r10.x = r10.w * 3 + r9.w;
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
        r8.w = r9.y * r8.w;
        r8.w = exp2(r8.w);
        r8.x = r8.y * r8.x;
        r6.w = r6.w * r8.z + r8.x;
        r6.w = r9.x * r8.w + r6.w;
        r6.w = r7.x * r6.w;
        sincos(r6.w, r7.x, r8.x);
        r6.w = 1 + -r8.x;
        r10.xyzw = r6.wwww * r7.zzzw;
        r8.yzw = r7.xxx * r7.yzw;
        r11.xy = r10.zy * r7.yw + r8.wy;
        r15.xy = r10.xw * r7.zw + r8.xx;
        r11.z = r10.w * r7.y + -r8.z;
        r16.xy = r10.yz * r7.wy + -r8.yw;
        r16.z = r10.w * r7.y + r8.z;
        r7.x = r7.y * r7.y;
        r11.w = r7.x * r6.w + r8.x;
        r13.z = r14.w;
        r13.w = r12.x;
        r15.z = r11.y;
        r15.w = r16.y;
        r7.x = dot(r13.xzw, r15.xzw);
        r16.w = r15.y;
        r7.y = dot(r13.xwz, r16.xzw);
        r7.z = dot(r13.xzw, r11.xzw);
        r12.w = r13.y;
        r13.x = dot(r12.ywz, r15.xzw);
        r13.y = dot(r12.yzw, r16.xzw);
        r13.z = dot(r12.ywz, r11.xzw);
        r8.x = dot(r14.xyz, r15.xzw);
        r8.y = dot(r14.xzy, r16.xzw);
        r8.z = dot(r14.xyz, r11.xzw);
        r14.xyz = r8.xyz;
      } else {
        r7.x = r13.x;
        r7.y = r14.w;
        r7.z = r12.x;
        r13.xz = r12.yz;
      }
      r7.x = dot(r7.xyz, r4.xyz);
      r7.y = dot(r13.xyz, r4.xyz);
      r7.z = dot(r14.xyz, r4.xyz);
      r6.w = dot(r7.xyz, r7.xyz);
      r6.w = rsqrt(r6.w);
      r7.xyz = r7.xyz * r6.www;
      r4.xyz = r7.xyz * r4.www;
    }
    r3.xzw = r4.xyz + r3.xzw;
  } else {
    r3.xzw = r2.xyz;
  }
  if (r3.y != 0) {
    r1.z = min(2, (uint)r1.z);
    r1.z = mad(asint(cb2[0].y), (int)r0.x, (int)r1.z);
    r4.xy = t2.Load(r1.z).xy;
    r1.z = cmp((int)r1.w == 5);
    if (r1.z != 0) {
      r7.xyz = float3(0.0625,1,16) * r4.yyy;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r7.xyz = r7.xyz * r4.xxx;
      r1.z = r5.y + r5.w;
      r1.z = cb1[2].x + r1.z;
      r8.x = r1.z + r4.y;
      r8.y = r1.z * cb1[3].y + r4.y;
      r3.y = cb1[3].y * r8.x;
      r8.z = 0.5 * r3.y;
      r8.w = r8.x + -r4.x;
      r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
      r8.xyzw = frac(r8.xyzw);
      r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r10.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
      r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r8.xyzw = r10.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r8.xyzw = r8.xyzw + r8.xyzw;
      r10.w = r8.y * r8.z;
      r3.y = cmp(r10.w < 0);
      r10.y = abs(r10.w);
      r10.xz = float2(-1,1);
      r4.zw = r3.yy ? r10.xy : r10.zw;
      r3.y = -r8.y * r8.z + r4.z;
      r3.y = r4.w * r3.y + r10.w;
      r4.z = r4.z + -r3.y;
      r3.y = r4.w * r4.z + r3.y;
      r3.y = cb1[3].x * r3.y;
      r4.z = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r8.x * r4.w;
      r3.y = r3.y * r4.z + r4.w;
      r4.z = r8.w * cb1[4].x + 1;
      r3.y = r4.z * r3.y;
      r7.xyz = r7.xyz * r3.yyy;
      r7.xyz = r7.xyz * cb1[2].yyy + r3.xzw;
      r8.x = r1.z * 0.100000001 + r4.y;
      r1.z = cb1[18].x * cb1[7].x;
      r8.y = r1.z * 0.100000001 + r4.y;
      r4.zw = float2(0.5,0.5) + r8.xy;
      r4.zw = frac(r4.zw);
      r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
      r8.xy = abs(r4.zw) * abs(r4.zw);
      r4.zw = -abs(r4.zw) * float2(2,2) + float2(3,3);
      r4.zw = r8.xy * r4.zw + float2(-0.5,-0.5);
      r4.zw = r4.zw + r4.zw;
      r4.zw = r4.zw * r4.zw;
      r1.z = r4.w * r4.z;
      r1.z = -r1.z * cb1[7].x + 1;
      r3.y = cb1[0].w * r8.w;
      r1.z = r3.y * cb1[4].x + r1.z;
      r8.xyz = cb1[5].xyz + -r7.xyz;
      r8.xyz = cb1[6].yyy * r8.xyz;
      r8.xyz = r8.xyz * r1.zzz;
      r3.xzw = r8.xyz * r4.xxx + r7.xyz;
    } else {
      r7.xyz = float3(0.0625,1,16) * r4.yyy;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.xzw = r7.xyz * r4.xxx;
      r1.z = r5.y + r5.w;
      r1.z = cb1[2].x + r1.z;
      r7.x = r1.z + r4.y;
      r7.y = r1.z * cb1[3].y + r4.y;
      r1.z = cb1[3].y * r7.x;
      r7.z = 0.5 * r1.z;
      r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = abs(r7.xyz) * abs(r7.xyz);
      r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
      r7.xyz = r8.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
      r7.xyz = r7.xyz + r7.xyz;
      r8.w = r7.y * r7.z;
      r1.z = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r8.xy = r1.zz ? r8.xy : r8.zw;
      r1.z = -r7.y * r7.z + r8.x;
      r1.z = r8.y * r1.z + r8.w;
      r3.y = r8.x + -r1.z;
      r1.z = r8.y * r3.y + r1.z;
      r1.z = cb1[3].x * r1.z;
      r3.y = 1 + -cb1[0].w;
      r4.y = 1 + -cb1[3].x;
      r4.y = r7.x * r4.y;
      r1.z = r1.z * r3.y + r4.y;
      r4.xyz = r4.xzw * r1.zzz;
      r3.xzw = r4.xyz * cb1[2].yyy + r3.xzw;
    }
  }
  r1.z = dot(r3.xzw, r3.xzw);
  r1.z = sqrt(r1.z);
  r3.y = 1 / cb1[1].z;
  r3.y = -r3.y * 0.25 + r3.w;
  r3.y = max(0, r3.y);
  r3.y = cb1[1].z * r3.y;
  r4.x = cmp(r3.y != 0.000000);
  r4.y = log2(r3.y);
  r4.y = cb1[1].w * r4.y;
  r4.y = exp2(r4.y);
  r3.y = r4.x ? r4.y : r3.y;
  r4.x = r5.x * 0.00100000005 + cb1[1].x;
  r4.y = cb1[1].x * 0.800000012 + r5.w;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = frac(r4.xy);
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.zw = abs(r4.xy) * abs(r4.xy);
  r4.xy = -abs(r4.xy) * float2(2,2) + float2(3,3);
  r4.xy = r4.zw * r4.xy + float2(-0.5,-0.5);
  r4.xy = r4.xy + r4.xy;
  r4.x = r4.y * r4.y + r4.x;
  r4.y = cmp(cb1[1].z != 0.000000);
  r4.z = cb1[6].x / cb1[1].z;
  r4.y = r4.y ? r4.z : cb1[6].x;
  r4.x = cb1[1].y * r4.x + r4.y;
  r3.y = r4.x * r3.y;
  r4.xy = cb1[0].xy * r3.yy + r3.xz;
  r4.xy = r1.ww ? r4.xy : r3.xz;
  r4.z = r3.w;
  r3.y = dot(r4.xyz, r4.xyz);
  r3.y = rsqrt(r3.y);
  r4.xyz = r4.xyz * r3.yyy;
  r4.xyz = r4.xyz * r1.zzz;
  r3.xyz = r1.www ? r4.xyz : r3.xzw;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz * r2.www;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = r6.zxy + -r3.xyz;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r2.w = r3.x * 9.99999975e-005 + 0.200000003;
  r3.xyz = t4.SampleLevel(s0_s, r1.zw, -1).xyz;
  r3.w = cb3[29].z + r3.y;
  r4.x = -r3.w + r2.w;
  r4.x = max(0, r4.x);
  r3.x = r3.x + -r3.y;
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = r4.x / r3.x;
  r3.x = min(1, r3.x);
  r3.y = ceil(r3.x);
  r3.x = 1 + -r3.x;
  r3.x = min(0.200000003, r3.x);
  r3.x = r3.y * r3.x;
  r2.w = -r3.z + r2.w;
  r4.x = max(0, r2.w);
  r3.z = r3.w + -r3.z;
  r3.z = max(9.99999975e-005, r3.z);
  r3.z = r4.x / r3.z;
  r3.z = min(1, r3.z);
  r3.w = ceil(r3.z);
  r3.z = 1 + -r3.z;
  r3.z = min(0.200000003, r3.z);
  r3.z = r3.w * r3.z;
  r3.yz = float2(5,5) * r3.xz;
  r4.xy = t5.SampleLevel(s1_s, r1.zw, -1).xy;
  r3.x = r3.x * 5 + -r3.z;
  r3.x = cmp(9.99999975e-006 < abs(r3.x));
  r3.w = cmp(r3.y >= r3.z);
  r3.w = r3.w ? r4.y : r4.x;
  r3.x = r3.x ? r3.w : r4.x;
  r3.x = cb3[29].w * r3.x;
  r3.y = max(r3.y, r3.z);
  r3.x = r3.x * r3.y;
  r2.w = 10000 * r2.w;
  r2.w = max(0, r2.w);
  r3.z = cb3[15].z + r5.z;
  r3.z = r6.z + -r3.z;
  r2.w = min(r3.z, r2.w);
  r2.w = cb3[30].y * r2.w;
  r2.w = r3.y * r2.w;
  r2.w = r3.x * r2.w;
  r1.zw = t6.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r3.xy = r2.ww * r1.zw;
  r1.z = dot(r3.xy, r3.xy);
  r1.z = sqrt(r1.z);
  r3.z = -1.20000005 * r1.z;
  r2.xyz = r2.xyz * cb3[29].xxx + r3.xyz;
  r0.yzw = r2.xyz + r0.yzw;
  r2.xyzw = cb0[1].xyzw * r0.zzzz;
  r2.xyzw = r0.yyyy * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb0[2].xyzw + r2.xyzw;
  o5.xyzw = cb0[3].xyzw + r2.xyzw;
  r0.x = mad(asint(cb2[0].y), (int)r0.x, asint(cb2[0].z));
  r0.xy = t2.Load(r0.x).xy;
  r0.z = t0[r9.z].val[12/4];
  r0.z = (int)r0.z + asint(cb2[1].y);
  r0.w = mad((int)r0.z, 15, 2);
  r2.x = t1[r0.w].val[0/4];
  r2.y = t1[r0.w].val[0/4+1];
  r2.z = t1[r0.w].val[0/4+2];
  r2.w = t1[r0.w].val[0/4+3];
  o3.xy = r0.xy * r2.xy + r2.zw;
  o0.w = 0;
  o2.xy = r1.xy;
  o2.zw = float2(0,0);
  o3.zw = float2(0,0);
  o4.x = v1.x;
  p4.x = r0.z;
  return;
}