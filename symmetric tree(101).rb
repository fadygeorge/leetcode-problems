class TreeNode
     attr_accessor :val, :left, :right
     def initialize(val = 0, left = nil, right = nil)
         @val = val
         @left = left
         @right = right
     end

end


def is_symmetric(root)
  w = true
  return is_mirror(root.left,root.right,w)


end


def is_mirror(l,r,w)
  if l == nil and r == nil
    return true
  elsif l == nil or r == nil
    return false
  else
    if (l.val == r.val) and w == true
      puts "yes1"
      w = is_mirror(l.left,r.right,w)
    else
      puts "no1"
      return false
    end
    if (l.val == r.val) and w == true
      puts "yes2"
      w = is_mirror(l.right,r.left,w)
    else
      puts "no2333"
      return false
    end
  end
end


a6 = TreeNode.new(4)
a5 = TreeNode.new(5)
a4 = TreeNode.new(5)
a3 = TreeNode.new(4)
a2 = TreeNode.new(3,a5,nil)
a1 = TreeNode.new(3,a3,a4)
a = TreeNode.new(2,a1,a2)
puts is_symmetric(a)
