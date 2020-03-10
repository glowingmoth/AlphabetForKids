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

objects_hash = {'A' }


#this prints the letter pressed and the animal
def is_for(input) 
    animals_hash = {
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
    
    animals_hash.each do |key, value|
        if value.is_a?(Array)
            puts "#{key} is for #{value[:animal]}"
        elsif
            puts "#{key} is for #{value]"
        end
    end

#     value = animals_hash[input]
#     unless animals_hash.key?(input)
#         puts "no match"  
#     else
#         puts "{input} is for {value}."
#     end 
# end
# input = gets.chomp.upcase
# is_for(input)
end


B - Bus
C - Castle
D - Drums
E - Earmuffs
F - Flowers
G - Guitar
H - Helicopter
I - Igloo
J - Jeep
K - Key
L - Ladder
M - Moon
N - Nest
O - Orange
P - Planet (saturn)
Q - Queen
R - Ring
S - Scissors
T - Tree
U - Umbrella
V - Violin
W - Watch
X - X-ray
Y - Yoyo
Z - Zip












