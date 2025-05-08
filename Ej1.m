clc, clear all, close all

K=1.0; %N/m
b= 0.2; %N/m s
m = 2; %Kg
x_0=[0.20 0];
tspan=0:0.01:50;
[t,x] = ode45(@(t,x)fun_ode(x,K,b,m),tspan,x_0);
plot(t,x(:,1:2));
legend('Posicion','Velocidad')