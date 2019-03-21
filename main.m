clc;
clear all;
close all;
bpsk_wave = BPSK();
scatterplot(bpsk_wave)
qpsk_wave = QPSK();
scatterplot(qpsk_wave)
M = 8;
freq = 100;
fsk_wave = FSK(M,freq);
scatterplot(fsk_wave)
M = 16;                     % Size of signal constellation
k = log2(M);                % Number of bits per symbol
n = 30000;                  % Number of bits to process
SPS = 1;                    % Oversampling factor, numSamplesPerSymbol
qam_wave = QAM(M,k,n,SPS);
scatterplot(qam_wave)

M= 64;
k=log2(M);
qam_wave = QAM(M,k,n,SPS);
scatterplot(qam_wave)
