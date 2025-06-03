function f= fibonaccisequence(n)
% υλοποίση ακολουθίας fibonacci
 if n==0 || n==1
     f=1;
 else
     i=2;
     fn_1=1;
     fn_2=1;
     while (i<=n)
         f=fn_1 +fn_2;
         fn_1=fn_2;
         fn_2=f;
         i=i+1;
     end
 end
end
