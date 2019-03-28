y = zeros(21,1);
snr = -10:1:10;
for i=-10:1:10
x = i;
sim('QAM64_RC');
y(i+11)= simout(1);
end
figure
semilogy(snr,y)