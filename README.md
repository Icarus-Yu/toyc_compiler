# 项目文档初版

## 1. 项目概述

本项目旨在实现一个针对ToyC语言的编译器，将ToyC源代码编译为RISC-V32汇编文件。编译器的主要功能包括词法分析、语法分析、语义分析和代码生成，最终输出可执行的RISC-V32汇编代码。

## 2. 项目结构

```txt
ToyC_Compiler/
├── src/
│   
├── bin/
│   ├── dune
│   └── main.ml
├── test/
│  
├── lib/
│   |——ast.ml
│   │——ast,mli
│   │——dune
│   │——Lexer.mll
│   │——Lexer.mly
│   │——toyc_complier.ml
│ 
├── .gitignore
├── .gitattributes
├── toyc_compiler.opam
└── dune-project
```

- 

## 3. 编译与运行

### 3.1 环境要求

- 开发语言：Ocaml 5.3.0
- 构建工具：Dune

### 3.2 编译命令

```bash
# 使用Dune构建Ocaml版本
dune build
```

### 3.3 运行方式

