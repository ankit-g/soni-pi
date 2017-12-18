use_bpm 50

use_synth :piano
define :paijno do |note, v_amp, v_times|
  v_times.times do
    sample :tabla_na_o
    play [52+note, 59+note, 54+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [52+note, 59+note, 54+note], amp: v_amp
    sleep 0.25
    sample :tabla_re, pan: 1
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [52+note, 59+note, 54], amp: v_amp
    sleep 0.125
    sample :tabla_dhec, pan: -1
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 52+note, 59+note], amp: v_amp
    sleep 0.12
    sample :tabla_na_s, pan: 1
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 52+note, 59+note], amp: v_amp
    sleep 0.25
    sample :tabla_na, pan: -1
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 59+note, 54+note], amp: v_amp
    sleep 0.12
    sample :tabla_te2
    play [55+note, 54+note, 51.5+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 59+note, 54+note], amp: v_amp
    sleep 0.12
  end
end

use_synth :piano
define :paijno_no_tabla do |note, v_amp, v_times|
  v_times.times do
    
    play [52+note, 59+note, 54+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [52+note, 59+note, 54+note], amp: v_amp
    sleep 0.25
    
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [52+note, 59+note, 54], amp: v_amp
    sleep 0.125
    
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 52+note, 59+note], amp: v_amp
    sleep 0.12
    
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 52+note, 59+note], amp: v_amp
    sleep 0.25
    
    play [55+note, 52+note, 59+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 59+note, 54+note], amp: v_amp
    sleep 0.12
    play [55+note, 54+note, 51.5+note][choose([0,1,2])], amp: choose([0.2, 0.3])
    play [55+note, 59+note, 54+note], amp: v_amp
    sleep 0.12
  end
end

2.times do
  2.times do
    use_synth :mod_beep
    paijno(9, 0.4, 4)
    paijno(12, 0.4, 4)
    paijno(5, 0.6, 4)
    use_synth :pretty_bell
    paijno(16, 0.2, 4)
  end
  paijno_no_tabla(16, 0.4/2, 2)
  paijno_no_tabla(16, 0.4/4, 2)
  paijno_no_tabla(14, 0.4/8, 2)
  paijno_no_tabla(14, 0.4/16, 2)
end


