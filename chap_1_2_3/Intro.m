(2^5)/(2^5-1)
(1-(1/2^5))^(-1)
sin(pi/6)
(cos(pi/8))^2
((2^5)/(2^5-1))+(4*sin(pi/6))
y=randn(5000,1);
N=hist(y,21)
Light=[20 20 20 20 21 24 44 60 90 94 101]
rmax=[1.73 1.65 2.02 1.89 2.61 1.36 2.37 2.08 2.69 2.32 3.67]
C=polyfit(Light,rmax,1)
xvals=0:120;
yhat=polyval(C,xvals);
plot(Light,rmax,'+',xvals,yhat)