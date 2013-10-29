class Array

  def sum
    sum_val = 0
    self.each{|x| sum_val += x}
    sum_val
  end

  def square
    squared_array = []
    self.each{|x| squared_array << (x*x)}
    squared_array
  end

  def square!
    counter = 0
    until counter == self.length
      self[counter] = self[counter] ** 2
      counter += 1
    end
  end





end
  
# my_array = [1, 2, 4]
# puts Array.sum(my_array)

# puts [].hello

# puts [1, 2, 3].sum
