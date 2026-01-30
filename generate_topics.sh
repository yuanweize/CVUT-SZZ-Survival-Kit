#!/bin/bash

# Function to create a topic file
create_topic() {
    local dir=$1
    local filename=$2
    local title=$3
    local cn_content=$4
    local en_terms=$5
    
    mkdir -p "$dir"
    cat <<EOF > "$dir/$filename"
\section{$title}

\begin{tcolorbox}[colback=yellow!10!white,colframe=yellow!50!black,title=\textbf{Exam Cheat Sheet / 极速复习}]
\begin{itemize}
    \item \textbf{Core Concept}: $cn_content
    \item \textbf{Key Formula}: \$ \dots \$
    \item \textbf{Watch Out}: Common exam pitfalls.
\end{itemize}
\end{tcolorbox}

\subsection{Concepts / 核心概念}
\begin{keywords}
\textbf{$en_terms}
\end{keywords}
$cn_content

\subsection{Formulas / 公式}
\begin{equation}
    x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
\end{equation}

\subsection{Exam Questions / 常考题型}
\begin{itemize}
    \item Define ...
    \item Calculate ...
\end{itemize}
EOF
}

# 1. Mathematics
DIR="SZZ_Master_Kit/chapters/01_Math"
create_topic "$DIR" "Topic01_Linear_Algebra.tex" "Systems of Linear Equations (LAL)" "线性方程组是线性代数的核心。重点在于高斯消元法（Gaussian Elimination）、矩阵的秩（Rank）以及行列式（Determinant）的几何意义。" "Gaussian Elimination, Rank, Pivot, Determinant, Eigenvalues"
create_topic "$DIR" "Topic02_Numerical.tex" "Numerical Math (DEN)" "数值方法用于计算机近似求解。重点是浮点数误差（IEEE 754）、牛顿迭代法（Newton Method）求根。" "Floating Point, Round-off Error, Newton's Method, Interpolation"
create_topic "$DIR" "Topic03_DiffEq.tex" "Differential Equations (DEN)" "微分方程描述系统变化。重点是线性常微分方程（Linear ODE）和一阶系统的解法（分离变量法）。" "ODE, Homogeneous Solution, Particular Solution, Characteristic Equation"
create_topic "$DIR" "Topic04_Discrete.tex" "Discrete Math \& Sets (DMG)" "集合论与二元关系。重点是模运算（Modulo）、等价关系（Equivalence）和偏序（Partial Order）。" "Sets, Cardinality, Equivalence Relation, Modulo Arithmetic"
create_topic "$DIR" "Topic05_Graph.tex" "Graph Theory (DMG)" "图论基础。重点是树（Trees）、最短路径（Dijkstra）、遍历（BFS/DFS）和图的连通性。" "Vertex, Edge, Path, Cycle, Tree, Component"
create_topic "$DIR" "Topic06_Probability.tex" "Probability (PRS)" "概率分布与统计。重点是贝叶斯定理（Bayes Theorem）、正态分布（Normal Distribution）和期望值。" "Random Variable, PDF, CDF, Bayes Theorem, Expectation"

# 2. Physics
DIR="SZZ_Master_Kit/chapters/02_Phys"
create_topic "$DIR" "Topic01_Mechanics.tex" "Kinematics \& Dynamics (PH1)" "牛顿力学。重点是运动方程（Newton's Laws）、动量守恒和能量守恒。" "Velocity, Acceleration, Newton's Laws, Momentum, Energy"
create_topic "$DIR" "Topic02_Oscillations.tex" "Oscillations (PH1)" "谐振动。重点是阻尼振动（Damped）和受迫振动（Forced），与RLC电路直接对应。" "Simple Harmonic Motion, Damping, Resonance, Angular Frequency"
create_topic "$DIR" "Topic03_Fields.tex" "Physical Fields (PH1)" "电场与引力场。重点是高斯定理（Gauss Law）和电势（Potential）。" "Electric Field, Potential, Gauss Law, Flux"
create_topic "$DIR" "Topic04_Thermo.tex" "Thermodynamics (PH2)" "热力学定律。重点是熵（Entropy）、卡诺循环（Carnot Cycle）和理想气体方程。" "First Law, Entropy, Heat Capacity, Isothermal"
create_topic "$DIR" "Topic05_Waves.tex" "Waves \& Optics (PH2)" "波动理论。重点是干涉（Interference）、衍射（Diffraction）和光的折射。" "Wavelength, Frequency, Interference, Refraction"

# 3. EECS Core
DIR="SZZ_Master_Kit/chapters/03_EECS_Core"
create_topic "$DIR" "Topic01_Circuits.tex" "Circuit Analysis (ZEO)" "电路分析基础。重点是基尔霍夫定律（KCL/KVL）、戴维南定理（Thevenin）和交流电路（Phasors）。" "KCL, KVL, Thevenin, Norton, Impedance, Phasor"
create_topic "$DIR" "Topic02_Semicon.tex" "Semiconductors (ELP)" "半导体物理。重点是PN结（PN Junction）、二极管和晶体管（MOSFET/BJT）的工作区。" "PN Junction, Forward Bias, Depletion Region, MOSFET"
create_topic "$DIR" "Topic03_Electronics.tex" "Analog \& Digital Circuits (ELP)" "模拟与数字电路。重点是放大器（Op-Amp）配置和基本逻辑门电路。" "Operational Amplifier, Gain, Logic Gates, CMOS"
create_topic "$DIR" "Topic04_Micro.tex" "Microcontrollers (MIK)" "微控制器架构。重点是中断（Interrupts）、总线（Bus）、GPIO和定时器。" "Interrupt, DMA, GPIO, Timer, ADC, UART/SPI/I2C"
create_topic "$DIR" "Topic05_Algo.tex" "Algorithms (PRG/PGE)" "基本算法与数据结构。重点是排序（Sorting）、链表（Linked List）和复杂度分析（Big-O）。" "Time Complexity, Sorting, Recursion, Stack, Queue"

# 4. Specialization
DIR="SZZ_Master_Kit/chapters/04_Specialization"
create_topic "$DIR" "Topic01_EMT.tex" "EM Theory (EMT)" "电磁场理论。重点是麦克斯韦方程组（Maxwell Equations）。" "Maxwell Equations, Induction, Magnetic Field"
create_topic "$DIR" "Topic02_Logic.tex" "Logic Systems (LSP)" "数字逻辑设计。重点是组合逻辑（Karnaugh Maps）和时序逻辑（Flip-flops）。" "Combinational, Sequential, Flip-flop, Karnaugh Map"
create_topic "$DIR" "Topic03_Signals.tex" "Signals \& Systems (TES)" "信号处理基础。重点是傅里叶变换（Fourier）和采样定理（Sampling）。" "Fourier Transform, Sampling Theorem, Convolution, Impulse Response"
create_topic "$DIR" "Topic04_Machines.tex" "Electrical Machines (SP1)" "电机学。重点是感应电机（Induction Machine）和变压器（Transformer）。" "Stator, Rotor, Torque, Transformer, Induction Motor"
create_topic "$DIR" "Topic05_Materials.tex" "Materials (MVE)" "电工材料。重点是导电性、介电损耗和磁滞回线。" "Conductivity, Dielectric, Hysteresis, Permittivity"
create_topic "$DIR" "Topic06_Power.tex" "Power Systems (EN1/2)" "电力系统。重点是发电（Power Plants）和输电网络。" "Grid, Transmission, Generator, Load"
create_topic "$DIR" "Topic07_AI.tex" "AI \& Classification (KUI/RPZ)" "人工智能基础。重点是状态空间搜索（State Space Search）和分类器（Classifier）。" "State Space, BFS/DFS, Classifier, Neural Network"
create_topic "$DIR" "Topic08_Arch.tex" "Computer Arch (APO)" "计算机组成原理。重点是流水线（Pipeline）、缓存（Cache）和汇编语言。" "Pipeline, Cache, ALU, Instruction Set"
create_topic "$DIR" "Topic09_Control.tex" "Control Systems (ARI)" "控制理论。重点是反馈（Feedback）、稳定性（Stability）和PID控制器。" "Feedback, PID, Stability, Transfer Function"

echo "All topic files created successfully."
