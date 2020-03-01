p=zeros(30,1);p(1)=400;
disp([num2str(1),' ',num2str(400)])
for n=2:30
p(n)=p(n-1)*(1.1);
x=p(n);
q=[num2str(n),' ', num2str(x)];
disp(q)
end
pa=zeros(30,1);pa(1)=120;
disp([num2str(1),' ',num2str(120)])
for n=2:30
pa(n)=pa(n-1)*(1.2);
xa=pa(n);
qa=[num2str(n),' ', num2str(xa)];
disp(qa)
end
%min(log(p))-1:max(log(p))-1
%min(log(pa))-1:max(log(pa))-1
plot(log(p'),1:30,'+',0:90,0:90)
plot(log(pa'),1:30,'-',0:90,0:90)