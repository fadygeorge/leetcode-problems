class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(l1, l2)
  i = j = 0
  l11 = l1
  l22 = l2
  l3 = ListNode.new
  cur = l3
  prev = nil
  ml = max(length(l1),length(l2))
  while i != length(l1) and j != length(l2)
    if l11.val < l22.val
      cur.val = l11.val
      i +=1
      l11 = l11.next
      prev = cur
      cur = ListNode.new
      prev.next = cur
    elsif l22.val < l11.val
      cur.val = l22.val
      j +=1
      l22 = l22.next
      prev = cur
      cur = ListNode.new
      prev.next = cur
    elsif l22.val == l11.val
      cur.val = l22.val
      j +=1
      l22 = l22.next
      prev = cur
      cur = ListNode.new
      prev.next = cur
      cur.val = l11.val
      i +=1
      l11 = l11.next
      prev = cur
      cur = ListNode.new
      prev.next = cur
    end
  end

  if i == length(l1) and j == length(l2)
    prev.next = nil
  elsif i == length(l1)
    puts "111"
    while j < ml
      cur.val = l22.val
      l22 = l22.next
      j +=1
      prev = cur
      cur = ListNode.new
      cur = prev.next
    end
  elsif j == length(l2)
    puts "222"
    while i < ml
      cur.val = l11.val
      l11 = l11.next
      i +=1
      prev = cur
      cur = cur.next
    end
  end
  return l3
end

def length(l)
  cur = l
  i = 0
  while cur.next != nil
    i +=1
    cur = cur.next
  end
  i +=1
  return i
end

def print(l)
  cur = l
  while cur.next != nil
    puts cur.val
    cur = cur.next
  end
  puts cur.val
end

def m(l1,l2)
  dummy = ListNode.new
  tail = dummy
  while l1 and l2
    if l1.val < l2.val
      tail.next = l1
      l1 = l1.next
    else
      tail.next = l2
      l2 = l2.next
    end
    tail = tail.next
  end
  if l1
    tail.next = l1
  elsif l2
    tail.next = l2
  end
  return dummy.next
end

l1 = ListNode.new(4)
l2 = ListNode.new(2,l1)
l3 = ListNode.new(1,l2)
l7 = ListNode.new
l4 = ListNode.new(4)
l5 = ListNode.new(3,l4)
l6 = ListNode.new(1,l5)
l8 = ListNode.new
#print(l3)
l3 = m(l3,l6)
print(l3)
