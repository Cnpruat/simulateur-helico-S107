# Simulateur d'hélicoptère (MATLAB)

L'idée de ce projet était de modéliser puis de simuler le fonctionnement d'un hélicoptère de modélisme type [Syma S107](https://www.techpunt.nl/fr/syma-s107g-helicopter.html), en utilisant la mécanique Lagrangienne.

---

# 🎯 Principe

Pour en arriver là, nous avons mis le système sous la forme de 5 équations de Lagrange et avons expérimentalement caractériser le comportement de l'hélicopètre. 
Nous avons ainsi pu implémenter ces équations et caractéristiques dans MATLAB et Simulink pour fabriquer un simulateur de l'hélicoptère.   

La démarche complète est détaillée dans le [compte rendu](compte-rendu.pdf). 


The repository includes:
- The complete report (PDF and DOCX)
- MATLAB scripts
- Simulink models
- Figures and plots used in the analysis

---

# 📁 Repository Structure

```
TP2_Helicoptere/
│
├── CR TP2 Groupe 2.pdf               # Full project report (recommended reading)
├── CR TP2 Groupe 2.docx              # Editable version of the report
│
├── Final.m                           # Main MATLAB script for running the full simulation
├── Final_sim.slx                     # Main Simulink model
├── Sim_1D.slx                        # Simplified 1‑D dynamic simulation
│
├── Assets/                           # Additional resources
├── Images/                           # Illustrations used for documentation
├── Plot/                             # Generated plots from simulations
│
└── MK06 TP2 2026.pdf                 # Assignment / project guidelines
```

---

# 🚁 Features

- Complete **Lagrangian dynamic model** of a small helicopter  
- Simulation of:
  - Linear motion  
  - Angular motion  
  - Stabilisation behaviour  
  - Actuator effects  
- MATLAB scripts for numerical integration  
- Simulink models for block‑based simulation  
- Plots and numerical results included

---

# ▶️ How to Use

1. Open MATLAB (R2021a or later recommended).
2. Add the repository folder to your MATLAB path:
   ```matlab
   addpath(genpath('TP2_Helicoptere'));
   ```
3. To run the full simulation:
   ```matlab
   run('Final.m');
   ```
4. To open the main Simulink model:
   ```matlab
   open_system('Final_sim.slx');
   ```

---

# 📄 Report

The full explanation of the methodology, modelling, and simulation results is in:

**`CR TP2 Groupe 2.pdf`**

It includes:
- Physical description of the system  
- Experimental setup  
- Lagrangian modelling  
- Simulation and validation  
- Commented results  

---

# 👨‍🏭 Auteurs

**Valentin Baretta**, **Amandine Cardaillac**, **Armand Laborie**, **Colin Larivière**, **Thomas Lemoine**, **Artur Marques**, **Dorian Renaud**, **Purvesh Jankee**, **Yogesh Horil**, **Axel Fau**, **Raphaël Gryzbowkski**, **Antonin Delmas**, **Macéo Amblard**, **Pierre Bourrandy** - *ENSIL-ENSCI mécatronique*

Ce projet a été réalisé dans le cadre du module de mécanique Lagrangienne de 5ème année spécialité mécanique, sous la direction de **M. David Grossoleil**.

## Contact

pierre.bourrandy@etu.unilim.fr (*ENSIL-ENSCI*)

