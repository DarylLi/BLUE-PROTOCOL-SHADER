# BLUE PROTOCOL Shader

[English](README.md) | **中文**

这是从《BLUE PROTOCOL》原版 PC 客户端中提取、解码并整理的着色器与材质研究数据集，同时包含可复现的提取与反编译流程、交叉验证记录和证据链。内容涵盖 PAK 解包、UE shader 库解析、DXBC 反编译、材质资源导出和 ShaderMap 关联，可作为渲染实现、卡通着色研究或逆向分析的参考资料。

**这里的 HLSL 是从 Direct3D SM5 字节码反编译得到的表示，不是官方原始 HLSL。本仓库是数据集与研究记录，不是可直接运行的渲染工程。** 大部分临时变量与常量缓冲区名称无法恢复，部分反编译结果仍需人工修正。仓库不会把通用卡通着色公式当作游戏实现，也没有生成伪装成原始文件的 GLSL。

## 仓库包含什么

| 部分 | 内容 |
| --- | --- |
| 数据索引 | shader 库、条目、ShaderMap 与材质关联的完整 JSON/NDJSON 索引 |
| 可读 shader | 以 UE shader 哈希命名的 HLSL 与 Direct3D SM5 汇编 |
| 材质数据 | 594 份材质、材质函数与参数集合的原始 JSON、参数摘要和按名称索引页 |
| 证据与验证 | 编译抽样、阶段校验、SDK 字段来源与文件校验和清单 |
| 工具与流程 | 提取、解析、导入和检查脚本，以及从自有客户端复现的完整步骤 |
| 下游参考 | 如何把已确认的寄存器和纹理采样证据整理为可解释的渲染模块，供任意引擎移植 |

## 从哪里开始

1. **[材质导航](docs/MATERIAL-GUIDE.md)**：从角色、脸部、头发、眼睛和描边入口开始，查看真实参数值、父材质与关联 HLSL。
2. **[完整材质索引](materials/README.md)**：594 份材质、材质函数与参数集合资源 JSON，基础包与补丁包分开保留。
3. **[解析结果与验证](docs/RESULTS.md)**：完整统计、验证范围、失败项与未完成项。
4. **[格式与证据](docs/FORMAT.md)**、**[来源与工具](docs/SOURCES.md)**：每个结论是如何得出的。
5. **[复现流程](docs/REPRODUCE.md)**：用自有客户端重新完成解包、提取与反编译。

按需查阅的下游材料：

- **[移植参考](docs/WEBGPU-PORTING.md)**：以 three.js / TSL / WGSL 为例，说明如何把寄存器和纹理采样证据整理为可解释的渲染模块；同样的整理结果也适用于其他引擎和自定义管线。

## 已完成的工作

- 验证 SDK README 公布的 AES 密钥可以读取本客户端的加密 PAK 索引并导出目标资源。
- 扫描 **118 个 PAK 文件**。客户端 `binary_information.ini` 记录版本 **1.08.000.837664**；SDK README 记录 UE **4.27.2**。
- 导出 **57 个 `.ushaderbytecode` shader 库**和 **2 个 `GlobalShaderCache` 文件**。基础包与补丁包中的同名文件分别保存；2 个缓存不计入下文库解析统计。
- 解析库内 **274,755 条 shader 条目**，按 UE shader 哈希得到 **182,602 个不同 DXBC**。每个条目都做了边界与 DXBC 容器检查。
- 导出 **594 份资源 JSON**；其中 **428** 份在同包 `.uexp` 中匹配到 ShaderMap 哈希，共 **436 条关联**，覆盖 **17,500 个不同 shader**。
- 为公共、角色、全局库中的 shader 以及已关联材质引用的 shader 生成 HLSL 与 Direct3D 汇编。最终数量见[结果报告](docs/RESULTS.md)与机器可读的 [summary.json](catalog/summary.json)。
- 本次快照包含 **24,217 份 HLSL**和 **24,279 份汇编**；62 条 shader 未生成 HLSL，5,483 份 HLSL 带人工修正标记。
- 对头发、脸部、护甲和描边的 **16 份顶点/像素 HLSL** 使用 `D3DCompile` 抽样编译，**16 份通过**。这不构成逐文件编译保证，也不证明画面等价。

分析日期：**2026-10-22**。SDK 固定于提交 `a238c0a128256d91bcf9d3d8bf87b406ed27b237`；其 DLL、注入代码和游戏修改功能未纳入本流程。

## 目录结构

```text
catalog/
  summary.json              分析范围与统计
  libraries/                逐库 shader 条目完整索引（NDJSON）
  shader-maps/              ShaderMap 哈希 -> shader 哈希列表
  readable-shaders.json     可读文件路径、阶段与人工修正标记
  materials.json            材质名称、父材质、入口路径
  hlsl-validation.json      16 条编译抽样结果
  sdk-rendering-evidence.json SDK 字段声明与原始行号
  file-integrity.ndjson     数据文件 SHA-256 清单
materials/
  raw/                      UAssetGUI JSON，保留原始序列化值
  summary/                  参数、父材质、纹理引用、ShaderMap 关联
  by-name/                  每个材质指向 HLSL/汇编的 Markdown 页面
shaders/
  hlsl/{vs,ps,gs,hs,ds,cs}/  以 UE shader 哈希命名的反编译 HLSL
  assembly/                Direct3D SM5 汇编
docs/                      研究结论、格式、复现、移植参考与来源
tools/                     提取、解析、导入与校验脚本
tests/                     LZ4 与 shader 格式边界测试
```

完整 DXBC、游戏包、解包后的二进制材质、工具可执行文件、日志和本地配置不提交到 Git。可读结果是纯 Git 文本文件；大索引按库拆分。阅读已有数据不需要 Git LFS。

## 阅读已有结果

阅读 Markdown、HLSL 和 JSON 既不需要游戏客户端，也不需要额外依赖。运行检查需要 **Node.js 22 或更新版本**，且无需 npm install：

```powershell
npm test
npm run verify
```

校验会检查数据文件校验和、索引路径、材质页面链接、shader 阶段、统计，以及是否误提交了原始包或可执行文件。

查找真实参数值：

```powershell
# 已安装 ripgrep 时：
rg 'RimExponent|RimThreshold|Spec_ValueOffset|BaseColorTexture' materials/summary
rg 'MSM_ToonHair|MSM_ToonCharacter|MSM_Outline' materials/summary
```

从 `materials/by-name` 找到具体材质的 ShaderMap，再阅读关联的 HLSL。一个材质会对应多个顶点工厂、pass 和 permutation；不要用第一个 shader 推断整个材质的算法。

## 从自有客户端复现

完整步骤见 **[REPRODUCE.md](docs/REPRODUCE.md)**。提取与反编译工具在 Windows 上运行；解析和数据检查使用 Node.js。

```powershell
Copy-Item config.example.json config.local.json
# 编辑路径；将本地密钥写入 config.local.json 或设置 BLUEPROTOCOL_AES_KEY。
npm run index
npm run extract:shaders
npm run decode
npm run extract:materials
npm run materials:json
npm run materials:link
npm run decompile:core
npm run decompile:materials
```

本仓库不附带这些工具。本客户端的补丁包包含特殊索引项，部分 repak 版本会直接失败；复现文档记录了兼容处理、工具哈希和限制。不要把“目录里有文件”当作导出成功：还要检查退出状态、文件大小和下游解析。

## 发布到 Git 仓库

这是一个独立项目。Git 已在本地初始化，没有配置远端，也没有推送。确定远端后，在项目目录执行：

```powershell
git add .
git commit -m "Add BLUE PROTOCOL shader research dataset and workflow"
git remote add origin <your repository URL>
git push -u origin main
```

如果远端已有提交，请按你的仓库流程同步分支，不要强制推送。研究数据与第三方工具的归属分别记录在 [RIGHTS.md](RIGHTS.md)；游戏衍生数据不附带虚构的开源许可证。
