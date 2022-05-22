def intersect(nums1, nums2)
  nums1.sort!
  nums2.sort!
  i = j = 0
  res = []
  while i < nums1.length and j < nums2.length
    if nums1[i]>nums2[j]
      j+=1
    elsif nums2[j]>nums1[i]
      i+=1
    else
      res << nums1[i]
      i+=1
      j+=1
    end
  end
  return res
end

def w(nums1,nums2)

end

nums1 = [1,2,2,1,2]
nums2 = [2,2]
nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
nums1.sort!
nums2.sort!
puts nums1,"",nums2,""
nums3 = nums1 - nums2
#puts nums3
puts intersect(nums1,nums2)
