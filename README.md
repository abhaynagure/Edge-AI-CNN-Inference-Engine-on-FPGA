# 🚀 Edge AI CNN Inference Engine on FPGA

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-orange)
![FPGA](https://img.shields.io/badge/Target-FPGA-success)
![RTL](https://img.shields.io/badge/Design-RTL-red)
![CNN](https://img.shields.io/badge/AI-CNN-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

> Hardware implementation of a lightweight Convolutional Neural Network (CNN) inference engine using Verilog HDL and synthesized using Xilinx Vivado 2026.1.

---

## 📖 Project Overview

This project implements a complete CNN inference pipeline entirely in Verilog HDL for FPGA-based Edge AI applications.

The design demonstrates how image data flows through convolution, activation, pooling, flattening, dense classification, and final prediction.

Unlike software implementations, every stage is implemented as dedicated RTL hardware modules.

## 🏗 CNN Hardware Architecture

<p align="center">
  <img src="docs/images/cnn_architecture.png" width="900">
</p>

The proposed FPGA accelerator performs CNN inference through a pipelined hardware architecture consisting of convolution, activation, pooling, flattening, dense classification, and ArgMax prediction.

---


## ✨ Features

- ✅ 3×3 Convolution Engine
- ✅ Feature Map Generator
- ✅ ReLU Activation
- ✅ 2×2 Max Pooling
- ✅ Flatten Layer
- ✅ Fully Connected Dense Layer
- ✅ ArgMax Classifier
- ✅ Parameterized RTL Modules
- ✅ Weight Memory
- ✅ Kernel Memory
- ✅ Multi-Kernel Convolution
- ✅ Parallel Processing Architecture
- ✅ FPGA Ready Design

---

## 🛠 Tools Used

- Verilog HDL
- Xilinx Vivado 2026.1
- FPGA RTL Design
- Digital Logic Design
- Git & GitHub

---

## 📂 Project Structure

```text
rtl/
testbench/
constraints/
memory/
docs/
vivado/
README.md
LICENSE
```

---

## 📌 CNN Processing Pipeline

```
Input Image (5×5)

        │

        ▼

3×3 Convolution

        │

        ▼

ReLU Activation

        │

        ▼

2×2 Max Pooling

        │

        ▼

Flatten Layer

        │

        ▼

Dense Layer

        │

        ▼

ArgMax Classifier

        │

        ▼

Predicted Class
```

---

## 🚀 FPGA Design Flow

RTL Design

↓

Simulation

↓

Synthesis

↓

Implementation

↓

Bitstream Generation

↓

FPGA Deployment

---

## 📈 Current Status

- ✔ RTL Design Completed
- ✔ Functional Simulation Completed
- ✔ Synthesis Completed
- ✔ Timing Analysis Completed
- ✔ GitHub Repository Published

---

## 🔮 Future Improvements

- Multi-channel RGB image support
- Multiple convolution layers
- Batch Normalization
- Softmax Output Layer
- AXI Interface
- BRAM Image Storage
- FPGA Board Deployment

---

## 👨‍💻 Author

**Abhay Nagure**

Electronics & Communication Engineering Student

Passionate about FPGA Design, Embedded Systems and Edge AI.

---

## 📄 License

This project is licensed under the MIT License.
