define :metal_drum_intro do |times_v|
  sample :drum_splash_hard
  #sample :bd_boom, amp: 4
  #sample :drum_cowbell
  times_v.times do
    sample :drum_bass_hard, amp: 3
    sleep 0.25
    sample :drum_snare_soft
    sample :drum_heavy_kick, pan: 0, amp: 3
    sleep 0.12
    sample :drum_tom_lo_soft
    sample :drum_heavy_kick, pan: 0, amp: 3
    sleep 0.12
    sample :drum_snare_soft
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 3
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 3
    sleep 0.12
    sample :drum_snare_soft
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 2
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 2
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_snare_hard
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 2
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 2
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_splash_hard, pan: choose([-1, 1])
  end
end

define :metal_drum_phase2 do |times_v|
  
  times_v.times do
    sample :drum_splash_hard, amp: 2, pan: choose([-1, 1])
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.25
    sample :drum_heavy_kick, amp: 4, pan: 1
    sleep 0.12
    sample :drum_cymbal_hard, amp: choose([0.4, 0.6]), pan: -1
    sample :drum_heavy_kick, amp: 4, pan: 0
    sleep 0.12
    sample :drum_cymbal_soft, amp: choose([0.6, 0.4]), pan: 1
    sample :drum_heavy_kick, amp: 4, pan: 0
    sleep 0.12
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.12
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.12
    sample :drum_snare_hard
    sample :drum_heavy_kick, amp: 4, pan: 1
    sleep 0.12
    sample :drum_snare_hard
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: 1
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: 0
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: -1
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_heavy_kick, pan: 0, amp: 2
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_cymbal_hard, amp: choose([0.4, 0.6]), pan: -1
    sample :drum_heavy_kick, amp: 4, pan: 0
    sleep 0.12
    sample :drum_cymbal_soft, amp: choose([0.6, 0.4]), pan: 1
    sample :drum_heavy_kick, amp: 4, pan: 0
    sleep 0.12
  end
end

define :metal_drum_phase3 do |times_v|
  #  sample :drum_bass_hard, amp: 3
  #  sleep 0.24
  times_v.times do
    sample :drum_bass_hard, amp: 3
    sample :drum_splash_hard, amp: choose([0.5, 0.8, 0.3])
    #    sample metalGuitar+"ChugA-A.wav", amp: 2, rate: rate_v
    sample :drum_heavy_kick, amp: 3, pan: 1
    sleep 0.25
    sample :drum_heavy_kick, amp: 3, pan: 1
    #    sample metalGuitar+"ChugA-B.wav", amp: 2, rate: rate_v
    sleep 0.12
    sample :drum_heavy_kick, amp: 3, pan: 1
    sleep 0.12
    sample :drum_heavy_kick, amp: 3, pan: -1
    #   sample metalGuitar+"ChugA-G.wav", amp: 2, rate: rate_v
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: 1
    sample :drum_snare_hard, pan: -1
    #  sample metalGuitar+choose(["ChugA-A.wav", "ChugA-ELo.wav", "ChugA-G.wav", "ChugA-F.wav"]), amp: 2, rate: rate_v
    sleep 0.12
    #sample :drum_splash_hard, amp: choose([0.5, 0.8, 0.3])
    sample :drum_heavy_kick, amp: 3, pan: -1
    sleep 0.04
    sample :drum_heavy_kick, amp: 3, pan: 1
    sample :drum_snare_hard, pan: 0, amp: 0.3
    sleep 0.04
    sample :drum_heavy_kick, amp: 3, pan: -1
    sample :drum_snare_hard, pan: 0, amp: 0.3
    sleep 0.04
    sample :drum_heavy_kick, amp: 3, pan: 1
    sample :drum_snare_hard, pan: 0, amp: 0.3
    sleep 0.04
    sample :drum_heavy_kick, amp: 3, pan: -1
    sleep 0.08
    sample :drum_heavy_kick, amp: 3, pan: 1
    sample :drum_bass_hard, amp: 3, pan: -1
    sample :drum_snare_hard, pan: -1
    #sample metalGuitar+"ChugA-D.wav", amp: 2, rate: rate_v
    sleep 0.12
    sample :drum_heavy_kick, amp: 3, pan: -1
    sample :drum_snare_soft, pan: 1
    #  sample metalGuitar+"ChugA-D.wav", amp: 2, rate: rate_v
    sleep 0.12
    #  sample :drum_splash_hard, amp: choose([0.5, 0.8, 0.3])
    sample :drum_heavy_kick, amp: 3, pan: 1
    sample :drum_bass_hard, amp: 3, pan: 0
    #sample :drum_snare_soft, amp: 3
    sleep 0.12
    sample :drum_snare_hard
    sample :drum_heavy_kick, amp: 3, pan: -1
    sleep 0.12
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: 1
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: 0
    sleep 0.12
    sample :drum_bass_hard, amp: 3, pan: -1
    sample :drum_heavy_kick, pan: 1, amp: 3
    sleep 0.12
    sample :drum_heavy_kick, amp: 3, pan: 1
    sample :drum_bass_hard, amp: 3, pan: -1
    sample :drum_snare_hard
    #sample metalGuitar+"ChugA-D.wav", amp: 2, rate: rate_v
    sleep 0.12
  end
end

define :metal_drum_new_timing do |times_v|
  times_v.times do
    sample :drum_bass_hard, amp: 3
    sample :drum_splash_hard, amp: choose([0.5, 0.8, 0.3])
    sample :drum_heavy_kick, amp: 4, pan: 1
    sleep 0.25
    sample :drum_heavy_kick, amp: 4, pan: 1
    sleep 0.24
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.12
    sample :drum_heavy_kick, amp: 4, pan: -1
    sleep 0.12
    sample :drum_heavy_kick, amp: 4, pan: 1
    sample :drum_bass_hard, amp: 3, pan: -1
    sample :drum_snare_hard
    sleep 0.24
    sample :drum_heavy_kick, amp: 4, pan: -1
    sample :drum_snare_soft
    sleep 0.12
    sample :drum_heavy_kick, amp: 4, pan: 1
    sample :drum_bass_hard, amp: 3, pan: 0
    sleep 0.12
  end
end

metal_drum_new_timing(4)


