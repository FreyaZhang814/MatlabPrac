function [mean_x,var_x,median_x,min_x,max_x,u]=stats(x);
mean_x=mean(x); var_x=var(x);
median_x=median(x);
min_x=min(x); max_x=max(x);
u=srsum(x);
return;
function f=srsum(x);
f=sum(sqrt(x));
return;