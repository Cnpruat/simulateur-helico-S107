% ----------- Position ---------------
figure('name','Déplacement angulaires','position',[200 100 1200 600])
subplot(2,2,1)
grid on
hold on
plot(tout,Alpha*360/(2*pi),"LineWidth",2) %Points Simulés
plot(tout,Alpha_c*360/(2*pi),"LineWidth",2) %Consigne
title('Angle')
legend('Alpha','Consigne','Location','northeast')
xlabel('Temps [s]')
ylabel('Alpha [deg]')

subplot(2,2,3)
plot(tout,Beta*360/(2*pi),"LineWidth",2) %Points Simulés
grid on
hold on
legend('Beta','Location','northeast')
xlabel('Temps [s]')
ylabel('Beta [deg]')

% ----------- Vitesse ---------------
subplot(2,2,2)
plot(tout,Alpha_p*360/2*pi,"LineWidth",2) %Points Simulés
grid on
hold on
title('Vitesse angulaire')
legend('Vitesse Alpha','Location','northwest')
xlabel('Temps [s]')
ylabel('Alpha_p [deg/s]')

subplot(2,2,4)
plot(tout,Beta_p*360/2*pi,"LineWidth",2) %Points Simulés
grid on
hold on
legend('Vitesse Beta','Location','northwest')
xlabel('Temps [s]')
ylabel('Beta_p [deg/s]')