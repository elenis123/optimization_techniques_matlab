function []=problem4(a,b,df)
%δημιουργία των γραφημάτων
%στη θέση του df βαζω την παράγωγο
% (derivativef1,derivativef2.derivativef3)
reps2=zeros([91 1]);
epsilon1=0.001;
limits=zeros([91 2]);
 
for l=10e-3:1e-3:100e-3
    [k,edge]=derivativemethod(df,a,b,l);
    reps2(round((l-9e-3)/(1e-3)))=k;
    limits(round((l-9e-3)/(1e-3)),1)=edge(k,1);
    limits(round((l-9e-3)/(1e-3)),2)=edge(k,2);

     
end


figure(8)
clf
l=10e-3:1e-3:100e-3;
R2=2.*reps2;
stem(l*100,R2);
 
xlabel('l');
ylabel('iterations');
title(sprintf('iterations per l of  derivative method'));


l_values=[ 10e-3 20e-3 100e-3];

[~,edge1]= derivativemethod(df,a,b,l );
[~,edge2]= derivativemethod(df,a,b,l);
[~,edge3]= derivativemethod(df,a,b,l);

edge1=[0 3;edge1];
edge2=[0 3;edge2];
edge3=[0 3;edge3];


figure(9)
clf

plot(edge1(:,1),'--','LineWidth',2);
hold on
plot(edge1(:,2),'--','LineWidth',2);
hold on
plot(edge2(:,1),':','LineWidth',4);
hold on
plot(edge2(:,2),':','LineWidth',4);
hold on
plot(edge3(:,1) );
hold on
plot(edge3(:,2) );
hold on
legend('l=0.01','l=0.02','l=0.1');
xlabel('Iterations')
ylabel('Value of function f')
title(sprintf('values of a and d of  derivative method ') );
end
