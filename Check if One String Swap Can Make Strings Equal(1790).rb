def are_almost_equal(s1, s2)
  if s1.length != s2.length
    return false
  end
  dif =0
  for i in 0..s1.length-1
    if s1[i] != s2[i] and dif == 0
      l1 = s1[i]
      l2 = s2[i]
      dif+=1
    elsif s1[i] != s2[i]
      l3 = s1[i]
      l4 = s2[i]
      dif+=1
    end
  end
  if (dif == 2 or dif == 0) and l1 == l4 and l2 == l3
    return true
  else
    return false
  end
end

s1 = "bank"
s2 = "konb"
s1 = "caa"
s2 = "aaz"
puts are_almost_equal(s1,s2)
