function [output xs ys]= NewtonMethod(epsilon,x,y)
%function of Newton Method with fixed gk

k=1;
output=[x^3*exp(-x^2-y^4)];
xs=[x];
ys=[y];
gk=1;

d=gradient(x,y);

while norm(d)>=epsilon
    h=HessianMatrix(x,y);

    if h(1,1)<=0 || (h(1,1)*h(2,2)-h(1,2)*h(2,1))<=0%check if hessian matrix is positive definite
        disp('error')
        break
    end
    dk=-h'*d;
    x=x+gk*dk(1)
    y=y+gk*dk(2)
    k=k+1;
    z=x^3*exp(-x^2-y^4);
    output=[output ,z];
    xs=[xs x];
    ys=[ys y];
    d=gradient(x,y);
end
end

