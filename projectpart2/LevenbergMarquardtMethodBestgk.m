function [output, xs, ys]=LevenbergMarquardtMethodBestgk(epsilon,x,y)
% function of Levenberg-Marquardt Method with best gk
k=1;
z=(x^3)*exp(-(x^2)-(y^4))
output=[z];
xs=[x];
ys=[y];

d=gradient(x,y);

while norm(d)>=epsilon
      h=HessianMatrix(x,y);
      m=0;
      r=h+m*eye(size(h));
      while r(1,1)<=0 || (r(1,1)*r(2,2)-r(1,2)*r(2,1))<=0
          m=m+1;
          r=h+m*eye(size(h));
          if m>500
              disp('the matrix cannot be positive definite')
              break
          end
      end
    dk=-d/r;%finds the dk we use
    gk=bisectionmethod2(x,y,dk);
    x=x+gk*dk(1);
    y=y+gk*dk(2);
    k=k+1;
    z=(x^3)*exp(-x^2-y^4);
    output=[output ,z];
     d=gradient(x,y);
    xs=[xs x];
    ys=[ys y];
    
end
end




