popsize=zeros(5,5);
popsize(1,1)=1;
for n=1:4
popsize(n+1,n)=n*0.1;
popsize(1,n+1)=popsize(1,n)+1;
end
popsize