%% OPERACIONES DE VECTORES CON MATRICES
clc; clear; close all;

%% 1) Definir el vector bidimensional
vec = [1 0];

% Graficar el vector original
figure;
hold on;
grid on;

%% 2) Definir la matriz A
A = [0.1 0.2; 0.3 0.4];
%A = [cos(20*pi/180) -sin(20*pi/180);sin(20*pi/180) cos(20*pi/180)];
%% 3) Multiplicar la matriz A por el vector
vec_rA = A * vec' ;
max_norm = max([norm(vec), norm(vec_rA)]);

%% 4) Graficar el vector resultante junto con el original
quiver(0, 0, vec(1), vec(2), 'r', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec)),'AutoScale', 'off');
quiver(0, 0, vec_rA(1), vec_rA(2), 'b', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec_rA)),'AutoScale', 'off');

% Configurar gráfico
axis equal;
xlabel('X');
ylabel('Y');
legend({'Vector Original', 'Vec. Transformado con A'});
title('Transformación con Matriz A');
%% 6) Definir matrices B y C y realizar la misma operación
B = [1 0.5; 0.25 2];
C = [2 3; 1 1];

% Multiplicación con B y C
vec_rB = B * vec';
vec_rC = C * vec';
max_norm = max([norm(vec), norm(vec_rA), norm(vec_rB), norm(vec_rC)]);

% Graficar todos los vectores en una sola figura
figure;
hold on;
grid on;
quiver(0, 0, vec(1), vec(2), 'r', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec)),'AutoScale', 'off');
quiver(0, 0, vec_rA(1), vec_rA(2), 'b', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec_rA)),'AutoScale', 'off');
quiver(0, 0, vec_rB(1), vec_rB(2), 'g', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec_rB)),'AutoScale', 'off');
quiver(0, 0, vec_rC(1), vec_rC(2), 'm', 'LineWidth', 2, 'MaxHeadSize', 0.1* (max_norm / norm(vec_rC)),'AutoScale', 'off');

% Configuración del gráfico
axis equal;
xlabel('X');
ylabel('Y');
legend({'Vec Original', 'Vec A', 'Vec B', 'Vec C'});
title('Transformaciones con A, B y C');

% Mostrar los valores de los vectores
disp('Valores de los vectores:');
disp('Vec original:');
disp(vec');

disp('Matriz A:');
disp(A);
disp('Vector transformado con A:');
disp(vec_rA);

disp('Matriz B:');
disp(B);
disp('Vector transformado con B:');
disp(vec_rB);

disp('Matriz C:');
disp(C);
disp('Vector transformado con C:');
disp(vec_rC);

%% 7) Calcular y mostrar normas
disp('Normas de los vectores:');
fprintf('Norma del vector original: %.4f\n', norm(vec));
fprintf('Norma del vector transformado con A: %.4f\n', norm(vec_rA));
fprintf('Norma del vector transformado con B: %.4f\n', norm(vec_rB));
fprintf('Norma del vector transformado con C: %.4f\n', norm(vec_rC));
