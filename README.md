# 4-bit ALU (Arithmetic Logic Unit)

## Description
A simple 4-bit ALU implemented in Verilog that performs:
- ADD
- SUB
- AND
- OR
- XOR  
Includes **Zero**, **Carry**, and **Overflow** flags.

## Tools
- Icarus Verilog
- ModelSim
- Vivado

## Files
- `ALU_4bit.v` → Main ALU module  
- `tb_ALU_4bit.v` → Testbench

## Example Output
| Sel | Operation | A | B | Result | Carry | Zero | Overflow |
|------|------------|----|----|--------|--------|--------|-----------|
| 000 | ADD | 0101 | 0011 | 1000 | 0 | 0 | 0 |
| 001 | SUB | 1000 | 0010 | 0110 | 1 | 0 | 0 |
| 010 | AND | 1100 | 1010 | 1000 | 0 | 0 | 0 |
| 011 | OR | 1100 | 1010 | 1110 | 0 | 0 | 0 |
| 100 | XOR | 1100 | 1010 | 0110 | 0 | 0 | 0 |

## Author
**BIHAR GOURAV**
