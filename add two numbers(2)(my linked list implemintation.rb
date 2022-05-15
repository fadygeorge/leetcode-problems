Node = Struct.new(:item, :nextnode)
#require_relative("stack.rb")

class Single_linked_list
  attr_accessor :front, :rear, :length

  def initialize
    @front = @rear = nil
    @length =0
  end

  def is_empty
    return @length == 0
  end

  def delete(e)
    e.item = e.nextnode = nil
  end

  def remove_last
    if is_empty
      puts "the linked list is empty.."
    elsif @length ==1
      initialize()
    else
      c = @front
      d = c.nextnode
      while d != @rear
        c = d
        d = c.nextnode
      end
      delete(d)
      c.nextnode = nil
      @rear = c
      @length -=1
    end
  end

  def remove_first
    if is_empty
      puts "The linked list is empty..."
    elsif @length == 1
      initialize()
    else
      c = @front
      @front = c.nextnode
      delete(c)
      @length -=1
    end
  end

  def search(i)
    if is_empty
      puts "the linked list is full..."
    else
      j = 0
      c = @front
      while c.nextnode != nil
        if c.item == i
          return j
        end
        j +=1
        c= c.nextnode
      end
      if c.item == i
        return j
      else
        return -1
      end
    end
  end

  def remove_item(e)
    if is_empty
      puts "the linked list is empty..."
    else
      flag = search(e)
      if flag == -1
        puts "The element is not in the list"
      else
        if @length ==1
          delete(@front)
          @length -=1
        else
          c = @front
          for i in 0..flag-2
            c = c.nextnode
          end
          d = c.nextnode
          c.nextnode = d.nextnode
          delete(d)
          @length -=1
        end
      end
    end


  end

  def add_first(i)
    if is_empty
      @front = @rear = Node.new(i,nil)
      @length +=1
    else
      c = @front
      @front = Node.new(i,c)
      @length +=1
    end
  end

  def add_end(i)
    if is_empty
      @front = @rear = Node.new(i,nil)
      @length +=1
    else
      c = Node.new(i,nil)
      @rear.nextnode = c
      @rear = c
      @length +=1
    end
  end

  def add_at(l,i)
    c = @front
    j = 0
    while j != l-1
      j +=1
      c = c.nextnode
    end
    d = Node.new(i,c.nextnode)
    c.nextnode = d
    @length +=1
  end

  def remove_at(l)
    if is_empty
      puts "The linked list is empty.."
    elsif l == 0
      remove_first()
    elsif l = @length-1
      remove_last()
    else
      c = @front
      for i in 0..l-1
        c = c.nextnode
      end
      d = c.nextnode
      c.nextnode = d.nextnode
      delete(d)
      @length -=1
    end
  end

  def print
    if is_empty
      puts "The list is empty....."
    else
      c =@front
      while c.nextnode != nil
        puts c.item
        c= c.nextnode
      end
      puts c.item

    end
  end

  def length
    return @length
  end

  def reverse
    s = Stack.new(@length)
    w = @length
    for i in 0..w-1
      s.push(@front.item)
      #puts @front.item,""
      remove_first()
      #puts @front.item
    end
    for i in 0..w-1
      add_end(s.get_top)
      #puts @front.item
      s.pop
      #puts @front.item
    end
  end

  def reverse_better
    curr = @front
    prev = nil
    #nextt = curr.nextnode
    i = 0
    while i != @length
      nextt = curr.nextnode
      curr.nextnode = prev
      prev = curr
      curr = nextt
      i += 1
    end
    #@front = prev
    w = @front
    @front = @rear
    @rear = w
  end

end

def add_two_numbers(l1,l2)
  l1.reverse_better
  l2.reverse_better
  s1 =""
  s2 =""
  ll1 = l1.length
  ll2 = l2.length
  if ll1 >= ll2
    max = ll1
  else
    max = ll2
  end
  c1 = l1.front
  c2 = l2.front
  for i in 1..max
    if i <= ll1 and i <= ll2
      s1 += c1.item.to_s
      s2 += c2.item.to_s
      c1 = c1.nextnode
      c2 = c2.nextnode
    elsif i <= ll1
      s1 += c1.item.to_s
      c1 = c1.nextnode
    elsif i <= ll2
      s2 += c2.item.to_s
      c2 = c2.nextnode
    end
  end
  total = s1.to_i+s2.to_i
  t = total.to_s
  l3 = Single_linked_list.new
  for i in 0..t.length-1
    l3.add_first(t[i])
  end
  l3.print
end

l1 = Single_linked_list.new
l2 = Single_linked_list.new
l1.add_end(2)
l1.add_end(4)
l1.add_end(3)
l2.add_end(5)
l2.add_end(6)
l2.add_end(4)
#l1.print
#puts ""
#l2.print
l3 = Single_linked_list.new
l4 = Single_linked_list.new
l3.add_end(9)
l3.add_end(9)
l3.add_end(9)
l3.add_end(9)
l3.add_end(9)
l3.add_end(9)
l3.add_end(9)
l4.add_first(9)
l4.add_first(9)
l4.add_first(9)
l4.add_first(9)
add_two_numbers(l3,l4)
