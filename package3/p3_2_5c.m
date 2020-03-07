walklength=1000;n=600;
rlistx=rand(2,walklength,n);
stepx=rlistx>0.5;
stepx=(stepx*2)-1;
walk=cumsum(stepx,2);

xfinal=walk(1,walklength,:);
yfinal=walk(2,walklength,:);
D=xfinal.^2 + yfinal.^2;
mean(D)