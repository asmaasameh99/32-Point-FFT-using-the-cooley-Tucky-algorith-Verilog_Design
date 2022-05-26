clear all
close all
clc

Input = -1:2/31:1;

Output_fft_function = fft(Input);

%%  Twiddle factors

n2=2;
W2 = zeros(n2-1,1);
k = 1;
L = 2;
% Equation 1.4.11, p. 34
while L <= n2
  theta = 2*pi/L;
  % Algorithm 1.4.1, p. 23
  for j = 0:(L/2 - 1)
    W2(k) = complex(cos(j*theta),-sin(j*theta));
    k = k + 1;
  end
  L = L*2;
end


n4=4;
W4 = zeros(n4-1,1);
k = 1;
L = 2;
% Equation 1.4.11, p. 34
while L <= n4
  theta = 2*pi/L;
  % Algorithm 1.4.1, p. 23
  for j = 0:(L/2 - 1)
    W4(k) = complex(cos(j*theta),-sin(j*theta));
    k = k + 1;
  end
  L = L*2;
end



n8=8;
W8 = zeros(n8-1,1);
k = 1;
L = 2;
% Equation 1.4.11, p. 34
while L <= n8
  theta = 2*pi/L;
  % Algorithm 1.4.1, p. 23
  for j = 0:(L/2 - 1)
    W8(k) = complex(cos(j*theta),-sin(j*theta));
    k = k + 1;
  end
  L = L*2;
end



n16=16;
W16 = zeros(n16-1,1);
k = 1;
L = 2;
% Equation 1.4.11, p. 34
while L <= n16
  theta = 2*pi/L;
  % Algorithm 1.4.1, p. 23
  for j = 0:(L/2 - 1)
    W16(k) = complex(cos(j*theta),-sin(j*theta));
    k = k + 1;
  end
  L = L*2;
end


n32=32;
W32 = zeros(n32-1,1);
k = 1;
L = 2;
% Equation 1.4.11, p. 34
while L <= n32
  theta = 2*pi/L;
  % Algorithm 1.4.1, p. 23
  for j = 0:(L/2 - 1)
    W32(k) = complex(cos(j*theta),-sin(j*theta));
    k = k + 1;
  end
  L = L*2;
end


%% Runing Fixed Point simulink Like RTL integers only


N_bits = 30;
W_bits = 11;

Input = fi(Input,1,30,11);
W2 = fi(W2,1,N_bits,W_bits);
W4 = fi(W4,1,N_bits,W_bits);
W8 = fi(W8,1,N_bits,W_bits);
W16 = fi(W16,1,N_bits,W_bits);
W32 = fi(W32,1,N_bits,W_bits);

W2_r = real(W2);
W4_r = real(W4);
W8_r = real(W8);
W16_r = real(W16);
W32_r = real(W32);

W2_i = imag(W2);
W4_i = imag(W4);
W8_i = imag(W8);
W16_i =imag(W16);
W32_i = imag(W32);

Input_b=Input.bin;
W2_r_b = W2_r.bin;
W4_r_b = W4_r.bin;
W8_r_b = W8_r.bin;
W16_r_b = W16_r.bin;
W32_r_b = W32_r.bin;

W2_i_b = W2_i.bin;
W4_i_b = W4_i.bin;
W8_i_b = W8_i.bin;
W16_i_b = W16_i.bin;
W32_i_b = W32_i.bin;

L=0.00001;
[Y]=sim('FFT_32_point_fi_RTL_Implementation',L);


Output_Model_fi_RTL_Implementation = [Y.a Y.a1 Y.a2 Y.a3 Y.a4 Y.a5 Y.a6 Y.a7 Y.a8 Y.a9 Y.b Y.b1 Y.b2 Y.b3 Y.b4 Y.b5 Y.b6 Y.b7 Y.b8 Y.b9 Y.c Y.c1 Y.c2 Y.c3 Y.c4 Y.c5 Y.c6 Y.c7 Y.c8 Y.c9 Y.d Y.d1];

Output_Model_fi_RTL_Implementation_r = real(Output_Model_fi_RTL_Implementation);
Output_Model_fi_RTL_Implementation_i = imag(Output_Model_fi_RTL_Implementation);

Output_Model_fi_RTL_Implementation_r_b = fi(Output_Model_fi_RTL_Implementation_r ,1,N_bits,W_bits);
Output_Model_fi_RTL_Implementation_i_b = fi(Output_Model_fi_RTL_Implementation_i ,1,N_bits,W_bits);

Output_Model_fi_RTL_Implementation_r_b=Output_Model_fi_RTL_Implementation_r_b.bin;
Output_Model_fi_RTL_Implementation_i_b=Output_Model_fi_RTL_Implementation_i_b.bin;


%% Runing FP simulink



Input = double(Input);
W4 = double(W4);
W8 = double(W8);
W16 = double(W16);
W32 = double(W32);

L=0.00001;
[X]=sim('FFT_32_point_FP',L);

Output_Model = [X.a X.a1 X.a2 X.a3 X.a4 X.a5 X.a6 X.a7 X.a8 X.a9 X.b X.b1 X.b2 X.b3 X.b4 X.b5 X.b6 X.b7 X.b8 X.b9 X.c X.c1 X.c2 X.c3 X.c4 X.c5 X.c6 X.c7 X.c8 X.c9 X.d X.d1];

Difference_in_fft = Output_fft_function - Output_Model ; %Matlab function uses different algorithm so error is not zero but very low value 

L=0.00001;
[X]=sim('FFT_32_point_FP',L);

Output_Model = [X.a X.a1 X.a2 X.a3 X.a4 X.a5 X.a6 X.a7 X.a8 X.a9 X.b X.b1 X.b2 X.b3 X.b4 X.b5 X.b6 X.b7 X.b8 X.b9 X.c X.c1 X.c2 X.c3 X.c4 X.c5 X.c6 X.c7 X.c8 X.c9 X.d X.d1];
Difference_in_fft_fi = Output_Model_fi_RTL_Implementation - Output_Model ; 

%% Runing Fixed Point simulink Like RTL 30.4
% 
% 
% N_bits = 34;
% W_bits = 5;
% 
% Input=Input*(2^(W_bits-2));
% % W2=W2*(2^(W_bits-2));
% % W4=W4*(2^(W_bits-2));
% % W8=W8*(2^(W_bits-2));
% % W16=W16*(2^(W_bits-2));
% % W32=W32*(2^(W_bits-2));
% 
% Input = fi(Input,1,34,4);
% W2 = fi(W2 ,1,34,4);
% W4 = fi(W4 ,1,34,4);
% W8 = fi(W8 ,1,34,4);
% W16 = fi(W16 ,1,34,4);
% W32 = fi(W32 ,1,34,4);
% 
% % Input = fi(Input,1,30,4);
% % W2 = fi(W2 ,1,8,4);
% % W4 = fi(W4 ,1,8,4);
% % W8 = fi(W8 ,1,8,4);
% % W16 = fi(W16 ,1,8,4);
% % W32 = fi(W32 ,1,8,4);
% 
% 
% L=0.00001;
% [Y]=sim('FFT_32_point_fi_RTL_Implementation',L);
% 
% 
% Output_Model_fi_RTL_Implementation = [Y.a Y.a1 Y.a2 Y.a3 Y.a4 Y.a5 Y.a6 Y.a7 Y.a8 Y.a9 Y.b Y.b1 Y.b2 Y.b3 Y.b4 Y.b5 Y.b6 Y.b7 Y.b8 Y.b9 Y.c Y.c1 Y.c2 Y.c3 Y.c4 Y.c5 Y.c6 Y.c7 Y.c8 Y.c9 Y.d Y.d1];
% 
% 
% %% Runing FP simulink
% 
% 
% 
% Input = double(Input);
% W4 = double(W4);
% W8 = double(W8);
% W16 = double(W16);
% W32 = double(W32);
% 
% L=0.00001;
% [X]=sim('FFT_32_point_FP',L);
% 
% Output_Model = [X.a X.a1 X.a2 X.a3 X.a4 X.a5 X.a6 X.a7 X.a8 X.a9 X.b X.b1 X.b2 X.b3 X.b4 X.b5 X.b6 X.b7 X.b8 X.b9 X.c X.c1 X.c2 X.c3 X.c4 X.c5 X.c6 X.c7 X.c8 X.c9 X.d X.d1];
% 
% Difference_in_fft = Output_fft_function - Output_Model ; %Matlab function uses different algorithm so error is not zero but very low value 
% 
% L=0.00001;
% [X]=sim('FFT_32_point_FP',L);
% 
% Output_Model = [X.a X.a1 X.a2 X.a3 X.a4 X.a5 X.a6 X.a7 X.a8 X.a9 X.b X.b1 X.b2 X.b3 X.b4 X.b5 X.b6 X.b7 X.b8 X.b9 X.c X.c1 X.c2 X.c3 X.c4 X.c5 X.c6 X.c7 X.c8 X.c9 X.d X.d1];
% Difference_in_fft_fi = Output_Model_fi_RTL_Implementation - Output_Model ; 
% 
%% MAC test

	A=- 100;
    B=  50;
    C=  60;
    D=- 70;
    E=- 20;
    F=- 30;

    IN1 = A + i*B;
    IN2 = C + i*D;
    W   = E + i*F;
    
    OUT1 =  (2^-11) *(IN1 + IN2*W);
    OUT2 =  (2^-11) *(IN1 - IN2*W);
    
%% Runing Fixed Point simulink Like RTL as all inputs =2

% 
% N_bits = 34;
% W_bits = 5;
% for n=1:32
% Input(n)=2+i*2;
% W4(n)=2+i*2;
% W8(n)=2+i*2;
% W16(n)=2+i*2;
% W32(n)=2+i*2;
% 
% end
% L=0.00001;
% [Y]=sim('FFT_32_point_fi_RTL_Implementation',L);
% 
% 
% Output_Model_fi_RTL_Implementation = [Y.a Y.a1 Y.a2 Y.a3 Y.a4 Y.a5 Y.a6 Y.a7 Y.a8 Y.a9 Y.b Y.b1 Y.b2 Y.b3 Y.b4 Y.b5 Y.b6 Y.b7 Y.b8 Y.b9 Y.c Y.c1 Y.c2 Y.c3 Y.c4 Y.c5 Y.c6 Y.c7 Y.c8 Y.c9 Y.d Y.d1];
% 
