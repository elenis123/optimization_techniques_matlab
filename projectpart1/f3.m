function [F] =f3(x)
%f3(x)=x^2*ln(0.5*x)+(sin(0.2*x))^2
F=@(x)x.^2.*log(0.5.*x)+(sin(0.2.*x)).^2;
end