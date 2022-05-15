def str_str(haystack, needle)
  if needle.length == 0
    return 0
  elsif needle.length > haystack.length
    return -1
  end
  for i in 0..haystack.length-1
    j = 0
    if haystack[i] == needle[j]
      flag = true
      puts "hh"
      while j < needle.length-1
        j +=1
        if haystack[i+j] != needle[j]
          flag = false
          break
        end
      end
      if flag == true
        return i
      end
    end
  end
  return -1
end

haystack = "mississippi"

needle = "issip"
puts str_str(haystack,needle)
