walklength=500;
rlistx=rand(2,walklength);
stepx=rlistx>0.5;
stepx=(stepx*2)-1;
walk=cumsum(stepx,2);

rlisty=rand(2,walklength);
stepy=rlisty>0.5;
stepy=(stepy*2)-1;
walk2=cumsum(stepy,2);

rlistz=rand(2,walklength);
stepz=rlistz>0.5;
stepz=(stepz*2)-1;
walk3=cumsum(stepz,2);

figure
plot(walk(1,:),walk(2,:))
axis equal,xlim([-50,50]),ylim([-50,50]);
xlabel('x'),ylabel('y');
title('y vs x');

figure
plot(walk2(1,:),walk2(2,:))
axis equal,xlim([-50,50]),ylim([-50,50]);
xlabel('x'),ylabel('y');
title('y vs x');

figure
plot(walk3(1,:),walk3(2,:))
axis equal,xlim([-50,50]),ylim([-50,50]);
xlabel('x'),ylabel('y');
title('y vs x');