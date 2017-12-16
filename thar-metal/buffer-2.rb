use_bpm 55
drummer_type = 'c'

define :drums_comman_a do
  sample :drum_bass_hard, amp: 3
  sample :drum_splash_hard, amp: choose([0.5, 0.8, 0.3])
  sample :drum_heavy_kick, amp: 4, pan: 1
  sleep 0.13
  sleep 0.12
  sample :drum_heavy_kick, amp: 4, pan: 1
  sleep 0.12
  sample :drum_heavy_kick, amp: 4, pan: -1
  sleep 0.12
  sample :drum_heavy_kick, amp: 4, pan: -1
  sleep 0.12
  sleep 0.12
end

define :drums_comman_b do
  #sample :drum_cowbell, amp: 2, rate: 1
  sample :drum_heavy_kick, amp: 4, pan: 1
  sleep 0.13
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
  sample :drum_heavy_kick, amp: 4, pan: -1
  sleep 0.12
  sample :drum_heavy_kick, amp: 4, pan: -1
  sleep 0.12
  sample :drum_snare_hard
  sample :drum_heavy_kick, amp: 4, pan: 1
  sleep 0.12
end

define :drums_next_a do
  sample :drum_heavy_kick, amp: 4, pan: 1
  sample :drum_bass_hard, amp: 3, pan: -1
  sample :drum_snare_hard
  sleep 0.10
  sleep 0.14
  sample :drum_heavy_kick, amp: 4, pan: -1
  sample :drum_snare_soft
  sleep 0.12
  sample :drum_heavy_kick, amp: 4, pan: 1
  sample :drum_bass_hard, amp: 3, pan: 0
  sleep 0.12
end

define :drums_next_b do
  sample :drum_heavy_kick, amp: 4, pan: 1
  sample :drum_bass_hard, amp: 3, pan: 0
  sample :drum_snare_hard
  sleep 0.10
  sleep 0.14
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
  sample :drum_heavy_kick, amp: 4, pan: 0
  sleep 0.08
end

define :drums_next_c do
  sample :drum_snare_hard
  sleep 0.24
  sample :drum_snare_soft, amp: 1
  sleep 0.12
  sample :drum_snare_soft, amp: 1.5
  sleep 0.12
end

define :part_2_drums_a do |v_times|
  v_times.times do
    drums_comman_a()
    drums_next_a()
  end
end

define :part_2_drums_b do |v_times|
  v_times.times do
    drums_comman_a()
    drums_next_b()
  end
end

define :part_2_drums_c do |v_times|
  v_times.times do
    drums_comman_a()
    drums_next_c()
  end
end

define :part_2_drums_d do |v_times|
  v_times.times do
    drums_comman_b()
    drums_next_a()
  end
end

define :part_2_drums_e do |v_times|
  v_times.times do
    drums_comman_b()
    drums_next_b()
  end
end

define :part_2_drums_f do |v_times|
  v_times.times do
    drums_comman_b()
    drums_next_c()
  end
end


define :set_drum_pattern do |pattern|
  drummer_type = pattern
end

define :get_drum_pattern do
  drummer_type
end

define :play_drum_pattern do
  if get_drum_pattern() == 'a' then
    part_2_drums_a(4)
  elsif get_drum_pattern() == 'b' then
    part_2_drums_b(4)
  elsif get_drum_pattern() == 'c' then
    part_2_drums_c(4)
  elsif get_drum_pattern() == 'd' then
    part_2_drums_d(4)
  elsif get_drum_pattern() == 'e' then
    part_2_drums_e(4)
  elsif get_drum_pattern() == 'f' then
    part_2_drums_f(4)
  end
end







