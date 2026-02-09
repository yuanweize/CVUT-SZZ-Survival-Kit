# ⚔️ SZZ Master Kit - Core Revision System

[![View Online PDF](https://img.shields.io/badge/View-Online_PDF-2ea44f?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)](./CVUT_SZZ_Survival_Kit_latest.pdf)

This directory contains the source code for the ultimate **SZZ Survival Kit**. It is a modular LaTeX system optimized for high-speed revision and tactical defense preparation.

本项目是针对捷克理工大学（CVUT FEE）国家毕业考试（SZZ）及论文答辩设计的模块化 LaTeX 复习系统。

---

## 📂 Project Structure / 项目结构

### ⚡️ The Output / 编译产物
*   **[`CVUT_SZZ_Survival_Kit_latest.pdf`](./CVUT_SZZ_Survival_Kit_latest.pdf)**: **Instant Access**. This file is automatically updated by the CI/CD pipeline. Use this for quick online viewing.
    *   **快速访问**：CI/CD 自动生成的最新版 PDF，适合在线直接查阅。

### 📚 The Source / 源代码
*   **`szz_guide.tex`**: Master root file. Ingests all chapters using the `subfiles` package.
    *   主控文件，用于引入所有子章节。
*   **`chapters/`**: The intellectual core of the project.
    *   **`00_Strategy_Committee.tex`**: **EMERGENCY SCRIPTS**. Battle-ready phrases for the committee members.
        *   **紧急脚本**：针对委员会 6 位成员的实战话术与“ Beer Theory”助记词。
    *   **`01_Math`**: Discrete, Linear Algebra, DiffEq, Numerical, Graph Theory, etc.
        *   数学：离散、代数、微积分、数算、图论等。
    *   **`02_Phys`**: Mechanics, Fields, Thermo, Waves, Relativity.
        *   物理：力学、场论、热学、波动、相对论。
    *   **`03_EECS_Core`**: Circuits, Electronics, Microcontrollers, Algorithms.
        *   电子电工核心：电路、电子学、单片机、算法。
    *   **`04_Specialization`**: Signals, Machines, Materials, Power Systems, AI, Control.
        *   专业课：信号、电机、材料、电力系统、人工智能、控制论。

---

## 🛠️ Build Engine / 编译引擎

The project uses **LuaLaTeX** (via `LuaHBTeX`) for modern Unicode and font handling.

### Prerequisites / 前置条件
*   **TeX Live 2024/2025** (MacTeX or standard Unix build).
*   Required packages: `tcolorbox`, `subfiles`, `luatexja`, `pifont`.

### Commands / 常用命令
```bash
# Standard Build (Generated in build/ directory)
make

# Clean auxiliary files
make clean

# Rebuild from scratch
make rebuild
```

---

## ✨ Features / 功能亮点

| Feature / 特性 | Tag / 标签 | Description / 说明 |
| :--- | :--- | :--- |
| **Kill Zone** | `\warnbox` | Critical questions based on specific committee research. |
| **Cheat Sheet** | `\studybox` | Rapid-review boxes at the start of each topic. |
| **Bilingual** | `CN / EN` | Strategic split for term accuracy in both languages. |
| **AI Analysis** | `ANALYSIS` | Personalized defense strategy based on study records. |

---

*“Victory belongs to the most persevering.” — Napoléon Bonaparte.*
*祝你捷报频传，顺利拿下国考！*
