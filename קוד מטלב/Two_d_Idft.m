function x = Two_d_Idft(X)
N = size(X,1);
M = size(X,2);
x = zeros(N,M);
for j=0:N-1
   x(j+1,:) = ifft(X(j+1,:)); 
end
for i=0:M-1
   x(:,i+1) = ifft(x(:,i+1)); 
end

end