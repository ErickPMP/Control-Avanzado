function [dxdt] = msd_ode(x,K,b,M)
    
%     if(t >= 0.8 && t<0.9)
%         F_ext = 1;
%     elseif(t >= 0.9)
%         F_ext = 0;
%     else
%         F_ext = 0;
%     end
%     F_ext = sin(2*pi*1*t);
    F_ext = 0;

    dxdt(1,1) = x(2) ;
    dxdt(2,1) = (-K*x(1) - b*x(2) + F_ext)/M;
end