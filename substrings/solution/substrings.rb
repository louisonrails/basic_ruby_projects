# frozen_string_literal: true

def substrings(string, dictionary)
  hash = {}
  string = string.downcase

  dictionary.each do |substring|
    if string.include?(substring)
      count = string.scan(substring).size
      hash[substring] = count
    end
  end
  hash
end
