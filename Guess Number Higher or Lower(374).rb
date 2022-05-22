# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
  return g(n,1,n)
end

def g(n,l,r)
  m = (r-l)/2 +l
    puts m,l,r,""
  if guess(m) == 0
      puts "2"
    return m
  elsif guess(m) == -1
      puts "3"
    return g(n,l,m-1)
  elsif  guess(m) == 1
      puts "4"
    return g(n,m+1,r)
  end



end
