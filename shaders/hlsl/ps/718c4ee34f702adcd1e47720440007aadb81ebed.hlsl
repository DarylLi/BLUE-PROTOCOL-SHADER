// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[6];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[11];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 v2 : TEXCOORD7,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = max(abs(r0.x), abs(r0.z));
  r4.xy = abs(r0.xz) / r0.ww;
  r1.w = max(r4.x, r4.y);
  r2.w = r4.x / r1.w;
  r2.w = r2.w * 60 + 240;
  r4.zw = r4.yx + -r1.ww;
  r4.zw = ceil(abs(r4.zw));
  r4.zw = min(float2(1,1), r4.zw);
  r2.w = r4.z * -r2.w + r2.w;
  r3.w = r4.y + -r4.x;
  r3.w = r3.w / r1.w;
  r3.w = r3.w * 60 + 120;
  r4.x = ceil(r1.w);
  r4.x = min(1, r4.x);
  r3.w = r4.x * -r3.w + r3.w;
  r4.x = max(r3.w, r2.w);
  r1.w = -r4.y / r1.w;
  r1.w = 60 * r1.w;
  r1.w = r4.w * -r1.w + r1.w;
  r4.x = max(r4.x, r1.w);
  r2.w = min(r3.w, r2.w);
  r1.w = min(r2.w, r1.w);
  r2.w = max(-1, r1.w);
  r2.w = min(0, r2.w);
  r2.w = ceil(-r2.w);
  r1.w = r2.w * 360 + r1.w;
  r1.w = max(r4.x, r1.w);
  r1.w = saturate(0.00277777785 * r1.w);
  r0.w = ceil(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w * r1.w;
  r0.w = 360 * r0.w;
  r0.w = floor(r0.w);
  r4.xyz = float3(360,240,120) + -r0.www;
  r4.xyz = r4.xzy * float3(0.00833333377,0.00833333377,0.00833333377) + float3(0.5,0.5,0.5);
  r5.xyzw = float4(-300,-240,-180,-120) + r0.wwww;
  r6.xyzw = saturate(r5.xyzw);
  r6.xyzw = float4(1,1,1,1) + -r6.xyzw;
  r1.w = 1 + -r6.x;
  r7.yz = float2(1,0.5);
  r7.w = r4.x;
  r7.xyz = r7.yzw * r1.www;
  r5.xy = r5.yw * float2(0.00833333377,0.00833333377) + float2(0.5,0.5);
  r6.xyz = r6.xyz + -r6.yzw;
  r5.zw = float2(0.5,1);
  r8.xyz = r6.xxx * r5.xzw;
  r9.yw = float2(0.5,1);
  r9.z = r4.z;
  r9.xyz = r9.yzw * r6.yyy;
  r5.xyz = r6.zzz * r5.zwy;
  r10.z = r0.w * 0.00833333377 + 0.5;
  r0.w = saturate(-60 + r0.w);
  r0.w = 1 + -r0.w;
  r10.yw = float2(1,0.5);
  r6.xyz = r10.yzw * r0.www;
  r0.w = r6.w + -r0.w;
  r4.zw = float2(1,0.5);
  r4.xyz = r4.yzw * r0.www;
  r4.xyz = max(r6.xyz, r4.xyz);
  r4.xyz = max(r5.xyz, r4.xyz);
  r4.xyz = max(r9.xyz, r4.xyz);
  r4.xyz = max(r8.xyz, r4.xyz);
  r4.xyz = max(r7.xyz, r4.xyz);
  r5.xyz = cb4[2].xyz * r4.xyz;
  r4.xyz = -r4.xyz * cb4[2].xyz + cb4[3].xyz;
  r4.xyz = cb4[4].xxx * r4.xyz + r5.xyz;
  r5.xyz = cb3[9].xyz + -r2.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w * 0.333333343 + -50;
  r5.xy = float2(1,1) + -cb3[0].yz;
  r1.w = saturate(r5.x * 51.5099983 + r1.w);
  r0.w = -r0.w * 0.00666666683 + 1;
  r0.w = max(0, r0.w);
  r0.w = r0.w * 50 + -50;
  r0.w = saturate(cb3[2].y * 51.5099983 + r0.w);
  r0.w = r1.w * r0.w;
  r5.xzw = cb3[10].xyz + -r2.xyz;
  r2.w = dot(r5.xzw, r5.xzw);
  r2.w = sqrt(r2.w);
  r2.w = r2.w * 0.333333343 + -50;
  r2.w = saturate(r5.y * 51 + r2.w);
  r0.w = r2.w * r0.w;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = r0.x * cb4[4].z + -cb4[4].z;
  r0.x = saturate(cb4[5].x + r0.x);
  r0.y = floor(r1.w);
  r0.x = r0.x * r0.y;
  r0.w = r0.w * r0.x;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r3.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r5.z = cb0[208].z * r1.w;
    r3.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v2.w * r3.w;
    r3.xyz = v2.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v2.xyz;
    r5.x = v2.w;
  }
  r0.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r5.yzw < abs(r4.xyz));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r0.xyzw = r1.wwww ? r2.yzwx : r0.xyzw;
    o0.w = r0.w;
  } else {
    o0.w = r0.w;
  }
  r0.xyz = r0.xyz * r5.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}