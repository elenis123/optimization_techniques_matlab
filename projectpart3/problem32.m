function []=problem32(f)

epsilon =0.01;
x0=5;
y0=-5;
sk=5;
gk=0.5;
xlow=-10;
xupper=5;
ylow=-8;
yupper=12;

x=linspace(-10,10,100);
y=x';
z=f(x,y);

figure(3)
clf
surf(x,y,z)
hold on
[~, xs1, ys1] =SteepestDescentMethodProjection(epsilon,x0,y0,xlow,xupper,ylow,yupper,gk,sk); 
scatter3(xs1,ys1,((xs1.^2)./3 +3.*(ys1.^2)),'+','r');
hold on
scatter3(xs1(end),ys1(end),((xs1(end).^2)./3 +3.*(ys1(end).^2)),'p','y')

figure(4)
clf
 
fcontour(@(x,y)(x.^2)./3 +3.*(y.^2),[-4, 4])
hold on
scatter(xs1,ys1,'+','r')
hold on 
scatter(xs1(end),ys1(end),'p','k')
end
