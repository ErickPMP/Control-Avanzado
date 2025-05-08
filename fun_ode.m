function [dxdt] = fun_ode(x,k,b,m)
F_ext = 0;
dxdt(1,1) = x(2);
dxdt(2,1) = (F_ext-b*x(2)-k*x(1))/m;
end