// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.xy = min(uint2(1,2), (uint2)r0.xx);
  r0.z = (int)v2.x + asint(cb1[0].w);
  r0.xy = mad(asint(cb1[0].yy), (int2)r0.zz, (int2)r0.xy);
  r0.xw = t1.Load(r0.x).xy;
  r1.xy = t1.Load(r0.y).xy;
  r2.xyzw = float4(0.0625,1,16,256) * r0.wwwx;
  r0.x = 7.11111116 * r0.x;
  r0.x = floor(r0.x);
  r0.x = -r0.x * 36 + r2.w;
  r2.xyz = frac(r2.xyz);
  r2.xyz = float3(-0.5,-0.5,-0.5) + r2.xyz;
  r2.xyz = r2.xyz + r2.xyz;
  r0.y = (int)v1.x * 36;
  r0.w = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.w].val[0/4];
  r3.y = t0[r0.w].val[0/4+1];
  r3.z = t0[r0.w].val[0/4+2];
  r4.z = r3.x;
  r1.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r0.y].val[0/4];
  r5.y = t0[r0.y].val[0/4+1];
  r5.z = t0[r0.y].val[0/4+2];
  r6.x = t0[r1.z].val[0/4];
  r6.y = t0[r1.z].val[0/4+1];
  r6.z = t0[r1.z].val[0/4+2];
  r7.x = t0[r1.w].val[0/4];
  r7.y = t0[r1.w].val[0/4+1];
  r7.z = t0[r1.w].val[0/4+2];
  r4.y = r6.x;
  r4.x = r5.x;
  r4.x = dot(r2.xyz, r4.xyz);
  r8.y = r6.y;
  r8.z = r3.y;
  r8.x = r5.y;
  r4.y = dot(r2.xyz, r8.xyz);
  r8.y = r6.z;
  r8.z = r3.z;
  r8.x = r5.z;
  r4.z = dot(r2.xyz, r8.xyz);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r4.xyz / r0.yyy;
  r0.y = -9.99999997e-007 + cb2[7].y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.w = cmp(cb2[7].y >= 9.99999997e-007);
  r9.xyz = r0.www ? cb2[5].xyz : float3(1,0,0);
  r9.xyz = r0.yyy ? r9.xyz : float3(1,0,0);
  r0.y = dot(r9.xyz, r8.xyz);
  r0.y = r0.y * r0.y;
  r8.xyz = r0.yyy * float3(0,0,1) + r9.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r0.y = 0.166666672 * r0.x;
  r10.y = floor(r0.y);
  r10.x = -r10.y * 6 + r0.x;
  r0.xy = float2(0.200000003,0.200000003) * r10.xy;
  r10.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,19,6,7));
  r1.z = t0[r10.y].val[0/4];
  r1.w = t0[r10.y].val[0/4+1];
  r0.xy = r1.zw * r0.xy;
  r0.xy = r0.xy * cb2[9].zz + float2(1,1);
  r11.xyz = cb2[8].xxx * r7.xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = frac(r0.w);
  r0.w = cb0[142].z * cb2[9].w + r0.w;
  r0.w = -cb2[10].x * r1.x + r0.w;
  r1.zw = r0.ww * float2(-1,0) + r0.xy;
  r12.xyz = t4.SampleLevel(s0_s, r1.zw, -1).xyz;
  r12.xyz = float3(-0.5,-0.5,-0.5) + r12.xyz;
  r1.zw = r12.xy + r12.xy;
  r0.w = r12.z * 2 + 1;
  r0.w = cb2[10].y * r0.w;
  r12.xyz = cb2[6].xyz * r1.www;
  r12.xyz = r8.xyz * r1.zzz + r12.xyz;
  r12.xyz = cb2[10].www * r12.xyz;
  r8.xyz = r8.xyz * r0.www + r12.xyz;
  r12.xyz = v0.yyy * r6.xyz;
  r12.xyz = r5.xyz * v0.xxx + r12.xyz;
  r12.xyz = r3.xyz * v0.zzz + r12.xyz;
  r13.xyz = cb0[70].xyz + r7.xyz;
  r12.xyz = r13.xyz + r12.xyz;
  r1.zw = -cb0[70].xy + r12.xy;
  r1.zw = r1.zw + -r7.xy;
  r1.zw = cb2[7].ww * r1.zw + r11.xy;
  r0.w = cb2[8].z * r1.y;
  r2.w = cb0[142].z * cb2[8].y + -r0.w;
  r0.w = cb0[139].z * cb2[8].y + -r0.w;
  r1.zw = r2.ww * float2(1,0) + r1.zw;
  r1.zw = t4.SampleLevel(s0_s, r1.zw, -1).xy;
  r1.zw = float2(-0.25,-0.5) + r1.zw;
  r13.x = cb2[8].w;
  r13.y = cb2[9].x;
  r1.zw = r13.xy * r1.zw;
  r1.z = r1.z + r1.z;
  r14.xyz = float3(0,0,2) * r1.www;
  r14.xyz = r9.xyz * r1.zzz + r14.xyz;
  r15.xyz = -cb0[70].xyz + r12.xyz;
  r14.xyz = r14.xyz * r1.yyy + r15.xyz;
  r1.z = cb2[9].y * r1.x;
  r4.xyz = -r4.xyz * r1.zzz + float3(1,1,1);
  r14.xyz = r14.xyz + -r4.xyz;
  r8.xyz = r8.xyz * r1.xxx + r14.xyz;
  r1.w = dot(r14.xyz, r14.xyz);
  r1.w = sqrt(r1.w);
  r2.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = cmp(r2.w >= 9.99999997e-007);
  r2.w = -9.99999997e-007 + r2.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r8.xyz = r3.www ? r8.xyz : 0;
  r8.xyz = r2.www ? r8.xyz : 0;
  r4.xyz = r1.www * r8.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r7.xyz;
  r15.w = 1;
  r8.x = t0[r10.z].val[8/4];
  r8.y = t0[r10.w].val[8/4];
  r10.x = t0[r10.x].val[0/4];
  r10.y = t0[r10.x].val[0/4+1];
  r10.z = t0[r10.x].val[0/4+2];
  r10.w = t0[r10.x].val[0/4+3];
  r14.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r8.z = t0[r14.x].val[8/4];
  r8.w = t0[r14.y].val[8/4];
  r1.w = dot(r15.xyzw, r8.xyzw);
  r2.w = t0[r14.z].val[8/4];
  r3.w = t0[r14.w].val[8/4];
  r3.w = r3.w + -r2.w;
  r1.w = -r2.w + r1.w;
  r1.w = r1.w / r3.w;
  r1.w = -cb2[11].y + r1.w;
  r1.w = saturate(r1.w / cb2[11].z);
  r1.w = r1.w * r1.w;
  r4.w = cb2[11].w * r1.w;
  r4.w = cb0[142].z * cb2[11].x + -r4.w;
  r8.xy = r4.ww * float2(-1,0) + r11.xy;
  r8.xyz = t4.SampleLevel(s0_s, r8.xy, -1).xyz;
  r8.xyz = float3(-0.5,-0.5,-0.5) + r8.xyz;
  r4.w = r8.z * 2 + 1;
  r8.xy = r8.xy + r8.xy;
  r4.w = cb2[12].x * r4.w;
  r11.xyz = float3(0,1,0) * r9.zxy;
  r11.xyz = r9.yzx * float3(1,0,0) + -r11.xyz;
  r11.xyz = cb2[12].yyy * r11.xyz;
  r8.yzw = r11.xyz * r8.yyy;
  r8.xyz = r9.xyz * r8.xxx + r8.yzw;
  r8.xyz = cb2[12].zzz * r8.xyz;
  r8.xyz = r9.xyz * r4.www + r8.xyz;
  r8.xyz = r8.xyz * r1.www + r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r4.x = dot(r8.xyz, r8.xyz);
  r4.y = sqrt(r4.x);
  r4.yzw = r8.xyz / r4.yyy;
  r5.w = cmp(r4.x >= 9.99999997e-007);
  r4.x = -9.99999997e-007 + r4.x;
  r4.x = cmp(9.99999975e-006 < abs(r4.x));
  r4.yzw = r5.www ? r4.yzw : 0;
  r4.xyz = r4.xxx ? r4.yzw : 0;
  r4.xyz = r1.www * r4.xyz + r7.xyz;
  r4.xyz = r4.xyz + -r15.xyz;
  r1.w = dot(-r3.xyz, -r3.xyz);
  r3.xyz = r10.zzz * r3.xyz;
  r7.z = sqrt(r1.w);
  r1.w = dot(-r6.xyz, -r6.xyz);
  r6.xyz = r10.yyy * r6.xyz;
  r7.y = sqrt(r1.w);
  r1.w = dot(-r5.xyz, -r5.xyz);
  r5.xyz = r10.xxx * r5.xyz;
  r7.x = sqrt(r1.w);
  r4.xyz = r4.xyz * r7.xyz + r12.xyz;
  r7.xyzw = cb0[1].xyzw * r4.yyyy;
  r7.xyzw = r4.xxxx * cb0[0].xyzw + r7.xyzw;
  r4.xyzw = r4.zzzz * cb0[2].xyzw + r7.xyzw;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  r1.w = 0.00100000005 * r4.w;
  r5.w = cmp(1 < asint(cb0[135].x));
  r1.w = r5.w ? r1.w : 0;
  o0.z = r4.z + r1.w;
  o0.xyw = r4.xyw;
  o1.xyzw = r4.xyzw;
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r7.x = t0[r4.x].val[0/4+2];
  r7.y = t0[r4.x].val[0/4];
  r7.z = t0[r4.x].val[0/4+1];
  r8.x = r7.y;
  r10.x = t0[r4.y].val[0/4];
  r10.y = t0[r4.y].val[0/4+1];
  r10.z = t0[r4.y].val[0/4+2];
  r8.y = r10.x;
  r4.x = t0[r4.z].val[0/4];
  r4.y = t0[r4.z].val[0/4+1];
  r4.z = t0[r4.z].val[0/4+2];
  r12.x = t0[r4.w].val[0/4];
  r12.y = t0[r4.w].val[0/4+1];
  r12.z = t0[r4.w].val[0/4+2];
  r8.z = r4.x;
  r14.x = dot(r2.xyz, r8.xyz);
  r15.x = r7.z;
  r15.y = r10.y;
  r15.z = r4.y;
  r14.y = dot(r2.xyz, r15.xyz);
  r1.w = dot(-r7.xyz, -r7.xyz);
  r16.x = sqrt(r1.w);
  r7.y = r10.z;
  r1.w = dot(-r10.xyz, -r10.xyz);
  r16.y = sqrt(r1.w);
  r7.z = r4.z;
  r1.w = dot(-r4.xyz, -r4.xyz);
  r16.z = sqrt(r1.w);
  r14.z = dot(r2.xyz, r7.xyz);
  r1.w = dot(r14.xyz, r14.xyz);
  r1.w = sqrt(r1.w);
  r2.xyz = r14.xyz / r1.www;
  r4.xyz = -r14.xyz * r1.zzz + float3(1,1,1);
  r1.z = dot(r9.xyz, r2.xyz);
  r1.z = r1.z * r1.z;
  r2.xyz = r1.zzz * float3(0,0,1) + r9.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = sqrt(r1.z);
  r2.xyz = r2.xyz / r1.zzz;
  r10.xyz = cb2[8].xxx * r12.xyz;
  r1.z = dot(r10.xyz, r10.xyz);
  r1.z = frac(r1.z);
  r1.z = cb0[139].z * cb2[9].w + r1.z;
  r1.z = -cb2[10].x * r1.x + r1.z;
  r0.xy = r1.zz * float2(-1,0) + r0.xy;
  r14.xyz = t4.SampleLevel(s0_s, r0.xy, -1).xyz;
  r14.xyz = float3(-0.5,-0.5,-0.5) + r14.xyz;
  r0.xy = r14.xy + r14.xy;
  r1.z = r14.z * 2 + 1;
  r1.z = cb2[10].y * r1.z;
  r14.xyz = cb2[6].xyz * r0.yyy;
  r14.xyz = r2.xyz * r0.xxx + r14.xyz;
  r14.xyz = cb2[10].www * r14.xyz;
  r2.xyz = r2.xyz * r1.zzz + r14.xyz;
  r14.xyz = cb0[113].xyz + r12.xyz;
  r7.w = r14.z;
  r7.z = dot(v0.xyzw, r7.xyzw);
  r8.w = r14.x;
  r15.w = r14.y;
  r7.y = dot(v0.xyzw, r15.xyzw);
  r7.x = dot(v0.xyzw, r8.xyzw);
  r8.xyz = -cb0[113].xyz + r7.xyz;
  r0.xy = -cb0[113].xy + r7.xy;
  r0.xy = r0.xy + -r12.xy;
  r0.xy = cb2[7].ww * r0.xy + r10.xy;
  r0.xy = r0.ww * float2(1,0) + r0.xy;
  r0.xy = t4.SampleLevel(s0_s, r0.xy, -1).xy;
  r0.xy = float2(-0.25,-0.5) + r0.xy;
  r0.xy = r0.xy * r13.xy;
  r0.x = r0.x + r0.x;
  r13.xyz = float3(0,0,2) * r0.yyy;
  r0.xyw = r9.xyz * r0.xxx + r13.xyz;
  r0.xyw = r0.xyw * r1.yyy + r8.xyz;
  r0.xyw = r0.xyw + -r4.xyz;
  r1.xyz = r2.xyz * r1.xxx + r0.xyw;
  r0.x = dot(r0.xyw, r0.xyw);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.xw = sqrt(r0.xy);
  r1.xyz = r1.xyz / r0.www;
  r0.w = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r1.xyz = r0.www ? r1.xyz : 0;
  r1.xyz = r0.yyy ? r1.xyz : 0;
  r0.xyw = r0.xxx * r1.xyz + r4.xyz;
  r0.xyw = r0.xyw + -r12.xyz;
  r8.w = 1;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(14,15,16,17));
  r4.x = t0[r1.x].val[8/4];
  r4.y = t0[r1.y].val[8/4];
  r4.z = t0[r1.z].val[8/4];
  r4.w = t0[r1.w].val[8/4];
  r1.x = dot(r8.xyzw, r4.xyzw);
  r1.x = r1.x + -r2.w;
  r1.x = r1.x / r3.w;
  r1.x = -cb2[11].y + r1.x;
  r1.x = saturate(r1.x / cb2[11].z);
  r1.x = r1.x * r1.x;
  r1.y = cb2[11].w * r1.x;
  r1.y = cb0[139].z * cb2[11].x + -r1.y;
  r1.yz = r1.yy * float2(-1,0) + r10.xy;
  r1.yzw = t4.SampleLevel(s0_s, r1.yz, -1).xyz;
  r1.yzw = float3(-0.5,-0.5,-0.5) + r1.yzw;
  r1.yz = r1.yz + r1.yz;
  r1.w = r1.w * 2 + 1;
  r1.w = cb2[12].x * r1.w;
  r2.xyz = r1.zzz * r11.xyz;
  r2.xyz = r9.xyz * r1.yyy + r2.xyz;
  r2.xyz = cb2[12].zzz * r2.xyz;
  r1.yzw = r9.xyz * r1.www + r2.xyz;
  r1.xyz = r1.yzw * r1.xxx + r0.xyw;
  r0.x = dot(r0.xyw, r0.xyw);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.xw = sqrt(r0.xy);
  r1.xyz = r1.xyz / r0.www;
  r0.w = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r1.xyz = r0.www ? r1.xyz : 0;
  r1.xyz = r0.yyy ? r1.xyz : 0;
  r0.xyw = r0.xxx * r1.xyz + r12.xyz;
  r0.xyw = r0.xyw + -r8.xyz;
  r0.xyw = r0.xyw * r16.xyz + r7.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.x = (uint)r0.z << 1;
  r0.xyw = t2.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.z << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.xyw;
  r0.xyw = r1.xyz * r0.ywx + -r2.xyz;
  r0.xyw = r0.xyw * r1.www;
  r2.xyz = r0.xyw * r1.yzx;
  r0.xyw = r0.wxy * r1.zxy + -r2.xyz;
  r0.xyw = r0.xyw * r1.www;
  r2.xyz = r0.yyy * r6.xyz;
  r4.xyz = r1.yyy * r6.xyz;
  r4.xyz = r1.xxx * r5.xyz + r4.xyz;
  r2.xyz = r0.xxx * r5.xyz + r2.xyz;
  o3.xyz = r0.www * r3.xyz + r2.xyz;
  o4.xyz = r1.zzz * r3.xyz + r4.xyz;
  o4.w = r1.w * r10.w;
  o3.w = 0;
  r0.x = (int)r0.z & asint(cb1[0].x);
  r0.y = (int)r0.z * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyzw = t3.Load(r0.x).xyzw;
  o5.xyzw = r0.zyxw;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}