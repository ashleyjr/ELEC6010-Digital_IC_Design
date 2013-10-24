# SimVision command script up_down_count.tcl

simvision {

 # =========================================================================
 # Wave Window

  # Open new waveform window

    window new WaveWindow  -name  "Waves for Up/Down Counter"
    window  geometry  "Waves for Up/Down Counter"  1010x410+0+25
    waveform  using  "Waves for Up/Down Counter"

  # Add basic signals to wave window

    waveform  add  -signals  up_down_count_stim.Clock
    waveform  add  -signals  up_down_count_stim.nReset
    waveform  add  -signals  up_down_count_stim.Up
    waveform  add  -signals  up_down_count_stim.Down

  # Add Count signals to wave window (and remember wave the id)

    set id [waveform add -signals up_down_count_stim.Count]

  # Set radix for Count waveform to decimal

    waveform format $id -radix %d

  # Expand Count waveform 

    waveform hierarchy expand $id

 # =========================================================================
 # Register Window

  # Open new register window

    window new RegisterWindow  -name  "Registers for Up/Down Counter"
    window  geometry  "Registers for Up/Down Counter"  460x275+0+500
    register  using  "Registers for Up/Down Counter"

  # Add signals to regs window (default loaction and format)
  
    register add up_down_count_stim.Up
    register add up_down_count_stim.Down

  # Add signal values (specified location and format)
  
    register addtype -type signalvalue -x0 250 -y0 30 -radix %s \
      up_down_count_stim.direction
    register addtype -type signalvalue -x0 250 -y0 50 -radix %b \
      up_down_count_stim.Count
    register addtype -type signalvalue -x0 250 -y0 70 -radix %d \
      up_down_count_stim.Count
    register addtype -type signalvalue -x0 250 -y0 90 -radix %x \
      up_down_count_stim.Count

  # Add shapes and text to regs window
  
    register addtype -type rectangle -x0 100 -y0 20 -x1 300 -y1 105 \
      -outline green
    register addtype -type line -x0 105 -y0 45 -x1 295 -y1 45 \
      -outline red
    
    register addtype -type text -x0 110 -y0 30 -text {Direction of count}
    register addtype -type text -x0 110 -y0 50 -text {Count (binary)}
    register addtype -type text -x0 110 -y0 70 -text {Count (decimal)}
    register addtype -type text -x0 110 -y0 90 -text {Count (hexadecimal)}

}


# =========================================================================
# Probe

  # Any signals included in register window but not in waveform window
  # should be probed

  probe -create -shm up_down_count_stim.direction

# =========================================================================
