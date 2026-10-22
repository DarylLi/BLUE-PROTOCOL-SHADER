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
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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
  out uint p3 : SV_RenderTargetArrayIndex0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb4[0].w);
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
  r3.x = t0[r3.x].val[0/4];
  r3.z = t0[r3.x].val[0/4+1];
  r3.w = t0[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r2.w].val[0/4];
  r4.y = t0[r2.w].val[0/4+1];
  r4.z = t0[r2.w].val[0/4+2];
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,6,7));
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
  r0.yzw = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r1.x = t0[r3.y].val[0/4];
  r1.y = t0[r3.y].val[0/4+1];
  r1.z = t0[r3.y].val[0/4+2];
  r6.xyz = v0.yyy * r3.xzw;
  r6.xyz = r2.xyz * v0.xxx + r6.xyz;
  r6.xyz = r4.xyz * v0.zzz + r6.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r1.w = (int)r0.x * asint(cb4[0].y);
  r6.xy = t1.Load(r1.w).xy;
  r1.w = asint(cb4[0].y) + -1;
  r7.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r7.xyz = floor(r7.xyz);
  r7.xyz = r7.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r8.xyz = -cb1[70].zxy + r1.zxy;
  r7.xyz = r8.xyz + -r7.xyz;
  r6.zw = float2(9.99999975e-005,9.99999975e-005) * r7.yz;
  r2.w = r7.x * 9.99999975e-005 + 0.200000003;
  r7.xyz = t3.SampleLevel(s0_s, r6.zw, -1).xyz;
  r3.y = cb5[13].z + r7.y;
  r4.w = -r3.y + r2.w;
  r4.w = max(0, r4.w);
  r5.x = r7.x + -r7.y;
  r5.x = max(9.99999975e-005, r5.x);
  r4.w = r4.w / r5.x;
  r4.w = min(1, r4.w);
  r5.x = ceil(r4.w);
  r4.w = 1 + -r4.w;
  r4.w = min(0.200000003, r4.w);
  r4.w = r5.x * r4.w;
  r5.x = 5 * r4.w;
  r2.w = -r7.z + r2.w;
  r7.x = max(0, r2.w);
  r3.y = r3.y + -r7.z;
  r3.y = max(9.99999975e-005, r3.y);
  r3.y = r7.x / r3.y;
  r3.y = min(1, r3.y);
  r7.x = ceil(r3.y);
  r3.y = 1 + -r3.y;
  r3.y = min(0.200000003, r3.y);
  r3.y = r7.x * r3.y;
  r3.y = 5 * r3.y;
  r7.xy = t4.SampleLevel(s1_s, r6.zw, -1).xy;
  r4.w = r4.w * 5 + -r3.y;
  r4.w = cmp(9.99999975e-006 < abs(r4.w));
  r7.z = cmp(r5.x >= r3.y);
  r7.y = r7.z ? r7.y : r7.x;
  r4.w = r4.w ? r7.y : r7.x;
  r4.w = cb5[13].w * r4.w;
  r3.y = max(r5.x, r3.y);
  r4.w = r4.w * r3.y;
  r2.w = 10000 * r2.w;
  r2.w = max(0, r2.w);
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r5.x = cb5[7].z + r7.z;
  r5.x = r8.x + -r5.x;
  r2.w = min(r5.x, r2.w);
  r2.w = cb5[14].y * r2.w;
  r2.w = r3.y * r2.w;
  r2.w = r4.w * r2.w;
  r5.xy = t5.SampleLevel(s2_s, r6.zw, -1).xy;
  r5.xy = float2(-1,-1) + r5.xy;
  r8.xy = r5.xy * r2.ww;
  r2.w = dot(r8.xy, r8.xy);
  r2.w = sqrt(r2.w);
  r8.z = -1.20000005 * r2.w;
  r2.w = (int)cb5[14].z;
  r9.xyz = -cb1[70].xyz + r1.xyz;
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r10.x = t0[r5.w].val[0/4];
  r10.y = t0[r5.w].val[0/4+1];
  r10.z = t0[r5.w].val[0/4+2];
  r6.zw = mad((int2)v1.xx, int2(36,36), int2(8,9));
  r11.x = t0[r6.z].val[0/4];
  r11.y = t0[r6.z].val[0/4+1];
  r11.z = t0[r6.z].val[0/4+2];
  r12.x = t0[r6.w].val[0/4];
  r12.y = t0[r6.w].val[0/4+1];
  r12.w = t0[r6.w].val[0/4+2];
  r9.w = 1;
  r13.x = r5.x;
  r13.y = r10.x;
  r13.z = r11.x;
  r13.w = r12.x;
  r13.x = dot(r9.xyzw, r13.xyzw);
  r14.x = r5.y;
  r14.y = r10.y;
  r14.z = r11.y;
  r14.w = r12.y;
  r13.y = dot(r9.xyzw, r14.xyzw);
  r12.x = r5.z;
  r12.y = r10.z;
  r12.z = r11.z;
  r13.z = dot(r9.xyzw, r12.xyzw);
  r5.xy = float2(0.00100000005,0.00100000005) * r7.xy;
  r3.y = dot(r4.xyz, r4.xyz);
  r3.y = sqrt(r3.y);
  r9.x = r2.x;
  r9.y = r3.x;
  r9.z = r4.x;
  r10.x = dot(r13.xyz, r9.xyz);
  r11.x = r2.y;
  r11.y = r3.z;
  r11.z = r4.y;
  r10.y = dot(r13.xyz, r11.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r10.z = dot(r13.xyz, r4.xyz);
  r2.xyz = r10.xyz / r3.yyy;
  r3.xz = cmp(int2(1,2) < (int2)r2.ww);
  r3.w = cmp((int)r2.w != 5);
  r3.x = r3.w ? r3.x : 0;
  if (r3.x != 0) {
    r10.xyzw = min(uint4(4,5,6,7), (uint4)r1.wwww);
    r10.xyzw = mad(asint(cb4[0].yyyy), (int4)r0.xxxx, (int4)r10.xyzw);
    r7.y = t1.Load(r10.x).y;
    r7.zw = t1.Load(r10.y).xy;
    r9.x = dot(r7.yzw, r9.xyz);
    r9.y = dot(r7.yzw, r11.xyz);
    r9.z = dot(r7.yzw, r4.xyz);
    r4.xyz = r9.xyz / r3.yyy;
    r7.yzw = -r4.xyz + r2.xyz;
    r3.xw = t1.Load(r10.z).xy;
    r5.zw = t1.Load(r10.w).xy;
    r4.w = r4.x + r4.y;
    r5.w = cmp(0 < r5.w);
    r6.zw = cmp((int2)r2.ww >= int2(6,4));
    r9.xy = r5.ww ? cb2[11].xy : cb2[8].xy;
    r4.w = r9.x + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r8.w = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r8.w * r4.w + -0.5;
    r4.w = dot(r4.ww, r9.yy);
    r9.xyz = float3(0.0625,1,16) * r5.zzz;
    r9.xyz = frac(r9.xyz);
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyz = r9.xyz * r4.www;
    r9.xyz = r9.xyz * r3.xxx + r7.yzw;
    r7.yzw = r6.zzz ? r9.xyz : r7.yzw;
    if (r6.w != 0) {
      r9.xyzw = float4(0.0625,1,16,30.2999992) * r3.wwww;
      r9.xyzw = frac(r9.xyzw);
      r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r10.xy = r5.ww ? cb2[12].xz : cb2[9].xz;
      r3.w = 3 * r9.w;
      r11.x = r9.w * 3 + r10.x;
      r11.y = r10.x * 0.75 + -r3.w;
      r10.xz = float2(0.5,0.5) + r11.xy;
      r10.xz = frac(r10.xz);
      r10.xz = r10.xz * float2(2,2) + float2(-1,-1);
      r11.xy = abs(r10.xz) * abs(r10.xz);
      r10.xz = -abs(r10.xz) * float2(2,2) + float2(3,3);
      r10.xz = r11.xy * r10.xz + float2(-0.5,-0.5);
      r10.xz = r10.xz + r10.xz;
      r3.w = dot(r7.yzw, r7.yzw);
      r3.w = sqrt(r3.w);
      r4.w = r10.z * r10.z + r10.x;
      r5.z = r10.y * r3.x;
      r4.w = r5.z * r4.w;
      sincos(r4.w, r11.x, r12.x);
      r4.w = 1 + -r12.x;
      r13.xyzw = r4.wwww * r9.xxxy;
      r11.xyz = r11.xxx * r9.zxy;
      r14.xy = r13.zy * r9.zy + r11.zx;
      r15.xy = r13.xw * r9.xy + r12.xx;
      r14.z = r13.w * r9.z + -r11.y;
      r16.xw = r13.zy * r9.zy + -r11.zx;
      r16.y = r13.w * r9.z + r11.y;
      r5.z = r9.z * r9.z;
      r16.z = r5.z * r4.w + r12.x;
      if (r6.z != 0) {
        r6.zw = r5.ww ? cb2[12].yw : cb2[9].yw;
        r11.xyz = r5.www ? cb2[13].xyz : cb2[10].xyz;
        r12.xyz = cb2[0].yzx * r9.zxy;
        r12.xyz = r9.yzx * cb2[0].zxy + -r12.xyz;
        r4.w = dot(cb2[0].xyz, r9.xyz);
        r4.w = max(-1, r4.w);
        r4.w = min(1, r4.w);
        r12.w = r12.z + r4.w;
        r5.z = dot(r12.xyw, r12.xyw);
        r5.z = rsqrt(r5.z);
        r9.xyz = r12.wxy * r5.zzz;
        r5.z = 1 + -abs(r4.w);
        r5.z = sqrt(r5.z);
        r5.w = abs(r4.w) * -0.0187292993 + 0.0742610022;
        r5.w = r5.w * abs(r4.w) + -0.212114394;
        r5.w = r5.w * abs(r4.w) + 1.57072878;
        r8.w = r5.w * r5.z;
        r8.w = r8.w * -2 + 3.14159274;
        r4.w = cmp(r4.w < -r4.w);
        r4.w = r4.w ? r8.w : 0;
        r4.w = r5.w * r5.z + r4.w;
        r5.z = -r10.x * r10.x + r10.z;
        r10.x = r9.w * 3 + r11.z;
        r10.y = 0.870000005 * r10.x;
        r10.xy = float2(0.5,0.5) + r10.xy;
        r10.xy = frac(r10.xy);
        r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
        r10.zw = abs(r10.xy) * abs(r10.xy);
        r10.xy = -abs(r10.xy) * float2(2,2) + float2(3,3);
        r10.xy = r10.zw * r10.xy + float2(-0.5,-0.5);
        r10.xy = r10.xy + r10.xy;
        r5.w = r10.y * r10.y;
        r5.w = r5.w * r10.x + 1;
        r5.w = saturate(0.5 * r5.w);
        r5.w = log2(r5.w);
        r5.w = r11.y * r5.w;
        r5.w = exp2(r5.w);
        r5.z = r5.z * r6.z;
        r4.w = r4.w * r6.w + r5.z;
        r4.w = r11.x * r5.w + r4.w;
        r3.x = r4.w * r3.x;
        sincos(r3.x, r3.x, r10.x);
        r4.w = 1 + -r10.x;
        r11.xyzw = r4.wwww * r9.yyyz;
        r10.yzw = r3.xxx * r9.xyz;
        r12.xy = r11.zy * r9.xz + r10.wy;
        r13.xy = r11.xw * r9.yz + r10.xx;
        r12.z = r11.w * r9.x + -r10.z;
        r17.xy = r11.yz * r9.zx + -r10.yw;
        r17.z = r11.w * r9.x + r10.z;
        r3.x = r9.x * r9.x;
        r12.w = r3.x * r4.w + r10.x;
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
      r9.x = dot(r9.xyz, r7.yzw);
      r9.y = dot(r15.xyz, r7.yzw);
      r9.z = dot(r16.xyz, r7.yzw);
      r3.x = dot(r9.xyz, r9.xyz);
      r3.x = rsqrt(r3.x);
      r9.xyz = r9.xyz * r3.xxx;
      r7.yzw = r9.xyz * r3.www;
    }
    r4.xyz = r7.yzw + r4.xyz;
  } else {
    r4.xyz = r2.xyz;
  }
  if (r3.z != 0) {
    r1.w = min(2, (uint)r1.w);
    r0.x = mad(asint(cb4[0].y), (int)r0.x, (int)r1.w);
    r3.xz = t1.Load(r0.x).xy;
    r0.x = cmp((int)r2.w == 5);
    if (r0.x != 0) {
      r7.yzw = float3(0.0625,1,16) * r3.zzz;
      r7.yzw = frac(r7.yzw);
      r7.yzw = r7.yzw * float3(2,2,2) + float3(-1,-1,-1);
      r7.yzw = r7.yzw * r3.xxx;
      r0.x = r5.x + r5.y;
      r0.x = cb2[2].x + r0.x;
      r9.x = r0.x + r3.z;
      r9.y = r0.x * cb2[3].y + r3.z;
      r1.w = cb2[3].y * r9.x;
      r9.z = 0.5 * r1.w;
      r9.w = r9.x + -r3.x;
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
      r5.zw = r1.ww ? r10.xy : r10.zw;
      r1.w = -r9.y * r9.z + r5.z;
      r1.w = r5.w * r1.w + r10.w;
      r3.w = r5.z + -r1.w;
      r1.w = r5.w * r3.w + r1.w;
      r1.w = cb2[3].x * r1.w;
      r3.w = 1 + -cb2[0].w;
      r4.w = 1 + -cb2[3].x;
      r4.w = r9.x * r4.w;
      r1.w = r1.w * r3.w + r4.w;
      r3.w = r9.w * cb2[4].x + 1;
      r1.w = r3.w * r1.w;
      r7.yzw = r7.yzw * r1.www;
      r7.yzw = r7.yzw * cb2[2].yyy + r4.xyz;
      r9.x = r0.x * 0.100000001 + r3.z;
      r0.x = cb2[18].x * cb2[7].x;
      r9.y = r0.x * 0.100000001 + r3.z;
      r5.zw = float2(0.5,0.5) + r9.xy;
      r5.zw = frac(r5.zw);
      r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
      r6.zw = abs(r5.zw) * abs(r5.zw);
      r5.zw = -abs(r5.zw) * float2(2,2) + float2(3,3);
      r5.zw = r6.zw * r5.zw + float2(-0.5,-0.5);
      r5.zw = r5.zw + r5.zw;
      r5.zw = r5.zw * r5.zw;
      r0.x = r5.w * r5.z;
      r0.x = -r0.x * cb2[7].x + 1;
      r1.w = cb2[0].w * r9.w;
      r0.x = r1.w * cb2[4].x + r0.x;
      r9.xyz = cb2[5].xyz + -r7.yzw;
      r9.xyz = cb2[6].yyy * r9.xyz;
      r9.xyz = r9.xyz * r0.xxx;
      r4.xyz = r9.xyz * r3.xxx + r7.yzw;
    } else {
      r7.yzw = float3(0.0625,1,16) * r3.zzz;
      r7.yzw = frac(r7.yzw);
      r7.yzw = r7.yzw * float3(2,2,2) + float3(-1,-1,-1);
      r7.yzw = r7.yzw * r3.xxx;
      r0.x = r5.x + r5.y;
      r0.x = cb2[2].x + r0.x;
      r9.x = r0.x + r3.z;
      r9.y = r0.x * cb2[3].y + r3.z;
      r0.x = cb2[3].y * r9.x;
      r9.z = 0.5 * r0.x;
      r3.xzw = float3(0.5,0.5,0.5) + r9.xyz;
      r3.xzw = frac(r3.xzw);
      r3.xzw = r3.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r5.xzw = abs(r3.xzw) * abs(r3.xzw);
      r3.xzw = -abs(r3.xzw) * float3(2,2,2) + float3(3,3,3);
      r3.xzw = r5.xzw * r3.xzw + float3(-0.5,-0.5,-0.5);
      r3.xzw = r3.xzw + r3.xzw;
      r9.w = r3.z * r3.w;
      r0.x = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r5.xz = r0.xx ? r9.xy : r9.zw;
      r0.x = -r3.z * r3.w + r5.x;
      r0.x = r5.z * r0.x + r9.w;
      r1.w = r5.x + -r0.x;
      r0.x = r5.z * r1.w + r0.x;
      r0.x = cb2[3].x * r0.x;
      r1.w = 1 + -cb2[0].w;
      r3.z = 1 + -cb2[3].x;
      r3.x = r3.x * r3.z;
      r0.x = r0.x * r1.w + r3.x;
      r3.xzw = r7.yzw * r0.xxx;
      r4.xyz = r3.xzw * cb2[2].yyy + r4.xyz;
    }
  }
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r1.w = 1 / cb2[1].z;
  r1.w = -r1.w * 0.25 + r4.z;
  r1.w = max(0, r1.w);
  r1.w = cb2[1].z * r1.w;
  r3.x = cmp(r1.w != 0.000000);
  r3.z = log2(r1.w);
  r3.z = cb2[1].w * r3.z;
  r3.z = exp2(r3.z);
  r1.w = r3.x ? r3.z : r1.w;
  r7.x = r7.x * 0.00100000005 + cb2[1].x;
  r7.y = cb2[1].x * 0.800000012 + r5.y;
  r3.xz = float2(0.5,0.5) + r7.xy;
  r3.xz = frac(r3.xz);
  r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
  r5.xy = abs(r3.xz) * abs(r3.xz);
  r3.xz = -abs(r3.xz) * float2(2,2) + float2(3,3);
  r3.xz = r5.xy * r3.xz + float2(-0.5,-0.5);
  r3.xz = r3.xz + r3.xz;
  r3.x = r3.z * r3.z + r3.x;
  r3.z = cmp(cb2[1].z != 0.000000);
  r3.w = cb2[6].x / cb2[1].z;
  r3.z = r3.z ? r3.w : cb2[6].x;
  r3.x = cb2[1].y * r3.x + r3.z;
  r1.w = r3.x * r1.w;
  r3.xz = cb2[0].xy * r1.ww + r4.xy;
  r5.xy = r2.ww ? r3.xz : r4.xy;
  r5.z = r4.z;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r3.xzw = r5.xyz * r1.www;
  r3.xzw = r3.xzw * r0.xxx;
  r3.xzw = r2.www ? r3.xzw : r4.xyz;
  r2.xyz = r3.xzw + -r2.xyz;
  r2.xyz = r2.xyz * r3.yyy;
  r2.xyz = r2.xyz * cb5[14].www + r8.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.x = asuint(cb0[1].w) << 2;
  r2.xyzw = cb3[r0.x+30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[r0.x+29].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb3[r0.x+31].xyzw + r2.xyzw;
  r2.xyzw = cb3[r0.x+32].xyzw + r2.xyzw;
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xy = r6.xy;
  o2.zw = float2(0,0);
  o5.xyzw = r2.xyzw;
  o7.xyzw = r2.xyzw;
  o4.xyz = r1.xyz;
  o6.xyz = r0.yzw;
  o3.x = v1.x;
  p3.x = cb0[1].w;
  return;
}