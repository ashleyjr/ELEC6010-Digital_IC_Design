** HSPICE file for nand3
**   - generated by ext2sp v4.1

** Include netlist file for nand3
.include nand3.spice

** Default 3.3V Power Supply
Vsupply Vdd GND 3.3V

** Specify input signals here
** e.g. for inputs A and B
   VA A GND PWL(0NS 0V  2NS 0V  2.25NS 3.3V  6NS 3.3V  6.25NS 0V)
   VB B GND PWL(0NS 0V  4NS 0V  4.25NS 3.3V  8NS 3.3V  8.25NS 0V)
   VC C GND PWL(0NS 0V  6NS 0V  6.25NS 3.3V  10NS 3.3V  10.25NS 0V)

** Default Simulation - Type, Resolution & Duration
.TRAN 10PS 10NS

** Specify ouput signals to measure here
 e.g. rise and fall delays for output Y
   .measure tran fall_delay TRIG v(Y) VAL='3.3*0.9' TD=0NS FALL=1
   + TARG v(Y) VAL='3.3*0.1' TD=0NS FALL=1
   .measure tran rise_delay TRIG v(Y) VAL='3.3*0.1' TD=0NS RISE=1
   + TARG v(Y) VAL='3.3*0.9' TD=0NS RISE=1

** Save results for display
.OPTIONS POST
** Avoid DC convergence in at unreasonable voltage
.OPTIONS GMINDC=1n

.END
