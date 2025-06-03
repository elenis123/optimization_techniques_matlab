function []=problem21(f)
% chart of function f
figure(1)
clf
x=-4:0.1:10; 
y=x';
z=f(x,y);
surf(x,y,z)
end