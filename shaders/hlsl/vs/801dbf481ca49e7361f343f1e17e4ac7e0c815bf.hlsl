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

cbuffer cb3 : register(b3)
{
  float4 cb3[15];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
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
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
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
  r1.xy = t1.Load(r1.x).xy;
  r1.z = asint(cb2[0].y) + -1;
  r6.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r6.xyz = floor(r6.xyz);
  r6.xyz = r6.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r7.xyz = -cb0[70].zxy + r0.wyz;
  r6.xyz = r7.xyz + -r6.xyz;
  r6.yz = float2(9.99999975e-005,9.99999975e-005) * r6.yz;
  r1.w = r6.x * 9.99999975e-005 + 0.200000003;
  r7.yzw = t3.SampleLevel(s0_s, r6.yz, -1).xyz;
  r2.w = cb3[13].z + r7.z;
  r3.y = -r2.w + r1.w;
  r3.y = max(0, r3.y);
  r4.w = r7.y + -r7.z;
  r4.w = max(9.99999975e-005, r4.w);
  r3.y = r3.y / r4.w;
  r3.y = min(1, r3.y);
  r4.w = ceil(r3.y);
  r3.y = 1 + -r3.y;
  r3.y = min(0.200000003, r3.y);
  r3.y = r4.w * r3.y;
  r4.w = 5 * r3.y;
  r1.w = -r7.w + r1.w;
  r5.x = max(0, r1.w);
  r2.w = r2.w + -r7.w;
  r2.w = max(9.99999975e-005, r2.w);
  r2.w = r5.x / r2.w;
  r2.w = min(1, r2.w);
  r5.x = ceil(r2.w);
  r2.w = 1 + -r2.w;
  r2.w = min(0.200000003, r2.w);
  r2.w = r5.x * r2.w;
  r2.w = 5 * r2.w;
  r6.xw = t4.SampleLevel(s1_s, r6.yz, -1).xy;
  r3.y = r3.y * 5 + -r2.w;
  r3.y = cmp(9.99999975e-006 < abs(r3.y));
  r5.x = cmp(r4.w >= r2.w);
  r5.x = r5.x ? r6.w : r6.x;
  r3.y = r3.y ? r5.x : r6.x;
  r3.y = cb3[13].w * r3.y;
  r2.w = max(r4.w, r2.w);
  r3.y = r3.y * r2.w;
  r1.w = 10000 * r1.w;
  r1.w = max(0, r1.w);
  r7.y = t0[r5.y].val[0/4];
  r7.z = t0[r5.y].val[0/4+1];
  r7.w = t0[r5.y].val[0/4+2];
  r4.w = cb3[7].z + r7.w;
  r4.w = r7.x + -r4.w;
  r1.w = min(r4.w, r1.w);
  r1.w = cb3[14].y * r1.w;
  r1.w = r2.w * r1.w;
  r1.w = r3.y * r1.w;
  r5.xy = t5.SampleLevel(s2_s, r6.yz, -1).xy;
  r5.xy = float2(-1,-1) + r5.xy;
  r6.xy = r5.xy * r1.ww;
  r1.w = dot(r6.xy, r6.xy);
  r1.w = sqrt(r1.w);
  r6.z = -1.20000005 * r1.w;
  r1.w = (int)cb3[14].z;
  r8.xyz = -cb0[70].xyz + r0.yzw;
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r9.x = t0[r5.w].val[0/4];
  r9.y = t0[r5.w].val[0/4+1];
  r9.z = t0[r5.w].val[0/4+2];
  r7.xw = mad((int2)v1.xx, int2(36,36), int2(8,9));
  r10.x = t0[r7.x].val[0/4];
  r10.y = t0[r7.x].val[0/4+1];
  r10.z = t0[r7.x].val[0/4+2];
  r11.x = t0[r7.w].val[0/4];
  r11.y = t0[r7.w].val[0/4+1];
  r11.w = t0[r7.w].val[0/4+2];
  r8.w = 1;
  r12.x = r5.x;
  r12.y = r9.x;
  r12.z = r10.x;
  r12.w = r11.x;
  r12.x = dot(r8.xyzw, r12.xyzw);
  r13.x = r5.y;
  r13.y = r9.y;
  r13.z = r10.y;
  r13.w = r11.y;
  r12.y = dot(r8.xyzw, r13.xyzw);
  r11.x = r5.z;
  r11.y = r9.z;
  r11.z = r10.z;
  r12.z = dot(r8.xyzw, r11.xyzw);
  r5.xy = float2(0.00100000005,0.00100000005) * r7.yz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r8.x = r2.x;
  r8.y = r3.x;
  r8.z = r4.x;
  r9.x = dot(r12.xyz, r8.xyz);
  r10.x = r2.y;
  r10.y = r3.z;
  r10.z = r4.y;
  r9.y = dot(r12.xyz, r10.xyz);
  r4.x = r2.z;
  r4.y = r3.w;
  r9.z = dot(r12.xyz, r4.xyz);
  r2.xyz = r9.xyz / r2.www;
  r3.xy = cmp(int2(1,2) < (int2)r1.ww);
  r3.z = cmp((int)r1.w != 5);
  r3.x = r3.z ? r3.x : 0;
  if (r3.x != 0) {
    r9.xyzw = min(uint4(4,5,6,7), (uint4)r1.zzzz);
    r9.xyzw = mad(asint(cb2[0].yyyy), (int4)r0.xxxx, (int4)r9.xyzw);
    r3.x = t1.Load(r9.x).y;
    r3.zw = t1.Load(r9.y).xy;
    r8.x = dot(r3.xzw, r8.xyz);
    r8.y = dot(r3.xzw, r10.xyz);
    r8.z = dot(r3.xzw, r4.xyz);
    r3.xzw = r8.xyz / r2.www;
    r4.xyz = -r3.xzw + r2.xyz;
    r5.zw = t1.Load(r9.z).xy;
    r7.xz = t1.Load(r9.w).xy;
    r4.w = r3.x + r3.z;
    r6.w = cmp(0 < r7.z);
    r7.zw = cmp((int2)r1.ww >= int2(6,4));
    r8.xy = r6.ww ? cb1[11].xy : cb1[8].xy;
    r4.w = r8.x + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r8.x = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r8.x * r4.w + -0.5;
    r4.w = dot(r4.ww, r8.yy);
    r8.xyz = float3(0.0625,1,16) * r7.xxx;
    r8.xyz = frac(r8.xyz);
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = r8.xyz * r4.www;
    r8.xyz = r8.xyz * r5.zzz + r4.xyz;
    r4.xyz = r7.zzz ? r8.xyz : r4.xyz;
    if (r7.w != 0) {
      r8.xyzw = float4(0.0625,1,16,30.2999992) * r5.wwww;
      r8.xyzw = frac(r8.xyzw);
      r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r7.xw = r6.ww ? cb1[12].xz : cb1[9].xz;
      r4.w = 3 * r8.w;
      r9.x = r8.w * 3 + r7.x;
      r9.y = r7.x * 0.75 + -r4.w;
      r9.xy = float2(0.5,0.5) + r9.xy;
      r9.xy = frac(r9.xy);
      r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
      r9.zw = abs(r9.xy) * abs(r9.xy);
      r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
      r9.xy = r9.zw * r9.xy + float2(-0.5,-0.5);
      r9.xy = r9.xy + r9.xy;
      r4.w = dot(r4.xyz, r4.xyz);
      r4.w = sqrt(r4.w);
      r5.w = r9.y * r9.y + r9.x;
      r7.x = r7.w * r5.z;
      r5.w = r7.x * r5.w;
      sincos(r5.w, r7.x, r10.x);
      r5.w = 1 + -r10.x;
      r11.xyzw = r5.wwww * r8.xxxy;
      r10.yzw = r7.xxx * r8.zxy;
      r12.xy = r11.zy * r8.zy + r10.wy;
      r13.xy = r11.xw * r8.xy + r10.xx;
      r12.z = r11.w * r8.z + -r10.z;
      r14.xw = r11.zy * r8.zy + -r10.wy;
      r14.y = r11.w * r8.z + r10.z;
      r7.x = r8.z * r8.z;
      r14.z = r7.x * r5.w + r10.x;
      if (r7.z != 0) {
        r7.xz = r6.ww ? cb1[12].yw : cb1[9].yw;
        r10.xyz = r6.www ? cb1[13].xyz : cb1[10].xyz;
        r11.xyz = cb1[0].yzx * r8.zxy;
        r11.xyz = r8.yzx * cb1[0].zxy + -r11.xyz;
        r5.w = dot(cb1[0].xyz, r8.xyz);
        r5.w = max(-1, r5.w);
        r5.w = min(1, r5.w);
        r11.w = r11.z + r5.w;
        r6.w = dot(r11.xyw, r11.xyw);
        r6.w = rsqrt(r6.w);
        r8.xyz = r11.wxy * r6.www;
        r6.w = 1 + -abs(r5.w);
        r6.w = sqrt(r6.w);
        r7.w = abs(r5.w) * -0.0187292993 + 0.0742610022;
        r7.w = r7.w * abs(r5.w) + -0.212114394;
        r7.w = r7.w * abs(r5.w) + 1.57072878;
        r9.z = r7.w * r6.w;
        r9.z = r9.z * -2 + 3.14159274;
        r5.w = cmp(r5.w < -r5.w);
        r5.w = r5.w ? r9.z : 0;
        r5.w = r7.w * r6.w + r5.w;
        r6.w = -r9.x * r9.x + r9.y;
        r9.x = r8.w * 3 + r10.z;
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
        r6.w = r6.w * r7.x;
        r5.w = r5.w * r7.z + r6.w;
        r5.w = r10.x * r7.w + r5.w;
        r5.z = r5.z * r5.w;
        sincos(r5.z, r7.x, r9.x);
        r5.z = 1 + -r9.x;
        r10.xyzw = r5.zzzz * r8.yyyz;
        r7.xzw = r7.xxx * r8.xyz;
        r11.xy = r10.zy * r8.xz + r7.wx;
        r15.xy = r10.xw * r8.yz + r9.xx;
        r11.z = r10.w * r8.x + -r7.z;
        r16.xy = r10.yz * r8.zx + -r7.xw;
        r16.z = r10.w * r8.x + r7.z;
        r5.w = r8.x * r8.x;
        r11.w = r5.w * r5.z + r9.x;
        r13.z = r14.w;
        r13.w = r12.x;
        r15.z = r11.y;
        r15.w = r16.y;
        r8.x = dot(r13.xzw, r15.xzw);
        r16.w = r15.y;
        r8.y = dot(r13.xwz, r16.xzw);
        r8.z = dot(r13.xzw, r11.xzw);
        r12.w = r13.y;
        r13.x = dot(r12.ywz, r15.xzw);
        r13.y = dot(r12.yzw, r16.xzw);
        r13.z = dot(r12.ywz, r11.xzw);
        r9.x = dot(r14.xyz, r15.xzw);
        r9.y = dot(r14.xzy, r16.xzw);
        r9.z = dot(r14.xyz, r11.xzw);
        r14.xyz = r9.xyz;
      } else {
        r8.x = r13.x;
        r8.y = r14.w;
        r8.z = r12.x;
        r13.xz = r12.yz;
      }
      r8.x = dot(r8.xyz, r4.xyz);
      r8.y = dot(r13.xyz, r4.xyz);
      r8.z = dot(r14.xyz, r4.xyz);
      r5.z = dot(r8.xyz, r8.xyz);
      r5.z = rsqrt(r5.z);
      r7.xzw = r8.xyz * r5.zzz;
      r4.xyz = r7.xzw * r4.www;
    }
    r3.xzw = r4.xyz + r3.xzw;
  } else {
    r3.xzw = r2.xyz;
  }
  if (r3.y != 0) {
    r1.z = min(2, (uint)r1.z);
    r0.x = mad(asint(cb2[0].y), (int)r0.x, (int)r1.z);
    r4.xy = t1.Load(r0.x).xy;
    r0.x = cmp((int)r1.w == 5);
    if (r0.x != 0) {
      r7.xzw = float3(0.0625,1,16) * r4.yyy;
      r7.xzw = frac(r7.xzw);
      r7.xzw = r7.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r7.xzw = r7.xzw * r4.xxx;
      r0.x = r5.x + r5.y;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r4.y;
      r8.y = r0.x * cb1[3].y + r4.y;
      r1.z = cb1[3].y * r8.x;
      r8.z = 0.5 * r1.z;
      r8.w = r8.x + -r4.x;
      r8.xyzw = float4(0.5,0.5,0.5,1.5) + r8.xyzw;
      r8.xyzw = frac(r8.xyzw);
      r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r9.xyzw = abs(r8.xyzw) * abs(r8.xyzw);
      r8.xyzw = -abs(r8.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r8.xyzw = r9.xyzw * r8.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r8.xyzw = r8.xyzw + r8.xyzw;
      r9.w = r8.y * r8.z;
      r1.z = cmp(r9.w < 0);
      r9.y = abs(r9.w);
      r9.xz = float2(-1,1);
      r4.zw = r1.zz ? r9.xy : r9.zw;
      r1.z = -r8.y * r8.z + r4.z;
      r1.z = r4.w * r1.z + r9.w;
      r3.y = r4.z + -r1.z;
      r1.z = r4.w * r3.y + r1.z;
      r1.z = cb1[3].x * r1.z;
      r3.y = 1 + -cb1[0].w;
      r4.z = 1 + -cb1[3].x;
      r4.z = r8.x * r4.z;
      r1.z = r1.z * r3.y + r4.z;
      r3.y = r8.w * cb1[4].x + 1;
      r1.z = r3.y * r1.z;
      r7.xzw = r7.xzw * r1.zzz;
      r7.xzw = r7.xzw * cb1[2].yyy + r3.xzw;
      r8.x = r0.x * 0.100000001 + r4.y;
      r0.x = cb1[18].x * cb1[7].x;
      r8.y = r0.x * 0.100000001 + r4.y;
      r4.zw = float2(0.5,0.5) + r8.xy;
      r4.zw = frac(r4.zw);
      r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
      r5.zw = abs(r4.zw) * abs(r4.zw);
      r4.zw = -abs(r4.zw) * float2(2,2) + float2(3,3);
      r4.zw = r5.zw * r4.zw + float2(-0.5,-0.5);
      r4.zw = r4.zw + r4.zw;
      r4.zw = r4.zw * r4.zw;
      r0.x = r4.w * r4.z;
      r0.x = -r0.x * cb1[7].x + 1;
      r1.z = cb1[0].w * r8.w;
      r0.x = r1.z * cb1[4].x + r0.x;
      r8.xyz = cb1[5].xyz + -r7.xzw;
      r8.xyz = cb1[6].yyy * r8.xyz;
      r8.xyz = r8.xyz * r0.xxx;
      r3.xzw = r8.xyz * r4.xxx + r7.xzw;
    } else {
      r7.xzw = float3(0.0625,1,16) * r4.yyy;
      r7.xzw = frac(r7.xzw);
      r7.xzw = r7.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r4.xzw = r7.xzw * r4.xxx;
      r0.x = r5.x + r5.y;
      r0.x = cb1[2].x + r0.x;
      r8.x = r0.x + r4.y;
      r8.y = r0.x * cb1[3].y + r4.y;
      r0.x = cb1[3].y * r8.x;
      r8.z = 0.5 * r0.x;
      r5.xzw = float3(0.5,0.5,0.5) + r8.xyz;
      r5.xzw = frac(r5.xzw);
      r5.xzw = r5.xzw * float3(2,2,2) + float3(-1,-1,-1);
      r7.xzw = abs(r5.xzw) * abs(r5.xzw);
      r5.xzw = -abs(r5.xzw) * float3(2,2,2) + float3(3,3,3);
      r5.xzw = r7.xzw * r5.xzw + float3(-0.5,-0.5,-0.5);
      r5.xzw = r5.xzw + r5.xzw;
      r8.w = r5.z * r5.w;
      r0.x = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r7.xz = r0.xx ? r8.xy : r8.zw;
      r0.x = -r5.z * r5.w + r7.x;
      r0.x = r7.z * r0.x + r8.w;
      r1.z = r7.x + -r0.x;
      r0.x = r7.z * r1.z + r0.x;
      r0.x = cb1[3].x * r0.x;
      r1.z = 1 + -cb1[0].w;
      r3.y = 1 + -cb1[3].x;
      r3.y = r5.x * r3.y;
      r0.x = r0.x * r1.z + r3.y;
      r4.xyz = r4.xzw * r0.xxx;
      r3.xzw = r4.xyz * cb1[2].yyy + r3.xzw;
    }
  }
  r0.x = dot(r3.xzw, r3.xzw);
  r0.x = sqrt(r0.x);
  r1.z = 1 / cb1[1].z;
  r1.z = -r1.z * 0.25 + r3.w;
  r1.z = max(0, r1.z);
  r1.z = cb1[1].z * r1.z;
  r3.y = cmp(r1.z != 0.000000);
  r4.x = log2(r1.z);
  r4.x = cb1[1].w * r4.x;
  r4.x = exp2(r4.x);
  r1.z = r3.y ? r4.x : r1.z;
  r4.x = r7.y * 0.00100000005 + cb1[1].x;
  r4.y = cb1[1].x * 0.800000012 + r5.y;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = frac(r4.xy);
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.zw = abs(r4.xy) * abs(r4.xy);
  r4.xy = -abs(r4.xy) * float2(2,2) + float2(3,3);
  r4.xy = r4.zw * r4.xy + float2(-0.5,-0.5);
  r4.xy = r4.xy + r4.xy;
  r3.y = r4.y * r4.y + r4.x;
  r4.x = cmp(cb1[1].z != 0.000000);
  r4.y = cb1[6].x / cb1[1].z;
  r4.x = r4.x ? r4.y : cb1[6].x;
  r3.y = cb1[1].y * r3.y + r4.x;
  r1.z = r3.y * r1.z;
  r4.xy = cb1[0].xy * r1.zz + r3.xz;
  r4.xy = r1.ww ? r4.xy : r3.xz;
  r4.z = r3.w;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r4.xyz = r4.xyz * r0.xxx;
  r3.xyz = r1.www ? r4.xyz : r3.xzw;
  r2.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * cb3[14].www + r6.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o4.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.w = 0;
  o2.xy = r1.xy;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  return;
}