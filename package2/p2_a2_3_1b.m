load ('g149novickB.mat')
A=1;tau=18;
time=0:0.1:12;
x=data(1:12,1);
y=data(1:12,2);
Vt=A*(exp(-time/tau)-1+time/tau);
plot(x,y,'bx',time,Vt,'g-'),xlabel('time'),ylabel('Enzyme Activity'),title('nzyme act vs time')
legend('data','Vt'),title('time vs enzyme act')