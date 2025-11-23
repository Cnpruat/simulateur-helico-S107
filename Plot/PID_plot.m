% ----------- Variables asservies ---------------
% Altitude z
figure('name','Variables asservies','position',[200 100 1200 600])
subplot(2,1,1)
hold on
grid on
plot(tout,z,"LineWidth",2)
plot(tout, z_c,"LineWidth",2)
legend("Altitude réelle", "Consigne")
xlabel('temps [s]')
ylabel('hauteur [m]')
title('hauteur helico')
axis([0 t_simu 0 2.5])

% Angle de lacet alpha
subplot(2,1,2)
hold on
grid on
plot(tout,Alpha*360/(2*pi),"LineWidth",2)
plot(tout, Alpha_c*360/(2*pi),"LineWidth",2)
legend("Lacet réel", "Consigne")
xlabel('temps [s]')
ylabel('Alpha [deg]')
title('Angle de lacet')