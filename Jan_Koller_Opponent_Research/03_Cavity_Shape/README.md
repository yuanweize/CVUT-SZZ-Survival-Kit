# Influence of Cavity Shape on Discharge / 绝缘材料中气隙形状对放电的影响
**Author:** Vojtěch Douda
**Date:** 2021-01-19
**Supervisor:** Ing. Ondřej Šefl (Grade: **B** - Very Good)
**Opponent:** Ing. Jan Koller, Ph.D. (Grade: **B** - Very Good)

## 🔬 1. Technical Deep Dive / 技术深度拆解
Analysis of Partial Discharges (PD) in solid insulation.
*(固体绝缘中局部放电 (PD) 的分析。)*

*   **Method / 方法**: Used a "waiting for cosmic ray" method to trigger ionization?
    *(使用“等待宇宙射线”的方法来触发电离？)*
*   **Modeling / 建模**: Simulated electric fields in cavities.
    *(模拟气隙中的电场。)*
*   **Mismatch / 不匹配**: Simulation differed from reality.
    *(模拟与现实不同。)*

## 👨‍🏫 2. The Opponent's Microscope / Jan Koller 视角
**Verdict / 结论**: **Very Good (B)**.
*(Note: Previous draft said C, but text says B "Velmi dobře". I corrected this.)*
*(注：之前的草稿说是 C，但原文说是 B "Velmi dobře"。我修正了这一点。)*

### 🔴 Criticism & Questions / 批评与提问
Koller asked highly specific **Physics Questions**:
*(Koller 问了非常具体的**物理问题**：)*

1.  **Practicality / 实用性**: "Nebylo by jednodušší místo čekání na částici kosmického záření pořídit zářič s nízkou aktivitou?"
    *(Translation: "Wouldn't it be simpler to use a low-activity emitter instead of waiting for a cosmic ray particle?")*
    *(中文：弄个低活性的辐射源，不比傻等宇宙射线粒子简单吗？)*
    *   *Takeaway*: He prefers **reliable engineering solutions** over passive/random ones.
    *   *(教训：他更喜欢**可靠的工程解决方案**，而不是被动/随机的方案。)*
2.  **Terminology Check / 术语检查**: "Explain the sentence: 'free particle... triggers ionization'. Is it a photon, beta radiation, or electron?"
    *(中文：解释句子：“自由粒子...触发电离”。它是光子、贝塔射线还是电子？)*

## 🛡️ 3. Defense Strategy for You / 国考对策
**Relevance / 关联度: Medium**

*   **Active vs Passive / 主动 vs 被动**: In your IoT project, don't rely on "random" events. Force the state.
    *(在你的 IoT 项目中，不要依赖“随机”事件。强制状态。)*
    *   (e.g., Don't wait for WiFi to disconnect to test reconnection; force a disconnect).
        *(例如，不要等待 WiFi 断开来测试重连；强制断开它。)*
*   **Define your terms / 定义术语**: If you say "Packet Loss", define if it's Layer 2 (WiFi) or Layer 4 (TCP).
    *(如果你说“丢包”，定义它是第二层（WiFi）还是第四层（TCP）。)*
