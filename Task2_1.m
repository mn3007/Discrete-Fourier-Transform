clear all
%clear all
sndfile = 'speech_female.wav';
%load sound file
[x,Fs] = audioread(sndfile);
%read audio file
 
N = 512;
% number of frequency points used to calculate the Discrete Fourier
% Transforms
[S,F,T] = spectrogram(x(1:Fs*1.4),N,3*N/4,N*4,Fs);
% Computes the two-sided spectrogram at the frequencies specified in vector F
 
f = figure('Position',[500 300 700 500],'MenuBar','none', ...
  'Units','Normalized');
% Create figure window
set(f,'PaperPosition',[0.25 1.5 8 5]);
% Set figure properties
axes('FontSize',14);
%set figure font size
colormap('jet');
%set figure colour map to 'jet'
imagesc(T,F./1000,20*log10(abs(S)));
% display image with scaled colours
axis xy;
% put MATLAB into Cartesian axes mode
set(gca,'YTick',[0:2000:Fs/2]./1000,'YTickLabel',[0:2000:Fs/2]./1000);
% set y-axis properties
ylabel('Frequency (kHz)');
%label y axis
xlabel('Time (s)');
% label x axis
print(gcf,'-depsc2','p2i1.eps');
% save figure
