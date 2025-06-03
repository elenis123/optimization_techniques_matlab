function [F] = f1(x)
% f1(x)=(x-1)^3+(x-4)^4*cos(x)
% function f1(x)=@(x)(x-1)^3+(x-4)^4*cos(x)
 F= @(x)(x-1).^3+(x-4).^4.*cos(x);

  end