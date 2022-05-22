# Language: Ruby, Level: Level 3
def two_sum(nums, target)

  for i in 0..nums.length
    comp =target - nums[i]
    if nums.include? comp and nums.index(comp) != i
      return [i,nums.index(comp)]
    end
  end
end


=begin
def sum1(nums,target)

  e = Array.new()
  for a in 0..nums.length()
    aa = a+1
    for i in aa..nums.length()
      s = nums[a].to_i + nums[i].to_i
      if s == target

        e[0]=a
        e[1]=i
        return e
      end
    end
  end

end

def sum2(nums,target)
  e =Hash.new
  for i in 0..nums.length
    e[nums[i]]=i
  end
  for i in 0..nums.length
    comp =target - nums[i]
    if e.include? comp and e[comp] !=i
      return [i,e[comp]]
    end
  end
end
=end


#puts sum([3,3],6)
puts two_sum([3,2,4],6)
