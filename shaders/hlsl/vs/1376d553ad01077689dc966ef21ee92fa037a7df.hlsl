// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[12];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out uint o3 : PRIMITIVE_ID0,
  out float o4 : TEXCOORD6,
  out float3 p4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb3[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
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
  r4.y = t0[r3.x].val[0/4+1];
  r4.z = t0[r3.x].val[0/4];
  r4.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r3.x = t0[r2.w].val[0/4];
  r3.z = t0[r2.w].val[0/4+1];
  r3.w = t0[r2.w].val[0/4+2];
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r7.xyz = r6.xxx * r2.xyz;
  r8.xyz = r6.yyy * r4.zyw;
  r6.xyz = r6.zzz * r3.xzw;
  r9.xyz = r8.xyz * r0.zzz;
  r9.xyz = r0.yyy * r7.xyz + r9.xyz;
  o0.xyz = r0.www * r6.xyz + r9.xyz;
  r0.yzw = r8.xyz * r1.yyy;
  r0.yzw = r1.xxx * r7.xyz + r0.yzw;
  r0.yzw = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r1.x = t0[r3.y].val[0/4];
  r1.y = t0[r3.y].val[0/4+1];
  r1.z = t0[r3.y].val[0/4+2];
  r6.xyz = v0.yyy * r4.zyw;
  r6.xyz = r2.xyz * v0.xxx + r6.xyz;
  r6.xyz = r3.xzw * v0.zzz + r6.xyz;
  r1.xyz = cb0[70].xyz + r1.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r1.w = (int)r0.x * asint(cb3[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb3[0].y) + -1;
  r2.w = (int)cb4[10].x;
  r7.xyz = -cb0[70].xyz + r1.xyz;
  r8.x = t0[r5.y].val[0/4];
  r8.y = t0[r5.y].val[0/4+1];
  r8.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r9.x = t0[r5.w].val[0/4];
  r9.y = t0[r5.w].val[0/4+1];
  r9.z = t0[r5.w].val[0/4+2];
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(9,5));
  r10.x = t0[r6.z].val[0/4];
  r10.y = t0[r6.z].val[0/4+1];
  r10.w = t0[r6.z].val[0/4+2];
  r7.w = 1;
  r11.x = r8.x;
  r11.y = r5.x;
  r11.z = r9.x;
  r11.w = r10.x;
  r11.x = dot(r7.xyzw, r11.xyzw);
  r12.x = r8.y;
  r12.y = r5.y;
  r12.z = r9.y;
  r12.w = r10.y;
  r11.y = dot(r7.xyzw, r12.xyzw);
  r10.x = r8.z;
  r10.y = r5.z;
  r10.z = r9.z;
  r11.z = dot(r7.xyzw, r10.xyzw);
  r5.x = t0[r6.w].val[0/4];
  r5.y = t0[r6.w].val[0/4+1];
  r5.z = t0[r6.w].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r3.y = dot(r3.xzw, r3.xzw);
  r3.y = sqrt(r3.y);
  r8.x = r2.x;
  r8.y = r4.z;
  r8.z = r3.x;
  r9.y = dot(r11.xyz, r8.xyz);
  r4.x = r2.y;
  r4.z = r3.z;
  r9.z = dot(r11.xyz, r4.xyz);
  r3.x = r2.z;
  r3.z = r4.w;
  r9.w = dot(r11.xyz, r3.xzw);
  r2.xyz = r9.yzw / r3.yyy;
  r6.zw = cmp(int2(1,2) < (int2)r2.ww);
  r4.w = cmp((int)r2.w != 5);
  r4.w = r4.w ? r6.z : 0;
  if (r4.w != 0) {
    r9.xyzw = min(uint4(4,5,6,7), (uint4)r1.wwww);
    r9.xyzw = mad(asint(cb3[0].yyyy), (int4)r0.xxxx, (int4)r9.xyzw);
    r10.x = t1.Load(r9.x).y;
    r10.yz = t1.Load(r9.y).xy;
    r8.x = dot(r10.xyz, r8.xyz);
    r8.y = dot(r10.xyz, r4.xyz);
    r8.z = dot(r10.xyz, r3.xzw);
    r3.xzw = r8.xyz / r3.yyy;
    r4.xyz = -r3.xzw + r2.xyz;
    r8.xy = t1.Load(r9.z).xy;
    r8.zw = t1.Load(r9.w).xy;
    r4.w = r3.x + r3.z;
    r6.z = cmp(0 < r8.w);
    r9.xy = cmp((int2)r2.ww >= int2(6,4));
    r9.zw = r6.zz ? cb1[11].xy : cb1[8].xy;
    r4.w = r9.z + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r7.w = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r7.w * r4.w + -0.5;
    r4.w = dot(r4.ww, r9.ww);
    r10.xyz = float3(0.0625,1,16) * r8.zzz;
    r10.xyz = frac(r10.xyz);
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.xyz = r10.xyz * r4.www;
    r10.xyz = r10.xyz * r8.xxx + r4.xyz;
    r4.xyz = r9.xxx ? r10.xyz : r4.xyz;
    if (r9.y != 0) {
      r10.xyzw = float4(0.0625,1,16,30.2999992) * r8.yyyy;
      r10.xyzw = frac(r10.xyzw);
      r8.yzw = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r9.yz = r6.zz ? cb1[12].xz : cb1[9].xz;
      r4.w = 3 * r10.w;
      r10.x = r10.w * 3 + r9.y;
      r10.y = r9.y * 0.75 + -r4.w;
      r9.yw = float2(0.5,0.5) + r10.xy;
      r9.yw = frac(r9.yw);
      r9.yw = r9.yw * float2(2,2) + float2(-1,-1);
      r10.xy = abs(r9.yw) * abs(r9.yw);
      r9.yw = -abs(r9.yw) * float2(2,2) + float2(3,3);
      r9.yw = r10.xy * r9.yw + float2(-0.5,-0.5);
      r9.yw = r9.yw + r9.yw;
      r4.w = dot(r4.xyz, r4.xyz);
      r4.w = sqrt(r4.w);
      r7.w = r9.w * r9.w + r9.y;
      r9.z = r9.z * r8.x;
      r7.w = r9.z * r7.w;
      sincos(r7.w, r10.x, r11.x);
      r7.w = 1 + -r11.x;
      r12.xyzw = r7.wwww * r8.yyyz;
      r10.xyz = r10.xxx * r8.wyz;
      r13.xy = r12.zy * r8.wz + r10.zx;
      r14.xy = r12.xw * r8.yz + r11.xx;
      r13.z = r12.w * r8.w + -r10.y;
      r15.xw = r12.zy * r8.wz + -r10.zx;
      r15.y = r12.w * r8.w + r10.y;
      r9.z = r8.w * r8.w;
      r15.z = r9.z * r7.w + r11.x;
      if (r9.x != 0) {
        r9.xz = r6.zz ? cb1[12].yw : cb1[9].yw;
        r10.xyz = r6.zzz ? cb1[13].xyz : cb1[10].xyz;
        r11.xyz = cb1[0].yzx * r8.wyz;
        r11.xyz = r8.zwy * cb1[0].zxy + -r11.xyz;
        r6.z = dot(cb1[0].xyz, r8.yzw);
        r6.z = max(-1, r6.z);
        r6.z = min(1, r6.z);
        r11.w = r11.z + r6.z;
        r7.w = dot(r11.xyw, r11.xyw);
        r7.w = rsqrt(r7.w);
        r8.yzw = r11.wxy * r7.www;
        r7.w = 1 + -abs(r6.z);
        r7.w = sqrt(r7.w);
        r11.x = abs(r6.z) * -0.0187292993 + 0.0742610022;
        r11.x = r11.x * abs(r6.z) + -0.212114394;
        r11.x = r11.x * abs(r6.z) + 1.57072878;
        r11.y = r11.x * r7.w;
        r11.y = r11.y * -2 + 3.14159274;
        r6.z = cmp(r6.z < -r6.z);
        r6.z = r6.z ? r11.y : 0;
        r6.z = r11.x * r7.w + r6.z;
        r7.w = -r9.y * r9.y + r9.w;
        r11.x = r10.w * 3 + r10.z;
        r11.y = 0.870000005 * r11.x;
        r9.yw = float2(0.5,0.5) + r11.xy;
        r9.yw = frac(r9.yw);
        r9.yw = r9.yw * float2(2,2) + float2(-1,-1);
        r10.zw = abs(r9.yw) * abs(r9.yw);
        r9.yw = -abs(r9.yw) * float2(2,2) + float2(3,3);
        r9.yw = r10.zw * r9.yw + float2(-0.5,-0.5);
        r9.yw = r9.yw + r9.yw;
        r9.w = r9.w * r9.w;
        r9.y = r9.w * r9.y + 1;
        r9.y = saturate(0.5 * r9.y);
        r9.y = log2(r9.y);
        r9.y = r10.y * r9.y;
        r9.y = exp2(r9.y);
        r7.w = r7.w * r9.x;
        r6.z = r6.z * r9.z + r7.w;
        r6.z = r10.x * r9.y + r6.z;
        r6.z = r8.x * r6.z;
        sincos(r6.z, r8.x, r9.x);
        r6.z = 1 + -r9.x;
        r10.xyzw = r6.zzzz * r8.zzzw;
        r9.yzw = r8.xxx * r8.yzw;
        r11.xy = r10.zy * r8.yw + r9.wy;
        r12.xy = r10.xw * r8.zw + r9.xx;
        r11.z = r10.w * r8.y + -r9.z;
        r16.xy = r10.yz * r8.wy + -r9.yw;
        r16.z = r10.w * r8.y + r9.z;
        r7.w = r8.y * r8.y;
        r11.w = r7.w * r6.z + r9.x;
        r14.z = r15.w;
        r14.w = r13.x;
        r12.z = r11.y;
        r12.w = r16.y;
        r8.x = dot(r14.xzw, r12.xzw);
        r16.w = r12.y;
        r8.y = dot(r14.xwz, r16.xzw);
        r8.z = dot(r14.xzw, r11.xzw);
        r13.w = r14.y;
        r14.x = dot(r13.ywz, r12.xzw);
        r14.y = dot(r13.yzw, r16.xzw);
        r14.z = dot(r13.ywz, r11.xzw);
        r9.x = dot(r15.xyz, r12.xzw);
        r9.y = dot(r15.xzy, r16.xzw);
        r9.z = dot(r15.xyz, r11.xzw);
        r15.xyz = r9.xyz;
      } else {
        r8.x = r14.x;
        r8.y = r15.w;
        r8.z = r13.x;
        r14.xz = r13.yz;
      }
      r8.x = dot(r8.xyz, r4.xyz);
      r8.y = dot(r14.xyz, r4.xyz);
      r8.z = dot(r15.xyz, r4.xyz);
      r6.z = dot(r8.xyz, r8.xyz);
      r6.z = rsqrt(r6.z);
      r8.xyz = r8.xyz * r6.zzz;
      r4.xyz = r8.xyz * r4.www;
    }
    r3.xzw = r4.xyz + r3.xzw;
  } else {
    r3.xzw = r2.xyz;
  }
  if (r6.w != 0) {
    r1.w = min(2, (uint)r1.w);
    r0.x = mad(asint(cb3[0].y), (int)r0.x, (int)r1.w);
    r4.xy = t1.Load(r0.x).xy;
    r0.x = cmp((int)r2.w == 5);
    if (r0.x != 0) {
      r8.xyz = float3(0.0625,1,16) * r4.yyy;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = r8.xyz * r4.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r9.x = r0.x + r4.y;
      r9.y = r0.x * cb1[3].y + r4.y;
      r1.w = cb1[3].y * r9.x;
      r9.z = 0.5 * r1.w;
      r9.w = r9.x + -r4.x;
      r9.xyzw = float4(0.5,0.5,0.5,1.5) + r9.xyzw;
      r9.xyzw = frac(r9.xyzw);
      r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r10.xyzw = abs(r9.xyzw) * abs(r9.xyzw);
      r9.xyzw = -abs(r9.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r9.xyzw = r10.xyzw * r9.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r9.xyzw = r9.xyzw + r9.xyzw;
      r10.w = r9.y * r9.z;
      r1.w = cmp(r10.w < 0);
      r10.y = abs(r10.w);
      r10.xz = float2(-1,1);
      r4.zw = r1.ww ? r10.xy : r10.zw;
      r1.w = -r9.y * r9.z + r4.z;
      r1.w = r4.w * r1.w + r10.w;
      r4.z = r4.z + -r1.w;
      r1.w = r4.w * r4.z + r1.w;
      r1.w = cb1[3].x * r1.w;
      r4.z = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r9.x * r4.w;
      r1.w = r1.w * r4.z + r4.w;
      r4.z = r9.w * cb1[4].x + 1;
      r1.w = r4.z * r1.w;
      r8.xyz = r8.xyz * r1.www;
      r8.xyz = r8.xyz * cb1[2].yyy + r3.xzw;
      r9.x = r0.x * 0.100000001 + r4.y;
      r0.x = cb1[18].x * cb1[7].x;
      r9.y = r0.x * 0.100000001 + r4.y;
      r4.zw = float2(0.5,0.5) + r9.xy;
      r4.zw = frac(r4.zw);
      r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
      r6.zw = abs(r4.zw) * abs(r4.zw);
      r4.zw = -abs(r4.zw) * float2(2,2) + float2(3,3);
      r4.zw = r6.zw * r4.zw + float2(-0.5,-0.5);
      r4.zw = r4.zw + r4.zw;
      r4.zw = r4.zw * r4.zw;
      r0.x = r4.w * r4.z;
      r0.x = -r0.x * cb1[7].x + 1;
      r1.w = cb1[0].w * r9.w;
      r0.x = r1.w * cb1[4].x + r0.x;
      r9.xyz = cb1[5].xyz + -r8.xyz;
      r9.xyz = cb1[6].yyy * r9.xyz;
      r9.xyz = r9.xyz * r0.xxx;
      r3.xzw = r9.xyz * r4.xxx + r8.xyz;
    } else {
      r8.xyz = float3(0.0625,1,16) * r4.yyy;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r4.xzw = r8.xyz * r4.xxx;
      r0.x = r5.y + r5.w;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r4.y;
      r8.y = r0.x * cb1[3].y + r4.y;
      r0.x = cb1[3].y * r8.x;
      r8.z = 0.5 * r0.x;
      r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
      r8.xyz = frac(r8.xyz);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r9.xyz = abs(r8.xyz) * abs(r8.xyz);
      r8.xyz = -abs(r8.xyz) * float3(2,2,2) + float3(3,3,3);
      r8.xyz = r9.xyz * r8.xyz + float3(-0.5,-0.5,-0.5);
      r8.xyz = r8.xyz + r8.xyz;
      r9.w = r8.y * r8.z;
      r0.x = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r6.zw = r0.xx ? r9.xy : r9.zw;
      r0.x = -r8.y * r8.z + r6.z;
      r0.x = r6.w * r0.x + r9.w;
      r1.w = r6.z + -r0.x;
      r0.x = r6.w * r1.w + r0.x;
      r0.x = cb1[3].x * r0.x;
      r1.w = 1 + -cb1[0].w;
      r4.y = 1 + -cb1[3].x;
      r4.y = r8.x * r4.y;
      r0.x = r0.x * r1.w + r4.y;
      r4.xyz = r4.xzw * r0.xxx;
      r3.xzw = r4.xyz * cb1[2].yyy + r3.xzw;
    }
  }
  r0.x = dot(r3.xzw, r3.xzw);
  r0.x = sqrt(r0.x);
  r1.w = 1 / cb1[1].z;
  r1.w = -r1.w * 0.25 + r3.w;
  r1.w = max(0, r1.w);
  r1.w = cb1[1].z * r1.w;
  r4.x = cmp(r1.w != 0.000000);
  r4.y = log2(r1.w);
  r4.y = cb1[1].w * r4.y;
  r4.y = exp2(r4.y);
  r1.w = r4.x ? r4.y : r1.w;
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
  r1.w = r4.x * r1.w;
  r4.xy = cb1[0].xy * r1.ww + r3.xz;
  r4.yz = r2.ww ? r4.xy : r3.xz;
  r4.w = r3.w;
  r1.w = dot(r4.yzw, r4.yzw);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.yzw * r1.www;
  r4.xyz = r4.xyz * r0.xxx;
  r3.xzw = r2.www ? r4.xyz : r3.xzw;
  r2.xyz = r3.xzw + -r2.xyz;
  r2.xyz = r2.xyz * r3.yyy;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r3.xyz = r7.zxy + -r3.xyz;
  r3.yz = float2(9.99999975e-005,9.99999975e-005) * r3.yz;
  r0.x = r3.x * 9.99999975e-005 + 0.200000003;
  r4.xyz = t3.SampleLevel(s0_s, r3.yz, -1).xyz;
  r1.w = cb4[10].w + r4.y;
  r2.w = -r1.w + r0.x;
  r2.w = max(0, r2.w);
  r3.x = r4.x + -r4.y;
  r3.x = max(9.99999975e-005, r3.x);
  r2.w = r2.w / r3.x;
  r2.w = min(1, r2.w);
  r3.x = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r3.x * r2.w;
  r3.x = 5 * r2.w;
  r0.x = -r4.z + r0.x;
  r3.w = max(0, r0.x);
  r1.w = r1.w + -r4.z;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = r3.w / r1.w;
  r1.w = min(1, r1.w);
  r3.w = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r3.w * r1.w;
  r1.w = 5 * r1.w;
  r4.xy = t4.SampleLevel(s1_s, r3.yz, -1).xy;
  r2.w = r2.w * 5 + -r1.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.w = cmp(r3.x >= r1.w);
  r3.w = r3.w ? r4.y : r4.x;
  r2.w = r2.w ? r3.w : r4.x;
  r2.w = cb4[11].x * r2.w;
  r1.w = max(r3.x, r1.w);
  r2.w = r2.w * r1.w;
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r3.x = cb4[5].z + r5.z;
  r3.x = r7.z + -r3.x;
  r0.x = min(r3.x, r0.x);
  r0.x = cb4[11].z * r0.x;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r3.xy = t5.SampleLevel(s2_s, r3.yz, -1).xy;
  r3.xy = float2(-1,-1) + r3.xy;
  r3.yz = r3.xy * r0.xx;
  r0.x = dot(r3.yz, r3.yz);
  r0.x = sqrt(r0.x);
  r3.w = -1.20000005 * r0.x;
  r2.xyz = r2.xyz * cb4[10].yyy + r3.yzw;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb2[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb2[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb2[21].xyzw + r2.xyzw;
  r2.xyzw = cb2[22].xyzw + r2.xyzw;
  r0.x = cmp(0 < cb2[28].x);
  r1.w = cmp(r2.z < 0);
  r0.x = r0.x ? r1.w : 0;
  r2.zw = r0.xx ? float2(9.99999997e-007,1) : r2.zw;
  r3.x = cb2[23].z;
  r3.y = cb2[24].z;
  r3.z = cb2[25].z;
  r0.x = dot(r3.xyz, r0.yzw);
  r1.w = cmp(0 < abs(r0.x));
  r3.x = -abs(r0.x) * abs(r0.x) + 1;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r0.x = r3.x / abs(r0.x);
  r0.x = r1.w ? r0.x : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  r0.x = cb2[27].y * r0.x + cb2[27].x;
  r0.x = r2.z * cb2[27].w + r0.x;
  o5.z = r0.x * r2.w;
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xy = r6.xy;
  o2.zw = float2(0,0);
  o4.x = 0;
  p4.xyz = r1.xyz;
  o5.xyw = r2.xyw;
  o3.x = v1.x;
  return;
}