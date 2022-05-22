def move_zeroes(nums)
  w = nums.length-1
  i = 0
  c = nums.count(0)
  nums.delete(0)
  for i in 0..c-1
    nums << 0
  end

end

nums1 = [0,1,0,3,12]
nums = [1,2]
#nums.sort!
#nums = [0,0,1]
move_zeroes(nums1)
puts nums1
