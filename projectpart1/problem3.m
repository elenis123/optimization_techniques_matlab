function []=problem3(a,b,f)
%δημιουργία των γραφημάτων
reps2=zeros([9 1]);
epsilon1=0.001;
limits=zeros([9 2]);
 
for l=10e-3:1e-3:20e-3
    [k,edge]= fibonaccimethod(f,a,b,l);
    reps2(round((l-9e-3)/(1e-3)))=k;
    limits(round((l-9e-3)/(1e-3)),1)=edge(k,1);
    limits(round((l-9e-3)/(1e-3)),2)=edge(k,2);

     
end


figure(6)
clf
l=10e-3:1e-3:20e-3;
R2=2.*reps2;
stem(l*100,R2 );
 
xlabel('l');
ylabel('iterations');
title(sprintf('iterations per l of  fibonacci method'));


l_values=[ 10e-3 20e-3 30e-3];

[~,edge1]= fibonaccimethod(f,a,b,l_values(1));
[~,edge2]= fibonaccimethod(f,a,b,l_values(2));
[~,edge3]= fibonaccimethod(f,a,b,l_values(3));

edge1=[0 3;edge1];
edge2=[0 3;edge2];
edge3=[0 3;edge3];


figure(7)
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
title(sprintf('values of a and d of  fibonacci method ') );
end

