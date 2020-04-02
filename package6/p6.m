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
vx=zeros(1,Np);
for i=1:Np
    vx(i)=var(x(:,i));
end
ave_x=mean(vx);
D=ave_x/(2*Nk);

Is=I(239:262,:);

dIs=Is-repmat(mean(Is,2),1,10000);

xmax=24;
taumax=50;
ntimes=size(Is,2);
G=zeros(2*xmax-1,taumax);

for dx=0:xmax-1
 for tau=0:taumax-1
 G(xmax+dx,tau+1)=mean(mean(dIs(1:xmax-dx,1:ntimes-tau).*dIs(dx+1:xmax,tau+1:ntimes)));
 G(xmax-dx,tau+1)=mean(mean(dIs(dx+1:xmax,1:ntimes-tau).*dIs(1:xmax-dx,tau+1:ntimes)));
 end
end

logtmax=log(taumax);
deltaT=(logtmax-1)/5;
taulistlog=0:deltaT:5*deltaT;
taulist=exp(taulistlog);
xlist=-(xmax-1):1:xmax-1;

G_taulist=interp1(1:taumax,G',taulist)';
figure;
plot(G_taulist);

xlistPos=xlist(xlist>=0);
G_xlistPos=G(xmax+xlistPos,:)';
figure;
plot(G_xlistPos,'-');

offset=-0.015;

D2=D;
Gt=zeros(2*xmax-1,taumax);
for dx=0:xmax-1
 for tau=0:taumax-1
 Gt(xmax+dx,tau+1)=exp(-((dx^2)/(4*D2*tau)))/sqrt(4*D2*tau)+offset;
 Gt(xmax-dx,tau+1)=exp(-((dx^2)/(4*D2*tau)))/sqrt(4*D2*tau)+offset;
 end
end

figure;
plot(Gt(:,2),'-r','Linewidth',2); hold on;
plot(G_taulist);
hold off;
figure;
plot(Gt(24,:),'-r','Linewidth',2); hold on;
plot(G_xlistPos,'-');
hold off;