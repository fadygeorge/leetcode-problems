def contains_duplicate(nums)
  h = {}
  for i in 0..nums.length-1
    if h.include? nums[i]
      return true
    else
      h[nums[i]] = 1
    end

  end
  return false
end

nums = [1,2,3]
puts contains_duplicate(nums)
