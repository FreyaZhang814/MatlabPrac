walklength=500;
rlistx=rand(2,walklength);
stepx=rlistx>0.5;
stepx=(stepx*2)-1;

walk=cumsum(stepx,2);
plot(walk(1,:),walk(2,:))
axis equal,xlim([-50,50]),ylim([-50,50]);
xlabel('x'),ylabel('y');
title('y vs x');

