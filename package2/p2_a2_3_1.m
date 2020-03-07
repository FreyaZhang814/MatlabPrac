load ('g149novickA.mat')
time=0:0.1:10;
tau1=1;
tau2=2;
tau3=3.55;
tau4=4;
x=data(:,1);
y=data(:,2);
V1=1-exp(-time/tau1);
V2=1-exp(-time/tau2);
V3=1-exp(-time/tau3);
V4=1-exp(-time/tau4);
plot(x,y,'bx',time,V1,'g-',time,V2,'r-',time,V3,'c-',time,V4,'m-'),
xlabel('time'),ylabel('Enzyme Activity'),
legend('data','V1','V2','V3','V4'),title('enzyme act vs time')