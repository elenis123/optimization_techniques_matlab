function [k,edges] =  goldensectionmethod(f,a,b,l)
% f: Η συνάρτηση για την οποία αναζητούμε τη ρίζα.
    % a: Το αρχικό άκρο του διαστήματος.
    % b: Το τελικό άκρο του διαστήματος.
    % l: Τελικό εύρος αναζήτησης. 
    g=0.618;
    k=0;
	edges=[];% πνακας που αποθηκεύονραι τα ορια a,b σε καθε επανάληψη
	
     
    
     

    while b-a>l
        x1=a+g*(b-a);
        x2=a+(1-g)*(b-a);
         
        if f(x2)<f(x1)
            b=x1;
        else
            a=x2;
        end  
            k=k+1;
			edges=[edges;[a b]];
       
    end
end