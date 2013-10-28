def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  total = 0
  array.each{|x| total += x}
  total
end

def multiply(array)
  total = 1
  array.each{|x| total *= x}
  total
end

def factorial(num_in)
  factorialed = num_in
  if num_in == 0 || num_in == 1
    factorialed = 1
  else
    until num_in == 1
      num_in -= 1
      factorialed *= num_in
    end
  end
  return factorialed
end