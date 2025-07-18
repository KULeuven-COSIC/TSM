# TSM and HO-TSM Supplementary Repository

This repository provides the supplementary material corresponding to two research papers:

- [`TSM/`](./TSM/) — **Time Sharing Masking (TSM)**, published in *TCHES 2024*
- [`HO_TSM/`](./HO_TSM/) — **Higher-Order Time Sharing Masking (HO-TSM)**, published in *TCHES 2025*

Both contributions introduce efficient, low-latency masking schemes for securing hardware implementations of cryptographic algorithms against side-channel attacks. 

---

## Repository Contents

Each folder includes:

- A local `README.md` with build and verification instructions
- Verilog source files (`rtl/`)
- Synthesis scripts, verification setups and logs, netlists, and related material
- Simulation testbenches (`sim/`)

---

## Reference Publications

1. Kumar S. V., D., Dhooghe, S., Balasch, J., Gierlichs, B., & Verbauwhede, I. (2024). Time Sharing – A Novel Approach to Low-Latency Masking. *IACR Transactions on Cryptographic Hardware and Embedded Systems*, *2024*(3), 249–272. [https://doi.org/10.46586/tches.v2024.i3.249-272](https://doi.org/10.46586/tches.v2024.i3.249-272)

2. Kumar S. V., D., Dhooghe, S., Balasch, J., Gierlichs, B., & Verbauwhede, I. (2025). Higher-Order Time Sharing Masking. *IACR Transactions on Cryptographic Hardware and Embedded Systems*, *2025*(2), 235–267. [https://doi.org/10.46586/tches.v2025.i2.235-267](https://doi.org/10.46586/tches.v2025.i2.235-267)


## Artifact Evaluation

Both supplementary packages were submitted to the CHES Artifact Evaluation process and successfully passed:

* **TSM**, evaluated as part of CHES 2024, was reviewed and confirmed functional.
  [https://artifacts.iacr.org/tches/2024/a20/](https://artifacts.iacr.org/tches/2024/a20/)

* **HO-TSM**, evaluated as part of CHES 2025, was also reviewed and confirmed functional.
  [https://artifacts.iacr.org/tches/2025/a15/](https://artifacts.iacr.org/tches/2025/a15/)

---


## License

This repository is licensed under the MIT License. See the `LICENSE` file for details.

If you use this material for scientific purposes, please cite both this repository and the corresponding publications:

- *Time Sharing – A Novel Approach to Low-Latency Masking*, TCHES 2024  
- *Higher-Order Time Sharing Masking*, TCHES 2025
