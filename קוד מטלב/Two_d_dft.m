function X = Two_d_dft(x)
N = size(x,1);
M = size(x,2);
X = zeros(N,M);
for i=0:M-1
   X(:,i+1) = fft(x(:,i+1)); 
end
for j=0:N-1
   X(j+1,:) = fft(X(j+1,:)); 
end
end