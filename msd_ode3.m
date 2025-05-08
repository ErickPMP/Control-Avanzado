function [dxdt] = msd_ode3(x,I2,m,L,w)
    g=9.81;
    i1=[1 0 0]';
    j1=[0 1 0]';
    k1=[0 0 1]';
    Pitch = x(1);
    %Matriz de Rotación en Y
    Ry=[cos(Pitch) ,    0    ,sin(Pitch);
             0     ,    1    ,    0;
        -sin(Pitch),    0    ,cos(Pitch)];
    i2=Ry*i1;
    j2=Ry*j1;
    k2=Ry*k1;
    w1=w*k1;
    w21=x(2)*j2;
    w2=w1+w21;
%     w2_dot=dw2;
    dxdt(1,1) = x(2) ;
    dxdt(2,1) = (m*g*L/2*cos(x(1))-I2*w^2*sin(x(1))*cos(x(1)))/I2;
end