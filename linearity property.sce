clc;
clear; 
x1=input('enter the first sequence ');
x2=input('enter the second sequence ');
a1=input('enter the value ');
a2=input('enter the value ');
T1=fft((x1)+(x2));
y1=fft(x1);
y2=fft(x2);
T2=((a1*y1)+(a2*y2));
disp(T1);
disp(T2);
disp(y1);
disp(y2);
if(T1==T2)
disp('linearity property proved');
else
disp('linearity property not proved');  
and  

end


subplot(2,2,1);
plot2d3(x1);
xlabel('time');
ylabel('amplitude');
title('first sequence');
subplot(2,2,2);
plot2d3(x2);
xlabel('time');
ylabel('amplitude');
title('second sequence');
subplot(2,2,3);
plot2d3(T1);
xlabel('time');
ylabel('amplitude');
title('T1');
subplot(2,2,4);
plot2d3(T2);
xlabel('time');
ylabel('amplitude');
title('T2');
