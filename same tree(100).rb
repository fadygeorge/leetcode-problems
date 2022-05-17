class TreeNode
     attr_accessor :val, :left, :right
     def initialize(val = 0, left = nil, right = nil)
         @val = val
         @left = left
         @right = right
     end

end

def inorder_traversall(root,arr)
  if root == nil
    return
  else
    inorder_traversall(root.left,arr)
    arr << root.val
    inorder_traversall(root.right,arr)
  end
  return arr
end

def inorder_traversal(root)
  arr = []
  if root.left == nil and root.right == nil and root.val == 0
    return arr
  else
    return inorder_traversall(root,arr)
  end
end


def is_same_tree(p, q)
  if p == nil and q == nil
    return true
  elsif p == nil or q == nil
    return false
  else
    w = is_same_tree(p.left,q.left)
    if p.val != q.val or w == false
      return false
    end
    w = is_same_tree(p.right,q.right)
    if p.val != q.val or w == false
      return false
    end
  end
  return true
end



q = TreeNode.new(15)
q1 = TreeNode.new(5,nil,q)
q2 = TreeNode.new(10,q1)

e = TreeNode.new(15)
e1 = TreeNode.new(5)
e2 = TreeNode.new(10,e1,e)
puts is_same_tree(e2,q2)
puts inorder_traversal(q2)
