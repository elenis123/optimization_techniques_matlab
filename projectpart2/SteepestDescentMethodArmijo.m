function [output, xs, ys]=SteepestDescentMethodArmijo(epsilon,x,y)
%function of steepest descent method with gk from armijo
k=1;
z=(x^3)*(exp(-(x^2)-(y^4)));
output=[z];
xs=[x];
ys=[y];
while norm(gradient(x,y))>=epsilon
    d=-(gradient(x,y));
    [x,y]=armijo(x,y,d);
    k=k+1;
    z=(x^3)*(exp(-(x^2)-(y^4)));
    output=[output z];
    xs=[xs x];
    ys=[ys y];
end
end


