# 🔐 AES-128 Hardware Accelerator (Verilog RTL)

A hardware-optimized implementation of the **Advanced Encryption Standard (AES-128)** designed for FPGA and ASIC synthesis.  
This project follows the **FIPS-197 specification** and utilizes an **iterative architecture** to balance high throughput with hardware resource efficiency.

---

## 🛰️ Project Overview

- **Algorithm:** AES-128 (128-bit block & key size)  
- **Design Level:** Register Transfer Level (RTL)  
- **HDL Language:** Verilog HDL  
- **Target Platforms:** FPGA (Xilinx/Intel) & ASIC Learning  

---

## 🏗️ Hardware Architecture

The AES core is designed using modular blocks to ensure area efficiency:

- **SubBytes**  
  Performs non-linear byte substitution using the AES S-box  

- **ShiftRows**  
  Executes row-wise permutation for data diffusion  

- **MixColumns**  
  Performs column transformation using Galois Field arithmetic  

- **AddRoundKey**  
  Executes a bitwise XOR operation between the state and round key  

- **Key Expansion**  
  Generates 10 round keys from a 128-bit master key  

---

## 🔄 AES Round Structure

The encryption process is controlled using a **Finite State Machine (FSM)**:

### 🔹 Initial Round
- AddRoundKey  

### 🔹 9 Standard Rounds
- SubBytes → ShiftRows → MixColumns → AddRoundKey  

### 🔹 Final Round
- SubBytes → ShiftRows → AddRoundKey  

---

## 📂 Project Structure

```text
AES_128_USING_VERILOG/
│── src/                   # Source files
│   ├── aes_top.v          # Top-level module
│   ├── subbytes.v         # S-Box implementation
│   ├── shiftrows.v        # Row permutation
│   ├── mixcolumns.v       # Column transformation
│   ├── addroundkey.v      # XOR logic
│   └── key_expansion.v    # Key schedule logic
│
│── tb/                    # Verification
│   └── aes_tb.v           # Testbench
│
│── output_images/         # Output images
│   ├── waveform.png
│   └── schematic.png
│
└── README.md
```
## 🛠️ Simulation & Verification

- **Functional Verification:** Verified using a dedicated Verilog testbench  
- **Standard Compliance:** Validated using FIPS-197 Known Answer Test (KAT) vectors  
- **Waveform Analysis:** Timing and data paths verified using Vivado / GTKWave  

---

## 📊 Example Test Vector

| Parameter   | Value |
|------------|------|
| Plaintext  | `00112233445566778899aabbccddeeff` |
| Key        | `000102030405060708090a0b0c0d0e0f` |
| Ciphertext | `69c4e0d86a7b0430d8cdb78070b4c55a` |

---

## 📈 Simulation Waveform

The waveform below illustrates plaintext to ciphertext transformation:

![AES Waveform]([https://github.com/gpadwal1/AES_128_USING-VERILOG/blob/main/output_images/waveform.png?raw=true](https://drive.google.com/file/d/1Coe6P_lZSCqeQ3Y5DF4DW6cjRTj5WltM/view?usp=drive_link))

---

## 🧩 RTL Schematic

Synthesized datapath

![AES Schematic]([https://github.com/gpadwal1/AES_128_USING-VERILOG/blob/main/output_images/schematic.png?raw=true](https://drive.google.com/file/d/1bLTTftvC4owJoExgG_5CigXq_8TNBErH/view?usp=drive_link))

---

## 🚀 Usage

### ▶️ Using Icarus Verilog


# Compile
iverilog -o aes_out src/*.v tb/aes_tb.v

# Run simulation
vvp aes_out

# View waveform
gtkwave dump.vcd
### ▶️ Using Xilinx Vivado

1. Create a new project  
2. Add files from `src/` directory  
3. Add `tb/aes_tb.v` as simulation source  
4. Run Behavioral Simulation  

---

## 💡 Applications

- Hardware security prototyping  
- Secure embedded systems  
- FPGA / ASIC design practice  
- Cryptography research and academic projects  

---

## 👨‍💻 Author

**Gopal Padwal**  
B.Tech – Electronics and Communication Engineering  

- 🔗 LinkedIn: https://linkedin.com/in/padwal-gopal-g06  
- 💻 GitHub: https://github.com/gpadwal1  

---

## 📄 License

This project is intended for **educational purposes only**.
