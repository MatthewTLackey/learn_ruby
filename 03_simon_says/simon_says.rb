def echo(a_string)
 a_string
end

def shout(a_string)
  a_string.upcase
end

def repeat(a_string, num = 1)
  counter = 0
  out_string = a_string
  if num == 1
    until counter == num
      out_string += " " << a_string
      counter += 1
    end
  else 
    until counter == num - 1
      out_string += " " << a_string
      counter += 1
    end
  end
  out_string
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(word)
  word_array = word.split(" ")
  word_array[0]
end

def titleize(word)
  dont_capitalize = ["a", "an", "the", "on"]
  word_array = word.split(" ")
  word_array.each{|x| x.capitalize! unless (x == "the" || x == "on" || x == "and" || x == "over")}
  word_array[0].capitalize!
  word_array.join(" ")  
end
