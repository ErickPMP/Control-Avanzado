%% ROTACIÓN PURA DE VECTOR
clc; clear; close all;

%% 1) Definir el vector original
vec = [1; 0];  % Vector unitario en la dirección del eje X

%% 2) Definir ángulos de rotación en grados
angles = [30, -45, 120, 285];  % Ángulos en grados
colors = ['r', 'b', 'g', 'm'];  % Colores para cada vector

%% 3) Crear figura para graficar
figure;
hold on;
grid on;
axis equal;

% Graficar el vector original
quiver(0, 0, vec(1), vec(2), 'k', 'LineWidth', 2, 'MaxHeadSize', 0.2, 'AutoScale', 'off');
legend_entries = {'Vector Original'};

% Iterar sobre cada ángulo de rotación
for i = 1:length(angles)
    theta = deg2rad(angles(i));  % Convertir grados a radianes
    
    % Definir la matriz de rotación
    R = [cos(theta), -sin(theta);
         sin(theta),  cos(theta)];
    
    % Multiplicar el vector por la matriz de rotación
    vec_rot = R * vec;
    
    % Graficar el vector rotado
    quiver(0, 0, vec_rot(1), vec_rot(2), colors(i), 'LineWidth', 2, 'MaxHeadSize', 0.2, 'AutoScale', 'off');
    
    % Guardar nombre para la leyenda
    legend_entries{end+1} = ['\Psi = ' num2str(angles(i)) '°'];
    
    % Mostrar la magnitud del vector rotado
    disp(['Magnitud para \Psi = ', num2str(angles(i)), '°: ', num2str(norm(vec_rot))]);
end

% Configuración del gráfico
xlabel('X');
ylabel('Y');
legend(legend_entries, 'Location', 'southwest');
title('Rotaciones del vector original');

hold off;
