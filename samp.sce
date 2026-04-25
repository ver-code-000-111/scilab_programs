clc;
clear;
close;
tfinal=0.05;
t=0:0.00005:tfinal;
fd=input('enter analog frequency =');
xt= sin(2*%pi*fd*t);
fs1=1.3*fd ;
n1=0:1/fs1:tfinal;
xn1=sin(2*%pi*n1*fd);
subplot(3,1,1);
plot(t,xt,'b',n1,xn1,'r');
title('undersampling plot');

fs2=2*fd ;
n2=0:1/fs2:tfinal ;
xn2=sin(2*%pi*fd*n2);
subplot(3,1,2);
plot(t,xt,'b',n2,xn2,'r');
title('nyquist plot');

fs3=5*fd ;
n3=0:1/fs3:tfinal;
xn3=sin(2*%pi*fd*n3);
subplot(3,1,3);
plot (t,xt,'b',n3,xn3,'r')
title('oversampling plot');
xlabel('time');
ylabel('amplitude');
legend ('analog','discrete');

