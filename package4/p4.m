L=500;Np=500;Nk=10000;
f=zeros(Nk,Np);x=zeros(Nk,Np);
f(1,:)=rand(1,Np);
f(2:end,:)=rand(Nk-1,Np);
x=cumsum(f);
x=mod(x,L);
I=zeros(Np,Nk);
x=ceil(x);