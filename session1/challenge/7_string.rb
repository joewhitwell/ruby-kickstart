# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

    def pirates_say_arrrrrrrrr(string) 
  to_return = "" # return a string
  add_next = false 
  string.size.times do |index| #iterate upwards adding to the index for each look
    current_char = string[index,1] # the present character is index 1 ont he string
    to_return << current_char if add_next #move to the next character
    add_next = (current_char == "r" || current_char == "R") # only add if the current character is an upper or lower case 
  end
  to_return
end
    
    
