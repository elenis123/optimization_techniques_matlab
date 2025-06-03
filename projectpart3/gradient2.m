function [grad]=gradient2(xk,yk)
%gradient of function f at point (xk,yk)
grad=[derivative2fx(xk,yk) derivative2fy(xk,yk)];

end
