# Taken from http://pragprog.com/titles/fr_ltp/learn-to-program
#
# Write a Deaf Grandma program. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless
# you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938!
# You can't stop talking to grandma until you shout BYE.
#
# Hint: Don't forget about chomp! "BYE\n" is not the same as "BYE"
# (check the String cheatsheet if you need)
#
# remember, you can try your program by going to the terminal and typing   $ ruby 9_input_output_logic_string.rb
#
# example:
#
#
# USER:     $ ruby 9_input_output_logic_string.rb
# USER:     hi grandma.
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     HI GRANDMA!
# GRANDMA:  NO, NOT SINCE 1938!
# USER:     bye
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     BYE


    
#need to use gets command for user input then run an if statement printing set
#responses based on the case of the input
#class string 
 #   def is_upper
  #      self == self.upcase
   # end 
def deaf_grandma   
while line = gets #begins a loop
line.chomp!
break if line =="BYE" #structured thought makes this the most logical first ste[]
if line == line.upcase and line !="" #so long as it is uppercase and does contain some value 
    puts "NO, NOT SINCE 1938!" #print for the user
else
    puts "HUH?!  SPEAK UP, SONNY!" #otherwise print for the user
end
end
end 








# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__
