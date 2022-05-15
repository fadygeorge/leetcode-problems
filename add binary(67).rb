def add_binary(a,b)
  la = a.length
  lb = b.length
  maxl = max(la,lb)*-1
  remain = 0
  i = -1
  result = ""
  #puts maxl
  while i >= maxl
    if a[i] == "0" and b[i] == "0"
      if remain == 1
        result << "1"
        remain = 0
        puts "11"
      else
        result << "0"
        puts "12"
      end
    elsif i < la*-1
      if remain == 1 and b[i] == "0"
        result << "1"
        remain = 0
        puts "41"
      elsif remain == 1 and b[i] == "1"
        result << "0"
        remain = 1
        puts "42"
      else
        result << b[i]
        puts "43"
      end
    elsif i < lb*-1
      if remain == 1 and a[i] == "0"
        result << "1"
        remain = 0
        puts "51"
      elsif remain == 1 and a[i] == "1"
        result << "0"
        remain = 1
        puts "52"
      else
        result << a[i]
        puts "53"
      end
    elsif a[i] == "0" or b[i] == "0"
      if remain == 1
        result << "0"
        remain = 1
        puts "21"
      else
        result << "1"
        puts "22"
      end
    else
      if remain == 1
        result << "1"
        remain = 1
        puts "31"
      else
        result << "0"
        remain = 1
        puts "32"
      end
    end
    i -=1
  end
  if remain == 1
    result << "1"
  end
  return result.reverse
end

def max(a,b)
  if a>=b
    return a
  else
    return b
  end
end

a = "100"
b = "110110"
la = a.length-1
puts add_binary(a,b)
#puts a[-4]
#(la).downto(0).each { |i| puts b[i] }
