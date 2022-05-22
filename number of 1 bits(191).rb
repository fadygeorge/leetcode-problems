def hamming_weight(n)
  s = n.to_s(2)
  puts s
  t = 0
  for i in 0..s.length-1
    if s[i] == "1"
      t +=1
    end
  end
  return t
end

def h(n)
  t = 0
  while n !=0
    t += n%2
    n = n >>1
  end
  return t
end

n = 0b00000000000000000000000001011
w = n.to_s(2)
#puts w,w.class,w.length
puts h(n)
