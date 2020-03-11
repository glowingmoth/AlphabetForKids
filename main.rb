#require 'tty-cursor'
#require 'colorize'
system('clear')
puts ""
puts ""
puts "ALPHABET for KIDS"
puts ""
puts ""
puts ""
puts "Press any letter to begin."

#This hash is nested and holds both alphabet categories 
def is_for(letter) 
    words_hash = {
        'A' => {animal: 'Ant', object: 'Apple'}, 
        'B' => {animal: 'Bird', object: 'Bus'}, 
        'C' => {animal: 'Cat', object: 'Castle'},
        'D' => {animal: 'Dog', object: 'Drums'}, 
        'E' => {animal: 'Elephant', object: 'Earmuffs'},
        'F' => {animal: 'Fish', object: 'Flowers'}, 
        'G' => {animal: 'Goat', object: 'Guitar'}, 
        'H' => {animal: 'Horse', object: 'Helicopter'}, 
        'I' => {animal: 'Impala', object: 'Igloo'}, 
        'J' => {animal: 'Jellyfish', object: 'Jeep'}, 
        'K' => {animal: 'Kangaroo', object: 'Key'},
        'L' => {animal: 'Lion', object: 'Ladder'}, 
        'M' => {animal: 'Mouse', object: 'Moon'}, 
        'N' => {animal: 'Numbat', object: 'Nest'}, 
        'O' => {animal: 'Octopus', object: 'Orange'}, 
        'P' => {animal: 'Pig', object: 'Planet'}, 
        'Q' => {animal: 'Quail', object: 'Queen'},
        'R' => {animal: 'Rabbit', object: 'Ring'}, 
        'S' => {animal: 'Snake', object: 'Scissors'}, 
        'T' => {animal: 'Turtle', object: 'Tree'}, 
        'U' => {animal: 'Urchin', object: 'Umbrella'}, 
        'V' => {animal: 'Vulture', object: 'Violin'}, 
        'W' => {animal: 'Whale', object: 'Watch'}, 
        'X' => {animal: 'Xerus', object: 'X-ray'}, 
        'Y' => {animal: 'Yak', object: 'Yoyo'}, 
        'Z' => {animal: 'Zebra', object: 'Zip'}
    }

    #Temp variable for generating random number to choose either category
    category = rand(1..2)
    if category == 1
        category = :animal
    elsif category == 2
        category = :object 
    end


    unless words_hash.key?(letter)
        puts "no match"  
    else
        puts "#{letter} is for #{words_hash[letter][category]}"  
    end 
end

# This is the OLD WAY to get input from the user
#  key = gets.chomp.upcase
#  is_for(key)
system('stty raw -echo')
key = STDIN.getc
letter = key.upcase
 
is_for(letter)
















