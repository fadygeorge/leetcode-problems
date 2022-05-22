def is_perfect_square(num)
  w = num/2
  l = 0
  r = num
  flag = 5
  while l <= r
    if w*w == num
      return true
    elsif w*w > num
      flag = true
      r = w-1
      w = (r-l)/2 +l
    else
      flag = false
      l = w+1
      w = (r-l)/2 +l
    end
  end
  return false
end

puts is_perfect_square(49)
