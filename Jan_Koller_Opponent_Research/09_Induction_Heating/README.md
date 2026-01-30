# Modeling Induction Heating Source / 感应加热源建模
**Author:** Marek Janás
**Date:** 2025
**Supervisor:** Ing. Ladislava Černá, Ph.D. (Grade: **N/A**)
**Opponent:** Ing. Jan Koller, Ph.D. (Grade: **A** - Excellent)

## 🔬 1. Technical Deep Dive / 技术深度拆解
This thesis is a work focused on Vacuum Tube Oscillators for Induction Heating.
*(本论文专注于感应加热的真空管振荡器研究。)*

*   **Core Hardware / 核心硬件**: Modeled a circuit using the **6S18S Triode** (Vacuum Tube).
    *(使用 6S18S 三极管（真空管）对电路进行建模。)*
*   **Simulation Tool / 仿真工具**: Used **Wolfram Mathematica** (NDSolve) to solve the differential equations of the push-pull oscillator.
    *(使用 Wolfram Mathematica (NDSolve) 求解推挽振荡器的微分方程。)*
*   **Key Circuit / 关键电路**: Push-Pull topology with a resonant tank circuit (L1, L2, C).
    *(带有谐振回路（L1, L2, C）的推挽拓扑。)*

## 👨‍🏫 2. The Opponent's Microscope / Jan Koller 视角
**Verdict / 结论**: **Excellent (A)**.
Koller was thoroughly impressed by the depth of physical understanding and the hardware effort.
*(Koller 对物理理解的深度和硬件工作印象深刻。)*

### 🟢 Praise / 表扬
1.  **Hardware Effort**: "Velmi kladně hodnotím množství práce s hardware."
    *(Translation: "I evaluate the amount of work with hardware very positively.")*
    *(中文：我对硬件工作量给予非常积极的评价。)*
    *   *Note*: Even though the thesis title says "Modeling", the student apparently did significant hardware validation, which Koller LOVED.
    *   *(注：尽管题目是“建模”，但学生显然做了大量的硬件验证，Koller 对此非常喜爱。)*
2.  **Theory**: "The student showed deep understanding."
    *(中文：学生展示了深刻的理解。)*

### 🔴 Criticism / 批评
1.  **Clarity**: "Some sentences are difficult to understand." (Některé věty textu jsou však těžko srozumitelné).
    *(中文：有些句子难以理解。)*

### ❓ Defense Questions / 答辩真题
1.  **Graph Interpretation**: "Menší záporné hodnoty jsou blíž k nule nebo dál?"
    *(Translation: Are "smaller negative values" closer to zero or further away?)*
    *(中文：“较小的负值”是指离零更近还是更远？)*
    *   *Analysis*: A pedantic math question. He checks if you understand the terminology of your own graphs.
    *   *(分析：一个迂腐的数学问题。他在检查你是否理解自己图表的术语。)*

## 🛡️ 3. Defense Strategy for You / 国考对策
**Relevance / 关联度: Low (Vacuum Tubes), but Behavior is Key.**

*   **The "Hardware Bonus" / 硬件加成**: This confirms the #1 Rule: **If you build hardware, you win.** You are building an ESP32 PCB. **Bring it.** Show it. It is your shield against a bad grade.
    *(这确认了第一规则：如果你做硬件，你就赢了。你正在做 ESP32 PCB。带上它。展示它。它是你抵御低分的盾牌。)*
*   **Math Precision / 数学精度**: If you have graphs with negative values (e.g. dBm signal strength), be careful with wording. "Smaller signal" usually means -90dBm (physically smaller power), but mathematically -90 < -50. Be precise: "Lower signal strength" vs "Lower value".
    *(如果你有负值图表（如 dBm 信号强度），措辞要小心。“较小的信号”通常指 -90dBm（物理上更小的功率），但数学上 -90 < -50。要精确区分“更低的信号强度”与“更小的数值”。)*
