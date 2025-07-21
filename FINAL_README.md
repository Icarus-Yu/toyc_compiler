# ToyC编译器 - RISC-V代码生成器

这是一个完整的ToyC编程语言编译器，支持将ToyC源代码编译为RISC-V 32位汇编代码。

## 项目结构

```
toyc_compiler/
├── lib/                     # 核心库模块
│   ├── ast.ml              # 抽象语法树定义
│   ├── lexer.mll           # 词法分析器
│   ├── parser.mly          # 语法分析器  
│   ├── semantic.ml         # 语义分析器
│   ├── symbol.ml           # 符号表管理
│   ├── riscv.ml            # RISC-V指令定义
│   ├── codegen.ml          # 代码生成器
│   └── toyc_compiler.ml    # 主库接口
├── bin/                    # 可执行程序
│   └── main.ml             # 编译器主程序
├── test/                   # 测试用例
│   ├── test_toyc_compiler.ml  # 语义分析测试
│   └── test_codegen.ml     # 代码生成测试
└── README.md              # 项目文档
```

## 功能特性

### 支持的语言特性

- **数据类型**：int、void
- **变量**：声明、赋值、作用域
- **表达式**：算术运算（+、-、*、/）、比较运算（<、>、<=、>=、==、!=）
- **控制流**：if/else条件语句、while循环
- **函数**：定义、调用、递归、参数传递
- **语句**：break、continue、return

### 编译流程

1. **词法分析**：将源代码转换为token流
2. **语法分析**：构建抽象语法树（AST）
3. **语义分析**：类型检查、作用域分析、符号表管理
4. **代码生成**：将AST翻译为RISC-V汇编代码

## 使用方法

### 编译项目

```bash
dune build
```

### 编译ToyC程序

```bash
dune exec bin/main.exe -- <源文件.tc> [-o <输出文件.s>]
```

### 示例

```bash
# 编译simple.tc为simple.s
dune exec bin/main.exe -- simple.tc -o simple.s

# 使用默认输出文件名
dune exec bin/main.exe -- simple.tc
```

### 运行测试

```bash
dune test
```

## ToyC语言示例

### 简单程序

```c
int main() {
    int x = 5;
    int y = 10;
    int sum = x + y;
    return sum;
}
```

### 带控制流的程序

```c
int factorial(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main() {
    int x = 5;
    int result = factorial(x);
    return result;
}
```

### 循环程序

```c
int sum_to_n(int n) {
    int sum = 0;
    int i = 1;
    while (i <= n) {
        sum = sum + i;
        i = i + 1;
    }
    return sum;
}

int main() {
    return sum_to_n(10);
}
```

## 生成的汇编代码特性

### RISC-V指令集

- 使用RISC-V RV32I基础指令集
- 标准调用约定：`x10-x17`用于参数和返回值
- 栈指针：`x2 (sp)`，帧指针：`x8 (fp)`
- 返回地址：`x1 (ra)`

### 内存管理

- 栈式内存分配
- 局部变量存储在栈帧中
- 正确的函数序言和尾声代码

### 控制流

- 条件分支使用比较和跳转指令
- 循环使用标签和条件跳转
- 函数调用使用`jal`指令

## 项目架构

### 核心模块

1. **AST (ast.ml)**：定义语言的抽象语法树结构
2. **Lexer (lexer.mll)**：词法分析，识别token
3. **Parser (parser.mly)**：语法分析，构建AST
4. **Semantic (semantic.ml)**：语义分析和类型检查
5. **Symbol (symbol.ml)**：符号表管理和作用域处理
6. **RISCV (riscv.ml)**：RISC-V指令定义和输出
7. **Codegen (codegen.ml)**：AST到汇编代码的翻译

### 设计特点

- **模块化设计**：清晰的模块分离，便于维护和扩展
- **类型安全**：完整的类型检查和错误报告
- **标准兼容**：生成的汇编代码符合RISC-V标准
- **可扩展性**：易于添加新的语言特性和优化

## 测试验证

项目包含了完整的测试套件：

- **语义分析测试**：31个测试用例，覆盖各种语言特性和错误情况
- **代码生成测试**：验证生成汇编代码的正确性
- **集成测试**：端到端的编译流程测试

### 运行测试示例

```bash
# 运行所有测试
dune test

# 运行代码生成测试
dune exec test/test_codegen.exe

# 测试复杂程序编译
dune exec bin/main.exe -- complex_test.tc -o complex_output.s
```

## 技术细节

### 寄存器分配

- 临时寄存器：`x5-x7, x28-x31`
- 函数参数：`x10-x17`
- 返回值：`x10`
- 调用保存：正确保存和恢复寄存器

### 标签管理

- 自动生成唯一标签
- 支持嵌套控制结构
- 正确处理break/continue

### 错误处理

- 详细的错误信息和位置报告
- 完整的语义检查
- 友好的用户界面

## 贡献和扩展

该编译器设计为易于扩展，可以添加以下特性：

- 更多数据类型（float、array、struct）
- 更多运算符和表达式
- 优化（常量折叠、死代码消除）
- 更多目标架构支持

## 许可证

本项目用于教学和学习目的。
