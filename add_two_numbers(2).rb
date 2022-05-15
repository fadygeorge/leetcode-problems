class ListNode
     attr_accessor :val, :next
     def initialize(val = 0, _next = nil)
         @val = val
         @next = _next
     end
end


def add_two_numbers(l1,l2)
  l1 = reverse(l1)
  l2 = reverse(l2)
  s1 =""
  s2 =""
  ll1 = length(l1)
  ll2 = length(l2)
  if ll1 >= ll2
    max = ll1
  else
    max = ll2
  end
  c1 = l1
  c2 = l2
  for i in 1..max
    if i <= ll1 and i <= ll2
      s1 += c1.val.to_s
      s2 += c2.val.to_s
      c1 = c1.next
      c2 = c2.next
    elsif i <= ll1
      s1 += c1.val.to_s
      c1 = c1.next
    elsif i <= ll2
      s2 += c2.val.to_s
      c2 = c2.next
    end
  end
  total = s1.to_i+s2.to_i
  t = total.to_s
  l3 = ListNode.new(t[0].to_i)
  curr = l3
  for i in 1..t.length-1
    c = ListNode.new(t[i].to_i,curr)
    curr = c
  end
  return curr
end

def reverse(l)
  cur = l
  prev = nil
  while cur.next != nil
    nextt = cur.next
    cur.next = prev
    prev = cur
    cur = nextt
  end
  cur.next = prev
  return cur
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

l1 = ListNode.new(3)
l2 = ListNode.new(4,l1)
l3 = ListNode.new(2,l2)
l4 = ListNode.new(4)
l5 = ListNode.new(6,l4)
l6 = ListNode.new(5,l5)
add_two_numbers(l3,l6)
