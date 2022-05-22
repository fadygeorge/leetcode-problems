def subtract_product_and_sum(n)
  s = n.to_s
  p = 1
  sum = 0
  for i in 0..s.length-1
    p *= s[i].to_i
    sum +=s[i].to_i
  end
  return p-sum
end

n = 234
puts subtract_product_and_sum(n)
