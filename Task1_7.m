N=32; % Number of samples
n=0:N-1; % Discrete time axis
inverse_dft = ifft(z); % Inverse discrete Fourier transform.
figure % Create figure window
stem(n,inverse_dft) % Plot Frequency against Amplitude
xlabel('Time (Samples)') %label x-axis
ylabel('Amplitude') % label y-axis
title('Inverse DFT'); % plot title