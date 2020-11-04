f = (0:N-1)*fs/N; % Frequency vector
p = angle(y); % Phase
stem(f,p/pi); % Plot Frequency against Angle
xlabel 'Frequency (Hz)' % Label x-axis
ylabel 'Phase / \pi' % Label y-axis
grid MINOR % Turn on grid
phase_at_128hz = p(3) % Find phase at 128Hz

% The phase is -pi/2 at 128Hz. Watch

