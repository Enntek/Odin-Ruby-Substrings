dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "go"]

def substrings(string, dictionary)

  dictionary.reduce(Hash.new(0)) do |hash, dictionary_word|
    # if word is found in string, increase that "category" by 1
    # p string_to_check.include?(word)

    arr_of_words = string.split(" ")
    
    arr_of_words.each do |word_from_arr|
      
      if word_from_arr.include?(dictionary_word)
        hash[dictionary_word] += 1
      end
    
    end

    hash
  end

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)


# array_random_string = random_string.split(" ")
# # we can split string into array, use spaces as delimiter

# array_random_string.each do |word|
#   if word.include?("i") then 
#     p true
#   end
# end
# problem: the count is incorrect, i should be 3 but is 1
# source of problem: include? returns a boolean, not a number
# we want some method to return 3

# haystack = 'this one is pretty long'
# needle1 = 'whatever'
# needle2 = 'two'
# # if haystack.include?(needle1) || haystack.include?(needle2)
# #   puts "needle found within haystack"
# # end
# [needle1, needle2].any? { |needle| haystack.include?(needle)}





# take any string, check if any part of the string matches a word in our dictionary
# return a hash with the matched word as the key, and the number of times matched as the value