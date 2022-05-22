def can_make_arithmetic_progression(arr)
    if arr.length == 2
      return true
    end
    arr.sort!
    diff =(arr[0]-arr[1]).abs
    for i in 1..arr.length-2
      if (arr[i+1]-arr[i]).abs != diff
        return false
      end
    end
    return true
end
arr = [1,2]
arr2 = [13,12,-12,9,9,16,7,-10,-20,0,18,-1,-20,-10,-8,15,15,16,2,15]
arr1 = [0,0,0,0]
puts can_make_arithmetic_progression(arr)
