n=400*(1.1.^(0:30));n'
m=120*(1.2.^(0:30));m'

%min(log(p))-1:max(log(p))-1
%min(log(pa))-1:max(log(pa))-1
plot(log(n'),0:30,'+',0:90,0:90)
plot(log(m'),0:30,'-',0:90,0:90)