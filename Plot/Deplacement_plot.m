% ----------- Position ---------------
figure('name','Déplacement','position',[200 100 1200 600])
subplot(3,2,1)
plot(tout,x,"LineWidth",2) %Points Simulés
grid on
hold on
title('Position')
legend('x','Location','northwest')
xlabel('Temps [s]')
ylabel('x [m]')

subplot(3,2,3)
plot(tout,y,"LineWidth",2) %Points Simulés
grid on
hold on
legend('y','Location','northwest')
xlabel('Temps [s]')
ylabel('y [m]')

subplot(3,2,5)
grid on
hold on
plot(tout,z+0.15,"LineWidth",2) %Points Simulés - Offset sur z pour coller avec le modèle stl
plot(tout,z_c+0.15,"LineWidth",2) %Points mesurés - Offset sur z pour coller avec le modèle stl
legend('z','Consigne','Location','northwest') %Consigne
xlabel('Temps [s]')
ylabel('z [m]')

% ----------- Vitesse ---------------
subplot(3,2,2)
plot(tout,x_p,"LineWidth",2) %Points Simulés
grid on
hold on
title('Vitesse')
legend('Vitesse x','Location','northwest')
xlabel('Temps [s]')
ylabel('x_p [m/s]')

subplot(3,2,4)
plot(tout,y_p,"LineWidth",2) %Points Simulés
grid on
hold on
legend('Vitesse y','Location','northwest')
xlabel('Temps [s]')
ylabel('y_p [m/s]')

subplot(3,2,6)
plot(tout,z_p,"LineWidth",2) %Points Simulés
grid on
hold on
legend('Vitesse z','Location','northwest')
xlabel('Temps [s]')
ylabel('z_p [m/s]')