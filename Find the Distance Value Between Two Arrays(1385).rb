def find_the_distance_value(arr1, arr2, d)
  total = 0
  for i in 0..arr1.length-1
    w = 0
    for j in 0..arr2.length-1
      if (arr1[i]-arr2[j]).abs > d
        w+=1
      else
        break
      end
    end
    if w == arr2.length
      total +=1
    end
  end
  return total
end
arr1 = [4,5,8]
arr2 = [10,9,1,8]
d = 2
puts find_the_distance_value(arr1,arr2,d)
