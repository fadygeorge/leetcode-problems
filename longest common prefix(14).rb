def longest_common_prefix(strs)
  ans = ""
  for i in 0..strs[0].length-1
    flag = true
    for j in 1..strs.length-1
      if strs[0][i] == strs[j][i]

      else
        flag = false
        break
      end
    end
    if flag == false
      return ans
    else
      ans +=strs[0][i]
    end
  end

  return ans
end


strs = ["flower","flow","flight"]
strs1 = ["dog","racecar","car"]
puts longest_common_prefix(strs1)
