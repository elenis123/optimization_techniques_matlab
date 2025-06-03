function [k,edges] = bisectionmethod(f,a,b,epsilon,l)
    % f: Η συνάρτηση για την οποία αναζητούμε τη ρίζα.
    % a: Το αρχικό άκρο του διαστήματος.
    % b: Το τελικό άκρο του διαστήματος.
    % epsilon: Απόσταση από τη διχοτόμο.
    % l: Τελικό εύρος αναζήτησης.
 
k=0;% επαναλήψεις
edges=[];% πνακας που αποθηκεύονtαι τα ορια a,b σε καθε επανάληψη

while b-a>l
    c=((a+b)/2)-epsilon;
    d=((a+b)/2)+epsilon;
    x1=f(c);
    x2=f(d);

    if x1<x2 
        b=d;
    else 
        a=c;
    end
    k=k+1;
    edges=[edges;[a b]];

end  
end