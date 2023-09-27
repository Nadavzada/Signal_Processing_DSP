function X = dit(x)
%need to make sure that N is power of 2
N = numel(x);
if nextpow2(N)~=log2(N)
    x1=zeros(1,(2^nextpow2(N)));
    x1(1:N)=x(1:N);
    x=x1;
end

even = x(1:2:end);
odd = x(2:2:end);
if N>=4
    % The recorse part
    Even = dit(even);
    Odd = dit(odd); 
    X = zeros(N,1); %changed
    Wn = exp(-1i*(2*pi/N)*(0:(N/2)-1)');
    temp = Wn.*Odd;
    X = [(Even+temp);(Even-temp)];
%     X = cat(2,(even+temp),(even-temp));
end
if N==2
%    X(1) = [1,1]*(x'); 
%    X(2)= [1,-1]*(x');
   X = [1 1;1 -1]*x;
end
    
end