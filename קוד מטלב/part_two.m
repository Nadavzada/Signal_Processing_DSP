% myVoice = audiorecorder(16000,8,1);
% 
% % Define callbacks to show when
% % recording starts and completes.
% myVoice.StartFcn = 'disp(''Start speaking.'')';
% myVoice.StopFcn = 'disp(''End of recording.'')';
% 
% record(myVoice, 5);


% play(myVoice);
% a=myVoice_audiodata';
% stem(a);
% audiowrite('myVoice.wav',a,16000)

%סעיף א
N = 2^16;
xn=a(:,1:N);
% stem(xn)
% title("x[n]")
avg_power = (1/N)*(sum(xn.*xn)); 
%סעיף ב
d1=0.206665341;
d=0.415490598;
w1=1.6+0.1*d1;
w2=1.6+0.1*d;
w3=3;
n=0:N-1;
a1=50*(sqrt(avg_power));
zn=a1.*(cos(w1.*n)+cos(w2.*n)+cos(w3.*n));
yn=xn+zn;
% soundsc(yn,16000)
%סעיף ג
N1=128;
stem(yn)
title("y[n]");
%סעיף ד
Y=fft(yn);
Y_sample = Y(1:512:N);
% stem(Y_sample);
y2=decimate(yn,2);
% stem(fft(y2))
stem(xn)
title("xn")
figure
stem(fft(xn))
title("fft(xn)")
figure
stem(yn)
title("yn")
figure
stem(fft(yn))
title("fft(yn)")
figure
stem(y2)
title("y2")
figure
stem(fft(y2))
title("fft(y2)")

% soundsc(y2,8000)


