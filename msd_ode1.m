function [dxdt] = msd_ode1(t,x,m,L,w)
    g=9.81; 
    I2=2;
    dxdt(1,1) = x(2) ;
    dxdt(2,1) = (m*g*L/2*cos(x(2)*t)-I2*w^2*sin(x(2)*t)*cos(x(2)*t))/I2;
end