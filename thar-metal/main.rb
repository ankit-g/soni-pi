use_bpm 55

live_loop :guitar_thread do
  sync :guitar_thread_start
  play_guitar_pattern()
  cue :guitar_thread_end
end

live_loop :drum_new_timing do
  sync :drum_new_timing_start
  metal_drum_new_timing(4)
  cue :drum_new_timing_end
end

live_loop :drum_phase_1 do
  sync :drum_phase_1_start
  metal_drum_intro(2)
  cue :drum_phase_1_end
end

live_loop :drum_phase_2 do
  sync :drum_phase_2_start
  metal_drum_phase2(2)
  cue :drum_phase_2_end
end

live_loop :drum_phase_3 do
  sync :drum_phase_3_start
  metal_drum_phase3(2)
  cue :drum_phase_3_end
end

live_loop :drum_loops do
  sync :drum_loops_start
  play_drum_pattern()
  cue :drum_loops_end
end

#######################################

define :part_two_1 do
  set_drum_pattern('a')
  set_guitar_pattern('c_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_2 do
  set_drum_pattern('b')
  set_guitar_pattern('a_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_3 do
  set_drum_pattern('c')
  set_guitar_pattern('c_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_4 do
  print get_song_part()
  set_drum_pattern('d')
  set_guitar_pattern('e_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_5 do
  set_drum_pattern('d')
  set_guitar_pattern('d_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end
define :part_two_6 do
  set_drum_pattern('a')
  set_guitar_pattern('d_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end
define :part_two_7 do
  set_drum_pattern('a')
  set_guitar_pattern('c_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_8 do
  set_drum_pattern('e')
  set_guitar_pattern('e_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_9 do
  print get_song_part()
  set_drum_pattern('f')
  set_guitar_pattern('e_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end

define :part_two_10 do
  print get_song_part()
  set_drum_pattern('c')
  set_guitar_pattern('g_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  #sync :drum_loops_end
  sync :guitar_thread_end
end

define :part_two_11 do
  print get_song_part()
  set_drum_pattern('a')
  set_guitar_pattern('g_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  #sync :drum_loops_end
  sync :guitar_thread_end
end

define :part_two_12 do
  print get_song_part()
  set_drum_pattern('a')
  set_guitar_pattern('g_2')
  cue :guitar_thread_start
  cue :drum_loops_start
  sync :drum_loops_end
end
#######################################
part_one_list = ['part_one_1', 'part_one_2', 'part_one_3', 'part_one_4',
                 'part_one_5', 'part_one_6', 'part_one_7', 'part_one_8',
                 'part_one_9', 'part_one_10', 'part_one_11', 'part_one_12',
                 'part_one_9']
#######################################
part_two_list = ['part_one_5', 'part_one_9', 'part_one_3', 'part_one_6',
                 'part_one_4','part_one_3','part_one_8','part_one_11','part_one_10',
                 'part_one_3','part_one_8','part_one_5','part_one_7','part_one_10',
                 'part_one_12']
#######################################
part_three_list = ['part_two_1', 'part_two_2', 'part_two_3', 'part_two_4',
                   'part_two_5', 'part_two_6', 'part_two_7', 'part_two_8',
                   'part_two_9', 'part_two_10', 'part_two_11', 'part_two_12',
                   'part_two_9']
#######################################
part_four_list = ['part_two_5', 'part_one_9', 'part_one_3', 'part_two_6',
                  'part_two_4','part_one_3','part_one_8','part_two_11','part_two_10',
                  'part_one_3','part_one_8','part_two_5','part_two_7','part_one_10',
                  'part_one_12']
#######################################

reset_song_progress()
init_notes()
set_song_part(1)
live_loop :metal_song do
  if get_song_part() == 1 then
    song_part_one(part_one_list)
  elsif get_song_part() == 2 then
    song_part_one(part_two_list)
  elsif get_song_part() == 3 then
    song_part_one(part_three_list)
  elsif get_song_part() == 4 then
    song_part_one(part_four_list)
  else
    sleep 1
  end
end