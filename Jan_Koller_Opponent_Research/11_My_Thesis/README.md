# Application of Servers and Unix-like Systems for Sensor Control in Smart Homes / 服务器与Unix类系统在智能家居传感器控制中的应用
**Author:** Yuan Weize (You / 你)
**Date:** 2026-01-26
**Supervisor:** Prof. Ing. Miroslav Husák, CSc. (Grade: **A** - Excellent)
**Opponent:** Ing. Jan Koller, Ph.D. (Grade: **B** - Very Good)

## 🔬 1. Technical Deep Dive / 技术深度拆解
**Your Project Content / 你的项目内容**:
*   **System**: Smart Home utilizing Unix-like servers (Linux).
*   **Sensors**: Integrated sensors for fall detection and environmental monitoring.
*   **Algorithm**: Fall detection using **Acceleration (Acc)** and **Angular Velocity (Gyro)**.

## 👨‍🏫 2. The Opponent's Microscope / Jan Koller 视角
**Verdict / 结论**: **Very Good (B)**.
*   **General**: "The bachelor's thesis is solidly written." (论文写得很扎实。)
*   **Critique**: "The flow charts are sometimes little bit atypical."
    *(流程图有时有点非典型。)*
    *   *Analysis*: This confirms his "Formal Pedant" trait. He looked closely at your diagrams. Standard UML/ISO flowchart symbols matter to him.

### ❓ Defense Questions / 答辩真题 (Must Prepare!)
**The Question**:
"Can you explain why a combination of acceleration and angular velocity is used in fall detection?"
*(你能解释为什么跌倒检测要结合使用加速度和角速度吗？)*

## 🛡️ 3. Defense Strategy for You / 国考对策 (Urgent)
**This is the question he WILL ask. Here is the perfect answer.**

### 💡 The Perfect Answer (满分回答)
You must explain that **Acceleration alone is not enough**.

*   **Slide / 话术**:
    > "Distinguished opponent, thank you for the question.
    > We use the combination because **Acceleration** alone generates false positives.
    > 1.    **Acceleration (Accelerometer)** measures the *impact force* (G-force). However, sitting down quickly or jumping also creates high G-force.
    > 2.    **Angular Velocity (Gyroscope)** measures the *change in orientation* (Space rotation).
    >
    > **A true fall** has a specific signature:
    >   *   **Phase 1**: Rapid change in orientation (Gyro spikes) as the body loses balance.
    >   *   **Phase 2**: High impact force (Acc spikes) when hitting the ground.
    >   *   **Phase 3**: Static orientation (User is lying horizontal).
    > By fusing both sensors (Sensor Fusion), we can filter out daily activities like jumping."

### 📝 Chinese Explanation / 中文解释
单靠加速度计会有误报。
*   **加速度计**测的是*冲击力*。但快速坐下或跳跃也会产生大冲击力。
*   **陀螺仪**测的是*姿态变化*。
*   **真正的跌倒**有一个特征链条：先是失去平衡导致姿态剧烈变化（陀螺仪峰值），然后是撞击地面导致冲击力（加速度峰值），最后是躺在地上不动（姿态静止）。
只有**传感器融合 (Sensor Fusion)** 才能区分“真跌倒”和“剧烈运动”。
