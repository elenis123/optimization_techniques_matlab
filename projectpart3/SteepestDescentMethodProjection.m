function [output, xs ,ys]=SteepestDescentMethodProjection(epsilon,x,y,xlow,xupper,ylow,yupper,gk,sk)
%function of steepest descent method  with projection with fixed gk(given by the user)
k=1;
output=((x^2)/3)+3*(y^2);
xs=x;
ys=y;
while (norm(gradient2(x,y))>=epsilon)
     d=-gradient2(x,y);
     xb= x+ sk*d(1);
     yb= y+ sk*d(2);
 
     if xlow>xb
         xb=xlow;
     elseif xupper<xb
         xb=xupper;
     end
   
     
     if  ylow>yb
        yb=ylow;
     elseif  yupper<yb
        yb=yupper;
     end
     
     if gk<=1 && gk>=0
     
         x=x+gk*(xb - x);
         y=y+gk*(yb - y);
         z=(x^2)/3 +3*(y^2);
         k=k+1;
         output=[output z];
         xs=[xs x];
         ys=[ys y];
     elseif gk>1 || gk<0
         break;
     end
end
end

