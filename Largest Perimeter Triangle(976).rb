def largest_perimeter(nums)
  nums.sort!
  max = 0
  for i in (nums.length-1).downto(2)
    if nums[i-2]+nums[i-1] > nums[i]
      if max < nums[i-2]+nums[i-1]+nums[i]
        max = nums[i-2]+nums[i-1]+nums[i]
      end
    end
  end
  return max
end
nums = [2,1,2]
nums = [1,2,1]
nums = [3,2,3,4]    # [2,3,3,4]
puts largest_perimeter(nums)
