function F=derivativef3(x)
%παράγωγος της f3
F=@(x)2*x*log(0.5*x)+x+0.4*sin(0.2*x)*cos(0.2*x);
end
