def reverse_string(s)
    return s.reverse!
end

def rev(s)
 i = 0
 j = s.length-1
 while i < j
   temp = s[j]
   s[j] = s[i]
   s[i] = temp
   i +=1
   j -=1
 end

end

s = ["h","e","l","l","o"]
puts rev(s)
puts s
