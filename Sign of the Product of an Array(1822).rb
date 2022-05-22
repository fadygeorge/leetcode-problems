def array_sign(nums)
  product = 1
  if nums.index(0) != nil
    return 0
  end
  for i in 0..nums.length-1
    product *= nums[i]
  end
  return signfunc(product)
end

def signfunc(x)
  if x > 0
    return 1
  elsif x < 0
    return -1
  else
    return 0
  end
end
nums = [-1,-2,-3,-4,3,2,1]
nums = [1,5,0,2,-3]
nums = [-1,1,-1,1,-1]
puts array_sign(nums)
