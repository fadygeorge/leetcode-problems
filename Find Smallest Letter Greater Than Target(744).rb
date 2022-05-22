require 'set'
def next_greatest_letter(letters, target)
  if letters.include? target
    letters.delete(target)
  end
  letters << target
  letters.sort!
  i = letters.index(target)
  if i == letters.length-1
    return letters[0]
  else
    return letters[i+1]
  end
end

def n(letters,target)
  l = 0
  r = letters.length-1
  while l <= r
    m = (r-l)/2 + l
    if letters[m] == target
      if m == letters.length-1
        return letters[0]
      else
        return letters[m+1]
      end
    elsif letters[m] > target
      r = m-1
    else
      l = m+1
    end
  end
  if letters[m] > target
    return letters[m]
  elsif letters[m] < target
    if m == letters.length-1
      return letters[0]
    else
      return letters[m+1]
    end
  end
end

letters = ["e","e","e","e","e","e","n","n","n","n"]
target = "e"
if "c" < "f"
  #puts "yes"
end
puts
puts n(letters,target)
