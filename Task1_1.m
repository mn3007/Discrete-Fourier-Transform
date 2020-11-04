% Plot sinusoid
N=32; % Number of samples
f=128; % Frequency (cycles/sample)
fs=2048; % Samples per second
ts=1/fs; % Sampling rate
n=0:N-1; % Discrete time axis
x=sin(2*pi*f*n*ts); % Sampled sinusoid
stem(n,x) % Plot time against Amplitude
xlabel('Time(Samples)') %label x-axis
ylabel('Amplitude') % label y-axis
title('128Hz Sinusoid sampled at 2048Hz'); % plot title





