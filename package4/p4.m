L=500;Np=500;Nk=10000;
f=zeros(Nk,Np);x=zeros(Nk,Np);
f(1,:)=rand(1,Np);
f(2:end,:)=rand(Nk-1,Np);
x=cumsum(f);
x=mod(x,L);
I=zeros(Np,Nk);
x=ceil(x);
for i=1:Nk
    I(:,i)=hist(x(i,:),Np);
end

figure
imshow(I(200:400,4500:4800),[]);

vx=zeros(1,Np);
for i=1:Np
    vx(i)=var(x(:,i));
end

ave_x=mean(vx);

figure
plot(1:Np,vx);

D=ave_x/(2*Nk);

Diffusion=100;
magn=0.4;
expTime=0.002;

numP=sqrt(4*Diffusion*expTime)/magn;