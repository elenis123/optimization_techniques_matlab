function F=derivativef1(x)
%παράγωγος της f1
F=@(x)3*(x-1)^2 +2*(x-4)*cos(x)-sin(x)*(x-4)^2;
end