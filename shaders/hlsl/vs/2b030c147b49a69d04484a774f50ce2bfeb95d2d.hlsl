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
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0,
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r2.xyz = r4.xyz / r0.yyy;
  r0.y = -9.99999997e-007 + cb2[7].y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.w = cmp(cb2[7].y >= 9.99999997e-007);
  r8.xyz = r0.www ? cb2[5].zxy : float3(0,1,0);
  r8.xyz = r0.yyy ? r8.xyz : float3(0,1,0);
  r0.y = dot(r8.yzx, r2.xyz);
  r0.y = r0.y * r0.y;
  r2.xyz = r0.yyy * float3(0,0,1) + r8.yzx;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r2.xyz = r2.xyz / r0.yyy;
  r0.y = 0.166666672 * r0.x;
  r9.y = floor(r0.y);
  r9.x = -r9.y * 6 + r0.x;
  r0.xy = float2(0.200000003,0.200000003) * r9.xy;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,19,6,7));
  r1.z = t0[r9.y].val[0/4];
  r1.w = t0[r9.y].val[0/4+1];
  r0.xy = r1.zw * r0.xy;
  r0.xy = r0.xy * cb2[9].zz + float2(1,1);
  r10.xyz = cb2[8].xxx * r7.xyz;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = frac(r0.w);
  r0.w = cb0[142].z * cb2[9].w + r0.w;
  r0.w = -cb2[10].x * r1.x + r0.w;
  r0.xy = r0.ww * float2(-1,0) + r0.xy;
  r0.xyw = t4.SampleLevel(s0_s, r0.xy, -1).xyz;
  r0.xyw = float3(-0.5,-0.5,-0.5) + r0.xyw;
  r0.xy = r0.xy + r0.xy;
  r0.w = r0.w * 2 + 1;
  r0.w = cb2[10].y * r0.w;
  r11.xyz = cb2[6].xyz * r0.yyy;
  r11.xyz = r2.xyz * r0.xxx + r11.xyz;
  r11.xyz = cb2[10].www * r11.xyz;
  r0.xyw = r2.xyz * r0.www + r11.xyz;
  r2.xyz = v0.yyy * r6.xyz;
  r2.xyz = r5.xyz * v0.xxx + r2.xyz;
  r2.xyz = r3.xyz * v0.zzz + r2.xyz;
  r11.xyz = cb0[70].xyz + r7.xyz;
  r2.xyz = r11.xyz + r2.xyz;
  r1.zw = -cb0[70].xy + r2.xy;
  r1.zw = r1.zw + -r7.xy;
  r1.zw = cb2[7].ww * r1.zw + r10.xy;
  r2.w = cb2[8].z * r1.y;
  r2.w = cb0[142].z * cb2[8].y + -r2.w;
  r1.zw = r2.ww * float2(1,0) + r1.zw;
  r1.zw = t4.SampleLevel(s0_s, r1.zw, -1).xy;
  r1.zw = float2(-0.25,-0.5) + r1.zw;
  r1.w = cb2[9].x * r1.w;
  r1.z = dot(r1.zz, cb2[8].ww);
  r11.xyz = float3(0,0,2) * r1.www;
  r11.xyz = r8.yzx * r1.zzz + r11.xyz;
  r12.xyz = -cb0[70].xyz + r2.xyz;
  r1.yzw = r11.xyz * r1.yyy + r12.xyz;
  r2.w = cb2[9].y * r1.x;
  r4.xyz = -r4.xyz * r2.www + float3(1,1,1);
  r1.yzw = -r4.xyz + r1.yzw;
  r0.xyw = r0.xyw * r1.xxx + r1.yzw;
  r1.x = dot(r1.yzw, r1.yzw);
  r1.y = dot(r0.xyw, r0.xyw);
  r1.xz = sqrt(r1.xy);
  r0.xyw = r0.xyw / r1.zzz;
  r1.z = cmp(r1.y >= 9.99999997e-007);
  r1.y = -9.99999997e-007 + r1.y;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r0.xyw = r1.zzz ? r0.xyw : 0;
  r0.xyw = r1.yyy ? r0.xyw : 0;
  r0.xyw = r1.xxx * r0.xyw + r4.xyz;
  r0.xyw = r0.xyw + -r7.xyz;
  r1.xyz = float3(0,1,0) * r8.xyz;
  r1.xyz = r8.zxy * float3(1,0,0) + -r1.xyz;
  r1.xyz = cb2[12].yyy * r1.xyz;
  r12.w = 1;
  r4.x = t0[r9.z].val[8/4];
  r4.y = t0[r9.w].val[8/4];
  r9.x = t0[r9.x].val[0/4];
  r9.y = t0[r9.x].val[0/4+1];
  r9.z = t0[r9.x].val[0/4+2];
  r9.w = t0[r9.x].val[0/4+3];
  r11.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r4.z = t0[r11.x].val[8/4];
  r4.w = t0[r11.y].val[8/4];
  r1.w = dot(r12.xyzw, r4.xyzw);
  r2.w = t0[r11.z].val[8/4];
  r3.w = t0[r11.w].val[8/4];
  r3.w = r3.w + -r2.w;
  r1.w = -r2.w + r1.w;
  r1.w = r1.w / r3.w;
  r1.w = -cb2[11].y + r1.w;
  r1.w = saturate(r1.w / cb2[11].z);
  r1.w = r1.w * r1.w;
  r2.w = cb2[11].w * r1.w;
  r2.w = cb0[142].z * cb2[11].x + -r2.w;
  r4.xy = r2.ww * float2(-1,0) + r10.xy;
  r4.xyz = t4.SampleLevel(s0_s, r4.xy, -1).xyz;
  r4.xyz = float3(-0.5,-0.5,-0.5) + r4.xyz;
  r4.xy = r4.xy + r4.xy;
  r2.w = r4.z * 2 + 1;
  r2.w = cb2[12].x * r2.w;
  r1.xyz = r4.yyy * r1.xyz;
  r1.xyz = r8.yzx * r4.xxx + r1.xyz;
  r1.xyz = cb2[12].zzz * r1.xyz;
  r1.xyz = r8.yzx * r2.www + r1.xyz;
  r1.xyz = r1.xyz * r1.www + r0.xyw;
  r0.x = dot(r0.xyw, r0.xyw);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.xw = sqrt(r0.xy);
  r1.xyz = r1.xyz / r0.www;
  r0.w = cmp(r0.y >= 9.99999997e-007);
  r0.y = -9.99999997e-007 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r1.xyz = r0.www ? r1.xyz : 0;
  r1.xyz = r0.yyy ? r1.xyz : 0;
  r0.xyw = r0.xxx * r1.xyz + r7.xyz;
  r0.xyw = r0.xyw + -r12.xyz;
  r1.x = dot(-r3.xyz, -r3.xyz);
  r1.yzw = r9.zzz * r3.xyz;
  r3.z = sqrt(r1.x);
  r1.x = dot(-r6.xyz, -r6.xyz);
  r4.xyz = r9.yyy * r6.xyz;
  r3.y = sqrt(r1.x);
  r1.x = dot(-r5.xyz, -r5.xyz);
  r5.xyz = r9.xxx * r5.xyz;
  r3.x = sqrt(r1.x);
  r0.xyw = r0.xyw * r3.xyz + r2.xyz;
  o7.xyz = r2.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * cb0[2].xyzw + r2.xyzw;
  o6.xyz = r0.xyw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  r0.x = (uint)r0.z << 1;
  r0.xyw = t2.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.z << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t2.Load(r1.x).xyzw;
  r3.xyz = r2.yzx * r0.xyw;
  r0.xyw = r2.xyz * r0.ywx + -r3.xyz;
  r0.xyw = r0.xyw * r2.www;
  r3.xyz = r0.xyw * r2.yzx;
  r0.xyw = r0.wxy * r2.zxy + -r3.xyz;
  r0.xyw = r0.xyw * r2.www;
  r3.xyz = r0.yyy * r4.xyz;
  r4.xyz = r2.yyy * r4.xyz;
  r4.xyz = r2.xxx * r5.xyz + r4.xyz;
  r3.xyz = r0.xxx * r5.xyz + r3.xyz;
  o1.xyz = r0.www * r1.yzw + r3.xyz;
  o2.xyz = r2.zzz * r1.yzw + r4.xyz;
  o2.w = r2.w * r9.w;
  o1.w = 0;
  r0.x = (int)r0.z & asint(cb1[0].x);
  r0.y = (int)r0.z * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o4.xy = r0.yz;
  r0.xyzw = t3.Load(r0.x).xyzw;
  o3.xyzw = r0.zyxw;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.w = 1;
  return;
}