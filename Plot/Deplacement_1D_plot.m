% ----------- Position z ---------------
figure('name','Hauteur 1D','position',[200 400 1200 300])
subplot(1,2,1)
grid on
hold on
plot(tout,z,"LineWidth",2) %Points Simulés - Offset sur z pour coller avec le modèle stl
plot(tout,Consigne,"LineWidth",2) %Points Simulés - Offset sur z pour coller avec le modèle stl
legend('z','Consigne','Location','southeast') %Consigne
xlabel('Temps [s]')
ylabel('z [m]')
ylim([0 1.2])

% ----------- Tension ---------------
subplot(1,2,2)
grid on
hold on
plot(tout,Commande,"LineWidth",2) %Points Simulés - Offset sur z pour coller avec le modèle stl
legend('Tension moteur','Location','southeast') %Consigne
xlabel('Temps [s]')
ylabel('Tension [V]')
