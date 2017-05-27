# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# the in a row is crucial here,  use a count function and then if statement
# if n exists 3 or more times, maybe use the counts method, 

def got_three? (elements) # applied to elements
    elements.each_cons 3 do |a, b, c| #where there are 3 consecutive elements, 
        return true if a == b && a == c #they are all equal
    end
false
end