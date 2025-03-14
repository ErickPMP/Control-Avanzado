%% ROTACIÓN DE VECTORES TRIDIMENSIONALES
clc; clear; close all;

%% 1) Definir los vectores unitarios
i_vec = [1 0 0]';
j_vec = [0 1 0]';
k_vec = [0 0 1]';

%% 2) Matriz de rotación respecto al eje Z (55°)
theta_z = deg2rad(55);
Rz = [cos(theta_z) -sin(theta_z) 0; 
      sin(theta_z) cos(theta_z) 0; 
      0 0 1];
vec_rotZ = [Rz*i_vec, Rz*j_vec, Rz*k_vec];
%% 3) Matriz de rotación respecto al eje Y (-30°)
theta_y = deg2rad(-30);
Ry = [cos(theta_y) 0 sin(theta_y); 
      0 1 0; 
     -sin(theta_y) 0 cos(theta_y)];
vec_rotY = [Ry*vec_rotZ(:,1), Ry*vec_rotZ(:,2), Ry*vec_rotZ(:,3)];
%% 4) Matriz de rotación respecto al eje X (100°)
theta_x = deg2rad(100);
Rx = [1 0 0; 
      0 cos(theta_x) -sin(theta_x); 
      0 sin(theta_x) cos(theta_x)];
vec_rotX = [Rx*vec_rotY(:,1), Rx*vec_rotY(:,2), Rx*vec_rotY(:,3)];
%% 5) Matriz de transformación completa
R_total = Rx * Ry * Rz;
vec_rot_total = [R_total*i_vec, R_total*j_vec, R_total*k_vec];
%% 6) Graficar en subplots 2x2
figure;
% 1. Vector original y rotación en Z (55°)
subplot(2,2,1);
hold on; grid on; axis equal;
quiver3(0,0,0,i_vec(1),i_vec(2),i_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,j_vec(1),j_vec(2),j_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,k_vec(1),k_vec(2),k_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,1),vec_rotZ(2,1),vec_rotZ(3,1),'r--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,2),vec_rotZ(2,2),vec_rotZ(3,2),'r--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,3),vec_rotZ(2,3),vec_rotZ(3,3),'r--','LineWidth',2, 'AutoScale', 'off');
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Rotación de 55° en Z');

% 2. Rotación en Z (55°) y luego en Y (-30°)
subplot(2,2,2);
hold on; grid on; axis equal;
quiver3(0,0,0,vec_rotZ(1,1),vec_rotZ(2,1),vec_rotZ(3,1),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,2),vec_rotZ(2,2),vec_rotZ(3,2),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,3),vec_rotZ(2,3),vec_rotZ(3,3),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,1),vec_rotY(2,1),vec_rotY(3,1),'k--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,2),vec_rotY(2,2),vec_rotY(3,2),'k--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,3),vec_rotY(2,3),vec_rotY(3,3),'k--','LineWidth',2, 'AutoScale', 'off');
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Rotaciones: 55° Z, -30° Y');

% 3. Rotación en Y (-30°) y luego en X (100°)
subplot(2,2,3);
hold on; grid on; axis equal;
quiver3(0,0,0,vec_rotY(1,1),vec_rotY(2,1),vec_rotY(3,1),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,2),vec_rotY(2,2),vec_rotY(3,2),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,3),vec_rotY(2,3),vec_rotY(3,3),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,1),vec_rotX(2,1),vec_rotX(3,1),'g--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,2),vec_rotX(2,2),vec_rotX(3,2),'g--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,3),vec_rotX(2,3),vec_rotX(3,3),'g--','LineWidth',2, 'AutoScale', 'off');
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Rotaciones: -30° Y, 100° X');

% 4. Todas las rotaciones superpuestas
subplot(2,2,4);
hold on; grid on; axis equal;
quiver3(0,0,0,i_vec(1),i_vec(2),i_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,j_vec(1),j_vec(2),j_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,k_vec(1),k_vec(2),k_vec(3),'b','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,1),vec_rotY(2,1),vec_rotY(3,1),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,2),vec_rotY(2,2),vec_rotY(3,2),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotY(1,3),vec_rotY(2,3),vec_rotY(3,3),'k','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,1),vec_rotZ(2,1),vec_rotZ(3,1),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,2),vec_rotZ(2,2),vec_rotZ(3,2),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotZ(1,3),vec_rotZ(2,3),vec_rotZ(3,3),'r','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,1),vec_rotX(2,1),vec_rotX(3,1),'g','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,2),vec_rotX(2,2),vec_rotX(3,2),'g','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,3),vec_rotX(2,3),vec_rotX(3,3),'g','LineWidth',2, 'AutoScale', 'off');
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Todas las Rotaciones Superpuestas');

%% 7) Comparación de transformación secuencial vs. matriz total
figure;
hold on; grid on; axis equal;
% Rotación secuencial
h1 = quiver3(0,0,0,vec_rotX(1,1),vec_rotX(2,1),vec_rotX(3,1),'g','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,2),vec_rotX(2,2),vec_rotX(3,2),'g','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rotX(1,3),vec_rotX(2,3),vec_rotX(3,3),'g','LineWidth',2, 'AutoScale', 'off');
% Rotación con matriz completa
h2 = quiver3(0,0,0,vec_rot_total(1,1),vec_rot_total(2,1),vec_rot_total(3,1),'c--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rot_total(1,2),vec_rot_total(2,2),vec_rot_total(3,2),'c--','LineWidth',2, 'AutoScale', 'off');
quiver3(0,0,0,vec_rot_total(1,3),vec_rot_total(2,3),vec_rot_total(3,3),'c--','LineWidth',2, 'AutoScale', 'off');
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Comparación: Transformación Secuencial vs. Matriz Total');
legend([h1,h2],{'Secuencial','Matriz Total'});
