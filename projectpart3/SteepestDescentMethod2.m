function [output, xs ,ys]=SteepestDescentMethod2(epsilon,x,y,gk)
%function of steepest descent method with fixed gk(given by the user)

k=1;
output=[(x^2)/3 +3*(y^2)];
xs=[x];
ys=[y];
while norm(gradient2(x,y))>=epsilon
    d=-gradient2(x,y);
    x=x+gk*d(1);
    y=y+gk*d(2);
    k=k+1;
    z=(x^2)/3 +3*(y^2);
    output=[output ,z];
    xs=[xs x];
    ys=[ys y];
end
end

