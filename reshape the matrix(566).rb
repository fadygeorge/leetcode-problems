def matrix_reshape(mat, r, c)
  if r == mat.length and c == mat[0].length
    return mat,r,c,"one"
  elsif r == mat.length
    c = mat[0].length
  elsif c == mat[0].length
    r = mat.length
  elsif r*c != mat.length * mat[0].length
    return mat
  end
  arr = []
  for i in 0..mat.length-1
    for j in 0..mat[0].length-1
      arr << mat[i][j]
    end
  end
  mat = Array.new(r){Array.new(c)}
  for i in 0..r-1
    for j in 0..c-1
      mat[i][j] = arr[0]
      arr.delete_at(0)
    end
  end
  return mat

end

mat = [[1,2],[3,4]]
r = 12
c = 4
m = Array.new(1) {Array.new(4)}
m[0][2] = 2
#puts m
puts matrix_reshape(mat,r,c)
