def substrings(string, dictionary)
  hash = Hash.new()
  dictionary.each do |substring|
    if string.include?(substring)
      count = string.scan(substring).size
      hash[substring] = count
    end
  end
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)