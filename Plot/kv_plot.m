% ----------- Constante de vitesse ------------------
figure('name','Constante Moteur','position',[200 400 1200 300])
subplot(1,3,1)
plot(w3_mod,kv3*w3_mod,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w3,U3-R3*I3,"x","LineWidth",2,"Color",[0.866 0.329 0]) %Points Mesurés
title('Constante Kv3')
legend('kv estimé', 'Mesure hélice 3','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force contre électromotrice [V]') %U-RI

subplot(1,3,2)
plot(w4_mod,kv4*w4_mod,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w4,U4-R4*I4,"x","LineWidth",2,"Color",[0.866 0.329 0]) %Points Mesurés
title('Constante Kv4')
legend('kv estimé', 'Mesure hélice 4','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force contre électromotrice [V]') %U-RI

subplot(1,3,3)
plot(w5_mod,kv5*w5_mod,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w5,U5-R5*I5,"x","LineWidth",2) %Points Mesurés
title('Constante Kv5')
legend('kv estimé', 'Mesure hélice 5','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force contre électromotrice [V]') %U-RI