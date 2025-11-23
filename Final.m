%%%%%%%%%%%%%%% TP2 %%%%%%%%%%%%%%

%   Modèle de l'hélicoptère S107
%           07/11/2025
%

clear
close all
clc


%% Paramètres
g = 9.81;               %Constante de gravité [m/s²]
m = 0.040;              %Masse de l'hélicoptère [kg]
d_queue = 0.150;        %Longueur hélice de queue [m]
D_front = 0.034;        %Diamètre de la surface frontale de l'hélicoptère [m]
S_front = pi*(D_front/2)^2; %Surface frontale hélicoptère [m²]
Cx = 0.47;              %Coefficient de trainée de l'hélicoptère
rho = 1.2;              %Masse volumique de l'air [kg/m^3]

%Hélices
a3 = 0.195;             % Longueur de l'hélices 3 [m]
a4 = 0.195;
a5 = 0.030;
abell = 0.130;          % Longueur de la barre de Bell [m]

m3 = 0.002;             % Masse de l'hélice 3 [kg]
m4 = 0.002;
m5 = 0.00031;
mbell = 0.002;

J4 = m4*a4^2/12;
Jbell = mbell*abell^2/12;
J3 = J4 + Jbell;
J5 = m5*a5^2/12;

%coefficients du sol
k_sol = 100;            %Raideur du sol [N/m]
k_sol_vit = 10;         %Coefficient d'amortissement du sol [N/(m/s)]
z_g = 3e-2;             %Hateur du centre de gravité par rapport aux patins [m]

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

%Inerties
Lx= 5.5e-2;             % [m]
f0_A = 0.496;           % [Hz]
A = (m*g*Lx) / (2*pi*f0_A)^2 - m*Lx^2; %Inertie selon l'axe X en G2 [kg*m2]

Lz= 11.5e-2;            % [m]
f0_C = 1.361;           % [Hz]
C = (m*g*Lz) / (2*pi*f0_C)^2 - m*Lz^2; %Inertie selon l'axe Z en G2 [kg*m2]
        
%% Mesures Bell
tr95 = 220e-3;          %Temps de reponse à 95% [s]
ksi = 0.7;              %Modele amorti
tau = tr95/3 ;          %Constante de temps [s]
Ly= 5.5e-2;             % [m]
f0_B = 1.6865;          % [Hz]

B = (m*g*Ly) / (2*pi*f0_B)^2 - m*Ly^2; %Inertie selon l'axe Y en G2 [kg*m2]
w0 = 1 / tau ;          %Pulsation propre [s^-1] 

kb = B * w0^2 ;         %Coefficient de raideur [N.m/s^2]
ab = 2 * ksi / w0 * kb ;%Coefficient d'amortissement [N.m/s]

%% Mesures Hélices
%Hélice 3
n3_mes = [0, 600, 1024, 1395, 1751, 1970, 2163, 2526, 2882, 3169, 3362];   %Vitesse de rotation [rpm]
w3 = n3_mes * 0.5 * 2*pi/60;                                               %Vitesse de rotation [rad/s] --- Facteur 0.5 car 2 catadioptres
M3_mes = [0, 1, 2, 3, 4, 6, 7, 9, 11, 14, 16];                             %Différence de masse mesurée [g]
F3 = M3_mes*g / 2 * 1e-3;                                                          

%Hélice 4
n4_mes = [0, 600, 1024, 1395, 1751, 1970, 2163, 2526, 2882, 3169, 3362]; 
w4 = n4_mes * 0.5 * 2*pi/60;                                               %Vitesse de rotation [rad/s] --- Facteur 0.5 car 2 catadioptres
M4_mes = [0, 1, 2, 3, 4, 6, 7, 9, 11, 14, 16];
F4 = M4_mes*g / 2 * 1e-3;

%Hélice 5
n5_mes = [0, 2960, 6500, 8660, 10500, 12100, 13000, 14850, 15770, 16600, 17300];
w5 = n5_mes * 0.5 * 2*pi/60;                                               %Vitesse de rotation [rad/s] --- Facteur 0.5 car 2 catadioptres
M5_mes = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1];
F5 = M5_mes*g * 1e-3;

%Moteur 3
U3_mes = [0, 0.4, 0.7, 1.0, 1.3, 1.5, 1.7, 2.1, 2.4, 2.8, 3];              %Tension [V]
I3_mes = [0, 0.08, 0.12, 0.18, 0.24, 0.29, 0.34, 0.42, 0.52, 0.62, 0.69];  %Courant [A]
U3 = U3_mes;                                                               %Mise à jour du nom
I3 = I3_mes / 2;                                                           %Courant pour les 2 moteurs
R3 = 4.6;                                                                  %Résistance interne du moteur 3 [ohm] --- Mesure ohmmètre
kv3 = mean((U3-R3*I3)/w3);                                                 %Constante de couple [N.m/A]
ki3 = kv3;                                                                 %Constante de vitesse [V/(rad/s)]

%Moteur 4
U4_mes = [0, 0.4, 0.7, 1.0, 1.3, 1.5, 1.7, 2.1, 2.4, 2.8, 3];
I4_mes = [0, 0.08, 0.12, 0.18, 0.24, 0.29, 0.34, 0.42, 0.52, 0.62, 0.69];
U4 = U4_mes;
I4 = I4_mes / 2;                                                           %Courant pour les 2 moteurs
R4 = 4.6;
kv4 = mean((U4-R4*I4)/w4);
ki4 = kv4;

%Moteur 5
U5_mes = [0, 0.3, 0.6, 0.9, 1.2, 1.5, 1.8, 2.1, 2.4, 2.7, 3];
I5_mes = [0, 0.01, 0.03, 0.05, 0.07, 0.10, 0.12, 0.15, 0.17, 0.19, 0.22];
U5 = U5_mes;
I5 = I5_mes;
R5 = 9.4;
kv5 = mean((U5-R5*I5)/w5);
ki5 = kv5;

%% Interpolation couples et forces hélices

%Couples
C3 = ki3 * I3;                          %Couple hélice 3 [N.m]
C4 = ki4 * I4;
C5 = ki5 * I5;

kc3 = mean(C3(2:end)/w3(2:end).^2);     %Constante de couple [N.m/(rad/s)²] --- On ne prend pas la valeur 0 d'où (2:end)
kc4 = mean(C4(2:end)/w4(2:end).^2);
kc5 = mean(C5(2:end)/w5(2:end).^2);

kf3 = mean(F3/w3.^2);                   %Constante de force [N/(rad/s)²]
kf4 = mean(F4/w4.^2);
kf5 = (F5(end) / 2)/w5(end)^2;          %Uniquement le dernier point --- F5/2 car la vraie valeur est plutôt 0.5g au lieu de 1g (précision balance)

w3_mod = 0:1:max(w3);                   %w modèle par pas de 1 [rad/s]
w4_mod = 0:1:max(w4);
w5_mod = 0:1:max(w5);

%% Simulation

%Controle PID de la hauteur
P_z = 7;
I_z = 5;
D_z = 4;

%Controle PID de l'angle de lacet
P_alpha = 1;
I_alpha = 0;
D_alpha = 1;

%Simulation
t_simu = 60;  

sim('Sim_1D.slx', 10);
addpath Plot ; Deplacement_1D_plot ; rmpath Plot

sim('Final_sim.slx', t_simu);

%% Plots
% ajout du répertoire pour les plots
addpath Plot


%Variables asservies
PID_plot

%Constante des moteurs kv
kv_plot

%Constantes des hélices kf et kh
kf_kh_plot

%Variables des groupes moto-hélices : w, I, F et C en fonction du temps
Motohelices_plot

%Positions et vitesses de l'hélicoptère
Deplacement_plot

%Angles et vitesses angulaires de l'hélicoptère
Angle_plot

% Visualisation 3D de l'hélicoptère
Deplacement_3D_plot

%Consommation de l'hélicoptère
Consommation_plot


% on retire les plots des chemins matlab
rmpath Plot


