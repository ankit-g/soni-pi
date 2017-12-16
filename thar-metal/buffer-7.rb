song_phase = 0

define :reset_song_phase do
  song_phase = 0
end

define :part_one_1 do
  set_guitar_pattern('phase_1')
  cue :guitar_thread_start
  sync :guitar_thread_end
end

define :part_one_2 do
  cue :drum_phase_1_start
  sync :drum_phase_1_end
end

define :part_one_3 do
  set_guitar_pattern('phase_1')
  cue :guitar_thread_start
  cue :drum_phase_1_start
  sync :drum_phase_1_end
end

define :part_one_4 do
  set_guitar_pattern('phase_1')
  cue :guitar_thread_start
  cue :drum_phase_2_start
  sync :drum_phase_2_end
end

define :part_one_5 do
  set_guitar_pattern('a')
  cue :guitar_thread_start
  sync :guitar_thread_end
end
define :part_one_6 do
  if song_phase == 0
    set_guitar_pattern('a')
    cue :guitar_thread_start
  elsif song_phase == 1
    set_guitar_pattern('b')
    cue :guitar_thread_start
  else
    set_guitar_pattern('c')
    cue :guitar_thread_start
  end
  cue :drum_phase_3_start
  sync :drum_phase_3_end
  song_phase += 1
end
define :part_one_7 do
  set_guitar_pattern('a_pan')
  cue :guitar_thread_start
  cue :drum_phase_1_start
  sync :drum_phase_1_end
  set_guitar_pattern('b_pan')
  cue :guitar_thread_start
  cue :drum_phase_1_start
  sync :drum_phase_1_end
  set_guitar_pattern('c_pan')
  cue :guitar_thread_start
  cue :drum_phase_1_start
  sync :drum_phase_1_end
end

define :part_one_8 do
  set_guitar_pattern('c')
  cue :guitar_thread_start
  cue :drum_phase_2_start
  sync :drum_phase_2_end
end

define :part_one_9 do
  cue :drum_new_timing_start
  set_guitar_pattern('phase_2')
  cue :guitar_thread_start
  sync :guitar_thread_end
end

define :part_one_10 do
  set_guitar_pattern('f')
  cue :guitar_thread_start
  cue :drum_phase_3_start
  sync :drum_phase_3_end
end

define :part_one_11 do
  set_guitar_pattern('g')
  cue :guitar_thread_start
  cue :drum_phase_3_start
  sync :drum_phase_3_end
end

define :part_one_12 do
  set_guitar_pattern('phase_1')
  cue :guitar_thread_start
  cue :drum_phase_3_start
  sync :drum_phase_3_end
end