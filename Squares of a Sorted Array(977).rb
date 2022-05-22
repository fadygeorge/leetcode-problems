
def sorted_squares(nums)
  for i in 0..nums.length-1
    nums[i] = nums[i]*nums[i]
  end
  puts nums,""
  return merge_sort(nums)
end
nums = [-4,-1,0,3,10]
puts sorted_squares(nums)
