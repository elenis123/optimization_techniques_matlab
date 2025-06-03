function [F]=derivativefy(x,y)
% derivative of function f (df/dy)
F=-4.*y.^3.*x.^3.*exp(-x.^2-y.^4);
end
