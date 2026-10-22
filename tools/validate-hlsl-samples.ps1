param([Parameter(Mandatory=$true)][string]$Root)
$ErrorActionPreference = 'Stop'
Add-Type @'
using System;
using System.Text;
using System.Runtime.InteropServices;
public static class HlslCompilerCheck {
 [DllImport("d3dcompiler_47.dll", CharSet=CharSet.Ansi, CallingConvention=CallingConvention.StdCall)]
 static extern int D3DCompile(byte[] src, UIntPtr size, string name, IntPtr defines, IntPtr include, string entry, string target, uint flags1, uint flags2, out IntPtr code, out IntPtr errors);
 [UnmanagedFunctionPointer(CallingConvention.StdCall)] delegate IntPtr GetBufferPointer(IntPtr blob);
 [UnmanagedFunctionPointer(CallingConvention.StdCall)] delegate UIntPtr GetBufferSize(IntPtr blob);
 static string ReadBlob(IntPtr blob) {
  if(blob==IntPtr.Zero)return "";
  IntPtr table=Marshal.ReadIntPtr(blob);
  var ptr=Marshal.GetDelegateForFunctionPointer<GetBufferPointer>(Marshal.ReadIntPtr(table,3*IntPtr.Size));
  var size=Marshal.GetDelegateForFunctionPointer<GetBufferSize>(Marshal.ReadIntPtr(table,4*IntPtr.Size));
  return Marshal.PtrToStringAnsi(ptr(blob),(int)size(blob).ToUInt64());
 }
 public static string[] Check(string file,string target) {
  byte[] src=System.IO.File.ReadAllBytes(file);IntPtr code,errors;
  int hr=D3DCompile(src,(UIntPtr)src.Length,file,IntPtr.Zero,IntPtr.Zero,"main",target,4,0,out code,out errors);
  string text=ReadBlob(errors);
  if(code!=IntPtr.Zero)Marshal.Release(code);if(errors!=IntPtr.Zero)Marshal.Release(errors);
  return new[]{hr.ToString(),text};
 }
}
'@
$samples = Get-Content -LiteralPath (Join-Path $Root 'catalog/validation-samples.json') -Raw | ConvertFrom-Json
$result = foreach ($s in $samples) {
 $check = [HlslCompilerCheck]::Check($s.hlsl, ($s.stage + '_5_0'))
 [pscustomobject]@{material=$s.material;hash=$s.hash;stage=$s.stage;hlsl=$s.hlsl;compiler='D3DCompile / d3dcompiler_47';hresult=[int]$check[0];passed=([int]$check[0] -ge 0);diagnostics=$check[1];scope='syntax-and-type-compilation; not rendering equivalence'}
}
$result | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $Root 'catalog/hlsl-validation.json') -Encoding utf8
$result | Group-Object passed | Select-Object Name,Count | ConvertTo-Json
