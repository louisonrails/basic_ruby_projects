def ceasar_cipher(string, number)
  alphabet = ('a'..'z').to_a
  max_index = alphabet.index(alphabet.max)
  string_array = string.downcase.split('')
  result = ""
  
  string_array.each do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      new_index = index + number
      if new_index > max_index
        difference = new_index - max_index
        new_char = alphabet[difference]
      else
        new_char = alphabet[new_index]
      end
      result += new_char
    else
      result += char
      
    end
  end

  puts result

end

ceasar_cipher("I like Brownies", 5)