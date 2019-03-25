# Digital-Communications-Project
All the schemes are done using a random number generator, a modulation and demodulation block, an AGWN channel, a constellation plot block, an error rate calculator block, and in the case of using raised cosine, a raised cosine transmitter and receiver blocks, with t set to 10.0, they differ in the values fed to the generator, and the modulation/ demodulation blocks used.

**All conestalletions diagrams have AWGN channels with Eb/No = 10**

**To reproduce performance plots, run performance.m with the name of the wanted simulink file in the sim function**

- ## **BPSK Modulation**:

producing random numbers between 0,1, and using a BPSK Modulator and demodulator.
![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/bpsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk_rx.PNG)


**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk.jpg)


- ## **QPSK Modulation**:

producing random numbers between 0,3, and using a QPSK Modulator and demodulator.
![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qpsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk.jpg)



- ### **FSK Modulation**:

producing random numbers between 0,7, and using a FSK Modulator and demodulator.
![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/fsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk.jpg)



- ## **QAM 16 Modulation**:

producing random numbers between 0,15, and using a QAM Modulator and demodulator, setting M to 16.
![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qam16.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16.jpg)




- ## **QAM 64 Modulation**:

producing random numbers between 0,63, and using a QAM Modulator and demodulator, setting M to 64.
![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qam64.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64.jpg)


