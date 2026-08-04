# 1:2 Demultiplexer using Verilog

## Overview

A **1:2 Demultiplexer (DEMUX)** is a combinational logic circuit that routes a single input (`D`) to one of two outputs (`Y0` or `Y1`) based on the value of the select signal (`Sel`).

### Inputs

- **D** : Data Input
- **Sel** : Select Line

### Outputs

- **Y0**
- **Y1**

---

## Truth Table

| D | Sel | Y0 | Y1 |
|---|-----|----|----|
| 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |

---

## Logic Equations

Y0 = D & ~Sel

Y1 = D & Sel

---

## Files

- `demux1x2.v` – Verilog design
- `demux1x2_tb.v` – Testbench
- `simulation/output.txt` – Simulation results
- `simulation/waveform.png` – Waveform screenshot
- `README.md` – Project documentation

---

## Simulation

Compile:

```bash
iverilog -o demux1x2 demux1x2.v demux1x2_tb.v
```

Run:

```bash
vvp demux1x2
```

View waveform:

```bash
gtkwave demux1x2.vcd
```

---

## Expected Output

```text
D Sel | Y0 Y1
0  0  | 0  0
1  0  | 1  0
0  1  | 0  0
1  1  | 0  1
```

---

## Author

Your Name