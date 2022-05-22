def flood_fill(image, sr, sc, new_color)
  if image[sr][sc] == new_color
    return image
  end
  r = image.length-1
  c = image[0].length-1
  s = image[sr][sc]
  dfs(image,sr,sc,new_color,r,c,s)
  return image
end

def dfs(image,sr,sc,new_color,r,c,s)
  puts sr,sc,""
  if sr <0 or sr > r or sc <0 or sc > c
    return
  elsif image[sr][sc] != s
    return
  end

  image[sr][sc] = new_color

  dfs(image,sr+1,sc,new_color,r,c,s)
  dfs(image,sr-1,sc,new_color,r,c,s)
  dfs(image,sr,sc+1,new_color,r,c,s)
  dfs(image,sr,sc-1,new_color,r,c,s)
end

image = [[0,1],[0,1]]
sr = 1
sc = 1
newcolor = 2
vn = {}
vn[[1,1]] = true
#puts vn,image[2][2]
q = Queue.new()
q.enq([1,4])
w =  q.pop
#puts w[0]
flood_fill(image, sr, sc, newcolor)
puts image
