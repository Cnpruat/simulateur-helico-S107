% ----------- Position ---------------
figure('name','Consommation','position',[200 100 1200 600])
subplot(3,2,1)
plot(tout,U3_sim,"LineWidth",2) %Points Simulés
grid on
hold on
title('Tension')
legend('U3','Location','northeast')
xlabel('Temps [s]')
ylabel('U3 [V]')

subplot(3,2,3)
plot(tout,U4_sim,"LineWidth",2) %Points Simulés
grid on
hold on
legend('U4','Location','northeast')
xlabel('Temps [s]')
ylabel('U4 [V]')

subplot(3,2,5)
plot(tout,U5_sim,"LineWidth",2) %Points Simulés
grid on
hold on
legend('U5','Location','northeast')
xlabel('Temps [s]')
ylabel('U5 [V]')

% ----------- Vitesse ---------------
subplot(3,2,2)
plot(tout,P3_sim,"LineWidth",2) %Points Simulés
grid on
hold on
title('Puissance')
legend('P3','Location','northeast')
xlabel('Temps [s]')
ylabel('Puissance 3 [W]')

subplot(3,2,4)
plot(tout,P4_sim,"LineWidth",2) %Points Simulés
grid on
hold on
title('Puissance')
legend('P4','Location','northeast')
xlabel('Temps [s]')
ylabel('Puissance 4 [W]')

subplot(3,2,6)
plot(tout,P5_sim,"LineWidth",2) %Points Simulés
grid on
hold on
title('Puissance')
legend('P5','Location','northeast')
xlabel('Temps [s]')
ylabel('Puissance 5 [W]')

Texte_conso = 'La consommation totale est de %4.2f J, soit %4.2f Wh pour %d s de vol\n';
Conso = (E3_sim(end) + E4_sim(end) + E5_sim(end));
fprintf(Texte_conso, Conso, Conso/3600, t_simu)