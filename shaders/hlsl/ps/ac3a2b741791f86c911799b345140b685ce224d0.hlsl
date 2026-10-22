// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.zw = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.zw = cb1[132].zw * r0.zw;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.z = max(1.00000005e-018, r0.z);
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r0.xy = r0.xy * cb0[5].xy + cb0[4].xy;
  r0.xyz = t2.Sample(s2_s, r0.xy).xyz;
  r1.xyz = -cb1[67].xyz + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.y = dot(cb2[10].xyz, cb1[67].xyz);
  r2.z = dot(cb2[11].xyz, cb1[67].xyz);
  r2.w = dot(cb2[12].xyz, cb1[67].xyz);
  r2.xyz = cb2[9].xyz + r2.yzw;
  r3.y = dot(cb2[10].xyz, r1.xyz);
  r3.z = dot(cb2[11].xyz, r1.xyz);
  r3.w = dot(cb2[12].xyz, r1.xyz);
  r4.xyz = float3(1,1,1) / r3.yzw;
  r5.xyz = cb2[7].xyz + -r2.xyz;
  r6.xyz = cb2[8].xyz + -r2.xyz;
  r5.xyz = r5.xyz * r4.xyz;
  r4.xyz = r6.xyz * r4.xyz;
  r6.xyz = max(r5.xyz, r4.xyz);
  r0.w = min(r6.x, r6.y);
  r0.w = min(r0.w, r6.z);
  r1.w = cmp(r0.w >= 0);
  if (r1.w != 0) {
    r4.xyz = min(r5.xyz, r4.xyz);
    r1.w = max(r4.x, r4.y);
    r4.x = max(r1.w, r4.z);
    r0.w = cmp(r0.w >= r4.x);
    if (r0.w != 0) {
      r0.w = cmp(0.00100000005 >= cb2[15].x);
      if (r0.w != 0) {
        r5.xy = -cb1[129].xy + v0.xy;
        r5.xy = r5.xy * cb1[130].zw + float2(-0.5,-0.5);
        r5.xy = v0.ww * r5.xy;
        r5.z = v0.w;
        r5.xyz = float3(2,-2,1) * r5.xyz;
        r5.xy = r5.xy / r5.zz;
        r5.xy = r5.xy * cb1[66].xy + cb1[66].wz;
        r0.w = t0.SampleLevel(s0_s, r5.xy, 0).x;
        r1.w = r0.w * cb1[65].x + cb1[65].y;
        r0.w = r0.w * cb1[65].z + -cb1[65].w;
        r0.w = 1 / r0.w;
        r0.w = r1.w + r0.w;
        r1.x = dot(r1.xyz, cb1[18].xyz);
        r0.w = r0.w / r1.x;
        r4.yzw = r3.yzw * r4.xxx + r2.xyz;
        r1.xyz = cb2[8].xyz + -cb2[7].xyz;
        r1.w = cb2[14].z * cb2[14].x;
        r5.xyz = -cb2[7].xyz + r4.yzw;
        r5.xyz = r5.xyz / r1.xyz;
        r6.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r5.xyz);
        r7.xyz = cmp(r5.xyz < float3(1,1,1));
        r2.w = r6.x ? r7.x : 0;
        r2.w = r6.y ? r2.w : 0;
        r2.w = r7.y ? r2.w : 0;
        r2.w = r6.z ? r2.w : 0;
        r2.w = r7.z ? r2.w : 0;
        if (r2.w != 0) {
          r5.xyzw = t1.Sample(s1_s, r5.xyz).xyzw;
          r2.w = -cb2[14].y + r5.w;
          r3.x = cmp(abs(r2.w) < r1.w);
          r6.x = cmp(r4.x < r0.w);
          r3.x = r3.x ? r6.x : 0;
          r5.w = 1;
          r5.xyzw = r3.xxxx ? r5.xyzw : 0;
          r2.w = r3.x ? cb2[14].z : r2.w;
        } else {
          r5.xyzw = float4(0,0,0,0);
          r2.w = cb2[14].z;
          r3.x = 0;
        }
        r6.x = r2.w * cb2[14].w + r4.x;
        r6.yzw = r3.yzw * r6.xxx + r2.xyz;
        r4.xyzw = r3.xxxx ? r4.yzwx : r6.yzwx;
        if (r3.x == 0) {
          if (r3.x == 0) {
            r6.xyz = -cb2[7].xyz + r4.xyz;
            r6.xyz = r6.xyz / r1.xyz;
            r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
            r8.xyz = cmp(r6.xyz < float3(1,1,1));
            r2.w = r7.x ? r8.x : 0;
            r2.w = r7.y ? r2.w : 0;
            r2.w = r8.y ? r2.w : 0;
            r2.w = r7.z ? r2.w : 0;
            r2.w = r8.z ? r2.w : 0;
            if (r2.w != 0) {
              r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
              r2.w = -cb2[14].y + r6.w;
              r3.x = cmp(abs(r2.w) < r1.w);
              r7.x = cmp(r4.w < r0.w);
              r3.x = r3.x ? r7.x : 0;
              r6.w = 1;
              r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
              r2.w = r3.x ? cb2[14].z : r2.w;
            } else {
              r2.w = cb2[14].z;
              r3.x = 0;
            }
            r6.x = r2.w * cb2[14].w + r4.w;
            r6.yzw = r3.yzw * r6.xxx + r2.xyz;
            r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
          } else {
            r3.x = -1;
          }
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb2[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s1_s, r6.xyz).xyzw;
            r2.w = -cb2[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r7.x = cmp(r4.w < r0.w);
            r3.x = r3.x ? r7.x : 0;
            r6.w = 1;
            r5.xyzw = r3.xxxx ? r6.xyzw : r5.xyzw;
            r2.w = r3.x ? cb2[14].z : r2.w;
          } else {
            r2.w = cb2[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb2[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r2.xyz = -cb2[7].xyz + r4.xyz;
          r1.xyz = r2.xyz / r1.xyz;
          r2.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r1.xyz);
          r3.xyz = cmp(r1.xyz < float3(1,1,1));
          r2.x = r2.x ? r3.x : 0;
          r2.x = r2.y ? r2.x : 0;
          r2.x = r3.y ? r2.x : 0;
          r2.x = r2.z ? r2.x : 0;
          r2.x = r3.z ? r2.x : 0;
          if (r2.x != 0) {
            r2.xyzw = t1.Sample(s1_s, r1.xyz).xyzw;
            r1.x = -cb2[14].y + r2.w;
            r1.x = cmp(abs(r1.x) < r1.w);
            r0.w = cmp(r4.w < r0.w);
            r0.w = r0.w ? r1.x : 0;
            r2.w = 1;
            r5.xyzw = r0.wwww ? r2.xyzw : r5.xyzw;
          }
        }
      } else {
        r5.xyzw = float4(1,1,1,1);
      }
    } else {
      r5.xyzw = float4(0,0,0,0);
    }
  } else {
    r5.xyzw = float4(0,0,0,0);
  }
  r0.w = 1 + -r5.w;
  r0.xyz = r0.xyz * r0.www + r5.xyz;
  r1.xyz = cb2[13].xyz + -r0.xyz;
  r0.xyz = cb2[15].yyy * r1.xyz + r0.xyz;
  o0.xyz = max(float3(0,0,0), r0.xyz);
  o0.w = 1;
  return;
}