class ListNode
     attr_accessor :val, :next
     def initialize(val = 0, _next = nil)
         @val = val
         @next = _next
     end
end

def delete_duplicates(head)
  if head.val == 0
    return
  else
    val = head.val
  end
  h = head
  while h.next != nil
    if h.next.val == val
      h.next = h.next.next
    else
      h = h.next
      val = h.val
    end
  end
end

def print(l)
  cur = l
  while cur.next != nil
    puts cur.val
    cur = cur.next
  end
  puts cur.val
end


l4 = ListNode.new(3)
l5 = ListNode.new(3,l4)
l6 = ListNode.new(3,l5)
l1 = ListNode.new()
l2 = ListNode.new(1,l1)
l3 = ListNode.new(1,l2)
#print(l3)
#puts ""
puts delete_duplicates(l1)
#print(l3)
