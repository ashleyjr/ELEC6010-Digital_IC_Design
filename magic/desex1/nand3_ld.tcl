# SimVision command script nand3_ld.tcl for nand3_ld
# created by ext2svmod 5.5

database -open waves
probe -all -depth all -database waves
run

simvision {

# List of signals to monitor defined here
#
set wave_signal_list {
  nand3_ld_stim.A
  nand3_ld_stim.B
  nand3_ld_stim.C
  nand3_ld_stim.Y
  nand3_ld_stim.Yld0
  nand3_ld_stim.Yld1
}

# View Results
#
window new WaveWindow -name "Waves for magic cell nand3_ld"
waveform add -using "Waves for magic cell nand3_ld" -signals $wave_signal_list
waveform xview zoom -using "Waves for magic cell nand3_ld" -outfull

}

