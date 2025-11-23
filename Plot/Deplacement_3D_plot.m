% ----------- Position 3D --------------
figure('name','Déplacement_3D','position',[400 100 1000 800])
hold on;
grid on;
axis ([-1 4 -4 4 0 4]);
% axis equal; 
plot3(x,y,z,'LineWidth',0.5);
title("Trajectoire 3D de l'hélicoptère sur " + string(t_simu) + " s");
xlabel('X'); ylabel('Y'); zlabel('Z');
view(3);

% --- Charger le modèle STL --
fv = stlread('.\Assets\Helico.stl');  


% Centrage et redimensionnement du modèle 3D
V = fv.Points;
V = V - mean(V,1);       
V = V * 0.005;        

% Aligner le modèle
R0 = makehgtform('xrotate',pi/2); 
V = (V * R0(1:3,1:3)') ;
R0 = makehgtform('zrotate',pi); 
V = (V * R0(1:3,1:3)') ;

% Créer le patch
p = patch('Faces',fv.ConnectivityList,'Vertices',V,...
          'FaceColor',[0.9 0.2 0.2],'EdgeColor','none');
camlight; lighting gouraud;

% Repère initial du modèle 
quiver3(0,0,0,1,0,0,'r','LineWidth',2); % X rouge (vers l'avant ?)
quiver3(0,0,0,0,1,0,'g','LineWidth',2); % Y vert
quiver3(0,0,0,0,0,1,'b','LineWidth',2); % Z bleu

% --- Animation ---
for i = 2:15:length(x)-1
    
    % Direction instantanée du déplacement
    dx = x(i+1) - x(i-1);
    dy = y(i+1) - y(i-1);
    dz = z(i+1) - z(i-1);
    dir = [dx, dy, dz] / norm([dx, dy, dz]);
     
    % Matrice de rotation 
    R = eul2rotm([Alpha(i), Beta(i)*10, 0], 'ZYX'); % Roll toujours considéré nul dans notre cas

    % Appliquer translation + rotation
    V2 = (V * R') + [x(i), y(i), z(i)+0.15]; %Offset sur z pour coller avec le modèle stl

    set(p, 'Vertices', V2);
    drawnow;
end