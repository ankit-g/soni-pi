
define :metal_drum do
  
  4.times do
    
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

metal_drum

#sample :drum_snare_hard