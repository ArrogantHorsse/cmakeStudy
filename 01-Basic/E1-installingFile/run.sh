#!/bin/bash

# 定义可执行程序的路径
PROGRAM_PATH="/usr/local/bin/my_program"

# 检查程序是否存在
if [ -x "$PROGRAM_PATH" ]; then
    echo "正在执行程序: $PROGRAM_PATH"
    # 执行程序并传递任何参数
    "$PROGRAM_PATH" "$@meMe"
else
    echo "错误: 找不到可执行程序 $PROGRAM_PATH"
    exit 1
fi