function [k,edges]=derivativemethod(df,a,b,l)
    % f': Η  παράγωγος συνάρτηση .
    % a: Το αρχικό άκρο του διαστήματος.
    % b: Το τελικό άκρο του διαστήματος.
    % l: Τελικό εύρος αναζήτησης.
    %mode:δείκτης συνάρτησης
edges=[]; 
k=0;
n=0;
 
while (0.5)^n>l/(b-a)
    n=n+1;
end
for m=1:1:n
    k=m;
    x=(a+b)/2;
    d=df(x);
    if d==0;
        m=n;
    elseif d>0
        b=x;
        edges=[edges;[a b]];

    else 
        a=x;
        edges=[edges;[a b]];
    end
end
end


