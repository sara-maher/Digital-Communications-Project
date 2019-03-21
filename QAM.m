function qam_wave = QAM( M,k,n,numSamplesPerSymbol )
%QAM Summary of this function goes here
%   Detailed explanation goes here
rng default                 % Use default random number generator
dataIn = randi([0 1],n,1);  % Generate vector of binary data
% stem(dataIn(1:40),'filled');
% title('Random Bits');
% xlabel('Bit Index');
% ylabel('Binary Value');
dataInMatrix = reshape(dataIn,length(dataIn)/k,k);   % Reshape data into binary k-tuples, k = log2(M)
dataSymbolsIn = bi2de(dataInMatrix);    
% figure; % Create new figure window.
% stem(dataSymbolsIn(1:10));
% title('Random Symbols');
% xlabel('Symbol Index');
% ylabel('Integer Value');
%dataMod = qammod(dataSymbolsIn,M,'bin');         % Binary coding, phase offset = 0
qam_wave = qammod(dataSymbolsIn,M); % Gray coding, phase offset =0
EbNo = 10;
snr = EbNo + 10*log10(k) - 10*log10(numSamplesPerSymbol);
%receivedSignal = awgn(dataMod,snr,'measured');
receivedSignalG = awgn(qam_wave,snr,'measured');
sPlotFig = scatterplot(receivedSignalG,1,0,'g.');
hold on
scatterplot(qam_wave,1,0,'k*',sPlotFig)
%dataSymbolsOut = qamdemod(receivedSignal,M,'bin');
dataSymbolsOutG = qamdemod(receivedSignalG,M);
%dataOutMatrix = de2bi(dataSymbolsOut,k);
%dataOut = dataOutMatrix(:);                   % Return data in column vector
dataOutMatrixG = de2bi(dataSymbolsOutG,k);
dataOutG = dataOutMatrixG(:);                 % Return data in column vector
%[numErrors,ber] = biterr(dataIn,dataOut);
%fprintf('\nThe binary coding bit error rate = %5.2e, based on %d errors\n', ...
%    ber,numErrors)
[numErrorsG,berG] = biterr(dataIn,dataOutG);
fprintf('\nThe Gray coding bit error rate = %5.2e, based on %d errors\n', berG,numErrorsG)
% x = (0:15)';                    % Integer input
% y1 = qammod(x,16,'bin');        % 16-QAM output
% scatterplot(y1)
% text(real(y1)+0.1, imag(y1), dec2bin(x))
% title('16-QAM, Binary Symbol Mapping')
% axis([-4 4 -4 4])

end

