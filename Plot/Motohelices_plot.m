% ----------- Groupe 3 & 4 ------------------
figure('name','Motohélices','position',[200 100 1200 600])
subplot(4,2,1)
plot(tout,w3_sim,"LineWidth",2)
grid on
hold on
plot(tout,w4_sim,"LineWidth",2)
title('Groupe 3 & 4')
legend('w3','w4','Location','northeast')
xlabel('Temps [s]')
ylabel('w [rad/s]')
% axis([0 t_simu 0 250])

subplot(4,2,3)
plot(tout,I3_sim,"LineWidth",2)
grid on
hold on
plot(tout,I4_sim,"LineWidth",2)
legend('I3','I4','Location','northeast')
xlabel('Temps [s]')
ylabel('Courant [A]')
% axis([0 t_simu 0 1])

subplot(4,2,5)
plot(tout,F3_sim,"LineWidth",2)
grid on
hold on
plot(tout,F4_sim,"LineWidth",2)
legend('F3','F4','Location','northeast')
xlabel('Temps [s]')
ylabel('Force [N]')
% axis([0 t_simu 0 250e-3])

subplot(4,2,7)
plot(tout,C3_sim,"LineWidth",2)
grid on
hold on
plot(tout,C4_sim,"LineWidth",2)
legend('C3','C4','Location','northeast')
xlabel('Temps [s]')
ylabel('Couple résistant [N.m]')
% axis([0 t_simu 0 5e-3])



% ----------- Groupe 5 ------------------
subplot(4,2,2)
plot(tout,w5_sim,"LineWidth",2)
grid on
hold on
title('Groupe 5')
legend('w5','Location','northeast')
xlabel('Temps [s]')
ylabel('w [rad/s]')
% axis([0 0.1 0 1200])

subplot(4,2,4)
plot(tout,I5_sim,"LineWidth",2)
grid on
hold on
legend('I5','Location','northeast')
xlabel('Temps [s]')
ylabel('Courant [A]')
% axis([0 0.1 0 0.5])

subplot(4,2,6)
plot(tout,F5_sim,"LineWidth",2)
grid on
hold on
legend('F5','Location','northeast')
xlabel('Temps [s]')
ylabel('Force [N]')
% axis([0 0.1 0 10e-3])

subplot(4,2,8)
plot(tout,C5_sim,"LineWidth",2)
grid on
hold on
legend('C5','Location','northeast')
xlabel('Temps [s]')
ylabel('Couple résistant [N.m]')
% axis([0 0.1 0 5e-3])