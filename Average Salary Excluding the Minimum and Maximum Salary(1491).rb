def average(salary)
  salary = salary.sort()

  sum = 0
  for i in 1..salary.length-2
    sum +=salary[i]
  end
  return sum/(salary.length-2).to_f
end


salary = [4000,3000,1000,2000]
puts average(salary)
