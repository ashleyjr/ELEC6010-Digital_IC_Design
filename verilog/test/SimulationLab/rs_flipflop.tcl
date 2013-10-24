# SimVision command script rs_flipflop.tcl

simvision {

  # Open new waveform window

    window new WaveWindow  -name  "Waves for RS flipflop"
    waveform  using  "Waves for RS flipflop"

  # Probe primary I/O

    waveform  add  -signals  rs_flipflop_stim.notR
    waveform  add  -signals  rs_flipflop_stim.notS
    waveform  add  -signals  rs_flipflop_stim.Q

  # Probe internal signal

    waveform  add  -signals  rs_flipflop_stim.rs_instance1.not_q

}
