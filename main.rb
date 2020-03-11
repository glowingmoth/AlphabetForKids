#require 'tty-cursor'
require 'colorize'
require_relative 'modules'
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
        puts ""  
    else
        puts  
        puts "#{letter} is for #{words_hash[letter][category]}" 
        sleep(1) 
    end 
end
#Run the title screen method




#Main menu loop
while true
    #Run the title screen method
    title
    options = gets.chomp
    case options
    when '1'
        #loop for sight words option
        while true 
            system('clear')
            puts "Press a letter to begin! (or 1 to exit)"
            #Get key press without having to press enter key after
            begin
                system('stty raw -echo') #This terminal/system command wil
                key = STDIN.getc #Using I/O to get key press and convert to string
                if key == "1"
                    break
                end
                letter = key.upcase
                #Method for grabbing letter pressed by user
                is_for(letter)
                sleep(5)
            ensure
                system("stty -raw echo")
            end 
        end 
    when '2'
            system('clear')
            puts "Guess the missing letter!"
        end
    when '3'
        system('clear')
        puts "Thank you for playing ALPHABET for KIDS!"
        puts ""
        puts ""
        sleep(3)
        exit
    end
end
























