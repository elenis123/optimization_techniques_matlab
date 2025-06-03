function[]=problem24(f,mode)
%mode 1 is LevenbergMarquardtMethod(fixed gk)
%mode 2 is LevenbergMarquardtMethodBestgk
%mode 3 is LevenbergMarquardtMethodArmijo

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
figure(6)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] = LevenbergMarquardtMethod(epsilon,x0(j),y0(j)); 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(7)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')


case 2
figure(6)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] = LevenbergMarquardtMethodBestgk(epsilon,x0(j),y0(j)); 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(7)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')   


case 3
figure(6)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] =  LevenbergMarquardtMethodArmijo(epsilon,x0(j),y0(j));% choose the method 
scatter3(xs1,ys1,(xs1.^3).*(exp((-xs1.^2)-(ys1.^4))),'+','r');
hold on
scatter3(xs1(end),ys1(end),(xs1(end)^3)*(exp((-xs1(end)^2)-(ys1(end)^4))),'p','y')

figure(7)
clf
 
fcontour(@(x,y) (x^3)*(exp((-x^2)-(y^4))),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')
end
end
