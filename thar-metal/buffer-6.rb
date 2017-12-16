metalGuitarA = "/Users/ankitgupta/Downloads/musicradar-heavy-metal-samples/GuitarA/Chugs/"
chugAA = metalGuitarA + "ChugA-A.wav"
chugAB = metalGuitarA + "ChugA-B.wav"
chugAC = metalGuitarA + "ChugA-C.wav"
chugAD = metalGuitarA + "ChugA-D.wav"
chugAE = metalGuitarA + "ChugA-EHi.wav"
chugAELo = metalGuitarA + "ChugA-ELo.wav"
chugAF = metalGuitarA + "ChugA-F.wav"
chugAG = metalGuitarA + "ChugA-G.wav"


notes_16A = []
notes_16B = []
notes_16C = []
notes_16D = []
notes_16E = []
notes_16F = []
notes_16G = []
notes_16H = []

guitar_sample_list = [chugAA, chugAB, chugAC, chugAD, chugAE, chugAELo, chugAF, chugAG]

define :init_notes do
  16.times do
    notes_16A.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16B.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16C.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16D.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16E.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16F.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16G.push(choose(guitar_sample_list))
  end
  16.times do
    notes_16H.push(choose(guitar_sample_list))
  end
end

define :metal_guitar_phase_one do |times_v|
  times_v.times do
    sample chugAA , amp: 2
    sleep 0.25
    sample chugAB, amp: 2
    sleep 0.12
    sample choose([chugAC, chugAB, chugAD]), amp: 2
    sleep 0.12
    sample choose([chugAF, chugAG, chugAA]), amp: 2
    sleep 0.12
    sample chugAA, amp: 2
    sleep 0.12
    sample chugAF, amp: 2
    sleep 0.12
    sample chugAG, amp: 2, pan: 0
    sleep 0.12
    sample chugAG, amp: 2, pan: 0
    sleep 0.12
    sample chugAE, amp: 2, pan: 0
    sleep 0.12
    sample chugAD, amp: 2, pan: 0
    sleep 0.12
    sample chugAELo, amp: 2, pan: 0
    sleep 0.12
    sample chugAG, amp: 2, pan: 0
    sleep 0.12
    sample chugAD, amp: 2, pan: 0
    sleep 0.12
    sample chugAE, amp: 2, pan: 0
    sleep 0.12
    sample chugAD, amp: 2, pan: 0
    sleep 0.12
    sample chugAELo, amp: 2, pan: 0
    sleep 0.12
  end
end

define :metal_guitar_phase_two do |times_v|
  times_v.times do
    sample chugAC, amp: 2, rate: 1
    sleep 0.25
    sample chugAA, amp: 2, rate: 1
    sleep 0.24
    sample chugAB, amp: 2, rate: 1
    sleep 0.12
    sample chugAELo, amp: 2, rate: 1
    sleep 0.12
    sample chugAF, amp: 2, rate: 1
    sleep 0.10
    sample chugAE, amp: 2, rate: 1
    sleep 0.14
    sample chugAC, amp: 2, rate: 1
    sleep 0.12
    sample choose([chugAD, chugAF]), amp: 2, rate: 1
    sleep 0.12
    sample choose([chugAD, chugAF]), amp: 2, rate: 1
    #sleep 0.12
  end
end

define :metal_guitar_auto do |v_notes|
  index = 0
  sleep_time = 0.12
  16.times do
    if index == 0 then
      sleep_time = 0.25
    else
      sleep_time = 0.12
    end
    sample v_notes[index], amp: 2, rate: 1
    sleep sleep_time
    index += 1
  end
end

define :metal_guitar_auto_pan do |v_notes, v_pan|
  index = 0
  sleep_time = 0.12
  16.times do
    if index == 0 then
      sleep_time = 0.25
    else
      sleep_time = 0.12
    end
    sample v_notes[index], amp: 2, rate: 1, pan: v_pan
    sleep sleep_time
    index += 1
  end
end

define :guitar_a_pan do |v, p|
  v.times do
    metal_guitar_auto_pan(notes_16A, p)
  end
end
define :guitar_b_pan do |v, p|
  v.times do
    metal_guitar_auto_pan(notes_16B, p)
  end
end

define :guitar_c_pan do |v, p|
  v.times do
    metal_guitar_auto_pan(notes_16C, p)
  end
end

define :guitar_a do |v|
  v.times do
    metal_guitar_auto(notes_16A)
  end
end
define :guitar_b do |v|
  v.times do
    metal_guitar_auto(notes_16B)
  end
end

define :guitar_c do |v|
  v.times do
    metal_guitar_auto(notes_16C)
  end
end

define :guitar_d do |v|
  v.times do
    metal_guitar_auto(notes_16D)
  end
end

define :guitar_e do |v|
  v.times do
    metal_guitar_auto(notes_16E)
  end
end

define :guitar_f do |v|
  v.times do
    metal_guitar_auto(notes_16F)
  end
end

define :guitar_g do |v|
  v.times do
    metal_guitar_auto(notes_16G)
  end
end

init_notes()
guitar_a(2)
sleep 1
guitar_b(2)


