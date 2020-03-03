function f=chap10(d, L);
njt=zeros(50,L);
njt(1,:)=5.+njt(1,:);
mjt(1,1:0.5*L)=0.9.*njt(1,1:0.5*L);mjt(1,0.5*L+1:L)=1.2.*njt(1,0.5*L+1:L);
x(1)=log(sum(njt(1,:)));
y(1)=1;
for t=2:50
    %njt(t,1)=(1-d)*mjt(t-1,1)+d*mjt(t-1,2);
    %for j=2:L-1
        %njt(t,j)=(1-2*d)*mjt(t-1,j)+d*mjt(t-1,j-1)+d*mjt(t-1,j+1);
    %end
    %njt(t,L)=(1-d)*mjt(t-1,L)+d*mjt(t-1,L-1);
    njt(t,:)=subcal(mjt(t-1,:),d,L);
    mjt(t,1:0.5*L)=0.9.*njt(t,1:0.5*L);
    mjt(t,0.5*L+1:L)=1.2.*njt(t,0.5*L+1:L);
    x(t)=log(sum(njt(t,:)));
    y(t)=t;
end
plot(x,y,'+')
f=njt;
return
function f=subcal(mt,d,L);
    nt(1)=(1-d)*mt(1)+d*mt(2);
    for j=2:L-1
        nt(j)=(1-2*d)*mt(j)+d*mt(j-1)+d*mt(j+1);
    end
    nt(L)=(1-d)*mt(L)+d*mt(L-1);
    f=nt;
return