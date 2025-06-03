 function [output, xs ,ys]=SteepestDescentMethodBestgk(epsilon,x,y)
%function of steepest descent method with  best gk
 
k=1;
output=[x^3*exp(-x^2-y^4)];
xs=[x];
ys=[y];
while norm(gradient(x,y))>=epsilon
    d=-gradient(x,y);
    %gk=bisectionmethod2(x,y,d);
     gk=goldensectionmethod2(x,y,d);
    x=x+gk*d(1);
    y=y+gk*d(2);
    k=k+1;
    z=x^3*exp(-x^2-y^4);
    output=[output ,z];
    xs=[xs x];
    ys=[ys y];
end
end



