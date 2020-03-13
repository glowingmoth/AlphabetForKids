require 'tty-cursor'
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
# Ascii art hash
image = {}
image["A"] = {}
image["A"][:object] = apple
image["A"][:animal] = ant
image["B"]= {}
image["B"][:object]= bus
image["B"][:animal] = bird
image["C"] = {}
image["C"][:object] = castle
image["C"][:animal] = cat
image["D"] = {}
image["D"][:object] = drums
image["D"][:animal] = dog
image["E"] = {}
image["E"][:object] = earmuffs
image["E"][:animal] = elephant
image["F"] = {}
image["F"][:object] = flowers
image["F"][:animal] = fish
image["G"] = {}
image["G"][:object] = guitar
image["G"][:animal] = goat
image["H"] = {}
image["H"][:object] = helicopter
image["H"][:animal] = horse
image["I"] = {}
image["I"][:object] = igloo
image["I"][:animal] = impala
image["J"] = {}
image["J"][:object] = jeep
image["J"][:animal] = jellyfish
image["K"] = {}
image["K"][:object] = key
image["K"][:animal] = kangaroo
image["L"] = {}
image["L"][:object] = ladder
image["L"][:animal] = lion
image["M"] = {}
image["M"][:object] = moon
image["M"][:animal] = mouse
image["N"] = {}
image["N"][:object] = nest
image["N"][:animal] = numbat
image["O"] = {}
image["O"][:object] = orange
image["O"][:animal] = octopus
image["P"] = {}
image["P"][:object] = planet
image["P"][:animal] = pig
image["Q"] = {}
image["Q"][:object] = queen
image["Q"][:animal] = quail
image["R"] = {}
image["R"][:object] = ring
image["R"][:animal] = rabbit
image["S"] = {}
image["S"][:object] = scissors
image["S"][:animal] = snake
image["T"] = {}
image["T"][:object] = tree
image["T"][:animal] = turtle
image["U"] = {}
image["U"][:object] = umbrella
image["U"][:animal] = urchin
image["V"] = {}
image["V"][:object] = violin
image["V"][:animal] = vulture
image["W"] = {}
image["W"][:object] = watch
image["W"][:animal] = whale
image["X"] = {}
image["X"][:object] = xray
image["X"][:animal] = xerus
image["Y"] = {}
image["Y"][:object] = yoyo
image["Y"][:animal] = yak
image["Z"] = {}
image["Z"][:object] = zip
image["Z"][:animal] = zebra

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
            puts "(Press 3 to Exit)                               Press a letter to begin! "
            #Get key press without having to press enter key after
            begin
                system('stty raw -echo') #This terminal/system command wil
                key = STDIN.getc #Using I/O to get key press and convert to string
                system("stty -raw echo")
                if key == "3"
                    break
                end
                letter = key.upcase
                #Method for grabbing letter pressed by user

                is_for(letter, image)
                sleep(4)
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
            puts "(Press 3 to Exit)                                    Guess the missing letter!"
            begin
                system('stty raw -echo') #This terminal/system command wil
                first_key = STDIN.getc #Using I/O to get key press and convert to string
                system('stty -raw echo') #This terminal/system command wil
                if first_key == "3"
                    break
                end

                correct_letter_attempts = 0
                while correct_letter_attempts <= 3
                    game_letter = first_key.upcase
                    #Method for grabbing letter pressed by user
                    #is_for(letter)
                    missing(game_letter, image)
                    begin
                        system('stty raw -echo') #This terminal/system command wil
                        answer_key = STDIN.getc #Using I/O to get key press and convert to string
                        system('stty -raw echo') #This terminal/system command wil
                        if answer_key == $m_l
                            system('clear')
                            puts ""
                            puts ""
                            puts "                                                       Correct!".colorize(:light_blue)
                            sleep(1)
                            break
                        elsif answer_key != $m_l
                            system('clear')
                            puts ""
                            puts ""
                            puts "                                                       Try Again".colorize(:light_red)
                            sleep(0.5)
                            break
                        elsif answer_key == '3'
                            break
                        end
                        correct_letter_attempts += 1
                    ensure
                        system("stty -raw echo")
                    end
                end
            ensure
                system("stty -raw echo")
            end
        end
    # Exiting the App
    when '3'
        system('clear')
        puts ""
        puts ""
        puts "                                               Thank you for using ALPHABET for KIDS!".colorize(:cyan)
        puts ""
        puts ""
        sleep(1)
        exit
    end
end

























