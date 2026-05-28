![Year](https://img.shields.io/badge/Developed-2024-blue)

# 📡 Hamming Encoder and Decoder

This repository contains the digital logic implementation of a Hamming code encoder and decoder. The system is designed to process data blocks, generate parity bits to ensure data integrity, and enable the automatic detection and correction of single-bit errors during transmission.

## ⚙️ System Architecture
* **Encoder:** Calculates and inserts redundant parity bits into the raw data stream at power-of-two positions to form a complete Hamming codeword.
* **Decoder & Error Correction:** Receives the transmitted codeword, recalculates the parity, and generates a syndrome word. If a single-bit error occurs in the noisy channel, the decoder isolates the exact location and corrects the flipped bit.

## 🗂️ Project Structure
* `/src`: Contains the primary source code for the encoding and decoding algorithms.
* `/results`: Execution logs, test cases, and outputs demonstrating successful error detection and correction.

## 🚀 How It Works
1.  **Encoding:** The input data block is processed to compute the necessary parity bits based on the data payload.
2.  **Transmission:** The completed codeword is transmitted. (Test cases often introduce an intentional bit-flip to simulate a noisy environment).
3.  **Decoding:** The receiver evaluates the incoming word. A non-zero syndrome identifies the precise index of any corrupted data.
4.  **Correction:** The corrupted bit is inverted, flawlessly restoring the original data block.
