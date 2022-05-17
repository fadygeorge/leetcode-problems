def merge(nums1, m, nums2, n)
  i = 0
  j = 0
  k = m
  while i < m and j < n
    if nums1[i]<=nums2[j]
      i +=1
    elsif nums2[j] < nums1[i]
      while k > i
        nums1[k]=nums1[k-1]
        k-=1
      end
      nums1[i] = nums2[j]
      j+=1
      m +=1
      k = m
    end
  end
  while j<n
    nums1[k]=nums2[j]
    j+=1
    m +=1
    k = m
  end


end

nums1 = [0]     # [1,2,3,4,5,6,0,0]    [1,2,3,4,5,5,6,0]
m = 3
nums2 = [1]
n = 3

merge(nums1,0,nums2,1)
puts nums1
