metalGuitarA = "/Users/ankitgupta/Downloads/musicradar-heavy-metal-samples/GuitarA/Chugs/"
chugAA = metalGuitarA + "ChugA-A.wav"
chugAB = metalGuitarA + "ChugA-B.wav"
chugAC = metalGuitarA + "ChugA-C.wav"
chugAD = metalGuitarA + "ChugA-D.wav"
chugAE = metalGuitarA + "ChugA-EHi.wav"
chugAELo = metalGuitarA + "ChugA-ELo.wav"
chugAF = metalGuitarA + "ChugA-F.wav"
chugAG = metalGuitarA + "ChugA-G.wav"

use_bpm 55

define :guitar_comman_a do
  sample chugAC, amp: 2, rate: 1
  sleep 0.25
  sample chugAA, amp: 2, rate: 1
  sleep 0.24
  sample chugAB, amp: 2, rate: 1
  sleep 0.12
  sample chugAELo, amp: 2, rate: 1
  sleep 0.12
end

define :guitar_comman_c do
  sample chugAA, amp: 2, rate: 1
  sleep 0.25
  sample chugAC, amp: 2, rate: 1
  sleep 0.24
  sample chugAA, amp: 2, rate: 1
  sleep 0.12
  sample chugAC, amp: 2, rate: 1
  sleep 0.12
end


define :guitar_comman_b do
  sample chugAC, amp: 2, rate: 1
  sleep 0.13
  sample chugAB, amp: 2, rate: 1
  sleep 0.12
  sample chugAA, amp: 2, rate: 1
  sleep 0.12
  #sample chugAE, amp: 1, rate: 1
  sleep 0.12
  sample chugAB, amp: 2, rate: 1
  sleep 0.12
  sample chugAELo, amp: 2, rate: 1
  sleep 0.12
end

define :guitar_next_a do
  sample chugAC, amp: 2, rate: 1
  sleep 0.10
  sleep 0.14
  sample chugAELo, amp: 2, rate: 1
  sleep 0.12
  sleep 0.12
  sample chugAE, amp: 2, rate: 1
end

define :guitar_next_b do
  sleep 0.10
  sample chugAD, amp: 2, rate: 1
  sleep 0.14
  sample chugAA, amp: 2, rate: 1
  sleep 0.12
  sample chugAB, amp: 2, rate: 1
  sleep 0.12
  sample chugAF, amp: 2, rate: 1
end

define :guitar_next_c do
  sleep 0.12
  sample chugAB, amp: 2, rate: 1
  sleep 0.12
  sample chugAC, amp: 2, rate: 1
  sleep 0.12
  sleep 0.12
  sample chugAE, amp: 2, rate: 1
end

define :part_2_guitar_a do |times_v|
  times_v.times do
    guitar_comman_a()
    guitar_next_a()
  end
end

define :part_2_guitar_b do |times_v|
  times_v.times do
    guitar_comman_a()
    guitar_next_b()
  end
end

define :part_2_guitar_c do |times_v|
  times_v.times do
    guitar_comman_a()
    guitar_next_c()
  end
end

define :part_2_guitar_d do |times_v|
  times_v.times do
    guitar_comman_b()
    guitar_next_a()
  end
end

define :part_2_guitar_e do |times_v|
  times_v.times do
    guitar_comman_b()
    guitar_next_b()
  end
end

define :part_2_guitar_f do |times_v|
  times_v.times do
    guitar_comman_b()
    guitar_next_c()
  end
end

define :part_2_guitar_g do |times_v|
  times_v.times do
    guitar_comman_c()
    guitar_next_a()
  end
end

define :part_2_guitar_h do |times_v|
  times_v.times do
    guitar_comman_c()
    guitar_next_b()
  end
end

define :part_2_guitar_i do |times_v|
  times_v.times do
    guitar_comman_c()
    guitar_next_c()
  end
end


