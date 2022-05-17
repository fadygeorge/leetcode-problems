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


three = TreeNode.new(3,nil,nil)
two = TreeNode.new(2,three,nil)
root = TreeNode.new()
arr = []
puts inorder_traversal(root)
