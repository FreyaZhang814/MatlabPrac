p=zeros(30,1);p(1)=400;
pa=zeros(30,1);pa(1)=120;
for n=2:30
if(rand(1)<0.35);
    p(n)=p(n-1)*(0.9);
    pa(n)=pa(n-1)*(0.8);
else
    p(n)=p(n-1)*(1.1);
    pa(n)=pa(n-1)*(1.2);
end
end
p
pa