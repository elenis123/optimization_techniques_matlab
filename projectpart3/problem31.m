function []=problem31(f)

x0=1;
y0=1;
gk=[0.1, 0.3, 3 ,5];
i=1;% i chooses the gk 
epsilon=0.001;
x=linspace(-3,3,30);
y=x';
z=f(x,y);

figure(1)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] =SteepestDescentMethod2(epsilon,x0,y0,gk(i)); 
scatter3(xs1,ys1,((xs1.^2)./3 +3.*(ys1.^2)),'+','r');
hold on
scatter3(xs1(end),ys1(end),((xs1(end).^2)./3 +3.*(ys1(end).^2)),'p','y')

figure(2)
clf
 
fcontour(@(x,y)(x.^2)./3 +3.*(y.^2),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')

end
