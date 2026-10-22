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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r0.y = cb6[3].y + -cb6[3].x;
  r0.x = -cb6[3].x + r0.x;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r1.x = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r1.x * r0.x;
  r1.x = -cb6[3].x + r1.z;
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
    r5.x = dot(float3(1.70505154,-0.621790707,-0.0832583979), r1.xyz);
    r5.y = dot(float3(-0.130257145,1.14080286,-0.0105485283), r1.xyz);
    r5.z = dot(float3(-0.0240032747,-0.128968775,1.15297174), r1.xyz);
    r0.y = 1.00055635 * cb6[2].w;
    r0.y = 1 / r0.y;
    r1.x = cmp(6996.10791 >= cb6[2].w);
    r1.yz = -r0.yy * float2(4.60700006e+009,2.0064e+009) + float2(2967800,1901800);
    r1.yz = r1.yz * r0.yy + float2(99.1100006,247.479996);
    r1.yz = r1.yz * r0.yy + float2(0.244063005,0.237039998);
    r1.x = r1.x ? r1.y : r1.z;
    r0.y = r1.x * r1.x;
    r1.z = 2.86999989 * r1.x;
    r0.y = r0.y * -3 + r1.z;
    r1.y = -0.275000006 + r0.y;
    r6.xyz = cb6[2].www * float3(0.000154118257,0.00084242021,4.22806261e-005) + float3(0.860117733,1,0.317398727);
    r0.y = cb6[2].w * cb6[2].w;
    r6.xyz = r0.yyy * float3(1.28641219e-007,7.08145137e-007,4.20481676e-008) + r6.xyz;
    r1.z = r6.x / r6.y;
    r1.w = -cb6[2].w * 2.8974182e-005 + 1;
    r0.y = r0.y * 1.61456057e-007 + r1.w;
    r0.y = r6.z / r0.y;
    r1.w = 3 * r1.z;
    r1.z = r1.z + r1.z;
    r1.z = -r0.y * 8 + r1.z;
    r1.z = 4 + r1.z;
    r6.x = r1.w / r1.z;
    r0.y = r0.y + r0.y;
    r6.y = r0.y / r1.z;
    r0.y = cmp(cb6[2].w < 4000);
    r1.xy = r0.yy ? r6.xy : r1.xy;
    r0.y = max(1.00000001e-010, r1.y);
    r6.x = r1.x / r0.y;
    r1.x = 1 + -r1.x;
    r1.x = r1.x + -r1.y;
    r6.z = r1.x / r0.y;
    r6.y = 1;
    r0.y = dot(float3(0.895099998,0.266400009,-0.161400005), r6.xyz);
    r1.x = dot(float3(-0.750199974,1.71350002,0.0366999991), r6.xyz);
    r1.y = dot(float3(0.0388999991,-0.0684999973,1.02960002), r6.xyz);
    r6.xyz = float3(0.950838864,0.282989025,-0.17145057) * r0.yyy;
    r1.xzw = float3(-0.721043587,1.64690506,0.03527366) * r1.xxx;
    r7.xyz = float3(0.0356957205,-0.0628575012,0.944789529) * r1.yyy;
    r8.x = r6.x;
    r8.y = r1.x;
    r8.z = r7.x;
    r9.x = dot(float3(0.986992896,-0.1470543,0.159962699), r8.xyz);
    r10.x = r6.y;
    r10.y = r1.z;
    r10.z = r7.y;
    r9.y = dot(float3(0.986992896,-0.1470543,0.159962699), r10.xyz);
    r7.x = r6.z;
    r7.y = r1.w;
    r9.z = dot(float3(0.986992896,-0.1470543,0.159962699), r7.xyz);
    r1.x = dot(float3(0.432305306,0.518360317,0.0492912009), r8.xyz);
    r1.y = dot(float3(0.432305306,0.518360317,0.0492912009), r10.xyz);
    r1.z = dot(float3(0.432305306,0.518360317,0.0492912009), r7.xyz);
    r6.x = dot(float3(-0.0085287001,0.040042799,0.968486726), r8.xyz);
    r6.y = dot(float3(-0.0085287001,0.040042799,0.968486726), r10.xyz);
    r6.z = dot(float3(-0.0085287001,0.040042799,0.968486726), r7.xyz);
    r7.x = dot(r9.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r8.x = dot(r9.xyz, float3(0.357576102,0.715152204,0.119191997));
    r9.x = dot(r9.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r7.y = dot(r1.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r8.y = dot(r1.xyz, float3(0.357576102,0.715152204,0.119191997));
    r9.y = dot(r1.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r7.z = dot(r6.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r8.z = dot(r6.xyz, float3(0.357576102,0.715152204,0.119191997));
    r9.z = dot(r6.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r1.x = dot(float3(3.2409699,-1.5373832,-0.498610765), r7.xyz);
    r1.y = dot(float3(3.2409699,-1.5373832,-0.498610765), r8.xyz);
    r1.z = dot(float3(3.2409699,-1.5373832,-0.498610765), r9.xyz);
    r6.x = dot(float3(-0.969243646,1.8759675,0.0415550582), r7.xyz);
    r6.y = dot(float3(-0.969243646,1.8759675,0.0415550582), r8.xyz);
    r6.z = dot(float3(-0.969243646,1.8759675,0.0415550582), r9.xyz);
    r7.x = dot(float3(0.0556300804,-0.203976959,1.05697155), r7.xyz);
    r7.y = dot(float3(0.0556300804,-0.203976959,1.05697155), r8.xyz);
    r7.z = dot(float3(0.0556300804,-0.203976959,1.05697155), r9.xyz);
    r1.x = dot(r1.xyz, r5.xyz);
    r1.y = dot(r6.xyz, r5.xyz);
    r1.z = dot(r7.xyz, r5.xyz);
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