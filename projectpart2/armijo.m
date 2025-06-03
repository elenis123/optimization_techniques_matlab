function [x1,y1]=armijo(x,y,d)
% function of armijo 
% s initial step
% (x,y) initial point 
% a is between 10^-5 and 10^-1
% b is between 1/10 and 1/2
% d gradient of (x,y)
s=1;
a=0.01;
b=0.3;
m=0; 
gk=s*(b^m);

x1=x+gk*d(1);
y1=y+gk*d(2);
f0=(x^3)*(exp(-(x^2)-(y^4)));
f1=(x1^3)*(exp(-(x1^2)-(y1^4)));
 

while (f0-f1)<=(-a*(b^m)*s*d'*gradient(x,y))
    m = m+1;
    gk=s*(b^m);
    x1=x+gk*d(1);
    y1=y+gk*d(2);
    f1= (x1^3)*exp(-(x1^2)-(y1^4));
   

end
end

