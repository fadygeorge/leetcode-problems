def generate(num_rows)
  arr = Array.new(num_rows)
  if num_rows == 1
    arr[0] = Array.new(1,1)
    return arr
  end
  arr[0] = Array.new(1,1)
  for i in 1..arr.length-1
    arr[i] = Array.new(i+1)
    j = 0
    while j < i+1
      if j == 0 or j == i
        arr[i][j] = 1
        j +=1
      else
        arr[i][j]=arr[i-1][j-1]+arr[i-1][j]
        j+=1
      end
    end
  end
  return arr
end


arr = Array.new()
puts generate(5)
