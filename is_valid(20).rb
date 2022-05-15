class Node
  attr_accessor :item, :nextnode
  def initialize(i, nn)
    @nextnode = nn
    @item = i
  end
end


class Linkedstack

  attr_accessor :top
  def initialize
    @top = nil
  end

  def push(i)
    @top = Node.new(i,@top)
  end

  def is_empty
    if @top == nil
      return true
    else
      return false
    end
  end

  def pop
    if is_empty
      puts "the stack is empty.."
    else
      v = @top.item
      @top = @top.nextnode
      #v
    end
  end

  def get_top
    return @top.item
  end

  def print
    n = @top
    if is_empty == false
      while n.nextnode != nil
        puts n.item
        n = n.nextnode
      end
      puts n.item
    else
      puts "The stack is empty.."
    end
  end

end

def is_valid(s)
  st = Linkedstack.new
  for i in 0..s.length-1
    if opening_comp(s[i])
      st.push(s[i])
    else
      if  s[i] == closing_comp(st.get_top)
        st.pop
      else
        return false
      end
    end
  end
  if s.length == 1 or st.is_empty == false
    return false
  else
    return true
  end
end

def opening_comp(c)
  if c == '(' or c == '{' or c == '['
    return true
  else
    return false
  end
end

def closing_comp(c)
  case c
  when '('
    return ')'
  when '['
    return ']'
  when '{'
    return '}'
  end
end

def is_valid_1(s)
  i = 0
  while i <= s.length-1
    #puts s[i]
    if s[i+1] == closing_comp(s[i])
      i = i+2
    else
      return false
    end
  end
  return true
end

s = "(("
#puts closing_comp(s[4]) == s[5]
puts is_valid(s)
