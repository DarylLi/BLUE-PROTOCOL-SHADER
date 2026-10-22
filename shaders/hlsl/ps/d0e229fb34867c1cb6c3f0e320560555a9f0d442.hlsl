// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[5];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[5];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[6];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[60];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[57].zw);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[59].xy * r0.xy;
  r0.zw = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.zw = cb1[132].zw * r0.zw;
  r1.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r1.x = max(1.00000005e-018, r1.x);
  r2.xyzw = cb1[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb1[44].xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * cb1[46].xyzw + r2.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r0.xy = r0.xy * cb0[25].zw + cb0[24].zw;
  r2.xyzw = t2.Sample(s1_s, r0.xy).xyzw;
  r3.x = cb1[135].z;
  r3.w = 1;
  r4.xyzw = r3.xxxw * r2.xyzw;
  r1.xyz = -cb6[1].xyz + r1.xyz;
  r5.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r6.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r6.xyz;
  sincos(-cb6[0].z, r0.x, r6.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r5.xyz * r6.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r5.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r6.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r6.xyz;
  sincos(cb6[0].y, r0.x, r6.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r5.xyz * r6.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r5.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r6.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r6.xyz;
  sincos(cb6[0].x, r0.x, r6.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r5.xyz * r6.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r1.xyz = r1.xyz / cb6[2].xyz;
  r0.x = max(abs(r1.x), abs(r1.y));
  r0.x = max(r0.x, abs(r1.z));
  r0.y = 1 + -cb6[4].z;
  r0.x = -r0.x * r0.y + 1;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = sqrt(r0.x);
  r0.y = saturate(-r1.z);
  r1.x = cb6[3].x * r0.y;
  r1.x = cb6[3].y * r0.y + -r1.x;
  r0.x = -cb6[3].x * r0.y + r0.x;
  r0.y = 1 / r1.x;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.y * r0.x;
  r0.y = cb6[3].y + -cb6[3].x;
  r1.x = -cb6[3].x + r1.z;
  r0.y = 1 / r0.y;
  r1.x = saturate(r1.x * r0.y);
  r1.y = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.y * r1.x;
  r1.y = -cb6[3].x + -r1.z;
  r0.y = saturate(r1.y * r0.y);
  r1.y = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r1.y * r0.y;
  r0.x = max(r1.x, r0.x);
  r0.x = max(r0.x, r0.y);
  r0.x = 1 + -r0.x;
  r0.y = cmp(r0.x < 9.99999975e-006);
  r1.x = cmp(0 != cb6[4].z);
  r1.x = ~(int)r1.x;
  r0.y = r0.y ? r1.x : 0;
  if (r0.y == 0) {
    r1.x = dot(float3(0.613191485,0.33951208,0.0473663323), r4.xyz);
    r1.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r4.xyz);
    r1.z = dot(float3(0.0206188709,0.109567292,0.869606733), r4.xyz);
    r0.y = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = cb5[0].xyz * cb5[0].www;
    r1.xyz = r1.xyz + -r0.yyy;
    r1.xyz = r5.xyz * r1.xyz + r0.yyy;
    r1.xyz = max(float3(0,0,0), r1.xyz);
    r1.xyz = float3(5.55555534,5.55555534,5.55555534) * r1.xyz;
    r5.xyz = cb5[1].xyz * cb5[1].www;
    r1.xyz = log2(r1.xyz);
    r1.xyz = r5.xyz * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r1.xyz;
    r5.xyz = cb5[2].xyz * cb5[2].www;
    r5.xyz = float3(1,1,1) / r5.xyz;
    r1.xyz = log2(r1.xyz);
    r1.xyz = r5.xyz * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r5.xyz = cb5[3].xyz * cb5[3].www;
    r6.xyz = cb5[4].xyz + cb5[4].www;
    r1.xyz = r1.xyz * r5.xyz + r6.xyz;
    r0.y = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = cb4[0].xyz * cb4[0].www;
    r6.xyz = r1.xyz + -r0.yyy;
    r5.xyz = r5.xyz * r6.xyz + r0.yyy;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = float3(5.55555534,5.55555534,5.55555534) * r5.xyz;
    r7.xyz = cb4[1].xyz * cb4[1].www;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r7.xyz * r5.xyz;
    r5.xyz = exp2(r5.xyz);
    r5.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
    r7.xyz = cb4[2].xyz * cb4[2].www;
    r7.xyz = float3(1,1,1) / r7.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r7.xyz * r5.xyz;
    r5.xyz = exp2(r5.xyz);
    r7.xyz = cb4[3].xyz * cb4[3].www;
    r8.xyz = cb4[4].xyz + cb4[4].www;
    r5.xyz = r5.xyz * r7.xyz + r8.xyz;
    r1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.y = 1 / cb4[5].x;
    r1.y = saturate(r1.x * r1.y);
    r1.z = r1.y * -2 + 3;
    r1.y = r1.y * r1.y;
    r1.y = -r1.z * r1.y + 1;
    r7.xyz = cb3[0].xyz * cb3[0].www;
    r7.xyz = r7.xyz * r6.xyz + r0.yyy;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = float3(5.55555534,5.55555534,5.55555534) * r7.xyz;
    r8.xyz = cb3[1].xyz * cb3[1].www;
    r7.xyz = log2(r7.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = float3(0.180000007,0.180000007,0.180000007) * r7.xyz;
    r8.xyz = cb3[2].xyz * cb3[2].www;
    r8.xyz = float3(1,1,1) / r8.xyz;
    r7.xyz = log2(r7.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r7.xyz = exp2(r7.xyz);
    r8.xyz = cb3[3].xyz * cb3[3].www;
    r9.xyz = cb3[4].xyz + cb3[4].www;
    r7.xyz = r7.xyz * r8.xyz + r9.xyz;
    r1.x = saturate(-cb2[5].x + r1.x);
    r1.z = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.w = r1.z * r1.x;
    r1.x = r1.z * r1.x + r1.y;
    r1.x = 1 + -r1.x;
    r7.xyz = r7.xyz * r1.xxx;
    r1.xyz = r5.xyz * r1.yyy + r7.xyz;
    r5.xyz = cb2[0].xyz * cb2[0].www;
    r5.xyz = r5.xyz * r6.xyz + r0.yyy;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = float3(5.55555534,5.55555534,5.55555534) * r5.xyz;
    r6.xyz = cb2[1].xyz * cb2[1].www;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r5.xyz = exp2(r5.xyz);
    r5.xyz = float3(0.180000007,0.180000007,0.180000007) * r5.xyz;
    r6.xyz = cb2[2].xyz * cb2[2].www;
    r6.xyz = float3(1,1,1) / r6.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r5.xyz = exp2(r5.xyz);
    r6.xyz = cb2[3].xyz * cb2[3].www;
    r7.xyz = cb2[4].xyz + cb2[4].www;
    r5.xyz = r5.xyz * r6.xyz + r7.xyz;
    r1.xyz = r5.xyz * r1.www + r1.xyz;
    r0.y = dot(float3(1.70505154,-0.621790707,-0.0832583979), r1.xyz);
    r5.y = dot(float3(-0.130257145,1.14080286,-0.0105485283), r1.xyz);
    r1.x = dot(float3(-0.0240032747,-0.128968775,1.15297174), r1.xyz);
    r1.y = saturate(7.69230755e-005 * cb6[2].w);
    r1.z = r1.y * -2 + 3;
    r1.y = r1.y * r1.y;
    r1.y = dot(r1.zz, r1.yy);
    r1.yzw = float3(-1,-1,-1.00010002) + r1.yyy;
    r1.yzw = float3(-10000,3,-3) * r1.wyz;
    r1.zw = max(float2(0,0), r1.zw);
    r1.z = min(5, r1.z);
    r3.y = r1.x * r1.z;
    r5.x = r3.y * 0.366659999 + r0.y;
    r1.z = 1 + -r1.z;
    r5.z = r1.z * r1.x;
    r1.z = 1 + -r1.w;
    r6.x = r1.z * r0.y;
    r0.y = r1.w * r0.y;
    r6.z = r0.y * 2.72000003 + r1.x;
    r1.y = saturate(r1.y);
    r0.y = r1.y * -2 + 3;
    r1.x = r1.y * r1.y;
    r0.y = r1.x * r0.y;
    r6.y = r5.y;
    r1.xyz = r6.xyz + -r5.xyz;
    r1.xyz = r0.yyy * r1.xyz + r5.xyz;
    r0.y = cmp(0 >= r0.x);
    r0.x = log2(r0.x);
    r0.x = cb6[3].z * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.y ? 0 : r0.x;
    r0.y = r0.x * -2 + 1;
    r0.x = cb6[4].z * r0.y + r0.x;
    r5.w = cb6[3].w * r0.x;
    r1.xyz = -r3.xxx * r2.xyz + r1.xyz;
    r5.xyz = r5.www * r1.xyz + r4.xyz;
    r0.x = cmp(0 < cb6[4].y);
    if (r0.x != 0) {
      r0.xy = cb1[132].xy * r0.zw;
      r0.xy = trunc(r0.xy);
      r0.xy = (int2)r0.xy;
      r0.zw = float2(0,0);
      r0.x = t1.Load(r0.xyz).y;
      r0.x = (uint)r0.x;
      r0.x = min(1, r0.x);
      r0.yzw = r3.xxx * r2.xyz + -r5.xyz;
      r5.xyz = r0.xxx * r0.yzw + r5.xyz;
    }
  } else {
    r5.xyzw = float4(0,0,0,0);
  }
  r0.xyzw = -r3.xxxw * r2.xyzw + r5.xyzw;
  r0.xyzw = r5.wwww * r0.xyzw + r4.xyzw;
  o0.w = saturate(r0.w);
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  return;
}