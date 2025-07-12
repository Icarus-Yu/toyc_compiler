#!/bin/bash

# 测试所有 test_30 用例
echo "=== 测试所有 test_30 用例 ==="

# 构建编译器
echo "构建编译器..."
dune build bin/main.exe
if [ $? -ne 0 ]; then
    echo "构建失败！"
    exit 1
fi

failed_tests=""
passed_tests=""

# 测试所有 .tc 文件
for tc_file in test_30/*.tc; do
    base_name=$(basename "$tc_file" .tc)
    output_file="test_30/${base_name}_test.s"
    
    echo "测试: $base_name"
    ./_build/default/bin/main.exe < "$tc_file" > "$output_file" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        echo "✅ $base_name 编译成功"
        passed_tests="$passed_tests $base_name"
    else
        echo "❌ $base_name 编译失败"
        failed_tests="$failed_tests $base_name"
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
