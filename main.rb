#require 'tty-cursor'
require 'colorize'
require_relative 'modules'

#Run the title screen
title

#Get user choice for main menu


#Main menu loop

while true 
    options = gets.chomp
    case options
    when '1'
        system('clear')
        puts "Press a letter to begin!"
        #Get key press without having to press enter key after
        begin
            system('stty raw -echo') #This terminal/system command wil
            key = STDIN.getc #Using I/O to get key press and convert to string
            letter = key.upcase
            #Method for grabbing letter pressed by user
            is_for(letter)
        ensure
            system("stty -raw echo")
        end  
    break
    when '2'
        system('clear')
        puts "Guess the missing letter!"
    break
    when '3'
        system('clear')
        puts "Thank you for playing ALPHABET for KIDS!"
        puts ""
        puts ""
        exit
    end
end

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
        puts  
        puts "#{letter} is for #{words_hash[letter][category]}" 
        sleep(4) 
    end 
end






















