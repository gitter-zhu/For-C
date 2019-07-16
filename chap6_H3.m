clc
xdata=[0.1:0.1:1];
ydata=[2.3240 2.6470 2.9707 3.2885 3.6008 3.9090 4.2147 4.5191 4.8232 5.1275];
fun=@(a,xdata) a(1).*xdata+a(2).*xdata.^2.*exp(-a(3).*xdata)+a(4);
a=lsqcurvefit(fun,[1,1,1,1],xdata,ydata)
times = linspace(xdata(1),xdata(end));
plot(xdata,ydata,'mo',times,fun(a,times),'b-')
legend('Data','Fitted exponential')
title('Data and Fitted Curve')