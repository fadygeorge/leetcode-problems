def nearest_valid_point(x, y, points)
  arr= {}
  for i in 0..points.length-1
    if points[i][0]==x or points[i][1] ==y
      if !arr.include? points[i]
        arr[points[i]] = i
      end
    end
  end
  puts arr
  min_manhatatan=100000000
  min_ind = -1
  for i in arr.keys
    t = (x-i[0]).abs + (y-i[1]).abs
    if t < min_manhatatan
      min_manhatatan = t
      min_ind = arr[i]
    end
  end
  return min_ind
end
x = 3
y = 4
points = [[1,2],[3,1],[2,4],[2,3],[4,4]]
x = 3
y = 4
points = [[3,4]]
 x = 3
 y = 4
 points = [[2,3]]
x = 1
y = 1
points = [[1,1],[1,1]]
puts nearest_valid_point(x,y,points)
