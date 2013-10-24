# SimVision command script dtype.tcl

simvision {

 # Open new waveform window

  window new WaveWindow  -name  "Waves for D type flipflop"
  waveform  using  "Waves for D type flipflop"

 # Probe primary I/O

  waveform  add  -signals  dtype_stim.Clk
  waveform  add  -signals  dtype_stim.nRst
  waveform  add  -signals  dtype_stim.D
  waveform  add  -signals  dtype_stim.Q
  waveform  add  -signals  dtype_stim.nQ

}
