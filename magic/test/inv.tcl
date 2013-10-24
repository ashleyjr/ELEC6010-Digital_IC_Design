# SimVision command script inv.tcl for inv
# created by ext2svmod 5.5

database -open waves
probe -all -depth all -database waves
run

simvision {

# List of signals to monitor defined here
#
set wave_signal_list {
  inv_stim.in
  inv_stim.out
}

# View Results
#
window new WaveWindow -name "Waves for magic cell inv"
waveform add -using "Waves for magic cell inv" -signals $wave_signal_list
waveform xview zoom -using "Waves for magic cell inv" -outfull

}

