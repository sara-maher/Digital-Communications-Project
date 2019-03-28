# Digital-Communications-Project
All the schemes are done using a random number generator, a modulation and demodulation block, an AGWN channel block, a constellation plot block, an error rate calculator block, and in the case of using raised cosine, a raised cosine transmitter and receiver blocks, with t set to 10.0, they differ in the values fed to the generator, and in the modulation/ demodulation blocks used. Eb/No is set to x =-10:10 to get the performance graph.

**All conestelletions diagrams have AWGN channels with Eb/No = 10**

**To reproduce performance plots, run performance.m (or performance_RC.m in the case of raised cosine) with the name of the wanted simulink file in the sim() function**

# First: Simulations Without Applying Raised Cosine

- ## **BPSK Modulation**:

setting M-ary number in the random integer generator to 2, and using a BPSK Modulator and demodulator blocks, with all the other parameters set to the default values.
![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/bpsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk_rx.PNG)


**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/bpsk.jpg)


- ## **QPSK Modulation**:

setting M-ary number in the random integer generator to 4, and using a QPSK Modulator and demodulator, with all the other parameters set to the default values.
![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qpsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk_rx.PNG)



**Performance Plot Eb/No on x-axis, Error Rate on y-axis**

![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qpsk.jpg)



- ### **FSK Modulation**:

setting M-ary number in the random integer generator to 8, and using a FSK Modulator and demodulator and in them setting the M-ary number to 8, the frequency separation to 6 and the samples per symbol to 50 (must be > freq seperation* M,to prevent aliasing),  the delay in the Error Rate Calculator to 6, with all the other parameters set to the default values.

![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/fsk.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk_rx.PNG)

We notice that the noise has a great effect on the FSK-modulated signal

**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/fsk.jpg)

we notice that the performance in the FSK modulation case is not good.

- ## **QAM 16 Modulation**:

setting M-ary number in the random integer generator to 16, and using a QAM Modulator and demodulator, setting M-ary number to 16, with all the other parameters set to the default values.
![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qam16.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16_rx.PNG)


**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam16.jpg)



- ## **QAM 64 Modulation**:

setting M-ary number in the random integer generator to 64, and using a QAM Modulator and demodulator, setting M-ary number to 64, with all the other parameters set to the default values.
![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Schematics/qam64.jpg)


Before channel noise       |  After channel noise 
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-Without%20Rasied%20Cosine/Performance/qam64.jpg)




# Second: Simulations With Applying Raised Cosine

Raised cosine transmit and recieve filters are applied before and after the AWGN channel respectively, as shown below. Here t = 100.0 and Input signal power of AWGN channel is set to 0.5556/10 (input signal power of raised cosine transmit filter/filter span in symbols).
The performance here is worse compared with the performance without using raised cosine filter, probably due to the absence of ISI.

- ## **BPSK Modulation**:

setting M-ary number in the random integer generator to 2, and using a BPSK Modulator and demodulator blocks, with all the other parameters set to the default values.
![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Schematics/bpsk.jpg)


Before channel noise (after applying raised cosine transmit filter)      |  After channel noise  (after applying raised cosine recieve filter)
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/bpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/bpsk_rx.PNG)


**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![BPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/bpsk.jpg)



- ## **QPSK Modulation**:

setting M-ary number in the random integer generator to 4, and using a QPSK Modulator and demodulator, with all the other parameters set to the default values.
![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Schematics/qpsk.jpg)


Before channel noise (after applying raised cosine transmit filter)      |  After channel noise  (after applying raised cosine recieve filter)
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qpsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qpsk_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QPSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qpsk.jpg)



- ### **FSK Modulation**:

setting M-ary number in the random integer generator to 8, and using a FSK Modulator and demodulator and in them setting the M-ary number to 8, the frequency separation to 6 and the samples per symbol to 50 (must be > freq seperation* M,to prevent aliasing),  the delay in the Error Rate Calculator to 6, with all the other parameters set to the default values.
![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Schematics/fsk.jpg)


Before channel noise (after applying raised cosine transmit filter)      |  After channel noise  (after applying raised cosine recieve filter)
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/fsk_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/fsk_rx.PNG)

We notice that the noise has a great effect on the FSK-modulated signal

**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![FSK](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/fsk.jpg)



- ## **QAM 16 Modulation**:

setting M-ary number in the random integer generator to 16, and using a QAM Modulator and demodulator, setting M-ary number to 16, with all the other parameters set to the default values.
![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Schematics/qam16.jpg)


Before channel noise (after applying raised cosine transmit filter)      |  After channel noise  (after applying raised cosine recieve filter)
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam16_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam16_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM16](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam16.jpg)




- ## **QAM 64 Modulation**:

setting M-ary number in the random integer generator to 64, and using a QAM Modulator and demodulator, setting M-ary number to 64, with all the other parameters set to the default values.
![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Schematics/qam64.jpg)


Before channel noise (after applying raised cosine transmit filter)      |  After channel noise  (after applying raised cosine recieve filter)
:-------------------------:|:-------------------------:
![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam64_tx.PNG)  |  ![](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam64_rx.PNG)



**Performance Plot Eb/No onx-axis, Error Rate on y-axis**

![QAM64](https://github.com/sara-maher/Digital-Communications-Project/blob/master/Simulink%20-With%20Rasied%20Cosine/Performance/qam64.jpg)
