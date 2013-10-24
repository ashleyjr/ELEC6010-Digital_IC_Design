# SimVision command script dff.tcl

simvision {

 # Open new waveform window

  window new WaveWindow  -name  "Waves for D type flipflop (dff)"
  waveform  using  "Waves for D type flipflop (dff)"

 # Probe primary I/O

  waveform  add  -signals  dff_stim.Clk
  waveform  add  -signals  dff_stim.D
  waveform  add  -signals  dff_stim.Q

}
