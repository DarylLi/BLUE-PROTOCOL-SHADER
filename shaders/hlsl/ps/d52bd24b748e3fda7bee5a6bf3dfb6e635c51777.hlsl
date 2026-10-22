// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[168];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.y = dot(r0.xyz, r0.xyz);
  r0.y = rsqrt(r0.y);
  r0.xy = r0.xz * r0.yy;
  r0.z = max(abs(r0.x), abs(r0.y));
  r0.xy = abs(r0.xy) / r0.zz;
  r0.w = max(r0.x, r0.y);
  r1.w = r0.x / r0.w;
  r1.w = r1.w * 60 + 240;
  r3.xy = r0.yx + -r0.ww;
  r3.xy = ceil(abs(r3.xy));
  r3.xy = min(float2(1,1), r3.xy);
  r1.w = r3.x * -r1.w + r1.w;
  r0.x = r0.y + -r0.x;
  r0.x = r0.x / r0.w;
  r0.x = r0.x * 60 + 120;
  r2.w = ceil(r0.w);
  r2.w = min(1, r2.w);
  r0.x = r2.w * -r0.x + r0.x;
  r2.w = max(r1.w, r0.x);
  r0.y = -r0.y / r0.w;
  r0.y = 60 * r0.y;
  r0.y = r3.y * -r0.y + r0.y;
  r0.w = max(r2.w, r0.y);
  r0.x = min(r1.w, r0.x);
  r0.x = min(r0.x, r0.y);
  r0.y = max(-1, r0.x);
  r0.y = min(0, r0.y);
  r0.y = ceil(-r0.y);
  r0.x = r0.y * 360 + r0.x;
  r0.x = max(r0.w, r0.x);
  r0.x = saturate(0.00277777785 * r0.x);
  r0.y = ceil(r0.z);
  r0.y = min(1, r0.y);
  r0.x = r0.y * r0.x;
  r0.x = 360 * r0.x;
  r0.x = floor(r0.x);
  r0.yzw = float3(360,240,120) + -r0.xxx;
  r3.xyz = r0.ywz * float3(0.00833333377,0.00833333377,0.00833333377) + float3(0.5,0.5,0.5);
  r4.xyzw = float4(-300,-240,-180,-120) + r0.xxxx;
  r5.xyzw = saturate(r4.xyzw);
  r5.xyzw = float4(1,1,1,1) + -r5.xyzw;
  r0.y = 1 + -r5.x;
  r6.yz = float2(1,0.5);
  r6.w = r3.x;
  r0.yzw = r6.yzw * r0.yyy;
  r4.xy = r4.yw * float2(0.00833333377,0.00833333377) + float2(0.5,0.5);
  r5.xyz = r5.xyz + -r5.yzw;
  r4.zw = float2(0.5,1);
  r6.xyz = r5.xxx * r4.xzw;
  r7.yw = float2(0.5,1);
  r7.z = r3.z;
  r7.xyz = r7.yzw * r5.yyy;
  r4.xyz = r5.zzz * r4.zwy;
  r8.z = r0.x * 0.00833333377 + 0.5;
  r0.x = saturate(-60 + r0.x);
  r0.x = 1 + -r0.x;
  r8.yw = float2(1,0.5);
  r5.xyz = r8.yzw * r0.xxx;
  r0.x = r5.w + -r0.x;
  r3.zw = float2(1,0.5);
  r3.xyz = r3.yzw * r0.xxx;
  r3.xyz = max(r5.xyz, r3.xyz);
  r3.xyz = max(r4.xyz, r3.xyz);
  r3.xyz = max(r7.xyz, r3.xyz);
  r3.xyz = max(r6.xyz, r3.xyz);
  r0.xyz = max(r3.xyz, r0.yzw);
  r3.xyz = cb3[2].xyz * r0.xyz;
  r0.xyz = -r0.xyz * cb3[2].xyz + cb3[3].xyz;
  r0.xyz = cb3[4].xxx * r0.xyz + r3.xyz;
  r0.w = mad((int)v2.x, 36, 18);
  r3.x = t0[r0.w].val[0/4];
  r3.y = t0[r0.w].val[0/4+1];
  r3.z = t0[r0.w].val[0/4+2];
  r3.xyz = r3.xyz + -r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -r0.w * 0.00499999989 + 1;
  r0.w = r0.w * 5 + -5;
  r0.w = saturate(cb2[2].z * 6 + r0.w);
  r3.w = saturate(cb3[4].y * r0.w);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r5.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r5.z = cb0[208].z * r0.w;
    r4.xyzw = t1.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v3.w * r4.w;
    r4.xyz = v3.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v3.xyz;
    r5.x = v3.w;
  }
  r3.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r0.x = t0[r0.x].val[0/4];
    r0.z = t0[r0.x].val[0/4+1];
    r0.w = t0[r0.x].val[0/4+2];
    r0.xzw = r2.xyz + -r0.xzw;
    r5.y = t0[r0.y].val[0/4];
    r5.z = t0[r0.y].val[0/4+1];
    r5.w = t0[r0.y].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r0.xyz = cmp(r5.yzw < abs(r0.xzw));
    r0.x = (int)r0.y | (int)r0.x;
    r0.x = (int)r0.z | (int)r0.x;
    r0.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.y = 0.00200000009 * r0.y;
    r0.y = frac(r0.y);
    r0.y = cmp(0.5 < r0.y);
    r2.yzw = r0.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r3.xyzw = r0.xxxx ? r2.yzwx : r3.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r0.xyz = r3.xyz * r5.xxx + r4.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}