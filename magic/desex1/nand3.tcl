# SimVision command script nand3.tcl for nand3
# created by ext2svmod 5.5

database -open waves
probe -all -depth all -database waves
run

simvision {

# List of signals to monitor defined here
#
set wave_signal_list {
  nand3_stim.A
  nand3_stim.B
  nand3_stim.C
  nand3_stim.Y
}

# View Results
#
window new WaveWindow -name "Waves for magic cell nand3"
waveform add -using "Waves for magic cell nand3" -signals $wave_signal_list
waveform xview zoom -using "Waves for magic cell nand3" -outfull

}

