function [ F] =f2(x)
%f2(x)=exp(-2*x)+(x-2)^2
%function f2(x)=exp(-2*x)+(x-2)^2
F= @(x)exp(-2*x)+(x-2).^2;
end