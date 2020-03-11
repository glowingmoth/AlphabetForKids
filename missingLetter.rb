# Made a string 
# string = 'thomas'

# # num is assigned the number of characters in the string
# num = string.count string
# num -= 1
# # fn is assigned a random number in the range of the string count
# fn = rand(0..num)

# # This uses the random number from above to choose the index in the 
# # string and replace with empty character
# string.delete fn
# string.insert(fn," ")

# puts 

while true
# the string
word = 'thomas'

# made into an array
array_word = word.split("")

# index range
num = array_word.count 
num -= 1

# the random index number for removing a letter
fn = rand(0..num)

# returns the letter at the random index and puts in m_l
m_l = array_word.at(fn)

# deletes the letter at the random index
array_word.delete_at(fn)

# replace the deleted letter with an empty space
array_word.insert(fn," ")

# convert back into a string
word = array_word.join("")

puts word
sleep (1)
end

