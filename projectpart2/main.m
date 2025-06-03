function [] =main(f,mode)
% with mode we choose the gk(fixed,best ot armijo)for each method
%mode 1 is fixed gk
%mode 2 is Best gk
%mode 3 is  Armijo
%j at problem21,problem22,problem23,problem24 chooses the initial point

 problem21(f)
 problem22(f,mode)
 problem23(f,mode)
 problem24(f,mode)
end