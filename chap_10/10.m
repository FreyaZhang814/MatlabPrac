d=0.1; L=20;
njt=zeros(50,L);
njt(1,:)=5.+njt(1,:);
mjt(1,1:0.5*L)=0.9.*njt(1,1:0.5*L);mjt(1,0.5*L+1:L)=1.2.*njt(1,0.5*L+1:L);
x(1)=log(sum(njt(1,:)));
y(1)=1;
for t=2:L-1
    njt(t,1)=(1-d)*mjt(t-1,1)+d*mjt(t-1,2);
    for j=2:L-1
        njt(t,j)=(1-2*d)*mjt(t-1,j)+d*mjt(t-1,j-1)+d*mjt(t-1,j+1);
    end
    njt(t,L)=(1-d)*mjt(t-1,L)+d*mjt(t-1,L-1);
    mjt(t,1:0.5*L)=0.9.*njt(t,1:0.5*L);mjt(t,0.5*L+1:L)=1.2.*njt(t,0.5*L+1:L);
    x(t)=log(sum(njt(t,:)));
    y(t)=t;
end
x
y
plot(x,y,'+',0:50,0:50)

