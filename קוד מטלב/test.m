% one = ones(1,34);
% zero = zeros(1,15);
% rec = cat(2,zero,one,zero);
% n = 0:1:63;
% stem(n,rec);
% figure()
% % X = dit(rec);
% X=dit(rec);
% stem(n,X,'r');
% figure()
% z =Idit(X);
% stem(n,z);

% x=[1 2 3 4 5 6 7 8 9];
% N = numel(x);
% if nextpow2(N)~=log2(N)
%     x1=zeros(1,(2^nextpow2(N)));
%     x1(1:N)=x(1:N);
%     x=x1;
% end
% display(x)

t=(1:8)';
T1 = (dit(t))
T2 = fft(t)
t1 = (Idit(T1))
% t2 = ifft(T2)
% T2 = dit(t1)
% t2 = Idit(T2)