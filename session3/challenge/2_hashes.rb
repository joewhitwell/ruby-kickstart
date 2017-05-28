# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

# initial thoughts non negative integer eg num, 
#hash denoted with curly brackers

def staircase(n) #introduce the method staircase which take n
  to_return = {} # will fill  hash and return 
  1.upto n do |crnt_size| #starting from 1 executes block upto n
    next if crnt_size.even? # skipping even numbers
    all   = Array.new(crnt_size) { |i| i + 1 }  #creates an array of 1 to current size
    evens = all.select { |i| i.even? } # dselects all even interviews
    to_return[crnt_size] = evens # adds a mapping from current size to evens
  
  end
  to_return
end
