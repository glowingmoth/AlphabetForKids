#require 'tty-cursor'
#require 'colorize'
system('clear')
puts ""
puts ""
puts "                                                                         ALPHABET for KIDS"
puts ""
puts ""
puts ""
puts "                                                                      Press any letter to begin."




#this prints the letter pressed and the animal
def is_for(input) 
    animals_hash = {'A' =>'Ant', 'B' => 'Bird', 'C' => 'Cat', 'D' => 'Dog', 'E' => 'Elephant',
        'F' => 'Fish', 'G' => 'Goat', 'H' => 'Horse', 'I' => 'Impala', 'J' => 'Jellyfish', 'K' => 'Kangaroo',
        'L' => 'Lion', 'M' => 'Mouse', 'N' => 'Numbat', 'O' => 'Octopus', 'P' => 'Pig', 'Q' => 'Quail',
        'R' => 'Rabbit', 'S' => 'Snake', 'T' => 'Turtle', 'U' => 'Urchin', 'V' => 'Vulture', 'W' => 'Whale', 
        'X' => 'Xerus', 'Y' => 'Yak', 'Z' => 'Zebra'}
    

    value = animals_hash[input]
    unless animals_hash.key?(input)
        puts "no match"  
    else
        puts "#{input} is for #{value}."
    end 
end
input = gets.chomp.upcase
is_for(input)













