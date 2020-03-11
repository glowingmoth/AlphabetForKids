#require 'tty-cursor'
require 'colorize'
require_relative 'modules'
# Nested hash holding both alphabet categories 
$words_hash = {
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
#This is for fetching the letter pressed and randomly choosing from either category
def is_for(letter) 
    
    #Random number to choose either category
    category = rand(1..2)
    if category == 1
        category = :animal
    elsif category == 2
        category = :object 
    end

    #This prints a message if any key pressed other than a letter or exit [3]
    unless $words_hash.key?(letter)
        puts "no match"  
    else
        puts ""
        puts ""
        puts ""
        puts "                                                          #{letter} is for #{$words_hash[letter][category]}" 
        sleep(1) 
    end 
end

#This fetches the key pressed and randomly removes a letter from the word
def missing(m_letter) 
    
    #Random number to choose either category
    category = rand(1..2)
    if category == 1
        category = :animal
    elsif category == 2
        category = :object 
    end

    #This prints a message if any key pressed other than a letter or Exit [3]
    unless $words_hash.key?(m_letter)
        puts "no match"  
    else
        arry_m_letter = m_letter.split("")

        # index range
        num = arry_m_letter.count 
        num -= 1

        # the random index number for removing a letter
        fn = rand(0..num)

        # returns the letter at the random index and puts in m_l
        m_l = arry_m_letter.at(fn)

        # deletes the letter at the random index
        arry_m_letter.delete_at(fn)

        # replace the deleted letter with an empty space
        arry_m_letter.insert(fn,"_")

        # convert back into a string
        m_letter = arry_m_letter.join("")
        m_letter.capitalize
    end   
        sleep(1)  
end


#Main menu loop
while true
    #Run the title screen method
    title
    options = gets.chomp
    case options
    when '1'
        #Loop for Sight Words option
        while true 
            system('clear')
            puts ""
            puts ""
            puts "                                          Press a letter to begin! (or Press 3 to Exit)"
            #Get key press without having to press enter key after
            begin
                system('stty raw -echo') #This terminal/system command wil
                key = STDIN.getc #Using I/O to get key press and convert to string
                if key == "3"
                    break
                end
                letter = key.upcase
                #Method for grabbing letter pressed by user
                is_for(letter)
                sleep(1)
            ensure
                system("stty -raw echo")
            end 
        end 
    when '2'
        #Loop for the Missing Letter option
        while true
            system('clear')
            puts ""
            puts ""
            puts "                                          Guess the missing letter! (or Press 3 to Exit)"
            begin
                system('stty raw -echo') #This terminal/system command wil
                key = STDIN.getc #Using I/O to get key press and convert to string
                if key == "3"
                    break
                end
                m_letter = key.upcase
                #Method for grabbing letter pressed by user
                missing(m_letter)
                sleep(1)
            ensure
                system("stty -raw echo")
            end 
        end
    # Exiting the App    
    when '3'
        system('clear')
        puts "                                               Thank you for using ALPHABET for KIDS!"
        puts ""
        puts ""
        sleep(1)
        exit
    end
end

























