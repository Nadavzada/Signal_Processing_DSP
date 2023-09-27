image=zeros(32,64);
image(1:7,1:7)=1;
X = Two_d_dft(image); %סעיף ד
stem(X)
figure
surf(abs(X))
% figure()
% O = fft2(image);
% stem(O)
[dist_image_1,dist_image_2,noised_image,imp_resp_image]=img_gen('YEHUDA','NADAV');
h00=imp_resp_image(:,1);
%סעיף ה
X0124 = [];
X0124=dtft_h0(h00);
h0=cat(2,(h00)',zeros(1,29));
N=32; %peirod
%%%%% סעיף ו
x = 0:1:31;
w = dirac(x)+dirac(x-29);
idx = w == Inf; % find Inf
w(idx) = 1;     % set Inf to finite value
W=fft(w);
H0=fft(h0);
conv_res = W.*H0;
conv_res = ifft(conv_res);
stem(x,conv_res)
title("conve res between w and h0");
h1=zeros(128,128);
h2=zeros(70,170);
h1([1:3],[1:5])=imp_resp_image;
h2([1:3],[1:5])=imp_resp_image;
H1=Two_d_dft(h1);
H2=Two_d_dft(h2);
Y1 = Two_d_dft(dist_image_1);
Y2 = Two_d_dft(dist_image_2);
X1 = Y1./H1;
X2 = Y2./H2;
x1_time=Two_d_Idft(X1);
x2_time=Two_d_Idft(X2);
imshow(x1_time)
imshow(x2_time)


