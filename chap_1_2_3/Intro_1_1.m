Light=[20 20 20 20 21 24 44 60 90 94 101]
rmax=[1.73 1.65 2.02 1.89 2.61 1.36 2.37 2.08 2.69 2.32 3.67]
C=polyfit(log(Light),rmax,1)
xvals=2:5;
yhat=polyval(C,xvals);
plot(log(Light),rmax,'+',xvals,yhat)