#Title Screen
def title
  system('clear')
  puts ""
  puts ""
  puts "
                      ____ _    ___  _  _ ____ ___  ____ ___    ____ ____ ____   _  _ _ ___  ____
                      |__| |    |__] |__| |__| |__] |___  |     |___ |  | |__/   |_/  | |  \\ [__
                      |  | |___ |    |  | |  | |__] |___  |     |    |__| |  \\   |\\_  | |__/ ___]".colorize(:cyan)

  puts ""
  puts ""
  puts "                                          Choose an option and press Enter:"
  puts ""
  puts "                                                   1 = Sight Words"
  puts "                                                   2 = Missing Letter"
  puts "                                                   3 = Exit"
end

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
      puts "                                                          #{letter} is for #{$words_hash[letter][category]}"
      sleep(1)
  end
  return letter
end


#This fetches the key pressed and randomly removes a letter from the word
def missing(letter)

  #Random number to choose either category
  category = rand(1..2)
  if category == 1
      category = :animal
  elsif category == 2
      category = :object
  end

  #This prints a message if any key pressed other than a letter or Exit [3]
  unless $words_hash.key?(letter)
      puts "no match"
  else
      selected_word = $words_hash[letter][category]
      arry_m_letter = selected_word.split("")
      # p arry_m_letter
      # index range
      num = arry_m_letter.length
      num -= 1

      # the random index number for removing a letter
      fn = rand(0..num)

      # returns the letter at the random index and puts in m_l
      $m_l = arry_m_letter[fn]

      # deletes the letter at the random index
      arry_m_letter.delete_at(fn)

      # replace the deleted letter with an empty space
      arry_m_letter.insert(fn,"_")

      # convert back into a string
      new_word = arry_m_letter.join("").capitalize
      puts ""
      puts ""
      puts ""
      puts "                                                          #{letter} is for #{new_word}"
  end
      sleep(1)
end


# Apple
def apple
  puts "

                                ,*/.
                       (&  .((((((((###%%%.
                       %.,////((((###########.
                       %    ********/((((((//(#
              (%%##%###%(/((#%#//****/(#(#(/*,(
          (%%#%%%#%*,**(##%#********/(/,.
        %&%%%%#/**/#%#/*,,,......,#%%%%##
      %&&&&&&%##(##((/,,,,,,,,,,.,,*%%%%%%.
     &&&&&&&%&%%%%%%%%#((###%%%%%%#%%&%%&%%*
    &&&&&&&&&&&&&&&%&&&%&&&%&%%%&&%%%%%%%%%%
   /@@&&&&&&&&&&&&&&&&&&&&&&%&%&&%&%%#%%%%%%*
   %&&&&&&&&&&&&&&&&&&%&&&&&&&&&&%%%%###%%%%*
   #&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%
    &&&%%%&&&&%&&&&&&&&%&%&&&%&%%%%%%%%%%#(#
    ,((##%%%%#%&&&&&&&&&%%%&%%%%%%#%#%##((/
     *((###%%%%%%%%&%&&%%%%%%%%%%#####((/*
      *(##%%%%%%%#%%#%#%%%%%%%#%(####((/*
       .%%%%%%%%%%%%%%%%%%%%%######(#(/
        /%&&&&&&&&&%%%%#%%%%%%###((//,
         %%%&&&&&&&&%%%%%%%(##(##((*.
          ##%%&&&&&&&&%%&%%&&&%%#/,.
           .,,***///((((/*,...."
end


# Rabbit
def rabbit

puts "                .:/."
puts "              `:/++-"
puts "             `::/+o-"
puts "            +::/++"
puts "            .o:+++."
puts "            `-oso+-`"
puts "         `-/o++syo+/."
puts "       `/soody/sssoo:`"
puts "      -ohyyyhyyysss++."
puts "      /yyyysossso+ooo+-`"
puts "      `::/+///+osyyhhyso+/:--...."
puts "          ./+syhhhhhhhyyysssyyyyyso/-`"
puts "           .+yyyhhsssssssyyyyyssssyyys/."
puts "            .syyyso+ossyyyyyhhhyssosyyyso:`"
puts "            `ossss++oyysssyyyyyyyssssyyyys+-"
puts "             /sooo++osysssossosossssysysysso/`"
puts "             .++++++osssoooooosoooooossssssso/`"
puts "              -///++osoo+o+ooooosooo+o+ooossoo/`"
puts "               -::+++//:///+++ooooooooooo++oo++."
puts "                -+oo/.``..--/+++++oooooooo++++/`"
puts "                `osso.`````..:////+++++++oo+++:"
puts "                `oyyo.`   ```.-:::::::///+++//."
puts "                .oss:/`   `--.:/--++++oo+/////`"
puts "               `:oo:+:`  `:+s/-:--:+ooo+///+/-"
puts "              -++o:      `-oo++++++/+oo/....`"
puts "                   `...-..---....`"
end

