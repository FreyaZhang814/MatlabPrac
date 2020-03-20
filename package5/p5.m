A=imread('bwEmily.tiff');
A=single(A);
co=[0:255]/256;colormap([co;co;co]');
image(A);

s=ones(3,3);
s=s/length(s(:));
sA=conv2(s,A);
figure(2);
colormap([co;co;co]');
image(sA);

l=ones(15,15);
l=l/length(l(:));
lA=conv2(l,A);
figure(3);
colormap([co;co;co]');
image(lA);
