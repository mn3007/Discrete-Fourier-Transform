% FFT of sinusoid
y = fft(x); % Discrete Fourier transform
m = abs(y); % Absolute value of y
fs=2048; % Samples per second
N=32; % Number of samples
f = (0:N-1)*fs/N; % Spitting out multiples of 64
stem(f,m); % Plot Frequency against Magnitude
xlim([0 fs/2]); % set x-axis limits
xticks([0:fs/N:fs/2]) % Set x-axis tick values
xlabel('Frequency') % Label x-axis
ylabel('Magnitude') % Label y-axis
title('The magnitude spectrum of a real 128 Hz sinusoid  sampled at 2048 Hz.'); % Plot title
