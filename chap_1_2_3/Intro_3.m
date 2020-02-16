Light=[20 20 20 20 21 24 44 60 90 94 101]
rmax=[1.73 1.65 2.02 1.89 2.61 1.36 2.37 2.08 2.69 2.32 3.67]
C=polyfit(Light,rmax,1)
D=polyfit(log(Light),log(rmax),2)
xvals=0:120;
xxvals=2:5;
yhat=polyval(C,xvals);
yyhat=polyval(D,xxvals);
subplot(2,1,1)
plot(Light,rmax,'+',xvals,yhat)
subplot(2,1,2)
plot(log(Light),log(rmax),'+',xxvals,yyhat)