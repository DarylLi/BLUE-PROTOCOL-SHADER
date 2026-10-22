// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

TextureCube<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerComparisonState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[152];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[52];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v2.x;
  r0.x = 0.5 + r0.x;
  r0.y = cb0[41].x;
  r1.z = r0.x * cb1[r0.y+150].w + cb1[r0.y+148].z;
  r0.zw = v0.yx / cb1[r0.y+150].yx;
  r0.zw = cb1[r0.y+148].yx + r0.zw;
  r1.w = cb1[r0.y+150].w * 0.5;
  r1.xy = -cb1[r0.y+150].ww * float2(0.5,0.5) + r0.zw;
  r0.z = cb1[r0.y+148].w * r0.x;
  r2.xyz = cb2[6].yzx + -r1.xzy;
  r0.w = cb2[6].w * cb2[6].w;
  r0.w = 1 / r0.w;
  r2.w = dot(r2.xyz, r2.xyz);
  r0.w = -r2.w + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = r2.zxy * r1.www;
  r0.w = dot(abs(r3.xyz), float3(1,1,1));
  r1.xyz = r1.xyz + r0.www;
  r3.xyz = cb2[6].xyz + -r1.yxz;
  r4.xyz = cb2[6].www * r3.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = log2(r0.w);
  r0.w = cb2[7].w * r0.w;
  r0.w = exp2(r0.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r1.w);
  r4.xyz = r3.xyz * r2.www;
  r2.w = dot(r4.xyz, cb2[8].xyz);
  r2.w = -cb2[10].x + r2.w;
  r2.w = saturate(cb2[10].y * r2.w);
  r2.w = r2.w * r2.w;
  r4.x = r2.w * r0.w;
  r0.w = cmp(cb0[51].x < 1);
  if (cb0[35].x != 0) {
    if (r0.w != 0) {
      r5.xyz = -cb2[6].yxz + r1.xyz;
      r2.w = dot(r5.xyz, r5.xyz);
      r2.w = sqrt(r2.w);
      r5.xyz = r5.xyz / r2.www;
      r3.w = min(abs(r5.x), abs(r5.y));
      r4.z = max(abs(r5.x), abs(r5.y));
      r4.z = 1 / r4.z;
      r3.w = r4.z * r3.w;
      r4.z = r3.w * r3.w;
      r4.w = r4.z * 0.0208350997 + -0.0851330012;
      r4.w = r4.z * r4.w + 0.180141002;
      r4.w = r4.z * r4.w + -0.330299497;
      r4.z = r4.z * r4.w + 0.999866009;
      r4.w = r4.z * r3.w;
      r5.w = cmp(abs(r5.y) < abs(r5.x));
      r4.w = r4.w * -2 + 1.57079637;
      r4.w = r5.w ? r4.w : 0;
      r3.w = r3.w * r4.z + r4.w;
      r4.zw = cmp(r5.yz < -r5.yz);
      r4.z = r4.z ? -3.141593 : 0;
      r3.w = r4.z + r3.w;
      r4.z = min(r5.x, r5.y);
      r5.x = max(r5.x, r5.y);
      r4.z = cmp(r4.z < -r4.z);
      r5.x = cmp(r5.x >= -r5.x);
      r4.z = r4.z ? r5.x : 0;
      r3.w = r4.z ? -r3.w : r3.w;
      r4.z = 0.159154937 * r3.w;
      r5.x = cmp(0 < r3.w);
      r3.w = r3.w * 0.159154937 + 1;
      r5.x = r5.x ? r4.z : r3.w;
      r3.w = 1 + -abs(r5.z);
      r3.w = sqrt(r3.w);
      r4.z = abs(r5.z) * -0.0187292993 + 0.0742610022;
      r4.z = r4.z * abs(r5.z) + -0.212114394;
      r4.z = r4.z * abs(r5.z) + 1.57072878;
      r5.z = r4.z * r3.w;
      r5.z = r5.z * -2 + 3.14159274;
      r4.w = r4.w ? r5.z : 0;
      r3.w = r4.z * r3.w + r4.w;
      r5.y = 0.318309873 * r3.w;
      r3.w = t4.SampleLevel(s4_s, r5.xy, 0).x;
      r2.w = cb2[6].w * r2.w;
      r2.w = cmp(r2.w < r3.w);
      r2.w = r2.w ? 1.000000 : 0;
    } else {
      r5.xyzw = cb0[37].xyzw * r1.xxxx;
      r5.xyzw = r1.yyyy * cb0[36].xyzw + r5.xyzw;
      r5.xyzw = r1.zzzz * cb0[38].xyzw + r5.xyzw;
      r5.xyzw = cb0[39].xyzw + r5.xyzw;
      r6.xyzw = r5.xyxy / r5.wwww;
      r4.zw = cmp(r6.zw >= float2(0,0));
      r5.xy = cmp(float2(1,1) >= r6.zw);
      r4.zw = r4.zw ? r5.xy : 0;
      r3.w = r4.w ? r4.z : 0;
      if (r3.w != 0) {
        r6.xyzw = r6.xyzw * cb0[40].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
        r4.zw = frac(r6.zw);
        r6.xyzw = floor(r6.xyzw);
        r7.xyzw = float4(0.5,1.5,0.5,0.5) + r6.zwzw;
        r7.xyzw = cb0[40].zwzw * r7.xyzw;
        r8.x = t4.SampleLevel(s4_s, r7.xy, 0).x;
        r6.xyzw = float4(1.5,1.5,1.5,0.5) + r6.xyzw;
        r6.xyzw = cb0[40].zwzw * r6.xyzw;
        r8.y = t4.SampleLevel(s4_s, r6.xy, 0).x;
        r8.z = t4.SampleLevel(s4_s, r6.zw, 0).x;
        r8.w = t4.SampleLevel(s4_s, r7.zw, 0).x;
        r3.w = r5.z * 40 + -1;
        r5.xyzw = saturate(r8.xyzw * float4(40,40,40,40) + -r3.wwww);
        r6.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r8.xyzw);
        r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
        r5.xyzw = r6.xyzw + r5.xyzw;
        r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
        r5.yz = r5.zy + -r5.wx;
        r5.xy = r4.zz * r5.yz + r5.wx;
        r3.w = r5.y + -r5.x;
        r2.w = r4.w * r3.w + r5.x;
      } else {
        r2.w = 1;
      }
    }
  } else {
    r2.w = 1;
  }
  if (r0.w != 0) {
    r0.w = sqrt(r1.w);
    r0.w = cb2[6].w * r0.w;
    r0.w = cmp(r0.w < 1);
    if (r0.w != 0) {
      r0.w = 15.3599997 * cb0[27].x;
      r1.w = max(abs(r3.y), abs(r3.z));
      r1.w = max(abs(r3.x), r1.w);
      r5.xyz = cmp(r3.xyz == abs(r3.xyz));
      r4.zw = cmp(abs(r3.xy) == r1.ww);
      r5.xyz = r5.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
      r1.w = r4.w ? r5.y : r5.z;
      r1.w = r4.z ? r5.x : r1.w;
      r1.w = (uint)r1.w << 2;
      r4.zw = cb0[r1.w+4].zw * -r3.yy;
      r4.zw = -r3.xx * cb0[r1.w+3].zw + r4.zw;
      r4.zw = -r3.zz * cb0[r1.w+5].zw + r4.zw;
      r4.zw = cb0[r1.w+6].zw + r4.zw;
      r1.w = r4.z / r4.w;
      r0.w = -r0.w / r4.w;
      r0.w = r1.w + r0.w;
      r0.w = t3.SampleCmpLevelZero(s3_s, r3.xyz, r0.w).x;
    } else {
      r0.w = 1;
    }
  } else {
    r3.xyzw = cb0[29].xyzw * r1.xxxx;
    r3.xyzw = r1.yyyy * cb0[28].xyzw + r3.xyzw;
    r3.xyzw = r1.zzzz * cb0[30].xyzw + r3.xyzw;
    r3.xyzw = cb0[31].xyzw + r3.xyzw;
    r3.xy = r3.xy / r3.ww;
    r4.zw = cmp(r3.xy >= cb0[32].xy);
    r5.xy = cmp(cb0[32].zw >= r3.xy);
    r4.zw = r4.zw ? r5.xy : 0;
    r1.w = r4.w ? r4.z : 0;
    if (r1.w != 0) {
      r1.w = t2.SampleLevel(s2_s, r3.xy, 0).x;
      r1.w = -cb0[34].x + r1.w;
      r1.w = cmp(r3.z < r1.w);
      r0.w = r1.w ? 1.000000 : 0;
    } else {
      r0.w = 1;
    }
  }
  r0.w = min(r2.w, r0.w);
  r3.xyzw = cb0[46].xyzw * r1.xxxx;
  r3.xyzw = r1.yyyy * cb0[45].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb0[47].xyzw + r3.xyzw;
  r1.xyzw = cb0[48].xyzw + r1.xyzw;
  r1.xyz = r1.yzx / r1.www;
  r1.w = cb0[44].x * r1.z;
  r3.xy = r1.yx / r1.ww;
  r3.xy = r3.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r3.zw = cmp(float2(0,0) < cb0[44].zw);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r1.xyz * r1.www;
  r1.z = min(abs(r5.x), abs(r5.y));
  r1.w = max(abs(r5.x), abs(r5.y));
  r1.w = 1 / r1.w;
  r1.z = r1.z * r1.w;
  r1.w = r1.z * r1.z;
  r2.w = r1.w * 0.0208350997 + -0.0851330012;
  r2.w = r1.w * r2.w + 0.180141002;
  r2.w = r1.w * r2.w + -0.330299497;
  r1.w = r1.w * r2.w + 0.999866009;
  r2.w = r1.z * r1.w;
  r4.z = cmp(abs(r5.y) < abs(r5.x));
  r2.w = r2.w * -2 + 1.57079637;
  r2.w = r4.z ? r2.w : 0;
  r1.z = r1.z * r1.w + r2.w;
  r4.zw = cmp(r5.yz < -r5.yz);
  r1.w = r4.z ? -3.141593 : 0;
  r1.z = r1.z + r1.w;
  r1.w = min(r5.x, r5.y);
  r2.w = max(r5.x, r5.y);
  r1.w = cmp(r1.w < -r1.w);
  r2.w = cmp(r2.w >= -r2.w);
  r1.w = r1.w ? r2.w : 0;
  r1.z = r1.w ? -r1.z : r1.z;
  r1.z = 3.14159274 + r1.z;
  r5.x = 0.159154937 * r1.z;
  r1.z = 1 + -abs(r5.z);
  r1.z = sqrt(r1.z);
  r1.w = abs(r5.z) * -0.0187292993 + 0.0742610022;
  r1.w = r1.w * abs(r5.z) + -0.212114394;
  r1.w = r1.w * abs(r5.z) + 1.57072878;
  r2.w = r1.w * r1.z;
  r2.w = r2.w * -2 + 3.14159274;
  r2.w = r4.w ? r2.w : 0;
  r1.z = r1.w * r1.z + r2.w;
  r5.y = 0.318309873 * r1.z;
  r1.xy = r3.ww ? r5.xy : r1.yx;
  r1.xy = r3.zz ? r3.xy : r1.xy;
  r1.z = cb3[5].x * cb1[142].z;
  r3.x = cb3[5].w * r1.z;
  r3.y = cb3[6].x * r1.z;
  r1.zw = cb3[6].yz * r1.xy + r3.xy;
  r2.w = cb3[6].w * cb1[142].z;
  r3.xy = cb3[8].xx * r1.xy;
  r3.xy = r2.ww * cb3[7].zw + r3.xy;
  r2.w = t0.Sample(s0_s, r3.xy).x;
  r2.w = cb3[8].y * r2.w;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[8].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r1.zw = r2.ww + r1.zw;
  r1.z = t1.Sample(s1_s, r1.zw).x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[8].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb3[9].x * r1.z;
  r1.z = r1.w ? 0 : r1.z;
  r1.w = cb3[9].y * cb1[142].z;
  r1.xy = cb3[10].zw * r1.xy;
  r1.xy = r1.ww * cb3[10].xy + r1.xy;
  r1.xy = r1.xy + r2.ww;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb3[8].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = cb3[11].x * r1.x;
  r1.x = r1.y ? 0 : r1.x;
  r1.x = r1.z + r1.x;
  r1.y = cb3[11].y * r1.x;
  r1.xzw = -r1.xxx * cb3[11].yyy + cb3[4].xyz;
  r1.xyz = cb3[11].zzz * r1.xzw + r1.yyy;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.x = dot(r1.xyz, float3(0.333299994,0.333299994,0.333299994));
  r4.y = r1.x * r0.w;
  r0.w = cmp(asint(cb0[41].x) == 1);
  r1.x = cb1[149].w * 4 + 1;
  r0.xy = v0.xy;
  r1.y = cb1[149].w + cb1[149].w;
  r0.xyz = r0.xyz * r1.xxx + -r1.yyy;
  r0.xyz = float3(-0.5,-0.5,-0.5) + r0.xyz;
  r0.xyz = float3(0.5,0.5,0.5) + -abs(r0.xyz);
  r0.xyz = saturate(float3(10,10,10) * r0.xyz);
  r0.x = r0.x * r0.y;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xx * r4.xy;
  r0.xy = r0.ww ? r0.xy : r4.xy;
  r0.xzw = cb2[7].xyz * r0.xxx;
  r0.xyz = r0.xzw * r0.yyy;
  r1.yzw = float3(-0.488602996,0.488602996,-0.488602996) * r2.xyz;
  r1.x = 0.0897936225;
  r0.w = 0.318309873 * r0.x;
  r2.xyzw = r1.xyzw * r0.xwww;
  r3.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r0.yyyy;
  r3.xyzw = r3.xyzw * r1.xyzw;
  r0.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r0.zzzz;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = r2.y;
  r1.y = r3.y;
  r1.z = r0.y;
  o1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r2.z;
  r1.y = r3.z;
  r1.z = r0.z;
  o1.y = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = r2.w;
  r1.y = r3.w;
  r1.z = r0.w;
  o1.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  o0.x = r2.x;
  o0.y = r3.x;
  o0.z = r0.x;
  o0.w = 0;
  o1.w = 0;
  return;
}