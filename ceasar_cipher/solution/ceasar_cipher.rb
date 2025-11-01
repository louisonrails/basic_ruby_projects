def ceasar_cipher(string, number)
  alphabet = ('a'..'z').to_a
  string_array = string.downcase.split('')
  result = ""

  string_array.each do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      new_index = (index + number) % 26
      new_char = alphabet[new_index]
      result += new_char
    else
      result += char 
    end
  end

  result
end
