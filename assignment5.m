clear all
% load sound: ’laughter’, ’chirp’,’gong’ or ’handel’,’splat’,’train’
%[y,Fs] = audioread('bot.wav');
load('gong');
% to play this sound use
%sound(y, Fs);
N = length(y);
Y = fft(y);% fft from matlab
t = 20; % specify the threshold value
W = Y;
for i = 1:length(Y)
    if (abs(Y(i)) < t) % compress
        W(i) = 0;
    end
end
% compressed signal
WS = sparse(W);
% compare size before-after
before = whos('Y');
after = whos('WS');
comprRatio = after.bytes/before.bytes
% play back the sound
iWS = real(ifft(full(WS)));
sound(iWS, Fs);
figure(1)
plot(abs(Y));
figure(2)
plot(abs(W));