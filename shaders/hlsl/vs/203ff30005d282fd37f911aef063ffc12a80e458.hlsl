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
  float4 cb3[31];
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
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r0.w = asint(cb2[0].y) + -1;
  r1.y = (int)v2.x + asint(cb2[0].w);
  r2.w = (int)cb3[28].w;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(6,7,8,9));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r5.x = t0[r5.z].val[0/4];
  r5.y = t0[r5.z].val[0/4+1];
  r5.z = t0[r5.z].val[0/4+2];
  r8.x = t0[r5.w].val[0/4];
  r8.y = t0[r5.w].val[0/4+1];
  r8.w = t0[r5.w].val[0/4+2];
  r4.w = 1;
  r9.x = r6.x;
  r9.y = r7.x;
  r9.z = r5.x;
  r9.w = r8.x;
  r9.x = dot(r4.xyzw, r9.xyzw);
  r10.x = r6.y;
  r10.y = r7.y;
  r10.z = r5.y;
  r10.w = r8.y;
  r9.y = dot(r4.xyzw, r10.xyzw);
  r8.x = r6.z;
  r8.y = r7.z;
  r8.z = r5.z;
  r9.z = dot(r4.xyzw, r8.xyzw);
  r3.w = mad((int)v1.x, 36, 5);
  r5.x = t0[r3.w].val[0/4];
  r5.y = t0[r3.w].val[0/4+1];
  r5.z = t0[r3.w].val[0/4+2];
  r5.yw = float2(0.00100000005,0.00100000005) * r5.xy;
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r3.w);
  r6.x = r0.x;
  r6.y = r1.x;
  r6.z = r2.x;
  r7.x = dot(r9.xyz, r6.xyz);
  r8.x = r0.y;
  r8.y = r1.z;
  r8.z = r2.y;
  r7.y = dot(r9.xyz, r8.xyz);
  r2.x = r0.z;
  r2.y = r1.w;
  r7.z = dot(r9.xyz, r2.xyz);
  r0.xyz = r7.xyz / r3.www;
  r1.xz = cmp(int2(1,2) < (int2)r2.ww);
  r1.w = cmp((int)r2.w != 5);
  r1.x = r1.w ? r1.x : 0;
  if (r1.x != 0) {
    r7.xyzw = min(uint4(4,5,6,7), (uint4)r0.wwww);
    r7.xyzw = mad(asint(cb2[0].yyyy), (int4)r1.yyyy, (int4)r7.xyzw);
    r9.x = t1.Load(r7.x).y;
    r9.yz = t1.Load(r7.y).xy;
    r6.x = dot(r9.xyz, r6.xyz);
    r6.y = dot(r9.xyz, r8.xyz);
    r6.z = dot(r9.xyz, r2.xyz);
    r2.xyz = r6.xyz / r3.www;
    r6.xyz = -r2.xyz + r0.xyz;
    r1.xw = t1.Load(r7.z).xy;
    r7.xy = t1.Load(r7.w).xy;
    r4.w = r2.x + r2.y;
    r6.w = cmp(0 < r7.y);
    r7.yz = cmp((int2)r2.ww >= int2(6,4));
    r8.xy = r6.ww ? cb1[11].xy : cb1[8].xy;
    r4.w = r8.x + r4.w;
    r4.w = 0.5 + r4.w;
    r4.w = frac(r4.w);
    r4.w = r4.w * 2 + -1;
    r7.w = abs(r4.w) * abs(r4.w);
    r4.w = -abs(r4.w) * 2 + 3;
    r4.w = r7.w * r4.w + -0.5;
    r4.w = dot(r4.ww, r8.yy);
    r8.xyz = float3(0.0625,1,16) * r7.xxx;
    r8.xyz = frac(r8.xyz);
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = r8.xyz * r4.www;
    r8.xyz = r8.xyz * r1.xxx + r6.xyz;
    r6.xyz = r7.yyy ? r8.xyz : r6.xyz;
    if (r7.z != 0) {
      r8.xyzw = float4(0.0625,1,16,30.2999992) * r1.wwww;
      r8.xyzw = frac(r8.xyzw);
      r7.xzw = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r8.xy = r6.ww ? cb1[12].xz : cb1[9].xz;
      r1.w = 3 * r8.w;
      r9.x = r8.w * 3 + r8.x;
      r9.y = r8.x * 0.75 + -r1.w;
      r8.xz = float2(0.5,0.5) + r9.xy;
      r8.xz = frac(r8.xz);
      r8.xz = r8.xz * float2(2,2) + float2(-1,-1);
      r9.xy = abs(r8.xz) * abs(r8.xz);
      r8.xz = -abs(r8.xz) * float2(2,2) + float2(3,3);
      r8.xz = r9.xy * r8.xz + float2(-0.5,-0.5);
      r8.xz = r8.xz + r8.xz;
      r1.w = dot(r6.xyz, r6.xyz);
      r1.w = sqrt(r1.w);
      r4.w = r8.z * r8.z + r8.x;
      r8.y = r8.y * r1.x;
      r4.w = r8.y * r4.w;
      sincos(r4.w, r9.x, r10.x);
      r4.w = 1 + -r10.x;
      r11.xyzw = r4.wwww * r7.xxxz;
      r9.xyz = r9.xxx * r7.wxz;
      r12.xy = r11.zy * r7.wz + r9.zx;
      r13.xy = r11.xw * r7.xz + r10.xx;
      r12.z = r11.w * r7.w + -r9.y;
      r14.xw = r11.zy * r7.wz + -r9.zx;
      r14.y = r11.w * r7.w + r9.y;
      r8.y = r7.w * r7.w;
      r14.z = r8.y * r4.w + r10.x;
      if (r7.y != 0) {
        r9.xy = r6.ww ? cb1[12].yw : cb1[9].yw;
        r10.xyz = r6.www ? cb1[13].xyz : cb1[10].xyz;
        r11.xyz = cb1[0].yzx * r7.wxz;
        r11.xyz = r7.zwx * cb1[0].zxy + -r11.xyz;
        r4.w = dot(cb1[0].xyz, r7.xzw);
        r4.w = max(-1, r4.w);
        r4.w = min(1, r4.w);
        r11.w = r11.z + r4.w;
        r6.w = dot(r11.xyw, r11.xyw);
        r6.w = rsqrt(r6.w);
        r7.xyz = r11.wxy * r6.www;
        r6.w = 1 + -abs(r4.w);
        r6.w = sqrt(r6.w);
        r7.w = abs(r4.w) * -0.0187292993 + 0.0742610022;
        r7.w = r7.w * abs(r4.w) + -0.212114394;
        r7.w = r7.w * abs(r4.w) + 1.57072878;
        r8.y = r7.w * r6.w;
        r8.y = r8.y * -2 + 3.14159274;
        r4.w = cmp(r4.w < -r4.w);
        r4.w = r4.w ? r8.y : 0;
        r4.w = r7.w * r6.w + r4.w;
        r6.w = -r8.x * r8.x + r8.z;
        r8.x = r8.w * 3 + r10.z;
        r8.y = 0.870000005 * r8.x;
        r8.xy = float2(0.5,0.5) + r8.xy;
        r8.xy = frac(r8.xy);
        r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
        r8.zw = abs(r8.xy) * abs(r8.xy);
        r8.xy = -abs(r8.xy) * float2(2,2) + float2(3,3);
        r8.xy = r8.zw * r8.xy + float2(-0.5,-0.5);
        r8.xy = r8.xy + r8.xy;
        r7.w = r8.y * r8.y;
        r7.w = r7.w * r8.x + 1;
        r7.w = saturate(0.5 * r7.w);
        r7.w = log2(r7.w);
        r7.w = r10.y * r7.w;
        r7.w = exp2(r7.w);
        r6.w = r6.w * r9.x;
        r4.w = r4.w * r9.y + r6.w;
        r4.w = r10.x * r7.w + r4.w;
        r1.x = r4.w * r1.x;
        sincos(r1.x, r1.x, r8.x);
        r4.w = 1 + -r8.x;
        r9.xyzw = r4.wwww * r7.yyyz;
        r8.yzw = r1.xxx * r7.xyz;
        r10.xy = r9.zy * r7.xz + r8.wy;
        r11.xy = r9.xw * r7.yz + r8.xx;
        r10.z = r9.w * r7.x + -r8.z;
        r15.xy = r9.yz * r7.zx + -r8.yw;
        r15.z = r9.w * r7.x + r8.z;
        r1.x = r7.x * r7.x;
        r10.w = r1.x * r4.w + r8.x;
        r13.z = r14.w;
        r13.w = r12.x;
        r11.z = r10.y;
        r11.w = r15.y;
        r7.x = dot(r13.xzw, r11.xzw);
        r15.w = r11.y;
        r7.y = dot(r13.xwz, r15.xzw);
        r7.z = dot(r13.xzw, r10.xzw);
        r12.w = r13.y;
        r13.x = dot(r12.ywz, r11.xzw);
        r13.y = dot(r12.yzw, r15.xzw);
        r13.z = dot(r12.ywz, r10.xzw);
        r8.x = dot(r14.xyz, r11.xzw);
        r8.y = dot(r14.xzy, r15.xzw);
        r8.z = dot(r14.xyz, r10.xzw);
        r14.xyz = r8.xyz;
      } else {
        r7.x = r13.x;
        r7.y = r14.w;
        r7.z = r12.x;
        r13.xz = r12.yz;
      }
      r7.x = dot(r7.xyz, r6.xyz);
      r7.y = dot(r13.xyz, r6.xyz);
      r7.z = dot(r14.xyz, r6.xyz);
      r1.x = dot(r7.xyz, r7.xyz);
      r1.x = rsqrt(r1.x);
      r7.xyz = r7.xyz * r1.xxx;
      r6.xyz = r7.xyz * r1.www;
    }
    r2.xyz = r6.xyz + r2.xyz;
  } else {
    r2.xyz = r0.xyz;
  }
  if (r1.z != 0) {
    r0.w = min(2, (uint)r0.w);
    r0.w = mad(asint(cb2[0].y), (int)r1.y, (int)r0.w);
    r1.xy = t1.Load(r0.w).xy;
    r0.w = cmp((int)r2.w == 5);
    if (r0.w != 0) {
      r6.xyz = float3(0.0625,1,16) * r1.yyy;
      r6.xyz = frac(r6.xyz);
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r6.xyz = r6.xyz * r1.xxx;
      r0.w = r5.y + r5.w;
      r0.w = cb1[2].x + r0.w;
      r7.x = r0.w + r1.y;
      r7.y = r0.w * cb1[3].y + r1.y;
      r1.z = cb1[3].y * r7.x;
      r7.z = 0.5 * r1.z;
      r7.w = r7.x + -r1.x;
      r7.xyzw = float4(0.5,0.5,0.5,1.5) + r7.xyzw;
      r7.xyzw = frac(r7.xyzw);
      r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
      r8.xyzw = abs(r7.xyzw) * abs(r7.xyzw);
      r7.xyzw = -abs(r7.xyzw) * float4(2,2,2,2) + float4(3,3,3,3);
      r7.xyzw = r8.xyzw * r7.xyzw + float4(-0.5,-0.5,-0.5,-0.5);
      r7.xyzw = r7.xyzw + r7.xyzw;
      r8.w = r7.y * r7.z;
      r1.z = cmp(r8.w < 0);
      r8.y = abs(r8.w);
      r8.xz = float2(-1,1);
      r1.zw = r1.zz ? r8.xy : r8.zw;
      r4.w = -r7.y * r7.z + r1.z;
      r4.w = r1.w * r4.w + r8.w;
      r1.z = -r4.w + r1.z;
      r1.z = r1.w * r1.z + r4.w;
      r1.z = cb1[3].x * r1.z;
      r1.w = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r7.x * r4.w;
      r1.z = r1.z * r1.w + r4.w;
      r1.w = r7.w * cb1[4].x + 1;
      r1.z = r1.z * r1.w;
      r6.xyz = r6.xyz * r1.zzz;
      r6.xyz = r6.xyz * cb1[2].yyy + r2.xyz;
      r7.x = r0.w * 0.100000001 + r1.y;
      r0.w = cb1[18].x * cb1[7].x;
      r7.y = r0.w * 0.100000001 + r1.y;
      r1.zw = float2(0.5,0.5) + r7.xy;
      r1.zw = frac(r1.zw);
      r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
      r7.xy = abs(r1.zw) * abs(r1.zw);
      r1.zw = -abs(r1.zw) * float2(2,2) + float2(3,3);
      r1.zw = r7.xy * r1.zw + float2(-0.5,-0.5);
      r1.zw = r1.zw + r1.zw;
      r1.zw = r1.zw * r1.zw;
      r0.w = r1.w * r1.z;
      r0.w = -r0.w * cb1[7].x + 1;
      r1.z = cb1[0].w * r7.w;
      r0.w = r1.z * cb1[4].x + r0.w;
      r7.xyz = cb1[5].xyz + -r6.xyz;
      r7.xyz = cb1[6].yyy * r7.xyz;
      r7.xyz = r7.xyz * r0.www;
      r2.xyz = r7.xyz * r1.xxx + r6.xyz;
    } else {
      r6.xyz = float3(0.0625,1,16) * r1.yyy;
      r6.xyz = frac(r6.xyz);
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r1.xzw = r6.xyz * r1.xxx;
      r0.w = r5.y + r5.w;
      r0.w = cb1[2].x + r0.w;
      r6.x = r0.w + r1.y;
      r6.y = r0.w * cb1[3].y + r1.y;
      r0.w = cb1[3].y * r6.x;
      r6.z = 0.5 * r0.w;
      r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
      r6.xyz = frac(r6.xyz);
      r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      r7.xyz = abs(r6.xyz) * abs(r6.xyz);
      r6.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
      r6.xyz = r7.xyz * r6.xyz + float3(-0.5,-0.5,-0.5);
      r6.xyz = r6.xyz + r6.xyz;
      r7.w = r6.y * r6.z;
      r0.w = cmp(r7.w < 0);
      r7.y = abs(r7.w);
      r7.xz = float2(-1,1);
      r7.xy = r0.ww ? r7.xy : r7.zw;
      r0.w = -r6.y * r6.z + r7.x;
      r0.w = r7.y * r0.w + r7.w;
      r1.y = r7.x + -r0.w;
      r0.w = r7.y * r1.y + r0.w;
      r0.w = cb1[3].x * r0.w;
      r1.y = 1 + -cb1[0].w;
      r4.w = 1 + -cb1[3].x;
      r4.w = r6.x * r4.w;
      r0.w = r0.w * r1.y + r4.w;
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
  r5.x = r5.x * 0.00100000005 + cb1[1].x;
  r5.y = cb1[1].x * 0.800000012 + r5.w;
  r1.yz = float2(0.5,0.5) + r5.xy;
  r1.yz = frac(r1.yz);
  r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
  r5.xy = abs(r1.yz) * abs(r1.yz);
  r1.yz = -abs(r1.yz) * float2(2,2) + float2(3,3);
  r1.yz = r5.xy * r1.yz + float2(-0.5,-0.5);
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
  r1.xyz = r4.zxy + -r1.xyz;
  r1.yz = float2(9.99999975e-005,9.99999975e-005) * r1.yz;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r2.xyz = t2.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.x = cb3[29].z + r2.y;
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
  r1.w = cb3[29].w * r1.w;
  r1.x = max(r2.x, r1.x);
  r1.w = r1.w * r1.x;
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = cb3[15].z + r5.z;
  r2.x = r4.z + -r2.x;
  r0.w = min(r2.x, r0.w);
  r0.w = cb3[30].y * r0.w;
  r0.w = r1.x * r0.w;
  r0.w = r1.w * r0.w;
  r1.xy = t4.SampleLevel(s2_s, r1.yz, -1).xy;
  r1.xy = float2(-1,-1) + r1.xy;
  r1.xy = r1.xy * r0.ww;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r0.xyz * cb3[29].xxx + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}