require 'set'
def is_happy(n)
  s = n.to_s
  se = Set[]
  while !se.include? n
    sum =0
    puts n
    for i in 0..s.length-1
      sum += s[i].to_i*s[i].to_i
    end
    if sum == 1
      return true
    else
      se << n
      n = sum
      s = n.to_s
    end
  end
  return false
end
puts is_happy(2)
