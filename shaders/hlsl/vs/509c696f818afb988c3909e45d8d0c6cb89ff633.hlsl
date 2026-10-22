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
  float4 cb0[136];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r2.xyz = v0.yyy * r1.xyz;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyz = -cb0[70].xyz + r0.xyz;
  r5.xyz = -cb2[35].xyz + r2.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb2[69].y;
  r0.w = r0.w * 2 + cb2[70].x;
  r0.w = saturate(-2 + r0.w);
  r5.xy = float2(3.14159274,6.28318548) * r0.ww;
  r1.w = cos(r5.y);
  r5.xy = sin(r5.xy);
  r2.w = 0.763943851 * cb0[128].x;
  r3.w = cb0[130].x / cb0[130].y;
  r3.w = 1.77777779 / r3.w;
  r3.w = max(1, r3.w);
  r2.w = r3.w * r2.w;
  r3.w = cb0[128].z * r3.w;
  r6.xyz = cb0[67].xyz + -r2.xyz;
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = sqrt(r4.w);
  r5.z = r4.w * r2.w + -cb2[71].x;
  r2.w = r4.w * r2.w + -cb2[70].w;
  r6.xyz = r6.xyz / r4.www;
  r2.w = saturate(r2.w / cb2[71].y);
  r4.w = saturate(r5.z / cb2[72].z);
  r5.z = cb2[71].z + -cb2[71].w;
  r2.w = r2.w * r5.z + cb2[71].w;
  r2.w = cb2[72].w * r4.w + r2.w;
  r2.w = cb2[73].y * r2.w;
  r7.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r8.x = t0[r7.x].val[0/4];
  r8.y = t0[r7.x].val[0/4+1];
  r8.z = t0[r7.x].val[0/4+2];
  r8.w = t0[r7.x].val[0/4+3];
  r4.xyz = r8.zzz * r4.xyz;
  r3.xyz = r8.xxx * r3.xyz;
  r1.xyz = r8.yyy * r1.xyz;
  r4.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r9.xyzw = t2.Load(r5.w).xyzw;
  r8.xyz = r9.yyy * r1.xyz;
  r8.xyz = r9.xxx * r3.xyz + r8.xyz;
  r8.xyz = r9.zzz * r4.xyz + r8.xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r5.w);
  r10.xyz = r8.xyz / r5.www;
  o4.xyz = r8.xyz;
  r8.xyz = -r10.xyz * r2.www;
  r2.w = (int)r4.w & asint(cb1[0].x);
  r11.xyzw = t3.Load(r2.w).xyzw;
  r2.w = 1 + -r11.y;
  r6.xyz = r6.xyz * r2.www;
  r6.xyz = cb2[73].www * r6.xyz;
  r5.w = cb2[73].z * r11.z;
  o5.xyzw = r11.zyxw;
  r6.xyz = r8.xyz * r5.www + r6.xyz;
  r8.xyz = r6.xyz + r2.xyz;
  r2.xyz = cb2[37].xyz + -r2.xyz;
  r11.xyz = -cb2[35].xyz + r8.xyz;
  r6.w = dot(cb2[39].xyz, r11.xyz);
  r11.xyz = cb2[39].xyz * r6.www + cb2[35].xyz;
  r12.xyz = -r11.xyz + r8.xyz;
  r13.xyz = cb2[39].zxy * r12.yzx;
  r13.xyz = cb2[39].yzx * r12.zxy + -r13.xyz;
  r13.xyz = r13.xyz * r5.yyy;
  r14.z = 50 * r5.x;
  r12.xyz = r12.xyz * r1.www + r13.xyz;
  r11.xyz = r12.xyz + r11.xyz;
  r8.xyz = r11.xyz + -r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r2.xyz;
  r2.xyz = r0.www * r6.xyz + r2.xyz;
  r14.xy = float2(0,0);
  r2.xyz = r14.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r6.xyzw = cb0[1].xyzw * r0.yyyy;
  r6.xyzw = r0.xxxx * cb0[0].xyzw + r6.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r6.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.w = 0.00100000005 * r0.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r1.w = r2.x ? r1.w : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.xyz = cb0[113].xyz + r0.xyz;
  r6.w = r0.x;
  r11.x = t0[r7.y].val[0/4+1];
  r11.y = t0[r7.y].val[0/4];
  r11.z = t0[r7.y].val[0/4+2];
  r6.x = r11.y;
  r12.x = t0[r7.z].val[0/4];
  r12.y = t0[r7.z].val[0/4+2];
  r12.z = t0[r7.z].val[0/4+1];
  r2.x = t0[r7.w].val[0/4];
  r2.y = t0[r7.w].val[0/4+1];
  r2.z = t0[r7.w].val[0/4+2];
  r6.y = r12.x;
  r6.z = r2.x;
  r6.x = dot(v0.xyzw, r6.xyzw);
  r11.w = r0.y;
  r12.w = r0.z;
  r12.x = r11.z;
  r11.y = r12.z;
  r11.z = r2.y;
  r12.z = r2.z;
  r6.z = dot(v0.xyzw, r12.xyzw);
  r6.y = dot(v0.xyzw, r11.xyzw);
  r0.xyz = -cb0[113].xyz + r6.xyz;
  r2.xyz = -cb2[35].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / cb2[69].y;
  r0.w = r0.w * 2 + cb2[70].x;
  r0.w = saturate(-2 + r0.w);
  r2.xy = float2(3.14159274,6.28318548) * r0.ww;
  r1.w = cos(r2.y);
  r2.xy = sin(r2.xy);
  r7.xyz = cb0[111].xyz + -r0.xyz;
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = sqrt(r2.z);
  r7.xyz = r7.xyz / r2.zzz;
  r2.z = r3.w * r2.z;
  r7.xyz = r7.xyz * r2.www;
  r7.xyz = cb2[73].www * r7.xyz;
  r2.w = r2.z * 0.763943851 + -cb2[70].w;
  r2.z = r2.z * 0.763943851 + -cb2[71].x;
  r2.z = saturate(r2.z / cb2[72].z);
  r2.w = saturate(r2.w / cb2[71].y);
  r2.w = r2.w * r5.z + cb2[71].w;
  r2.z = cb2[72].w * r2.z + r2.w;
  r2.z = cb2[73].y * r2.z;
  r5.xyz = -r10.xyz * r2.zzz;
  r5.xyz = r5.xyz * r5.www + r7.xyz;
  r7.xyz = r5.xyz + r0.xyz;
  r0.xyz = cb2[37].xyz + -r0.xyz;
  r8.xyz = -cb2[35].xyz + r7.xyz;
  r2.z = dot(cb2[39].xyz, r8.xyz);
  r8.xyz = cb2[39].xyz * r2.zzz + cb2[35].xyz;
  r10.xyz = -r8.xyz + r7.xyz;
  r11.xyz = cb2[39].zxy * r10.yzx;
  r11.xyz = cb2[39].yzx * r10.zxy + -r11.xyz;
  r2.yzw = r11.xyz * r2.yyy;
  r11.z = 50 * r2.x;
  r2.xyz = r10.xyz * r1.www + r2.yzw;
  r2.xyz = r8.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r7.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r2.xyz = r2.xyz + -r0.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r11.xy = float2(0,0);
  r0.xyz = r11.xyz + r0.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (uint)r4.w << 1;
  r0.y = (int)r4.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyz = t2.Load(r0.x).xyz;
  r2.xyz = r9.yzx * r0.xyz;
  r0.xyz = r9.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r9.www;
  r2.xyz = r0.xyz * r9.yzx;
  r0.xyz = r0.zxy * r9.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r9.www;
  o4.w = r9.w * r8.w;
  r1.xyz = r0.yyy * r1.xyz;
  r0.xyw = r0.xxx * r3.xyz + r1.xyz;
  o3.xyz = r0.zzz * r4.xyz + r0.xyw;
  o3.w = 0;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}