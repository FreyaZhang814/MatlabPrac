walklength=500;n=600;

rlistx=rand(2,walklength,n);
stepx=rlistx>0.5;
stepx=(stepx*2)-1;
walk=cumsum(stepx,2);

xfinal=walk(1,walklength,:);
yfinal=walk(2,walklength,:);
D=xfinal.^2 + yfinal.^2;

scatter(xfinal,yfinal,'.')
axis equal,xlim(-80,80),ylim(-80,80);
xlabel('x'),ylabel('y');
title('y vs x');

histogram(D(1,:),20)%b
mean(D)%c