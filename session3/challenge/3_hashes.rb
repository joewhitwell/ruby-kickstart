# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}


def word_count(str) #method is applied to the string 
    words = Hash.new { 0 } # if word is not in the hash, return 0
    str.split.each { |word| words [word.downcase] += 1} #create an array of words, 
    # each runs block on each word lowering the case
    words
end

    