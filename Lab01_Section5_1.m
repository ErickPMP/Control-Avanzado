%% PRODUCTO PUNTO Y ESCALAMIENTO DE VECTORES
clc;
close all;

% 1) Definir el vector bidimensional
vec = [0 1];

% 2) Escalar el vector con 0.5 y 4
vec1 = 0.5 * vec;
vec2 = 4 * vec;

% 3) Crear la figura con subplots
figure;

% Subgráfico 1: Vector original
subplot(1, 4, 1);
quiver(0, 0, vec(1), vec(2), 'r', 'LineWidth', 2, 'LineStyle', '-','AutoScale', 'off');
axis equal;
xlim([-1 1]);
ylim([-1 5]);
xlabel('X');
ylabel('Y');
title('Vec original');
grid on;
legend({'Vec original'}, 'Location', 'best');

% Subgráfico 2: Vector escalado con 0.5
subplot(1, 4, 2);
quiver(0, 0, vec1(1), vec1(2), 'g', 'LineWidth', 2, 'LineStyle', '--','AutoScale', 'off');
axis equal;
xlim([-1 1]);
ylim([-1 5]);
xlabel('X');
ylabel('Y');
title('Vec escalado (0.5)');
grid on;
legend({'Vec escalado (0.5)'}, 'Location', 'best');

% Subgráfico 3: Vector escalado con 4
subplot(1, 4, 3);
quiver(0, 0, vec2(1), vec2(2), 'b', 'LineWidth', 2, 'LineStyle', ':','AutoScale', 'off');
axis equal;
xlim([-1 1]);
ylim([-1 5]);
xlabel('X');
ylabel('Y');
title('Vec escalado (4)');
grid on;
legend({'Vec escalado (4)'}, 'Location', 'north');

% Subgráfico 4: Todos los vectores combinados
subplot(1, 4, 4);
hold on;
quiver(0, 0, vec(1), vec(2), 'r', 'LineWidth', 2, 'LineStyle', '-','AutoScale', 'off');
quiver(0, 0, vec1(1), vec1(2), 'g', 'LineWidth', 2, 'LineStyle', '--','AutoScale', 'off');
quiver(0, 0, vec2(1), vec2(2), 'b', 'LineWidth', 2, 'LineStyle', ':','AutoScale', 'off');
axis equal;
xlim([-1 1]);
ylim([-1 5]);
xlabel('X');
ylabel('Y');
title('Todos los vectores');
grid on;
legend({'Vec original', 'Vec escalado (0.5)', 'Vec escalado (4)'}, 'Location', 'north');


% Mostrar los valores de los vectores
disp('Valores de los vectores:');
disp(['Vec original: ', mat2str(vec)]);
disp(['Vec escalado (0.5): ', mat2str(vec1)]);
disp(['Vec escalado (4): ', mat2str(vec2)]);

% 4) Mostrar las normas en la consola
disp('Normas de los vectores:');
disp(['Norma del vector original: ', num2str(norm(vec))]);
disp(['Norma del vector escalado (0.5): ', num2str(norm(vec1))]);
disp(['Norma del vector escalado (4): ', num2str(norm(vec2))]);
