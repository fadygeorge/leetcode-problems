def max_sub_array(nums)
  max = nums[0]
  sum = 0
  for i in nums
    if sum < 0
      sum = 0
    end
    sum +=i
    if sum > max
      max = sum
    end
  end
  return max
end

arr = [5,4,-1,7,8]
nums = [-2,1,-3,4,-1,2,1,-5,4]
a = [-1]
puts max_sub_array(a)





=begin
mi = 0
mj = 0
max = nums[0]
flag = false
for i in 0..nums.length-1
  sum = nums[i]
  for j in i+1..nums.length-1
    sum += nums[j]
    #puts sum
    if sum > max
      flag = true
      max = sum
      mi = i
      mj = j
    end
  end
end
if flag == false
    return sum
else
  return max
end
=end
