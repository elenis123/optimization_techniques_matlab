function h=HessianMatrix(x,y)
%hessian matrix of function f at point (x,y)
a=(4*x^5-14*x^3+6*x)*exp(-x^2-y^4);
b=(4*y^3*x^2)*(2*x^2-3)*exp(-x^2-y^4);
c=(8*x^4-12*x^2)*(y^3)*exp(-x^2-y^4);
d=(4*x^3*y^2)*(4*y^4-3)*exp(-x^2-y^4);

h=[ a b 
   c d];
end

