# Memristor-Based Chaotic Oscillator

**Repository Description:** Investigating memristor-based chaotic oscillators for cryptography and secure communications. This is a simulation and modeling project exploring the hardware implementation of chaotic systems.

---

### Project Overview

This repository contains the models, simulations, and analysis of chaotic oscillator circuits that replace traditional nonlinear components with **memristors**.

The primary goal is to investigate the dynamic behavior of these circuits and evaluate their feasibility for low-power hardware applications, specifically for **True Random Number Generation (TRNG)** and data encryption in IoT devices.

### What is a Memristor?

The memristor ("memory resistor") is the fourth fundamental passive circuit element, joining the resistor, capacitor, and inductor. Its key feature is that its resistance changes based on the history of the current that has passed through it, allowing it to "remember" its state.

### Why Use Memristors for Chaos?

Chaotic systems (like the Lorenz or Rössler attractors) require **nonlinear components** to function. Traditionally, this is achieved with complex analog circuits.

Memristors are **inherently nonlinear** and possess memory. This makes them ideal for building chaotic oscillators that are:
* **Simpler:** They require fewer components.
* **Smaller:** Ideal for integration into VLSI chips.
* **More Efficient:** They consume less power, which is critical for IoT and edge devices.

---

### Project Objectives

1.  **Model:** Develop the mathematical model of a memristor (e.g., the HP model or a V-TEAM model).
2.  **Simulate:** Create a chaotic oscillator circuit (e.g., a Chua or Rössler oscillator) by replacing its standard nonlinear element with the memristor model.
3.  **Analyze:** Simulate the circuit using MATLAB/Simulink or LTspice to analyze its dynamic behavior.
4.  **Verify:** Generate bifurcation diagrams and chaotic attractors to prove the system behaves chaotically under specific parameters.

---

### Tech Stack

* **Modeling & Simulation:** MATLAB, Simulink
* **Circuit Simulation:** LTspice, PSpice
* **Data Analysis:** Python (with NumPy & Matplotlib)
* **Documentation:** LaTeX

---

### Results & Simulations



#### Memristor-Generated Chaotic Attractor
*(The attractor is the shape traced out by the circuit's voltage and current. Its complex, non-repeating, and unpredictable nature is what makes it a perfect source for generating secure, random-like signals for cryptography.)*

![Memristor chaotic attractor plot](https://github.com/leslie-swe/Memristor-Chaotic-Oscillator/blob/main/Memristor%20Simulations/Memristor%20attractor/Memsistor%20Attractor.png)

#### Bifurcation Diagram
*(This diagram plots the system's behavior (labeled "total maximum X" on the Y-axis) as a single control parameter (labeled "w" on the X-axis) is increased from 0 to 10)*

![Memristor bifurcation diagram](https://github.com/leslie-swe/Memristor-Chaotic-Oscillator/blob/main/Memristor%20Simulations/Memristor%20Bifurcation%20Diagram/Memristor%20Bifurcation%20diagram.png)

---

### Future Goals (Next Steps)

* [ ] Simulate the finalized circuit in LTspice for component-level analysis.
* [ ] Analyze the randomness of the generated time-series using the NIST statistical test suite.
* [ ] Design a simple image encryption scheme based on this oscillator.
