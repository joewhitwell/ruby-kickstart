# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opposites_attract, *elements) #method takes a boolean, and any number of booleans
    to_return = [] #creating an empty array
    elements.each_slice 2 do |first, last| #splits the array into an array of pairs
        first = !!first #conversion to boolean
        last = !! last
        result = if opposites_attract
                first != last  #first does not equal last
    else
        first ==last  #or they equal
    end
    to_return << result #append result 
end 
to_return
end
    
    