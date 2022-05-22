def my_sqrt(x)
  i = 1
  ii = i*i
  while ii <= x

    i +=1
    ii = i*i

  end
  return i-1
end

def sq(x)
  s = 0
  e = x/2  #8
  if x == 1
    return 1
  end
  while s <= e
    m = s+(e-s)/2
    if m*m < x
      if (m+1)*(m+1)> x
        return m
      else
        s = m+1
      end
    elsif m*m > x
      if (m+1)*(m+1)< x
        return m
      else
        e = m-1
      end
    else
      return m
    end
  end
end

puts my_sqrt(8)
