function [v,edges]=fibonaccimethod(f,a,b,l,e)
% f: Η συνάρτηση για την οποία αναζητούμε τη ρίζα.
    % a: Το αρχικό άκρο του διαστήματος.
    % b: Το τελικό άκρο του διαστήματος.
    % l: Τελικό εύρος αναζήτησης.
    % v: συνολικός αριθμός υπολγισμών της f
   
edges=[];% πνακας που αποθηκεύονται τα ορια a,b σε καθε επανάληψη

e=0.001;

n=0;
 Fib=1;
while Fib<(b-a)/l       % υπολογισμός αιθμού n για την ακολουθια fibonacci
    n=n+1;
    Fib=fibonaccisequence(n);
end

for k=1:1:(n-1)
    x2= a + (fibonaccisequence(n-k)/fibonaccisequence(n-k+1))*(b-a);
    x1= a + (fibonaccisequence(n-k-1)/fibonaccisequence(n-k+1))*(b-a);
    f1=f(x1);
    f2=f(x2);
    if k==n-2
        x1= a + (fibonaccisequence(n-k-1)/fibonaccisequence(n-k+1))*(b-a)+e;
    end
    if f2<f1
        a=x1;
    else
        b=x2;
    end
    edges=[edges;[a b]];
end

v=n-1;
end
