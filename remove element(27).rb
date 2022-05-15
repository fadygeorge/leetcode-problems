=begin
def remove_element(nums,val)              Easy implmentation
  nums.delete(val)

  return nums.length


end
=end
def remove_element(arr,val)                 # Hard Imlmentation 
  j = arr.length-1
  i = 0
  while i<=j
    if arr[i] == val
      while arr[j] == val and i != j
        j -=1
      end
        temp = arr[j]                   # [3,3,2,3]
        arr[i]=temp
        j-=1
    end
    i +=1
  end
    return j+1
end
nums = [3,2,2,3]
arr = [0,1,2,2,3,0,4,2]
arr1 = [2,2,2]
puts remove_element(arr1,2),"",arr1
