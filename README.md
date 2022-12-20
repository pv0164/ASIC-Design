# ASIC-Design

This repository consists of source files for the ASIC designs of Sparse-T(HHT) accelerator. 

src/ contains the Verilog source code of the respective design

synthesis/ folder contains a simple TCL script to run Synopsys Design Compiler tool on the Verilog code. Synthesis requires licensed node libraries.

vcd_gen/ folder has the command to generate Value Change Dump (VCD) files using Synopsys VCS tool for the synthesized gate level netlist. Synthetic workloads to generate the VCD are in tb16x16, tb32x32 and tb64x64 folders. Benchamrk testbenches are in the benchmarks/ folder.

primetime/ stores the TCL script to run Synopsys Primetime tool for different workload VCDs generated.

More details can be found in the paper: https://csrl.cse.unt.edu/kavi/Research/ICCAD-2022
