def climbing_starirs(c)
  if c == 1
    return 1
  elsif c == 2
    return 2
  else
    return climbing_starirs(c-1)+climbing_starirs(c-2)
  end


end


def fib(c)
  #arr = Array.new(c)
  arr1 = 1
  arr2 = 2
  for i in 3..c
    arr = arr1 + arr2
    arr1 = arr2
    arr2 = arr
  end
  if c == 1
    return 1
  else
    return arr2
  end
end

puts fib(1)
