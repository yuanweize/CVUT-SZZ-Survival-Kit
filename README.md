# 🎓 CVUT SZZ Survival Kit / 捷克理工大学国考生存包

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![University](https://img.shields.io/badge/CTU-FEE-blue)](https://fel.cvut.cz/)

> **State Final Examination (SZZ) & Bachelor Thesis Defense Resources**
> **国家毕业考试 (SZZ) 与毕业论文答辩资源**

<div align="center">

<!-- PDF_LINK_PLACEHOLDER -->
[![Download PDF](https://img.shields.io/badge/PDF-v4.5-blue?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)](https://github.com/yuanweize/CVUT-SZZ-Survival-Kit/releases/download/v4.4/CVUT_SZZ_Survival_Kit_v4.3.pdf)

| **Resource / 资源** | **Description / 说明** |
| :--- | :--- |
| [📜 **Official SZZ Rules**](https://intranet.fel.cvut.cz/cz/education/announce/2513.html) | Dean's Directive for Final State Exams |
| [📚 **Exam Topics (EECS)**](https://intranet.fel.cvut.cz/en/education/bachelor/topicsEECS.html) | Official list of questions for the oral exam |

</div>

This repository is a comprehensive collection of strategic intelligence, "Kill Zone" defenses, and study materials for the **State Final Examination (SZZ)** and **Bachelor Thesis Defense** at **Czech Technical University in Prague, Faculty of Electrical Engineering (FEE)**.

---

## 🚨 EMERGENCY MODE (20-Hour Countdown) / 紧急模式

**If you have less than 24 hours remaining, IGNORE EVERYTHING ELSE and read this PDF:**

👉 **[`SZZ_Master_Kit/CVUT_SZZ_Survival_Kit_latest.pdf`](./SZZ_Master_Kit/CVUT_SZZ_Survival_Kit_latest.pdf)** 👈

*   **Battle Scripts**: Exact words to say to each of the 6 Committee Members.
*   **Mnemonics**: "Beer Theory" for Power, "Hot Pot" for Heat Transfer.
*   **Panic Scripts**: How to pivot back to your Thesis when you forget a definition.

---

## 📂 Repository Structure / 仓库结构

### 1. 🛡️ Thesis Defense / 毕业答辩

*   **`Committee_Intel/`** — **Forensic Intelligence**
    *   Detailed dossiers on every committee member (Müller, Kyncl, Koller, etc.).
    *   Contains their research obsessions, teaching focus, and verified "hard data".
*   **`Jan_Koller_Opponent_Research/`** — **The "Boss Fight"**
    *   Analysis of Opponent **Jan Koller**.
    *   Includes strategy on how to handle his specialized questions (Plasma/Physics).
*   **`PPT/`** — **Presentation Assets**
    *   Your final defense slides and speech script.
*   **`Thesis_src/`** — **Source Code**
    *   The compiled code for the thesis project.

### 2. ⚔️ State Exam / 国家考试 (SZZ)

*   **`SZZ_Master_Kit/`** — **The Core System**
    *   **`szz_guide.tex`**: The master LaTeX file that compiles essentially EVERYTHING.
    *   **`chapters/00_Strategy_Committee.tex`**: The **Battle Script** (Emergency Strategy).
    *   **`chapters/01_Math`**: Linear Algebra, Numerical, DiffEq, Discrete, Graph, Probability.
    *   **`chapters/02_Phys`**: Mechanics, Oscillations, Fields, Thermo, Waves.
    *   **`chapters/03_EECS_Core`**: Circuits, Semiconductors, Electronics, Microcontrollers, Algo.
    *   **`chapters/04_Specialization`**: EMT, Logic, Signals, Machines, Materials, Power, AI, Arch, Control.
    *   **Usage**: Run `make` in this directory.

*   **Subject Folders (Raw Notes)**:
    *   `Math/`: Weekly summaries (Week 3-13).
    *   `Phys/`: Physics notes.
    *   `CIRCUIT/`: Circuit theory samples.
    *   `EECS/`: Electronics & CS notes.
    *   `PRS/`: Probability & Statistics.
    *   `Specialization/`: Specialized topics.

*   **Reference Materials**:
    *   `jimmy复习.pdf`: Legacy review notes.
    *   `鸡鸡整理的国考复习pdf/`: Self-compiled study notes (ARI, DEN, etc.).

### 3. 🛠️ Utilities / 工具

*   **`generate_topics.sh`**:
    *   Bash script to auto-generate the LaTeX structure for new topics in `SZZ_Master_Kit`.

---

## 🚀 Key Defense Strategy (Summary) / 答辩核心策略

| Target / 目标 | Focus / 关注点 | Tactic / 战术 |
|---|---|---|
| **Zdeněk Müller** (Chairman) | Power Plants & Grid | **Macro View**: Talk about Smart Grids & VPPs. |
| **Jan Kyncl** | Heat & Lighting | **Efficiency**: Mention heat dissipation & lumen/watt. |
| **Jan Koller** | Physics | **First Principles**: $F=ma$, Photoelectric Effect. |
| **Adam Bouřa** | Sensors | **Precision**: Discuss noise filtering & calibration. |
| **Jan Bauer** | Microprocessors | **Low Level**: Mention Registers, PWM & Interrupts. |
| **Petr Karafiát** | Industry (Alpiq) | **ROI & Reliability**: Cost vs. MTBF. |

---

## 🛠️ Build Instructions / 编译指南

To regenerate the Survival Kit PDF:

```bash
# 1. Enter the Kit Directory
cd SZZ_Master_Kit

# 2. Compile (Standard)
make

# 3. Clean Build Artifacts
make clean
```

*Requirements: TeX Live (MacTeX) with `latexmk` and `xelatex`.*

---

## 📜 License / 许可证

MIT License. See [LICENSE](./LICENSE) for details.

---

*Maintained by **Yuan Weize** (2026). Good luck with your SZZ! 祝国考顺利！🎉*
