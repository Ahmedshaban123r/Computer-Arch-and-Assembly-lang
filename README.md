# 🧮 Computer Architecture & Assembly Language Repository

This repository contains SystemVerilog implementations and testbenches for key building blocks in computer architecture.  
It currently includes the **Parametrizable ALU** and the **4:1 Multiplexer (MUX)** modules.

---

## 📁 Repository Structure

📁 Computer-Architecture-Assembly/
│
├── ALU/
│ ├── ALU.sv # Parametrizable ALU module
│ └── tb_ALU.sv # ALU testbench
│
├── MUX/
│ ├── MUX4to1.sv # Parametrizable 4:1 MUX module
│ └── tb_MUX4to1.sv # MUX testbench
│
└── README.md

---

## ⚙️ Tools Used

- **ModelSim / QuestaSim** – for SystemVerilog simulation  
- **VS Code** – for code editing and organization  

---

## ▶️ How to Run Simulations

### 🔹 ALU Simulation
1. Open ModelSim
2. Compile and simulate:
   ```bash
   vlog ALU.sv
   vlog tb_ALU.sv
   vsim tb_ALU
   add wave *
   run 100ns
   🧠 Summary
Module	Description	Testbench
ALU	Parametrizable arithmetic and logic unit supporting add, sub, AND, OR, XOR, NOR, shifts	✅ tb_ALU.sv
MUX4to1	4-to-1 multiplexer with parameterizable width	✅ tb_MUX4to1.sv
