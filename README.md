# 🚁 Simulateur d'hélicoptère (MATLAB)

L'idée de ce projet était de modéliser puis de simuler le fonctionnement d'un hélicoptère de modélisme type [Syma S107](https://www.techpunt.nl/fr/syma-s107g-helicopter.html), en utilisant la mécanique Lagrangienne.

Ce projet était l'objet d'un travaux pratique dont les attendus sont détaillés dans l'[énoncé](énoncé.pdf).

---

# 🎯 Principe

Pour en arriver là, nous avons mis le système sous la forme de 5 équations de Lagrange et avons expérimentalement caractériser le comportement de l'hélicopètre. 
Nous avons ainsi pu implémenter ces équations et caractéristiques dans MATLAB et Simulink pour fabriquer un simulateur de l'hélicoptère.   

La démarche complète est détaillée dans le [compte rendu](compte-rendu.pdf). 

---

##  Fonctionnalités

- Modèle dynamique Lagrangien de l'hélicoptère sur ses coordonnées (X,Y,Z) et ses angles de lacet (α) et de tangage (β)
- Asservissement de l'altitude de l'hélicoptère (Z) et de son angle de lacet (α) 
- Possibilité de définir un [plan de vol](https://youtu.be/C3m0J9K8cA4)
- Affichage de toutes les variables internes et finales du système
- Estimation de la consommation de l'hélicoptère sur son vol
---

## Fonctionnement

Simulateur réalisé et testé sur *MATLAB R2021b*.

1. Ouvrir MATLAB
2. Ouvrir le [programme principal](Final.m)
3. Régler les conditions initiales (ligne 42 à 54)
   ```matlab
   %Positions et vitesses initiales
   x0 = 0;                 % [m]
   x0_p = 0;               % [m/s]
   y0 = 0;
   y0_p = 0;
   z0 = 0;
   z0_p = 0;

   %Orientations et vitesses angulaires initiales
   alpha0 = 0;             % [rad]
   alpha0_p = 0;           % [rad/s]
   beta0 = 0;
   beta0_p = 0;
   ```
4. Lancer le programme

Tous les affichages apparaissent alors et un [affichage dynamique](https://youtu.be/C3m0J9K8cA4) se lance afin de montrer la trajectoire empruntée par l'hélicoptère.  

---

## Modification du plan de vol

Il est possible de modifier le plan de vol par défaut et donc la trajectoire empruntée par l'hélicoptère :

1. Ouvrir le modèle [Simulink](Final_sim.slx)
2. Identifier les blocs **Repeating sequence** en amont des régulateurs PID qui contrôlent respectivement (de haut en bas)
   - Consigne d'altitude [m]
   - Consigne de lacet [rad]
   - Commande du moteur de tangage [V]
3. Définir des points temps-valeur pour chacun de ces blocs pour obtenir un motif qui vous convient. 
4. Lancer la simulation avec le [programme MATLAB](Final.m) 

---

# 📁 Structure du projet

```
simulateur-helico-S107/
│
├── compte-rendu.pdf               # Rapport du projet
├── énoncé.pdf               # Sujet du TP 
│
├── Final.m                           # MATLAB principal 
├── Final_sim.slx                     # Simulink principal
├── Sim_1D.slx                  # Simulation simplifiée 1-D
├── Plot/                     # Programmes pour les plots
│
├── Assets/                   # Ressources additionnelles
├── Images/                   # Illustrations pour le rapport
│
└── README.md
```

---

# 📄 Compte-rendu du projet

Le [compte-rendu](compte-rendu.pdf) décrit plus précisement toutes les méthodes utilisées et moyens mis en place pour en arriver là. 

Il contient notamment : 
- Modélisation physique du système 
- Mise en équation Lagrangienne
- Manipulations expérimentales et caractérisation
- Simulation et validation
- Commentaires sur les résultats

---

# 👨‍🏭 Auteurs

**Valentin Baretta**, **Amandine Cardaillac**, **Armand Laborie**, **Colin Larivière**, **Thomas Lemoine**, **Artur Marques**, **Dorian Renaud**, **Purvesh Jankee**, **Yogesh Horil**, **Axel Fau**, **Raphaël Gryzbowkski**, **Antonin Delmas**, **Macéo Amblard**, **Pierre Bourrandy** - *ENSIL-ENSCI mécatronique*

Ce projet a été réalisé dans le cadre du module de mécanique Lagrangienne de 5ème année spécialité mécanique, sous la direction de **M. David Grossoleil**.

## Contact

pierre.bourrandy@etu.unilim.fr (*ENSIL-ENSCI*)

