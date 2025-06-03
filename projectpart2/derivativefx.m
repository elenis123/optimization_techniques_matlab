function [F]=derivativefx(x,y)
% derivative of function f (df/dx)
F=-x.^2.*exp(-x.^2-y.^4).*(2.*x.^2-3);
end