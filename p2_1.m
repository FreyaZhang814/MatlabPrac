A=1;tau=1;
time=0:0.1:2;
Vt=A*(exp(-time/tau)-1+time/tau);
plot(time,Vt,'g'),xlabel('time'),ylabel('Vt'),title('Vt vs time')