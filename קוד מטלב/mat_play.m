% n1=zeros(1,32);
% m1=zeros(1,64);
% n1(1:7)=1;
% m1(1:7)=1;
% n11=n1';
% A=n11*m1;
g=10^-8;
y1=exp(-1i*(g*7*pi/16))-1;
y2=exp(-1i*(g*1*pi/16))-1;
y=y1/y2;
z1=exp(-1i*(g*7*pi/32))-1;
z2=exp(-1i*(g*1*pi/32))-1;
z=z1/z2;
display(y*z)