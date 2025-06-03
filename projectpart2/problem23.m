function[]=problem23(f,mode)
 
% mode 1 is  NewtonMethod(fixed gk)
%mode 2 is  NewtonMethodBest gk)
%mode 3 is  NewtonMethodArmijo

%initial points
x0=[0 -1 1];
y0=[0 -1 1];
j=2;%choose the initial point 
epsilon=0.001;
x=linspace(-3,3,30);
y=x';
z=f(x,y);

switch mode 

case 1
figure(4)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] =NewtonMethod(epsilon,x0(j),y0(j)); 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(5)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')


case 2
figure(4)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] = NewtonMethodBestgk(epsilon,x0(j),y0(j)); 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(5)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')   


case 3
figure(4)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] =  NewtonMethodArmijo(epsilon,x0(j),y0(j));% choose the method 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(5)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')
end
end
