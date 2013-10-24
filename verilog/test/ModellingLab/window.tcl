# SimVision command script window.tcl

simvision {

 # Open new waveform window

  window new WaveWindow  -name  "Waves for Window Comparator"
  waveform  using  "Waves for Window Comparator"

 # Probe primary I/O

  set id [ waveform  add  -signals  window_stim.Top_Limit ]
  waveform format $id -radix %d
  set id [ waveform  add  -signals  window_stim.Value ]
  waveform format $id -radix %d
  set id [ waveform  add  -signals  window_stim.Bottom_Limit ]
  waveform format $id -radix %d
  waveform  add  -signals  window_stim.Too_High
  waveform  add  -signals  window_stim.OK
  waveform  add  -signals  window_stim.Too_Low
}

