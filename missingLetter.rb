# Made a string 
string = 'thomas'

# num is assigned the number of characters in the string
num = string.count string
num -= 1
# fn is assigned a random number in the range of the string count
fn = rand(0..num)

# This uses the random number from above to choose the index in the 
# string and replace with empty character
string.delete fn
string.insert(fn," ")

puts string