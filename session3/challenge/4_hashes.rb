# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(str) #method that takes a string
    to_return = {} # which create an empty hash as denoted by curly brackets
    str.split.each_with_index { |word, index| to_return [word] ||= index } # split into  array of words, along with each index, 
    # those run through block, which inserts but does not replace 
    to_return
end
