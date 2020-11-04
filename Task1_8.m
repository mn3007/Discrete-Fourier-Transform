% Plot sinusoid
f=220; % Frequency (cycles/sample)
fs=2048; % Samples per second
ts=1/fs; % Sampling rate
N=512; % Number of samples
n=0:N-1; % Discrete time axis
r=sin(2*pi*f*n*ts); % Sampled sinusoid

% FFT of sinusoid
x = fft(r); % Discrete Fourier Transform
m512 = abs(x); % Absolute value of y
f = (0:N-1)*fs/N; % Sort frequency into 512 bins
stem(f,m512); % Plot Frequency against Magnitude
xlim([0 fs/2]); % set x-axis limits
xticks([0:fs/N:fs/2]) % Set x-axis tick values
xlabel('Frequency') %label x-axis
ylabel('Magnitude') % label y-axis
title('The magnitude spectrum of a real 220 Hz sinusoid  sampled at 2048 Hz.'); % plot title
grid % show grid lines