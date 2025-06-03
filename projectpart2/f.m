function [F] = f(x,y)
% F function
F=  @(x,y) (x.^3).*(exp((-x.^2)-(y.^4)));
end
