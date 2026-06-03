<div align="center">

# ClaudeForge

**让 Claude Desktop 接入任意第三方 API 模型的本地代理工具**

一键切换，无缝使用任何兼容 Anthropic API 的模型服务

[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows-blue.svg)](#下载)
[![Rust](https://img.shields.io/badge/Built%20with-Rust-orange.svg)](https://www.rust-lang.org/)

<br/>

</div>

## 功能

- 将第三方模型接入 Claude Desktop，通过本地代理转换请求
- 支持同时配置多个 API 服务商，内置主流服务商预设
- 支持 1M 上下文模型变体
- 可视化配置界面，无需手动编辑配置文件
- 菜单栏/系统托盘常驻，关闭窗口后代理继续运行
- 深色/亮色/跟随系统主题切换
- 连接测试、请求日志、开机自启

## 内置预设

| 服务商 | API 地址 |
|--------|----------|
| DeepSeek | api.deepseek.com/anthropic |
| Kimi Code | api.kimi.com/coding |
| Kimi 开放平台 | api.moonshot.cn/anthropic |
| MiniMax | api.minimaxi.com/anthropic |
| 百炼 Coding Plan | coding.dashscope.aliyuncs.com |
| 百炼 Token Plan | token-plan.cn-beijing.maas.aliyuncs.com |
| GLM（智谱） | open.bigmodel.cn/api/anthropic |
| mimo | api.xiaomimimo.com/anthropic |

支持自定义服务商，兼容任何 Anthropic Messages API 格式的接口。

## 下载

从 [Releases](../../releases) 页面下载预编译版本，当前已提供 `.dmg` 和 `.zip` 安装包。

- `.dmg`：推荐 macOS 用户下载，打开后将 ClaudeForge 拖入「应用程序」即可。
- `.zip`：适合无法使用 DMG、需要手动解压或便携运行的用户。

首次启动时如 macOS 提示来自未识别开发者，请在「系统设置」→「隐私与安全性」中允许打开。

## 构建

需要 Rust 工具链：

```bash
# macOS
git clone https://github.com/Sunny891024/ClaudeForge.git
cd ClaudeForge
cargo build --release
./target/release/claude-forge
```

首次编译建议配置国内镜像源加速依赖下载。
