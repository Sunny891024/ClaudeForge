#!/bin/bash
set -e

echo "=== ClaudeForge 构建脚本 ==="

# 检查 Rust
if ! command -v cargo &> /dev/null; then
    echo "正在安装 Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
    echo "Rust 安装完成"
else
    echo "Rust 已安装: $(rustc --version)"
fi

# 进入项目目录
cd "$(dirname "$0")"
echo "项目目录: $(pwd)"

# 构建
echo ""
echo "正在构建 ClaudeForge（首次编译需要几分钟下载依赖）..."
cargo build --release

echo ""
echo "=== 构建完成 ==="
echo "可执行文件: $(pwd)/target/release/claude-forge"
echo ""
echo "正在启动 ClaudeForge..."
./target/release/claude-forge
