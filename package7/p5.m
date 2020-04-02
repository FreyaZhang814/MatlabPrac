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

meanx=0;meany=0;ssq=0;
pr=1/(15^2); 
for i=1:15
    for j=1:15
       ssq=ssq+(i^2+j^2)*pr;meany=meany+(j*pr);meanx=meanx+(i*pr);
    end
end
varLarge=ssq-meanx^2-meany^2;

%%gaussian mask
gauss = zeros(45,45);
for i = 1:1:45
  for j = 1:1:45
    gauss(i,j) = exp(-((i-23)^2 + (j-23)^2)/37);
  end
end
gauss = gauss/sum(gauss(:));
meanx=0;meany=0;ssq=0;
for i=1:45
  for j=1:45
ssq=ssq+(i^2+j^2)*gauss(i,j);
meany=meany+(j*gauss(i,j));meanx=meanx+(i*gauss(i,j));
5
  end
end
varGauss=ssq-meanx^2-meany^2
figure(4);
surf(gauss);
gaussSmoothedA = conv2(gauss, A);
figure(5);
colormap([co;co;co]');
image(gaussSmoothedA);

noisyA=A.*(1.2*rand(size(A)));
figure(6);
colormap([co;co;co]');
image(noisyA);
denoiseA = conv2(s, noisyA);
denoiseB = conv2(l, noisyA);
denoiseC = conv2(gauss, noisyA);
figure(7);
colormap([co;co;co]');
image(denoiseA);%%this is the best
figure(8);
colormap([co;co;co]');
image(denoiseB);
figure(9);
colormap([co;co;co]');
image(denoiseC);

h=5;
IBlur = fspecial('average',[1 h]);
IBlurFil=imfilter(img,IBlur,'replicate');
imshow(IBlurFil)

