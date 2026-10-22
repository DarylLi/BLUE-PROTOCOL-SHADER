// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 cb3[12];
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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r4.xyz = v0.yyy * r1.xzw;
  r4.xyz = r0.xyz * v0.xxx + r4.xyz;
  r4.xyz = r2.xyz * v0.zzz + r4.xyz;
  r3.xyz = cb0[70].xyz + r3.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.w = (int)v2.x + asint(cb2[0].w);
  r1.y = (int)r0.w * asint(cb2[0].y);
  r4.xy = t1.Load(r1.y).xy;
  r1.y = asint(cb2[0].y) + -1;
  r2.w = (int)cb3[9].w;
  r5.xyz = -cb0[70].xyz + r3.xyz;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r8.x = t0[r6.y].val[0/4];
  r8.y = t0[r6.y].val[0/4+1];
  r8.z = t0[r6.y].val[0/4+2];
  r6.x = t0[r6.z].val[0/4];
  r6.y = t0[r6.z].val[0/4+1];
  r6.z = t0[r6.z].val[0/4+2];
  r9.x = t0[r6.w].val[0/4];
  r9.y = t0[r6.w].val[0/4+1];
  r9.w = t0[r6.w].val[0/4+2];
  r5.w = 1;
  r10.x = r7.x;
  r10.y = r8.x;
  r10.z = r6.x;
  r10.w = r9.x;
  r10.x = dot(r5.xyzw, r10.xyzw);
  r11.x = r7.y;
  r11.y = r8.y;
  r11.z = r6.y;
  r11.w = r9.y;
  r10.y = dot(r5.xyzw, r11.xyzw);
  r9.x = r7.z;
  r9.y = r8.z;
  r9.z = r6.z;
  r10.z = dot(r5.xyzw, r9.xyzw);
  r3.w = mad((int)v1.x, 36, 5);
  r6.x = t0[r3.w].val[0/4];
  r6.y = t0[r3.w].val[0/4+1];
  r6.z = t0[r3.w].val[0/4+2];
  r4.zw = float2(0.00100000005,0.00100000005) * r6.xy;
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r3.w);
  r7.x = r0.x;
  r7.y = r1.x;
  r7.z = r2.x;
  r8.x = dot(r10.xyz, r7.xyz);
  r9.x = r0.y;
  r9.y = r1.z;
  r9.z = r2.y;
  r8.y = dot(r10.xyz, r9.xyz);
  r2.x = r0.z;
  r2.y = r1.w;
  r8.z = dot(r10.xyz, r2.xyz);
  r0.xyz = r8.xyz / r3.www;
  r1.xz = cmp(int2(1,2) < (int2)r2.ww);
  r1.w = cmp((int)r2.w != 5);
  r1.x = r1.w ? r1.x : 0;
  if (r1.x != 0) {
    r8.xyzw = min(uint4(4,5,6,7), (uint4)r1.yyyy);
    r8.xyzw = mad(asint(cb2[0].yyyy), (int4)r0.wwww, (int4)r8.xyzw);
    r10.x = t1.Load(r8.x).y;
    r10.yz = t1.Load(r8.y).xy;
    r7.x = dot(r10.xyz, r7.xyz);
    r7.y = dot(r10.xyz, r9.xyz);
    r7.z = dot(r10.xyz, r2.xyz);
    r2.xyz = r7.xyz / r3.www;
    r7.xyz = -r2.xyz + r0.xyz;
    r1.xw = t1.Load(r8.z).xy;
    r6.yw = t1.Load(r8.w).xy;
    r5.w = r2.x + r2.y;
    r6.w = cmp(0 < r6.w);
    r8.xy = cmp((int2)r2.ww >= int2(6,4));
    r8.zw = r6.ww ? cb1[11].xy : cb1[8].xy;
    r5.w = r8.z + r5.w;
    r5.w = 0.5 + r5.w;
    r5.w = frac(r5.w);
    r5.w = r5.w * 2 + -1;
    r7.w = abs(r5.w) * abs(r5.w);
    r5.w = -abs(r5.w) * 2 + 3;
    r5.w = r7.w * r5.w + -0.5;
    r5.w = dot(r5.ww, r8.ww);
    r9.xyz = float3(0.0625,1,16) * r6.yyy;
    r9.xyz = frac(r9.xyz);
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.xyz = r9.xyz * r5.www;
    r9.xyz = r9.xyz * r1.xxx + r7.xyz;
    r7.xyz = r8.xxx ? r9.xyz : r7.xyz;
    if (r8.y != 0) {
      r9.xyzw = float4(0.0625,1,16,30.2999992) * r1.wwww;
      r9.xyzw = frac(r9.xyzw);
      r8.yzw = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r9.xy = r6.ww ? cb1[12].xz : cb1[9].xz;
      r1.w = 3 * r9.w;
      r10.x = r9.w * 3 + r9.x;
      r10.y = r9.x * 0.75 + -r1.w;
      r9.xz = float2(0.5,0.5) + r10.xy;
      r9.xz = frac(r9.xz);
      r9.xz = r9.xz * float2(2,2) + float2(-1,-1);
      r10.xy = abs(r9.xz) * abs(r9.xz);
      r9.xz = -abs(r9.xz) * float2(2,2) + float2(3,3);
      r9.xz = r10.xy * r9.xz + float2(-0.5,-0.5);
      r9.xz = r9.xz + r9.xz;
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = sqrt(r1.w);
      r5.w = r9.z * r9.z + r9.x;
      r6.y = r9.y * r1.x;
      r5.w = r6.y * r5.w;
      sincos(r5.w, r10.x, r11.x);
      r5.w = 1 + -r11.x;
      r12.xyzw = r5.wwww * r8.yyyz;
      r10.xyz = r10.xxx * r8.wyz;
      r13.xy = r12.zy * r8.wz + r10.zx;
      r14.xy = r12.xw * r8.yz + r11.xx;
      r13.z = r12.w * r8.w + -r10.y;
      r15.xw = r12.zy * r8.wz + -r10.zx;
      r15.y = r12.w * r8.w + r10.y;
      r6.y = r8.w * r8.w;
      r15.z = r6.y * r5.w + r11.x;
      if (r8.x != 0) {
        r10.xy = r6.ww ? cb1[12].yw : cb1[9].yw;
        r11.xyz = r6.www ? cb1[13].xyz : cb1[10].xyz;
        r12.xyz = cb1[0].yzx * r8.wyz;
        r12.xyz = r8.zwy * cb1[0].zxy + -r12.xyz;
        r5.w = dot(cb1[0].xyz, r8.yzw);
        r5.w = max(-1, r5.w);
        r5.w = min(1, r5.w);
        r12.w = r12.z + r5.w;
        r6.y = dot(r12.xyw, r12.xyw);
        r6.y = rsqrt(r6.y);
        r8.xyz = r12.wxy * r6.yyy;
        r6.y = 1 + -abs(r5.w);
        r6.y = sqrt(r6.y);
        r6.w = abs(r5.w) * -0.0187292993 + 0.0742610022;
        r6.w = r6.w * abs(r5.w) + -0.212114394;
        r6.w = r6.w * abs(r5.w) + 1.57072878;
        r7.w = r6.w * r6.y;
        r7.w = r7.w * -2 + 3.14159274;
        r5.w = cmp(r5.w < -r5.w);
        r5.w = r5.w ? r7.w : 0;
        r5.w = r6.w * r6.y + r5.w;
        r6.y = -r9.x * r9.x + r9.z;
        r9.x = r9.w * 3 + r11.z;
        r9.y = 0.870000005 * r9.x;
        r9.xy = float2(0.5,0.5) + r9.xy;
        r9.xy = frac(r9.xy);
        r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
        r9.zw = abs(r9.xy) * abs(r9.xy);
        r9.xy = -abs(r9.xy) * float2(2,2) + float2(3,3);
        r9.xy = r9.zw * r9.xy + float2(-0.5,-0.5);
        r9.xy = r9.xy + r9.xy;
        r6.w = r9.y * r9.y;
        r6.w = r6.w * r9.x + 1;
        r6.w = saturate(0.5 * r6.w);
        r6.w = log2(r6.w);
        r6.w = r11.y * r6.w;
        r6.w = exp2(r6.w);
        r6.y = r6.y * r10.x;
        r5.w = r5.w * r10.y + r6.y;
        r5.w = r11.x * r6.w + r5.w;
        r1.x = r5.w * r1.x;
        sincos(r1.x, r1.x, r9.x);
        r5.w = 1 + -r9.x;
        r10.xyzw = r5.wwww * r8.yyyz;
        r9.yzw = r1.xxx * r8.xyz;
        r11.xy = r10.zy * r8.xz + r9.wy;
        r12.xy = r10.xw * r8.yz + r9.xx;
        r11.z = r10.w * r8.x + -r9.z;
        r16.xy = r10.yz * r8.zx + -r9.yw;
        r16.z = r10.w * r8.x + r9.z;
        r1.x = r8.x * r8.x;
        r11.w = r1.x * r5.w + r9.x;
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
      r8.x = dot(r8.xyz, r7.xyz);
      r8.y = dot(r14.xyz, r7.xyz);
      r8.z = dot(r15.xyz, r7.xyz);
      r1.x = dot(r8.xyz, r8.xyz);
      r1.x = rsqrt(r1.x);
      r8.xyz = r8.xyz * r1.xxx;
      r7.xyz = r8.xyz * r1.www;
    }
    r2.xyz = r7.xyz + r2.xyz;
  } else {
    r2.xyz = r0.xyz;
  }
  if (r1.z != 0) {
    r1.x = min(2, (uint)r1.y);
    r0.w = mad(asint(cb2[0].y), (int)r0.w, (int)r1.x);
    r1.xy = t1.Load(r0.w).xy;
    r0.w = cmp((int)r2.w == 5);
    if (r0.w != 0) {
      r7.xyz = float3(0.0625,1,16) * r1.yyy;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r7.xyz = r7.xyz * r1.xxx;
      r0.w = r4.z + r4.w;
      r0.w = cb1[2].x + r0.w;
      r8.x = r0.w + r1.y;
      r8.y = r0.w * cb1[3].y + r1.y;
      r1.z = cb1[3].y * r8.x;
      r8.z = 0.5 * r1.z;
      r8.w = r8.x + -r1.x;
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
      r1.zw = r1.zz ? r9.xy : r9.zw;
      r5.w = -r8.y * r8.z + r1.z;
      r5.w = r1.w * r5.w + r9.w;
      r1.z = -r5.w + r1.z;
      r1.z = r1.w * r1.z + r5.w;
      r1.z = cb1[3].x * r1.z;
      r1.w = 1 + -cb1[0].w;
      r5.w = 1 + -cb1[3].x;
      r5.w = r8.x * r5.w;
      r1.z = r1.z * r1.w + r5.w;
      r1.w = r8.w * cb1[4].x + 1;
      r1.z = r1.z * r1.w;
      r7.xyz = r7.xyz * r1.zzz;
      r7.xyz = r7.xyz * cb1[2].yyy + r2.xyz;
      r8.x = r0.w * 0.100000001 + r1.y;
      r0.w = cb1[18].x * cb1[7].x;
      r8.y = r0.w * 0.100000001 + r1.y;
      r1.zw = float2(0.5,0.5) + r8.xy;
      r1.zw = frac(r1.zw);
      r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
      r6.yw = abs(r1.zw) * abs(r1.zw);
      r1.zw = -abs(r1.zw) * float2(2,2) + float2(3,3);
      r1.zw = r6.yw * r1.zw + float2(-0.5,-0.5);
      r1.zw = r1.zw + r1.zw;
      r1.zw = r1.zw * r1.zw;
      r0.w = r1.w * r1.z;
      r0.w = -r0.w * cb1[7].x + 1;
      r1.z = cb1[0].w * r8.w;
      r0.w = r1.z * cb1[4].x + r0.w;
      r8.xyz = cb1[5].xyz + -r7.xyz;
      r8.xyz = cb1[6].yyy * r8.xyz;
      r8.xyz = r8.xyz * r0.www;
      r2.xyz = r8.xyz * r1.xxx + r7.xyz;
    } else {
      r7.xyz = float3(0.0625,1,16) * r1.yyy;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r1.xzw = r7.xyz * r1.xxx;
      r0.w = r4.z + r4.w;
      r0.w = cb1[2].x + r0.w;
      r7.x = r0.w + r1.y;
      r7.y = r0.w * cb1[3].y + r1.y;
      r0.w = cb1[3].y * r7.x;
      r7.z = 0.5 * r0.w;
      r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
      r7.xyz = frac(r7.xyz);
      r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xyz = abs(r7.xyz) * abs(r7.xyz);
      r7.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
      r7.xyz = r8.xyz * r7.xyz + float3(-0.5,-0.5,-0.5);
      r7.xyz = r7.xyz + r7.xyz;
      r8.w = r7.y * r7.z;
      r0.w = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r6.yw = r0.ww ? r8.xy : r8.zw;
      r0.w = -r7.y * r7.z + r6.y;
      r0.w = r6.w * r0.w + r8.w;
      r1.y = r6.y + -r0.w;
      r0.w = r6.w * r1.y + r0.w;
      r0.w = cb1[3].x * r0.w;
      r1.y = 1 + -cb1[0].w;
      r4.z = 1 + -cb1[3].x;
      r4.z = r7.x * r4.z;
      r0.w = r0.w * r1.y + r4.z;
      r1.xyz = r1.xzw * r0.www;
      r2.xyz = r1.xyz * cb1[2].yyy + r2.xyz;
    }
  }
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 1 / cb1[1].z;
  r1.x = -r1.x * 0.25 + r2.z;
  r1.x = max(0, r1.x);
  r1.x = cb1[1].z * r1.x;
  r1.y = cmp(r1.x != 0.000000);
  r1.z = log2(r1.x);
  r1.z = cb1[1].w * r1.z;
  r1.z = exp2(r1.z);
  r1.x = r1.y ? r1.z : r1.x;
  r6.x = r6.x * 0.00100000005 + cb1[1].x;
  r6.y = cb1[1].x * 0.800000012 + r4.w;
  r1.yz = float2(0.5,0.5) + r6.xy;
  r1.yz = frac(r1.yz);
  r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
  r4.zw = abs(r1.yz) * abs(r1.yz);
  r1.yz = -abs(r1.yz) * float2(2,2) + float2(3,3);
  r1.yz = r4.zw * r1.yz + float2(-0.5,-0.5);
  r1.yz = r1.yz + r1.yz;
  r1.y = r1.z * r1.z + r1.y;
  r1.z = cmp(cb1[1].z != 0.000000);
  r1.w = cb1[6].x / cb1[1].z;
  r1.z = r1.z ? r1.w : cb1[6].x;
  r1.y = cb1[1].y * r1.y + r1.z;
  r1.x = r1.y * r1.x;
  r1.xy = cb1[0].xy * r1.xx + r2.xy;
  r1.xy = r2.ww ? r1.xy : r2.xy;
  r1.z = r2.z;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r2.www ? r1.xyz : r2.xyz;
  r0.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.xyz * r3.www;
  r1.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb0[67].zxy;
  r1.xyz = floor(r1.xyz);
  r1.xyz = r1.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xyz = r5.zxy + -r1.xyz;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t2.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.x = cb3[10].z + r2.y;
  r1.w = -r1.x + r0.w;
  r1.w = max(0, r1.w);
  r2.x = r2.x + -r2.y;
  r2.x = max(9.99999975e-005, r2.x);
  r1.w = r1.w / r2.x;
  r1.w = min(1, r1.w);
  r2.x = ceil(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = min(0.200000003, r1.w);
  r1.w = r2.x * r1.w;
  r2.x = 5 * r1.w;
  r0.w = -r2.z + r0.w;
  r2.y = max(0, r0.w);
  r1.x = r1.x + -r2.z;
  r1.x = max(9.99999975e-005, r1.x);
  r1.x = r2.y / r1.x;
  r1.x = min(1, r1.x);
  r2.y = ceil(r1.x);
  r1.x = 1 + -r1.x;
  r1.x = min(0.200000003, r1.x);
  r1.x = r2.y * r1.x;
  r1.x = 5 * r1.x;
  r2.yz = t3.SampleLevel(s1_s, r1.yz, -1).xy;
  r1.w = r1.w * 5 + -r1.x;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r2.x >= r1.x);
  r2.z = r2.w ? r2.z : r2.y;
  r1.w = r1.w ? r2.z : r2.y;
  r1.w = cb3[10].w * r1.w;
  r1.x = max(r2.x, r1.x);
  r1.w = r1.w * r1.x;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = cb3[5].z + r6.z;
  r2.x = r5.z + -r2.x;
  r0.w = min(r2.x, r0.w);
  r0.w = cb3[11].y * r0.w;
  r0.w = r1.x * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = t4.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.xy = float2(-1,-1) + r1.xy;
  r1.xy = r1.xy * r0.ww;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[10].xxx + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  o1.xy = r4.xy;
  o1.zw = float2(0,0);
  return;
}