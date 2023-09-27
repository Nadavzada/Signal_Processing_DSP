function x = Idit(Xk1)
N = numel(Xk1);
Xk = conj(Xk1);
middle_res = dit(Xk);
% middle_res2=(1/N)*conj(middle_res);
x=(1/N)*conj(middle_res);

% e=zeros(1,N);
% e(1)=middle_res2(1);
% g=zeros(1,N-1);
% g=middle_res2(2:N);
% g1 = circshift(g,N);
% e(2:N)=g1;
% x=e;
% x = middle_res2();
end