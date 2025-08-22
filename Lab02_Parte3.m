clc, clear all, close all
m=1; %Kg
r=2; %m
L=1; %m

Ixx=1/4*m*r^2;
Iyy=Ixx;
Izz=1/2*m*r^2;

Ic=[Izz   0    0;
     0   Ixx   0;
     0    0   Iyy];
%    i j k
r_m=[L 0 0];

vec_r = r_m(1,:);  
s_r = [    0     -vec_r(3)  vec_r(2);
        vec_r(3)     0     -vec_r(1);
      -vec_r(2)  vec_r(1)     0    ];
I = m*s_r*s_r';

I_T = Ic + I
