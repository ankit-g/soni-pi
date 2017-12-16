part_start = 1
guitar_pattern = nil

define :set_song_part do |part|
  part_start = part
end

define :set_song_next do
  part_start += 1
end


define :get_song_part do
  part_start
end

define :set_guitar_pattern do |pattern|
  guitar_pattern = pattern
end

define :get_guitar_pattern do
  guitar_pattern
end

define :play_guitar_pattern do
  if get_guitar_pattern() == 'a' then
    guitar_a(2)
  elsif get_guitar_pattern() == 'b' then
    guitar_b(2)
  elsif get_guitar_pattern() == 'c' then
    guitar_c(2)
  elsif get_guitar_pattern() == 'd' then
    guitar_d(2)
  elsif get_guitar_pattern() == 'e' then
    guitar_e(2)
  elsif get_guitar_pattern() == 'f' then
    guitar_f(2)
  elsif get_guitar_pattern() == 'g' then
    guitar_g(2)
  elsif get_guitar_pattern() == 'a_pan' then
    guitar_a_pan(2, 1)
  elsif get_guitar_pattern() == 'b_pan' then
    guitar_b_pan(2, -1)
  elsif get_guitar_pattern() == 'c_pan' then
    guitar_c_pan(2, 0)
  elsif get_guitar_pattern() == 'phase_1' then
    metal_guitar_phase_one(2)
  elsif get_guitar_pattern() == 'phase_2' then
    metal_guitar_phase_two(4)
  elsif get_guitar_pattern() == 'a_2' then
    part_2_guitar_a(4)
  elsif get_guitar_pattern() == 'b_2' then
    part_2_guitar_b(4)
  elsif get_guitar_pattern() == 'c_2' then
    part_2_guitar_c(4)
  elsif get_guitar_pattern() == 'd_2' then
    part_2_guitar_d(4)
  elsif get_guitar_pattern() == 'e_2' then
    part_2_guitar_e(4)
  elsif get_guitar_pattern() == 'f_2' then
    part_2_guitar_f(4)
  elsif get_guitar_pattern() == 'g_2' then
    part_2_guitar_g(4)
  elsif get_guitar_pattern() == 'h_2' then
    part_2_guitar_h(4)
  elsif get_guitar_pattern() == 'i_2' then
    part_2_guitar_i(4)
  end
end

song_progress = 0

define :reset_song_progress do
  song_progress = 0
end

define :song_part_one do |song_list|
  if song_progress < 2 then
    self.send(song_list[0])
    song_progress += 1
  elsif song_progress < 4
    self.send(song_list[1])
    song_progress += 1
  elsif song_progress < 6
    self.send(song_list[2])
    song_progress += 1
  elsif song_progress < 8
    self.send(song_list[3])
    song_progress += 1
  elsif song_progress < 9
    self.send(song_list[4])
    song_progress += 1
  elsif song_progress < 12
    self.send(song_list[5])
    song_progress += 1
  elsif song_progress < 13
    self.send(song_list[6])
    song_progress += 1
  elsif song_progress < 15
    self.send(song_list[7])
    song_progress += 1
  elsif song_progress < 16
    self.send(song_list[8])
    song_progress += 1
  elsif song_progress < 18
    self.send(song_list[9])
    song_progress += 1
  elsif song_progress < 20
    self.send(song_list[10])
    song_progress += 1
  elsif song_progress < 22
    self.send(song_list[11])
    song_progress += 1
  elsif song_progress < 24
    self.send(song_list[12])
    song_progress += 1
  else
    set_song_next()
    reset_song_phase()
    reset_song_progress()
    sleep 0.05
  end
end



