function qpsk_wave = QPSK()
%QPSK Summary of this function goes here
%   Detailed explanation goes here
    qpskModulator = comm.QPSKModulator;
    %qpskModulator.PhaseOffset = pi;
    qpskDemodulator = comm.QPSKDemodulator;
    constellation(qpskModulator)
    %hDemod = comm.QPSKDemodulator('PhaseOffset',pi/4);
    errorRate = comm.ErrorRate;
    for counter = 1:100
            % Transmit a 50-symbol frame
            trans_data = randi([0 3],50,1);            % Generate data
            qpsk_wave = step(qpskModulator, trans_data);        % Modulate
            rec_sig = awgn(qpsk_wave,5);                % Pass through AWGN
            rec_data = step(qpskDemodulator,rec_sig);       % Demodulate
            errorStats = step(errorRate,trans_data,rec_data); % Collect error stats
     end
        fprintf('Error rate of QPSK= %f\nNumber of errors = %d\n', errorStats(1), errorStats(2))
end
