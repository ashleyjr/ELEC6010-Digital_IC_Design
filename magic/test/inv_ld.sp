** HSPICE file for inv_ld
**   - generated by ext2sp v4.1

** Include netlist file for inv_ld
.include inv_ld.spice

** Default 3.3V Power Supply
Vsupply Vdd GND 3.3V

** Specify input signals here
Vin in GND PWL(0NS 0V  2NS 0V  2.25NS 3.3V  6NS 3.3V  6.25NS 0V)

** Default Simulation - Type, Resolution & Duration
.TRAN 10PS 10NS

** Specify ouput signals to measure here
.measure tran fall_delay TRIG v(out) VAL='3.3*0.9' TD=0NS FALL=1
+ TARG v(out) VAL='3.3*0.1' TD=0NS FALL=1
.measure tran propagation_f TRIG v(in) VAL='3.3*0.5' TD=0NS RISE=1
+ TARG v(out) VAL='3.3*0.5' TD=0NS FALL=1
.measure tran rise_delay TRIG v(out) VAL='3.3*0.1' TD=0NS RISE=1
+ TARG v(out) VAL='3.3*0.9' TD=0NS RISE=1
.measure tran propagation_r TRIG v(in) VAL='3.3*0.5' TD=0NS FALL=1
+ TARG v(out) VAL='3.3*0.5' TD=0NS RISE=1


** Save results for display
.OPTIONS POST
** Avoid DC convergence in at unreasonable voltage
.OPTIONS GMINDC=1n

.END

