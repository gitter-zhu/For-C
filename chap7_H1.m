clc
eps1=1e-6;
eps2=1e-10;
s=-5;
n=50;
n=n+1;
xs1=zeros(1,n);
ys1=zeros(1,n);
xs2=zeros(1,n);
ys2=zeros(1,n);
fun1=@(t) cos(0.5*t.^2);
fun2=@(t) sin(0.5*t.^2);
for i=1:n
    xs1(1,i)=quad(fun1,0,s,eps1);
    ys1(1,i)=quad(fun2,0,s,eps1);
    s=s+10/(n-1);
end
s=-5;
for i=1:n
    xs2(1,i)=quad(fun1,0,s,eps1);
    ys2(1,i)=quad(fun2,0,s,eps1);
    s=s+10/(n-1);
end
figure
set(gcf,'unit','normalized','position',[0.1,0.2,0.75,0.5])
subplot(1,2,1)
plot(xs1,ys1);
title('1e-6Îó²îÏÞ')
subplot(1,2,2)
plot(xs2,ys2);
title('1e-10Îó²îÏÞ')