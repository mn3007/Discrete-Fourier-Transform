z = fft(sinusoid_220); % Discrete Fourier transform
magnitude = abs(z); % Absolute value of z
fs=2048; % Samples per second
N=32; % Number of samples
f = (0:N-1)*fs/N; % Frequency vector
stem(f,magnitude); % Plot Frequency against Magnitude
xlim([0 fs/2]); % set x-axis limits
xticks([0:fs/N:fs/2]) % Set x-axis tick values
xlabel('Frequency (Hz)') %label x-axis
ylabel('Magnitude') % label y-axis
title('The magnitude spectrum of a real 128 Hz sinusoid sampled at 2048 Hz.'); % plot title