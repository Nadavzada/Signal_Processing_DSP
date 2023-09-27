function T = dtft_h0(h00)
%     h0=cat(2,(h00)',zeros(1,3));
    X = fft(h00);
    T=zeros(1,4);
%     T(1) = X(1); %T(1) is X(0)
%     T(2) = X(2); %T(2) is X(1)
%     T(3) = X(3); %T(3) is X(2)
%     T(4) = X(5); %T(4) is X(4)

    T(1) = X(1); %T(1) is X(0)
    T(2) = X(2); %T(2) is X(1)
    T(3) = X(3); %T(3) is X(2)
    T(4) = X(2); %T(4) is X(1)
end