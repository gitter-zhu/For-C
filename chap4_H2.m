clc
format long
A=[12 6 -6;6 16 2;-6 2 16];
x=ones(3,1);
y=zeros(3,1);
eps1=1e-10;
kmax=100;
flag=0;
for m=1:3
    y=x/max(abs(x));
    x=A*y;
end
lamda=fix(max(abs(x)))
A=A-lamda*eye(3);
%[L,U]=lu(A)
alphaold=1/lamda;
y=zeros(3,1);
x=ones(3,1);
for m=1:kmax
    y=x/max(abs(x));
    %x=U^-1*L^-1*y;
    x=A^-1*y;
    alphanew=max(abs(x));
    if abs(1/alphaold-1/alphanew)<eps1
        flag=1;
        break
    end
    alphaold=alphanew;
end
if flag==1
    lamda=1/alphanew+lamda
    m
end
if flag==0
    disp('Error!')
end