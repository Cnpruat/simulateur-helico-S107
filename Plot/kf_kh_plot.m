% ----------- Forces kf ---------------
figure('name','Poussée hélices','position',[200 100 1200 600])
subplot(3,2,1)
plot(w3_mod,kf3*w3_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w3,F3,"x","LineWidth",2) %Points mesurés
title('Force de pousée')
legend('kf estimé', 'Mesure hélice 3','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force [N]')

subplot(3,2,3)
plot(w4_mod,kf4*w4_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w4,F4,"x","LineWidth",2) %Points mesurés
legend('kf estimé', 'Mesure hélice 4','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force [N]')

subplot(3,2,5)
plot(w5_mod,kf5*w5_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w5,F5,"x","LineWidth",2) %Points mesurés
legend('kf estimé', 'Mesure hélice 5','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Force [N]')

% ----------- Couples kh ---------------
subplot(3,2,2)
plot(w3_mod,kc3*w3_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w3,C3,"x","LineWidth",2) %Points mesurés
title('Couple résistant')
legend('kh estimé', 'Mesure hélice 3','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Couple [N.m]')

subplot(3,2,4)
plot(w4_mod,kc4*w4_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w4,C4,"x","LineWidth",2) %Points mesurés
legend('kh estimé', 'Mesure hélice 4','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Couple [N.m]')

subplot(3,2,6)
plot(w5_mod,kc5*w5_mod.^2,"LineWidth",2) %Points Simulés
grid on
hold on
plot(w5,C5,"x","LineWidth",2) %Points mesurés
legend('kh estimé', 'Mesure hélice 5','Location','northwest')
xlabel('Vitesse angulaire hélice [rad/s]')
ylabel('Couple [N.m]')