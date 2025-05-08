clc, clear all, close all

K = 1.0;
b = 0.2;
M = 2.0;

x_0 = [0.20 0]; % m

tspan = 0:0.01:50;

[t,x] = ode45(@(t,x)msd_ode(x,K,b,M),tspan,x_0);

plot(t,x(:,1:2));

