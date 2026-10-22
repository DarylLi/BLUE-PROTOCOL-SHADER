// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[5];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
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
  r2.xyz = t2.Sample(s1_s, r0.xy).xyz;
  r3.xyz = cb1[135].zzz * r2.xyz;
  r1.xyz = -cb3[1].xyz + r1.xyz;
  r4.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r5.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r5.xyz;
  sincos(-cb3[0].z, r0.x, r5.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r4.xyz * r5.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r4.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r5.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r5.xyz;
  sincos(cb3[0].y, r0.x, r5.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r4.xyz * r5.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r4.xyz = -r1.zzz * float3(1,0,0) + r1.zxy;
  r5.xyz = float3(0,1,0) * r1.xyz;
  r1.xyw = r1.yzx * float3(0,0,1) + -r5.xyz;
  sincos(cb3[0].x, r0.x, r5.x);
  r1.xyw = r1.xyw * r0.xxx;
  r1.xyw = r4.xyz * r5.xxx + r1.xyw;
  r1.xyz = r1.zzz * float3(1,0,0) + r1.xyw;
  r1.xyz = r1.xyz / cb3[2].xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r0.y = cb3[3].y + -cb3[3].x;
  r0.x = -cb3[3].x + r0.x;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r0.y = cmp(r0.x < 9.99999975e-006);
  r1.x = cmp(0 != cb3[4].z);
  r1.x = ~(int)r1.x;
  r0.y = r0.y ? r1.x : 0;
  if (r0.y == 0) {
    r1.x = dot(float3(0.613191485,0.33951208,0.0473663323), r3.xyz);
    r1.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r3.xyz);
    r1.z = dot(float3(0.0206188709,0.109567292,0.869606733), r3.xyz);
    r0.y = dot(r1.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r4.xyz = cb2[0].xyz * cb2[0].www;
    r1.xyz = r1.xyz + -r0.yyy;
    r1.xyz = r4.xyz * r1.xyz + r0.yyy;
    r1.xyz = max(float3(0,0,0), r1.xyz);
    r1.xyz = float3(5.55555534,5.55555534,5.55555534) * r1.xyz;
    r4.xyz = cb2[1].xyz * cb2[1].www;
    r1.xyz = log2(r1.xyz);
    r1.xyz = r4.xyz * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r1.xyz;
    r4.xyz = cb2[2].xyz * cb2[2].www;
    r4.xyz = float3(1,1,1) / r4.xyz;
    r1.xyz = log2(r1.xyz);
    r1.xyz = r4.xyz * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r4.xyz = cb2[3].xyz * cb2[3].www;
    r5.xyz = cb2[4].xyz + cb2[4].www;
    r1.xyz = r1.xyz * r4.xyz + r5.xyz;
    r4.x = dot(float3(1.70505154,-0.621790707,-0.0832583979), r1.xyz);
    r4.y = dot(float3(-0.130257145,1.14080286,-0.0105485283), r1.xyz);
    r4.z = dot(float3(-0.0240032747,-0.128968775,1.15297174), r1.xyz);
    r0.y = 1.00055635 * cb3[2].w;
    r0.y = 1 / r0.y;
    r1.x = cmp(6996.10791 >= cb3[2].w);
    r1.yz = -r0.yy * float2(4.60700006e+009,2.0064e+009) + float2(2967800,1901800);
    r1.yz = r1.yz * r0.yy + float2(99.1100006,247.479996);
    r1.yz = r1.yz * r0.yy + float2(0.244063005,0.237039998);
    r1.x = r1.x ? r1.y : r1.z;
    r0.y = r1.x * r1.x;
    r1.z = 2.86999989 * r1.x;
    r0.y = r0.y * -3 + r1.z;
    r1.y = -0.275000006 + r0.y;
    r5.xyz = cb3[2].www * float3(0.000154118257,0.00084242021,4.22806261e-005) + float3(0.860117733,1,0.317398727);
    r0.y = cb3[2].w * cb3[2].w;
    r5.xyz = r0.yyy * float3(1.28641219e-007,7.08145137e-007,4.20481676e-008) + r5.xyz;
    r1.z = r5.x / r5.y;
    r1.w = -cb3[2].w * 2.8974182e-005 + 1;
    r0.y = r0.y * 1.61456057e-007 + r1.w;
    r0.y = r5.z / r0.y;
    r1.w = 3 * r1.z;
    r1.z = r1.z + r1.z;
    r1.z = -r0.y * 8 + r1.z;
    r1.z = 4 + r1.z;
    r5.x = r1.w / r1.z;
    r0.y = r0.y + r0.y;
    r5.y = r0.y / r1.z;
    r0.y = cmp(cb3[2].w < 4000);
    r1.xy = r0.yy ? r5.xy : r1.xy;
    r0.y = max(1.00000001e-010, r1.y);
    r5.x = r1.x / r0.y;
    r1.x = 1 + -r1.x;
    r1.x = r1.x + -r1.y;
    r5.z = r1.x / r0.y;
    r5.y = 1;
    r0.y = dot(float3(0.895099998,0.266400009,-0.161400005), r5.xyz);
    r1.x = dot(float3(-0.750199974,1.71350002,0.0366999991), r5.xyz);
    r1.y = dot(float3(0.0388999991,-0.0684999973,1.02960002), r5.xyz);
    r0.y = 0.941379249 / r0.y;
    r1.xy = float2(1.04043639,1.0897665) / r1.xy;
    r5.xyz = float3(0.895099998,0.266400009,-0.161400005) * r0.yyy;
    r1.xzw = float3(-0.750199974,1.71350002,0.0366999991) * r1.xxx;
    r6.xyz = float3(0.0388999991,-0.0684999973,1.02960002) * r1.yyy;
    r7.x = r5.x;
    r7.y = r1.x;
    r7.z = r6.x;
    r8.x = dot(float3(0.986992896,-0.1470543,0.159962699), r7.xyz);
    r9.x = r5.y;
    r9.y = r1.z;
    r9.z = r6.y;
    r8.y = dot(float3(0.986992896,-0.1470543,0.159962699), r9.xyz);
    r6.x = r5.z;
    r6.y = r1.w;
    r8.z = dot(float3(0.986992896,-0.1470543,0.159962699), r6.xyz);
    r1.x = dot(float3(0.432305306,0.518360317,0.0492912009), r7.xyz);
    r1.y = dot(float3(0.432305306,0.518360317,0.0492912009), r9.xyz);
    r1.z = dot(float3(0.432305306,0.518360317,0.0492912009), r6.xyz);
    r5.x = dot(float3(-0.0085287001,0.040042799,0.968486726), r7.xyz);
    r5.y = dot(float3(-0.0085287001,0.040042799,0.968486726), r9.xyz);
    r5.z = dot(float3(-0.0085287001,0.040042799,0.968486726), r6.xyz);
    r6.x = dot(r8.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r7.x = dot(r8.xyz, float3(0.357576102,0.715152204,0.119191997));
    r8.x = dot(r8.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r6.y = dot(r1.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r7.y = dot(r1.xyz, float3(0.357576102,0.715152204,0.119191997));
    r8.y = dot(r1.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r6.z = dot(r5.xyz, float3(0.412456393,0.212672904,0.0193339009));
    r7.z = dot(r5.xyz, float3(0.357576102,0.715152204,0.119191997));
    r8.z = dot(r5.xyz, float3(0.180437505,0.0721750036,0.950304091));
    r1.x = dot(float3(3.2409699,-1.5373832,-0.498610765), r6.xyz);
    r1.y = dot(float3(3.2409699,-1.5373832,-0.498610765), r7.xyz);
    r1.z = dot(float3(3.2409699,-1.5373832,-0.498610765), r8.xyz);
    r5.x = dot(float3(-0.969243646,1.8759675,0.0415550582), r6.xyz);
    r5.y = dot(float3(-0.969243646,1.8759675,0.0415550582), r7.xyz);
    r5.z = dot(float3(-0.969243646,1.8759675,0.0415550582), r8.xyz);
    r6.x = dot(float3(0.0556300804,-0.203976959,1.05697155), r6.xyz);
    r6.y = dot(float3(0.0556300804,-0.203976959,1.05697155), r7.xyz);
    r6.z = dot(float3(0.0556300804,-0.203976959,1.05697155), r8.xyz);
    r1.x = dot(r1.xyz, r4.xyz);
    r1.y = dot(r5.xyz, r4.xyz);
    r1.z = dot(r6.xyz, r4.xyz);
    r0.y = cmp(0 >= r0.x);
    r0.x = log2(r0.x);
    r0.x = cb3[3].z * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.y ? 0 : r0.x;
    r0.y = r0.x * -2 + 1;
    r0.x = cb3[4].z * r0.y + r0.x;
    r0.x = cb3[3].w * r0.x;
    r1.xyz = -cb1[135].zzz * r2.xyz + r1.xyz;
    r1.xyz = r0.xxx * r1.xyz + r3.xyz;
    r0.y = cmp(0 < cb3[4].y);
    if (r0.y != 0) {
      r0.yz = cb1[132].xy * r0.zw;
      r0.yz = trunc(r0.yz);
      r4.xy = (int2)r0.yz;
      r4.zw = float2(0,0);
      r0.y = t1.Load(r4.xyz).y;
      r0.y = (uint)r0.y;
      r0.y = min(1, r0.y);
      r4.xyz = cb1[135].zzz * r2.xyz + -r1.xyz;
      r1.xyz = r0.yyy * r4.xyz + r1.xyz;
    }
  } else {
    r1.xyz = float3(1,0,0);
    r0.x = 0.400000006;
  }
  r0.yzw = -cb1[135].zzz * r2.xyz + r1.xyz;
  r0.xyz = r0.xxx * r0.yzw + r3.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}