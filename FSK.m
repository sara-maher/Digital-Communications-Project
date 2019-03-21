function fsk_wave = FSK( M,freq)
%FSK Summary of this function goes here
%   Detailed explanation goes here
fskModulator = comm.FSKModulator(M,freq);
fskDemodulator = comm.FSKDemodulator(M,freq);
errorRate= comm.ErrorRate;
%hAWGN = comm.AWGNChannel('NoiseMethod', ...
%    'Signal to noise ratio (SNR)','SNR',-2);
for counter = 1:100
    trans_data = randi([0 M-1],50,1);
    fsk_wave = step(fskModulator,trans_data);
    %noisySignal = step(hAWGN,fsk_wave);
    rec_sig = awgn(fsk_wave,5);
    rec_data = step(fskDemodulator,rec_sig);
    errorStats = step(errorRate,trans_data,rec_data);
end
fprintf('Error rate of FSK= %4.2e\nNumber of errors = %d\nNumber of symbols = %d\n', errorStats)
end

