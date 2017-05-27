# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char # begin the method
   to_return = '' # return some sort of string
   each_char.with_index do |char, index| 
     to_return << char if index.even? #return and appaend the listing with even characters
   end
   to_return
   
    
  end
end
