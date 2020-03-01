p=zeros(5,1);
for init=linspace(1,10,3);
p(1)=init;
for n=2:5;
p(n)=p(n-1)*2; x=log(p(n));
q=[num2str(n), ' ', num2str(x)];
disp(q)
end;
end;