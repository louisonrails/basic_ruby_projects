# frozen_string_literal: true

def cipher_char(char, number)
  alphabet = ('a'..'z').to_a
  return char unless alphabet.include?(char)

  index = alphabet.index(char)
  new_index = (index + number) % 26
  alphabet[new_index]
end

def ceasar_cipher(string, number)
  string_array = string.downcase.split('')
  string_array.map { |char| cipher_char(char, number) }.join
end
