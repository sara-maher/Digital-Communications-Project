clc;
clear all;
close all;
%bpsk_wave = BPSK();
%scatterplot(bpsk_wave)
%qpsk_wave = QPSK();
%scatterplot(qpsk_wave)
M = 8;
freq = 100;
%rec_sig = awgn(bpsk_wave,5);
fsk_wave = FSK(M,freq);
scatterplot(fsk_wave)