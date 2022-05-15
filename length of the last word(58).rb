def length_of_last_word(s)
  c = s.count(" ")
  i = 1
  ind = 0
  if c == 0
    return s.length
  end
  while s[s.length-1] == " "
    s.slice!(s.length-1)
    c -=1
  end
  while i <= c
    ind = s.index(" ")
    s.slice!(ind)
    i+=1
  end
  return s.length-ind
end





a = "h k k k"
s = "Hello World"
s1 = " fly me to the moon  "
s2 = "luffy is still joyboy"
s3 = "a "
puts length_of_last_word(s2)


=begin

=end
