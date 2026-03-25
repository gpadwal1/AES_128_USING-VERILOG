aes-128-verilog
Standard AES-128 encryption core implemented in Verilog HDL for FPGA and ASIC learning.

A hardware-optimized implementation of the Advanced Encryption Standard (AES-128) designed for FPGA and ASIC synthesis. This project follows the FIPS-197 specification and focuses on an iterative architecture to balance throughput and area efficiency

Overview
Algorithm: AES-128
Key Size: 128-bit
Block Size: 128-bit
Design Level: RTL
Language: Verilog HDL
Target: FPGA / ASIC
Architecture
The AES core consists of the following main blocks:

SubBytes – Byte substitution using AES S-box
ShiftRows – Row-wise permutation
MixColumns – Column-wise transformation
AddRoundKey – XOR with round key
Key Expansion – Generates round keys
AES Round Structure
Initial AddRoundKey
9 Standard Rounds
SubBytes
ShiftRows
MixColumns
AddRoundKey
Final Round
SubBytes
ShiftRows
AddRoundKey
Simulation & Testing
Functional simulation performed using testbench
Known AES-128 test vectors used for verification
RTL verified for correct encryption output
Tools Used
Verilog HDL
Xilinx Vivado / ModelSim / Icarus Verilog (any RTL simulator)
Usage
Compile all Verilog files
Run the testbench
Provide plaintext and key inputs
Observe encrypted ciphertext output
Applications
Cryptography learning
FPGA / ASIC design practice
Secure embedded systems
Academic projects
Author
Gopal Padwal
B.Tech – Electronics and Communication Engineering

License
This project is intended for educational purposes.
