function [ gknew] = bisectionmethod2(x,y,d)
% use of bisection method (from project 1) to find best gk to minimize f

     
 epsilon=0.001;%distance from bisection
 l=0.01;%final search range
 a=0;%lower limit
 b=3;%upper limit

 
 
   x1=((a+b)/2)-epsilon;
   x2=((a+b)/2)+epsilon;
   v1=bestgk(x,y,d,x1);
   v2=bestgk(x,y,d,x2);

   while b-a>l
     

    if v1<v2
        b=x2;
        x2=x1;
        x1=((a+b)/2)-epsilon;
        v2=v1;  
        v1=bestgk(x,y,d,x1);
    else 
        a=x1;
        x1=x2;
        x2=((a+b)/2)+epsilon;
        v1=v2;
        v2=bestgk(x,y,d,x2);
    end
    
    
    gknew=(a+b)/2;

   end
end