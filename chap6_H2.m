clc
x=[2 3 5 6 7 9 10 11 12 14 16 17 19 20];
y=[106.42 108.26 109.58 109.50 109.86 110.00 109.93 110.59 110.60 110.72 110.90 110.76 111.10 111.30];
xx=1./x;
yy=1./y;
P=polyfit(xx,yy,1);
X=linspace(2,20);
Y=1./polyval(P,1./X);
figure('Name','Chap6 H2','NumberTitle','off')
plot(x,y,'ko',X,Y,'r-')
xlabel('使用次数x')
ylabel('容积y')
title('钢包容积与使用次数的关系')