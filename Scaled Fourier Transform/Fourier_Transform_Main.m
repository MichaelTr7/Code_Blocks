%FOURIER TRANSFORM OF SINE WAVE%

%Method works for sinusoidals below 500Hz

Sampling_Frequency = 1000; %The frequency the signal is sampled at%
Sampling_Period = 1/Sampling_Frequency; 
t = (0:Sampling_Period:1000); %Time axis%

%*************************************************************************%
f = 50; %Frequency of sinusoid (Method works for sinusoidals below 500Hz)%
%*************************************************************************%

Signal = sin(2*pi*f*t); %Signal Fourier Transform is going to be applied on%

%Evaluating the Fourier Transform of the sinusoid%
[Frequency_Axis,Fourier_Transformed_Signal] = Scaled_Fourier_Transform(t,Signal,Sampling_Period);

clf;
MATLAB_Blue = [0, 0.4470, 0.7410];
subplot(2,1,1); plot(t,Signal,'color',MATLAB_Blue);
hold on
subplot(2,1,1); plot(t,Signal,'r.');
title({['Sinusoid with Frequency, f = ' num2str(f) 'Hz']});
xlabel('Time (s)'); ylabel('Amplitude');
legend('Signal','Samples');
axis([0 0.2 -1.2 1.2]);
set(gca,'FontWeight','bold');
grid;
hold off

subplot(2,1,2); plot(Frequency_Axis,Fourier_Transformed_Signal,'color','red');
title({['Fourier Transform of Sinusoid with Frequency, f = ' num2str(f) 'Hz']});
xlabel('Frequency (Hz)'); ylabel('Magnitude');
axis([-500 500 -0.2 1]);
set(gca,'FontWeight','bold');
grid;

%Function evaluating scaled Fourier Transform%
function [Frequency_Axis,Fourier_Transformed_Signal] = Scaled_Fourier_Transform(t,Signal,Sampling_Period)
Midpoint = round(length(t)/2)*Sampling_Period;
Frequency_Axis = t - Midpoint;
Fourier_Transform = fftshift(abs(fft(Signal)));
Scaling_Factor = length(Fourier_Transform);
Fourier_Transformed_Signal = (1/Scaling_Factor).*Fourier_Transform;
end
