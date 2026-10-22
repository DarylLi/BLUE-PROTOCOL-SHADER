// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[74];
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
  out float4 o6 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[130].x / cb0[130].y;
  r0.x = 1.77777779 / r0.x;
  r0.x = max(1, r0.x);
  r0.y = 0.763943851 * cb0[128].x;
  r0.x = r0.y * r0.x;
  r0.y = (int)v1.x * 36;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xyz;
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r3.xyz = r0.yzw * v0.xxx + r3.xyz;
  r3.xyz = r4.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r5.xyz = cb0[67].xyz + -r3.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r2.w = r1.w * r0.x + -cb2[70].w;
  r0.x = r1.w * r0.x + -cb2[71].x;
  r5.xyz = r5.xyz / r1.www;
  r0.x = saturate(r0.x / cb2[72].z);
  r1.w = saturate(r2.w / cb2[71].y);
  r2.w = cb2[71].z + -cb2[71].w;
  r1.w = r1.w * r2.w + cb2[71].w;
  r0.x = cb2[72].w * r0.x + r1.w;
  r0.x = cb2[73].y * r0.x;
  r1.w = mad((int)v1.x, 36, 4);
  r6.x = t0[r1.w].val[0/4];
  r6.y = t0[r1.w].val[0/4+1];
  r6.z = t0[r1.w].val[0/4+2];
  r6.w = t0[r1.w].val[0/4+3];
  r4.xyz = r6.zzz * r4.xyz;
  r0.yzw = r6.xxx * r0.yzw;
  r1.xyz = r6.yyy * r1.xyz;
  r1.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r7.xyzw = t2.Load(r2.w).xyzw;
  r6.xyz = r7.yyy * r1.xyz;
  r6.xyz = r7.xxx * r0.yzw + r6.xyz;
  r6.xyz = r7.zzz * r4.xyz + r6.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r6.xyz / r2.www;
  o2.xyz = r6.xyz;
  r6.xyz = -r8.xyz * r0.xxx;
  r0.x = (int)r1.w & asint(cb1[0].x);
  r8.xyzw = t3.Load(r0.x).xyzw;
  r0.x = 1 + -r8.y;
  r5.xyz = r5.xyz * r0.xxx;
  r5.xyz = cb2[73].www * r5.xyz;
  r0.x = cb2[73].z * r8.z;
  o3.xyzw = r8.zyxw;
  r5.xyz = r6.xyz * r0.xxx + r5.xyz;
  r6.xyz = r5.xyz + r3.xyz;
  r8.xyz = -cb2[35].xyz + r6.xyz;
  r0.x = dot(cb2[39].xyz, r8.xyz);
  r8.xyz = cb2[39].xyz * r0.xxx + cb2[35].xyz;
  r9.xyz = -r8.xyz + r6.xyz;
  r10.xyz = cb2[39].zxy * r9.yzx;
  r10.xyz = cb2[39].yzx * r9.zxy + -r10.xyz;
  r11.xyz = -cb2[35].xyz + r3.xyz;
  r3.xyz = cb2[37].xyz + -r3.xyz;
  r0.x = dot(r11.xyz, r11.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x / cb2[69].y;
  r0.x = r0.x * 2 + cb2[70].x;
  r0.x = saturate(-2 + r0.x);
  r11.xy = float2(3.14159274,6.28318548) * r0.xx;
  r11.xz = sin(r11.xy);
  r2.w = cos(r11.y);
  r10.xyz = r11.zzz * r10.xyz;
  r11.z = 50 * r11.x;
  r9.xyz = r9.xyz * r2.www + r10.xyz;
  r8.xyz = r9.xyz + r8.xyz;
  r6.xyz = r8.xyz + -r6.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r3.xyz;
  r3.xyz = r0.xxx * r5.xyz + r3.xyz;
  r11.xy = float2(0,0);
  r3.xyz = r11.xyz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyzw = cb0[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[0].xyzw + r3.xyzw;
  r3.xyzw = r2.zzzz * cb0[2].xyzw + r3.xyzw;
  o6.xyz = r2.xyz;
  r2.xyzw = cb0[3].xyzw + r3.xyzw;
  o0.xy = cb0[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  r0.x = (uint)r1.w << 1;
  r1.w = (int)r1.w * asint(cb1[0].y);
  r2.xy = t1.Load(r1.w).xy;
  o4.xy = r2.xy;
  r2.xyz = t2.Load(r0.x).xyz;
  r3.xyz = r7.yzx * r2.xyz;
  r2.xyz = r7.xyz * r2.yzx + -r3.xyz;
  r2.xyz = r2.xyz * r7.www;
  r3.xyz = r2.xyz * r7.yzx;
  r2.xyz = r2.zxy * r7.zxy + -r3.xyz;
  r2.xyz = r2.xyz * r7.www;
  o2.w = r7.w * r6.w;
  r1.xyz = r2.yyy * r1.xyz;
  r0.xyz = r2.xxx * r0.yzw + r1.xyz;
  o1.xyz = r2.zzz * r4.xyz + r0.xyz;
  o1.w = 0;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.w = 1;
  return;
}