r=rand(1000,1);
seq = zeros(1000,1);
x=1;
while x<=1000
    if r(x) < 0.6
        seq(x)=1;
    end
    x=x+1;
end
%k=500:700;
%a=ones(1,201);

%for i=1:201
 %   for j=k(i):1000
  %      a(i)=a(i)*0.4*j/(1000-j);
   % end
%c=factorial(int64(1000))
%a=(factorial(int64(1000))./(factorial(int64(k)).*factorial(int64(1000.-k))))
%b=(0.6.^k).*0.4.^(1000.-k);

%plot(k,a,'+')
%end