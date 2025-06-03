function [F]=bestgk(x,y,d,g)
syms gk
x1 = x + gk*d(1);
y1 = y + gk*d(2);
z = (x1^3)*exp(-x1^2-y1^4); 
F = vpa(subs(z,gk,g));
end