function [grad]=gradient(xk,yk)
%gradient of function f at point (xk,yk)
grad=([derivativefx(xk,yk) derivativefy(xk,yk)]);

end


