# ToyC 编译器

## 1. 项目概述

本项目实现了一个 ToyC 语言的编译器，ToyC 是 C 语言的简化子集，适合编译原理课程实践。编译器支持词法分析、语法分析、语义分析，并计划输出 RISC-V32 汇编代码。

## 2. 目录结构

```txt
toyc_compiler/
├── bin/                  # 可执行文件和入口
│   ├── dune
│   └── main.ml
├── lib/                  # 编译器核心库
│   ├── ast.ml/.mli       # 抽象语法树定义
│   ├── lexer.mll         # 词法分析器
│   ├── parser.mly        # 语法分析器
│   ├── semantic.ml/.mli  # 语义分析
│   ├── symbol.ml/.mli    # 符号表
│   └── toyc_compiler.ml  # 库接口
├── test/                 # 单元测试
│   ├── dune
│   └── test_toyc_compiler.ml
├── _build/               # dune 构建输出
├── dune                  # dune 配置
├── dune-project          # 项目配置
├── toyc_compiler.opam    # opam 依赖
├── README.md             # 项目说明
├── 任务解析/             # 需求与文法说明
│   └── ToyC文法.md
└── 实践报告.docx         # 实践报告
```

## 3. 环境依赖

- OCaml >= 5.0
- dune >= 3.0
- menhir
- ounit2（用于测试）

安装依赖（推荐使用 opam）：

```bash
opam install dune menhir ounit2
```

## 4. 编译与测试

### 4.1 编译

```bash
dune build
```

### 4.2 运行测试

```bash
dune runtest
```

测试结果会显示各项语义分析的单元测试情况。

## 5. 用法示例

目前主入口在 `bin/main.ml`，可根据需要扩展为命令行工具。  
如需编译 ToyC 源文件，可在 main.ml 中调用 `Toyc_compiler.analyze_program` 进行语义分析。

## 6. 主要功能

- **词法分析**：基于 `lexer.mll`，支持 ToyC 关键字、标识符、常量等。
- **语法分析**：基于 `parser.mly`，支持 ToyC 的全部语法结构。
- **语义分析**：包括变量/函数声明检查、类型检查、作用域管理、主函数检测等。
- **单元测试**：基于 OUnit2，覆盖主要语义分析场景。
