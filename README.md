# 8-Bit Data Transmitter and Receiver with Bit Reversal (Verilog HDL)

## 📌 Project Overview
This project implements a complete 8-bit data transmission and reception system in **Verilog HDL** using **Xilinx Vivado**.

The system transmits 100 sequential 8-bit data values from a transmitter to a receiver. Starting from the 50th transmission, the transmitter reverses the bit order of the data before sending it. The receiver then reverses the received data again to recover the original transmitted value.

The project was designed using a modular RTL approach with separate Verilog modules for each block.

---

# 🚀 Features
- 8-bit data transmission system
- Bit reversal logic
- Receiver-side data recovery
- Modular RTL design
- Separate transmitter and receiver architecture
- Counter-based control logic
- Top-level integration module
- Complete testbench for simulation
- Vivado waveform verification

---

# 🛠️ Modules Used

## 1. Bit Reverser
Reverses the bit order of 8-bit input data.

### Example

```text
Input  : 10110010
Output : 01001101
```

---

## 2. Counter Module
Controls the transmission count from 0 to 100.

Used for:
- Transmission sequencing
- Enabling reversal logic after the 50th transmission

---

## 3. Transmitter Module
Responsible for:
- Generating/transmitting data
- Applying bit reversal after the 50th count
- Sending data to the communication channel

---

## 4. Receiver Module
Responsible for:
- Receiving transmitted data
- Detecting reversed data condition
- Reversing data again to reconstruct original values

---

## 5. Top Module
Integrates:
- Transmitter
- Receiver
- Internal communication wiring

---

## 6. Testbench
Simulates:
- Clock generation
- Reset logic
- Complete TX/RX operation
- Waveform verification

---

# 📊 System Architecture

```text
                       TOP MODULE
------------------------------------------------
|                                              |
|  TRANSMITTER                                |
|   ├── counter_tx                            |
|   ├── data_generator                        |
|   ├── reverser (after 50th data)            |
|   └── tx_data                                |
|                                              |
|  RECEIVER                                   |
|   ├── counter_rx                            |
|   ├── reverse_again (after 50th data)       |
|   └── final_data                            |
|                                              |
------------------------------------------------
```

---

# 🔄 Data Flow

## Transmission 0–49
- Data transmitted normally

## Transmission 50–100
- Data bits reversed before transmission

## Receiver Operation
- Receiver reverses incoming data again
- Original data successfully reconstructed

---

# 📷 Simulation Results
Waveform simulation was performed in Xilinx Vivado to verify:
- Counter operation
- Bit reversal logic
- Correct transmitter/receiver synchronization
- Accurate reconstruction of original data

<img width="1566" height="266" alt="Screenshot 2026-05-10 161632" src="https://github.com/user-attachments/assets/a20a27b0-fe42-4cca-bec3-0fbaa17b7b0b" />
<img width="1557" height="282" alt="Screenshot 2026-05-10 161711" src="https://github.com/user-attachments/assets/7f95b72c-4ba6-449b-9638-97d3ef7d0fef" />
<img width="1567" height="297" alt="Screenshot 2026-05-10 161735" src="https://github.com/user-attachments/assets/be9904d1-3e4e-43ac-be3d-18a50580c0c6" />
<img width="1563" height="297" alt="Screenshot 2026-05-10 161824" src="https://github.com/user-attachments/assets/6c7e9881-e585-4a49-8593-26b13952d0b4" />
<img width="1515" height="277" alt="Screenshot 2026-05-10 162353" src="https://github.com/user-attachments/assets/03672049-0132-47b1-a2e9-ba7310028a3d" />
<img width="1528" height="281" alt="Screenshot 2026-05-10 162429" src="https://github.com/user-attachments/assets/0a93541f-e405-4fb1-be66-72c987dbd4d7" />
<img width="1502" height="250" alt="Screenshot 2026-05-10 162502" src="https://github.com/user-attachments/assets/a246b0dd-3976-4fec-b244-9ff16efbf32a" />
<img width="1525" height="247" alt="Screenshot 2026-05-10 162530" src="https://github.com/user-attachments/assets/1b7ab119-48f6-4159-ae45-01ba76574309" />
<img width="1435" height="203" alt="Screenshot 2026-05-10 162625" src="https://github.com/user-attachments/assets/949e98d1-e41e-4966-994d-28b6b535a7d3" />

---

# ⚠️ Challenges Faced During Development
During development, several RTL/simulation issues were encountered and debugged, including:
- Floating (`Z`) signals
- Unknown (`X`) states
- Port connection mismatches
- Waveform visibility issues in Vivado
- Module hierarchy debugging
- Counter synchronization
- Simulation launch/runtime issues

This project significantly improved understanding of:
- RTL hierarchy
- Modular hardware design
- Simulation debugging
- Vivado workflow

---

# 🧠 Tools Used
- Verilog HDL
- Xilinx Vivado 2023.2
- Vivado Simulator (xsim)

---

# 📚 Concepts Learned
- RTL Design
- Module Instantiation
- Sequential Logic
- Combinational Logic
- Counters
- Testbench Writing
- Simulation Debugging
- FPGA Design Flow

---

# ▶️ Running Simulation in Vivado

1. Open the project in Vivado  
2. Add all `.v` source files  
3. Set `testbench.v` as the Top Module  
4. Run **Behavioral Simulation**  

If internal signals do not automatically appear in the waveform window, run the following TCL commands:

```tcl console
create_wave_config
add_wave -recursive /testbench/cut/*
run 2000ns
```

> Note: `cut` is the instantiated name of the DUT (`top cut(...)`) inside the testbench.
---

# 📌 Future Improvements
- UART-based communication
- Parameterized data width
- FPGA hardware implementation
- Error detection mechanisms
- FIFO buffering

---

# 🏁 Final Outcome
The design successfully:
- Transmitted 100 8-bit values
- Reversed data after the 50th transmission
- Correctly reconstructed original data at receiver side
- Verified functionality through simulation waveforms

---

# 🔖 Tags
`Verilog` `FPGA` `Vivado` `RTL Design` `Digital Design` `VLSI` `Hardware Design`
