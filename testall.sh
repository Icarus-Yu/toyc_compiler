#!/bin/bash
echo "=== 测试所有 test_30 用例 ==="

# 确保编译器是最新的
dune build bin/main.exe

# 创建一个目录存放输出，避免混乱
mkdir -p test_output

failed_tests=""
passed_tests=""

# 遍历 test_30 目录下的所有 .tc 文件
for tc_file in test_30/*.tc; do
    base_name=$(basename "$tc_file" .tc)
    output_file="test_output/${base_name}.s" # 将输出文件放在新目录

    echo "测试: $base_name"
    # 运行编译器，并将标准错误重定向以保持输出整洁
    ./_build/default/bin/main.exe < "$tc_file" > "$output_file" 2>/dev/null

    if [ $? -eq 0 ]; then
        echo "✅ $base_name 编译成功"
        passed_tests="$passed_tests $base_name"
    else
        echo "❌ $base_name 编译失败"
        failed_tests="$failed_tests $base_name"
        rm "$output_file" # 编译失败则删除空的输出文件
    fi
done

echo ""
echo "=== 测试结果 ==="
echo "通过的测试:$passed_tests"
if [ -n "$failed_tests" ]; then
    echo "失败的测试:$failed_tests"
else
    echo "所有测试都通过了！"
fi
