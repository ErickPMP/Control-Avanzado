clear all, close all, clc
m=1.5; %Kg
l=0.25; %m
alpha=20;
w=10; %rad/s

I2=1/3*m*l^2;
I=[0  0   0 ;
   0  I2  0 ;
   0  0  I2];

x_0 = [deg2rad(alpha) 0];
tspan = 0:0.01:5;
[t,x] = ode45(@(t,x)msd_ode2(x,I2,m,l,w),tspan,x_0);
plot(t,x(:,1)*180/pi);
hold on
plot(t,x(:,2)*180/pi);
legend('Posición(deg)','Velocidad Angular(deg/s)')
grid on