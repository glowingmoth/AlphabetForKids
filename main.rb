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
def is_for(key) 
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
    temp_cat = rand(1..2)

    if temp_cat == 2
        words_hash 


    unless words_hash.key?(key)
        puts "no match"  
    else
        words_hash.each do |key, value|
            if value.is_a?(Hash)
                puts "#{key} is for #{value[:animal]}"
            elsif
                puts "#{key} is for #{value}"
            end
        end      
    end 
end
 key = gets.chomp.upcase
 is_for(key)
















