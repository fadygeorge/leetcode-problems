def remove_duplicates(arr)

  k = 0
  j = arr.length-1
  i=0
  while i <= j
    k +=1
    while arr[i] == arr[i+1]
      arr.delete_at(i+1)
      j -=1
    end
    i+=1
  end
  return k
end


arr = [0,0,1,1,1,2,2,3,3,4]
arr1 = [1,1,2]
#puts arr.count(3)
#puts arr[8,arr.length-1].index(4)+8
#puts arr
puts remove_duplicates(arr1)

=begin
for i in 0..arr.length-1
  if arr.count(arr[i]) > 1
    count = arr.count(arr[i])
    while count != 1
      ind =
    end
  else

  end

end
=end
