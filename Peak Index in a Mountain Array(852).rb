def peak_index_in_mountain_array(arr)
  max_index = 0
  for i in 0..arr.length-1
    if arr[i] > arr[max_index]
      max_index = i
    end
  end
  return max_index
end

def peak(arr)
  return p(arr,0,arr.length-1)
end
def p(arr,l,r)
  m = (r-l)/2 +l
  puts m,l,r,""
  if l>r
    puts "1"
    return
  elsif m == 0
    return p(arr,m+1,r)
  elsif  arr[m] > arr[m-1] and arr[m] > arr[m+1]
    puts "11"
    return m
  elsif arr[m] > arr[m-1] and arr[m] < arr[m+1]
    puts "111"
    return p(arr,m+1,r)
  elsif arr[m] < arr[m-1] and arr[m] > arr[m+1]
    puts "1111"
    return p(arr,l,m-1)
  end
end


arr = [0,2,3,0]
arr = [3,9,8,6,4]
puts peak(arr)
