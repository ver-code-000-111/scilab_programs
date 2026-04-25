clc;
clear; 
x=input('enter the first sequence ');
y=input('enter the second sequence ');
N=input('enter the length of sequence ');
c1=conj(y);
n=length(x);
t1=0;
for m=1:n;
    t1=t1+(x(m)*c1(m));
end

disp(t1);
X1=fft(x);
Y1=fft(y);
c2=conj(Y1);
t2=0;
for m=1:n;
    t2=t2+(X1(m)*c2(m));
end
t2=t2/n;
disp(t2);

if(t1==t2)
disp('parsevals theorem proved');
else
disp('parsevals theorem not proved');    
end


subplot(2,2,1);
plot2d3(x);
xlabel('time');
ylabel('amplitude');
title('first sequence');
subplot(2,2,2);
plot2d3(y);
xlabel('time');
ylabel('amplitude');
title('second sequence');
subplot(2,2,3);
plot2d3(t1);
xlabel('time');
ylabel('amplitude');
title('T1');
subplot(2,2,4);
plot2d3(t2);
xlabel('time');
ylabel('amplitude');
title('T2');
