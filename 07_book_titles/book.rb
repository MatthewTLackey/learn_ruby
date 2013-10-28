

class Book
  
  def title 
    @title
  end

  def title=(string)
    @title = string.split(" ").each{|x| x.capitalize! unless dont_capitalize?(x) }.join(" ")
    @title[0] = @title[0].upcase
    return @title
  end

  def dont_capitalize?(word)
    true_count = 0
    false_count = 0
    small_words = ["a", "and", "an", "the", "over", "with", "of", "in"]
    small_words.each do |x| 
      if word == x
        true_count +=1
      else
        false_count +=1
      end
    end
    if true_count != 0
      return true
    else
      return false
    end
  end

  def first_word?()
    false
  end



end

# a_title = Book.new
# puts a_title.dont_capitalize?("and")
# puts a_title.dont_capitalize?("inferno")
