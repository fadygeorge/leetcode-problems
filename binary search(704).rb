
def search(nums, target)
  return s(nums,0,nums.length-1,target)
end

def s(nums,l,r,target)
  m = (r-l)/2 +l
  if l > r
    return -1
  elsif nums[m] == target
    return m
  elsif nums[m] > target
    return s(nums,l,m-1,target)
  else
    return s(nums,m+1,r,target)
  end


end

nums = [-1,0,3,5,9,12]
target = 11
puts search(nums,target)
