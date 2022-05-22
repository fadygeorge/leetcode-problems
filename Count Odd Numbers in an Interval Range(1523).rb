
def count_odds(low, high)
  d = (high-low)-1
  if high % 2 == 0 and low % 2 == 0
    return (d/2)+1
  elsif high % 2 == 0 or low % 2 == 0
    return (d/2)+1
  else
    return (d/2)+2
  end
end

puts count_odds(8,10)
