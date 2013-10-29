def translate(string)
  many_words = string.split(" ")
  translated_words = many_words.map{|string|
    if is_vowel?(string[0])
      begins_with_vowel(string)
    else
      begins_with_consonant(string)
    end
  }.join(" ")
  translated_words
end


def begins_with_vowel(string)
  string << "ay"

end

def begins_with_consonant(string)
  
  # until is_vowel?(string[0])
  #   string("").split.rotate!.join("")
  # end
  if string[0] == "q"
    return_val = string.split("").rotate!.rotate!.join << "ay"
  elsif string[1] == "q"
    return_val = string.split("").rotate!.rotate!.rotate!.join<<"ay"
  elsif (!is_vowel?(string[0]) && !is_vowel?(string[1]) && !is_vowel?(string[2]))
    return_val = string.split("").rotate!.rotate!.rotate!.join << "ay"
  elsif !is_vowel?(string[0]) && !is_vowel?(string[1])
    return_val = string.split("").rotate!.rotate!.join << "ay"
   else
    return_val = string.split("").rotate!.join << "ay"
  end


  # each{|x| counter += 1 until x.is_vowel?(x)}
  # return_val = string.split
  # counter.times{return_val.rotate!}
  # return_val.join! << "ay"
  return_val
end


  def is_vowel?(letter)
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
      return true
    else
      return false
    end
  end

puts translate("banana")