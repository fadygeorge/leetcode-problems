def reverse_words(s)
  i = 0
  j = 0
  while i < s.length
    if s[i] == " "
      ss = s[j..(i-1)].reverse
      s[j..(i-1)]= ss
      i +=1
      j = i
    elsif i == s.length-1
      ss = s[j..(i)].reverse
      s[j..(i)]= ss
      i +=1
      j = i
    else
      i +=1
    end
  end
  return s
end


s = "Let's take LeetCode contest"
#s[6..9] = ss
#puts s
s1 = "God Ding"
puts reverse_words(s1)
