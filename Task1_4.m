N=32; % Number of samples
f=220; % Frequency (cycles/sample)
fs=2048; % Samples per second
ts=1/fs; % Sampling rate
n=0:N-1; % Discrete time axis
sinusoid_220=sin(2*pi*f*n*ts); % Sampled sinusoid
stem(n,sinusoid_220) % Plot Time against Amplitude
xlabel('Time(Samples)') %label x-axis
ylabel('Amplitude') % label y-axis
title('A sinusoidal signal with amplitude 1 and frequency of 220 Hz at a sampling rate of 2,048 Hz.'); % plot title



