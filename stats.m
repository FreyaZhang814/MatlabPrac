function [mean_x,var_x,median_x,min_x,max_x,f]=stats(x);
mean_x=mean(x); var_x=var(x);
median_x=median(x);
min_x=min(x); max_x=max(x);
f=stat(x);
return;
function f=stat(x);
f(x)=sum(sqrt(x));
return;