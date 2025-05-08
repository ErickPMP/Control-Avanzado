function [dxdt] = msd_ode2(x,I2,m2,l,w)
    g=9.81;    
%   theta = x(1);
    thetadot = x(2);
%   Ecuación de movimiento
    ddtheta = (m2*g*(l/2)*sin(x(1)) - I2*w^2*cos(x(1))*sin(x(1)))/(-I2);
%   dxdt = zeros(2,1);
    dxdt(1,1) = thetadot;
    dxdt(2,1) = ddtheta;
end

% function [dxdt] = msd_ode2(x,I2,m,L,w)
%      g=9.81; 
% %     dxdt(1,1) = x(1) ;
%     dxdt(1,1) = x(2) ;
%     dxdt(2,1) = (m*g*L/2*cos(x(1))-I2*w^2*sin(x(1))*cos(x(1)))/I2;
% end

