def max_profit(prices)
  p = prices.sort
  i = 0
  j = p.length-1
  min = p[i]
  max = p[j]
  while i < j
    #puts i,j,""
    if prices.index(p[i]) <  prices.index(p[j])
      return p[j]-p[i]
    else
      j-=1
    end
    if i == j
      j = p.length-1
      i +=1
    end
  end
  return 0
end

def max(p)
  i = 0
  j = p.length-1
  while
end

def m(p)
  min = p[0]
  max = -2147483648
  for i in 0..p.length-1
    profit = p[i]-min
    if profit > max
      max = profit
    end
    if p[i] < min
      min = p[i]
    end
    puts profit,max,min,""
  end
  return max
end

prices = [7,1,5,3,6,4]   #[1,3,4,5,6,7]
p = prices.sort
prices1 = [7,6,4,3,1]
prices2 = [2,1,2,0,1]        # [0,1,1,2,2]
#puts prices.index(1)
#puts p
#puts p.reverse
puts m(prices2)
