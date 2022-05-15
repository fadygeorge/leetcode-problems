def plus_one(digits)
  l = digits[-1]
  c = digits.count(9)
  if c == digits.length
    digits << 0
    digits[0] = 1
    for i in 1..digits.length-1
      digits[i] = 0
    end
  elsif l < 9
    digits[-1] +=1
  else
    inc(digits,-1)
  end
  return digits
end

def inc(digits,ind)
  digits[ind] = 0
  if digits[ind-1] == 9
    inc(digits,ind-1)
  else
    digits[ind-1] +=1
  end
end

a = [1,2,3,4,9]
aa = [1,1,9,9]
q = [1,2,3]
puts plus_one(q)
#puts q
