
def search_insert(nums, target)

  q(nums,0,nums.length-1,target)



end

def q(nums,l,r,t)
  mid = (r+l)/2
  if l == r
    if nums[l] > t
      return l
    elsif nums[l] < t
      return l+1
    else
      return l
    end
  elsif r < l
    return l

  elsif nums[mid] == t
    return mid
  elsif nums[mid] > t
    q(nums,l,mid-1,t)
  else
    q(nums,mid+1,r,t)
  end


end


nums = [1,3,5,6]
target = 5

puts q(nums,0,3,4)
puts w(nums,0,3,4)
puts search_insert(nums,4)
