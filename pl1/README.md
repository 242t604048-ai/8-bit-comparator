| Input |  Size | Description          |
| ----- | ----: | -------------------- |
| A     | 8-bit | First binary number  |
| B     | 8-bit | Second binary number |
| Output        | Description     |
| ------------- | --------------- |
| `A_greater_B` | HIGH when A > B |
| `A_equal_B`   | HIGH when A = B |
| `A_less_B`    | HIGH when A < B |

Working
A > B
A == B
A < B

For example:
A = 50
B = 25

Since 50 > 25:

A_greater_B = 1
A_equal_B   = 0
A_less_B    = 0

Tools Used
Verilog HDL
Icarus Verilog / ModelSim / Vivado
GTKWave (for waveform simulation)
GitHub

📂 Files
comparator_8bit.v       → Main Verilog design
comparator_8bit_tb.v    → Testbench
README.md               → Project documentation
output.txt              → Simulation output
▶️ Simulation

Using Icarus Verilog:

iverilog -o comparator_sim comparator_8bit.v comparator_8bit_tb.v
vvp comparator_sim

For waveform generation, you can add $dumpfile and $dumpvars to the testbench and open the generated .vcd file using GTKWave.

📊 Example
A = 8'b00110010  (50)
B = 8'b00011001  (25)


A > B = 1
A = B = 0
A < B = 0
🎯 Applications
Digital processors
ALU design
Address comparison
Control circuits
Sorting circuits
Digital systems
👩‍💻 Author

pallavi