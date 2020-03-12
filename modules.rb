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
      sleep(2)
      puts ""
      puts ""
      puts ""
      puts "                                                          #{letter} is for #{new_word}"
      

  end
      sleep(1)
end



def apple
  "

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


def ant
"     ..`         `:`
         .-.        `+`
            ..       `+`
              ..      `+`
                .`     `/`
                 `..     :`
                   `-`  `+.
                     `` :.
                      .:+///-.`
                    :oyys+::y+::.
                 `-osyyhysssssoos.....`           `/-..
               .ossosyyyssssoosyhso+/::::.        oo+y+:
               --````-//::--..`/+/+o+//++/-``    /yyh/ +-
                         `  `::::/oyy+os+/:+:`  `yydy--/s-`
                           :- +osyhyo/oys+oy/:- /sdhhysoy+ss/-`
                          -y `h-.+syhyssysdy//:`shhhdddhyh::://:.
                         `y: +y`  ./oss:+dhysoo+hhydmmmmmms+o/:-/o`
                         +o  y/      -` +hs/yhsoysyddhdmmmh+dys:-/+.
                        `/. .o.     ``  /:``:+o+/.`oyysshddsymds/:/+.
                       `-   +.     ``  `-          `/yssssso+hdhyo:o:
                       -`   /`     .   -             `:shysoo++sys+/-
                       -    /`    .`  ..                ./shy+oo+++:`
                  `  `.    :- ````    -                    `--/++/.``
                    `   ``..      ```.  "
end

def bird
"                                            .-:::--.`
                                         `-+sssssoooso+:`
                                       -+sssssssyhNNdhhhy+/:`
                                    `:sssooosyyysyyyhdo-`
                                 ./ooo++oooosssysyyss-
                              `:osooooo++oooysyssyss`
                           ./+ssyssssssssoooooosyyy:
                        :ohhysssyhhhyyyssssoosysdds
                     -sdhyhhddhhhhhdddhhhhyyyo+yho`
                  `/hdhhhhhdhddhhhhmmdhdys+/++/::
              `:oydddmmmmmmdddhhyssso/:.--:--:-`
             +dyoshmmdhhysyhyso+/:---..--:/+/.
          `-:++osso////::-:osssooooo+++/:-`
       -///::-.              `.sy:/oo/-
    -+o/-.`                     -//` `-///+-` ```-.
  .yo-`                           .+/` ::-//+///-``.
  .`                                `/+.
                                    `-+yosoo+:/.
                                  -::.   .:/:  .`     "
end

def bus
  "                                                                                
                                                                           
                                                                           
                           ``.........``                                   
                       `:++:///://omNdho........`````                      
                      -hmyh+///://oymdmd::--------...-........````         
                   `  +ddhh+o+oooshmmmmmdh+yhys+oo+/+//::::::------.`      
                  `/``/d///:o:+:++++ssooysomNmy+yhhomdhsdhoyyoysso+s`      
                  `/  :d:::`+-/-://+os++y+odmms/os++d++/h+/++/sy/+/o.      
         `        `:``/y/:/:+:+:/oosyyssso+dddhohhhohhyohyoyyoyssyos.      
        `:`     ``.---------//+:--:::://:--:::+/:::-:::-::-------o+/.      
         `    `////+///:-----::-----::/+/-----+:-----------------:::.      
            `--oosossos/:::::-------::oso--::---------------:oso---::      
            :/:oososssy/:::/+--...-/sysoo:-:----------------+ddm///+o      
            +o+:::::::/::/+soo+--/hmmNNmo:-----------::/+osyhdho-..``      
            :oso+++++++++oooooo:odhhhhdNh:--::/+osyhddddNNNmddy+-.``       
            .-+/::::::/dydy+ooo+hhyos+hmd//ddmmmmmmmmmmmmmmdhyo/:-.``      
              /hmddhys+ooo+/::-+hh+hhoydmmmmmmmmdddhyyso//:-..``           
           ``.:+ydmmNmmmmmmmmdhddhyosshdmddhhyso+/:--.```                  
           `.--//+osyhhdddmmmmmdddhhdhyo++/:-..```                         
                ``..--::/++ooooooo+/:-."
end

def cat
"                                                                                                    
                                                                                                    
                                                                                                    
                                `-ooss/                                                             
                              `+yddds/.                                                             
                             -hmdh:                                                                 
                            +yyy/`                                                                  
                           /hNN+                                                                    
                          .sydy                                                                     
                          +hdm/                                                                     
                          +ydm:                                                                     
                          shdm/                                                                     
                          :syhs                                                                     
                          .oyhd.                                                                    
                           :syh+                                                                    
                           .oydh`                          --.       `--.                           
                           `+ydd/                          ://:`    ./:--                           
                           `+hdNd:--////://+++/:--.`       -//oysosss/::.                           
                           `ohmmdhdddddhdhhhhdhhdhddhyo/-.`:ooso/`-+oo+o-                           
                           `+hhhhhhhhhhhhyhydhyhdyhyhhhdhs/oyoss/` /s++s-                           
                           /yhhhhhyhyddyddhsdhsdyyhyhhdy/..-ss/-...``.:-`                           
                          `shdhdhhyhhhhydhsyhyhhdyyhhydys:..--...-:```                              
                          `sdddhdhdyhdhhyhyhyhyyhhyyyyddhs-.-.......`                               
                           .ydddddhhhyhhydyyyhshyysysshmdy:-....`````                               
                            :shddhhdhhhyyhyyyyyhsssyssydds-...`````                                 
                            .:/ohhhooo+/+oyyyoyyso+:/:-yh:..``````                                  
                           ``.-----.`````.:::::-:/-....//..``````                                   
                          ````.----.`````             `....````                                     
                         ``````.:o+:.```                .````                                       
                        ````````.yys:``                 `.````                                      
                        ..```    :oo-``                   ..```                                     
                        `.```     -:.````                  ..```                                    
                         .``` ` ````````````              ``..```                                   
                         `-.`.`      ``.....`          ```  `.````                                  
                                         ``            ``````..````                                 
                                                          ```...``                                  
                                                              ```"
end

def castle
  puts "                           ``              `                          
                                                                      
                                                ``                    
                             `                  +/                    
                            .o-   --           :ss-                   
                           `ooo. .oo.         .ssso`                  
                           +ooso.osso`     `  +ssss+                  
                          :sossssssss+     ``-ssssss-                 
                          :/-::ossssss:     `osssssso`                
                          `-`--ssssssss.    /ssssssss:                
             /-           `...+oooooooo+   `sssssssooo.               
            /ss-           ``--::-//-::`   `::/--/:-::`               
           /osss.          .`.....--...     `....-...`                
          :osssso.         .``.........      ./-...`.-                
         -ososssso` `````.....-...............-....``/`    ``         
        `+++oooooo- `.....-...............---......```                
         `..------   .....-+-.....//.....:+--....-.```                
          ``/-.---  `......:......::.....-/--....o:.`...`             
         ```..--::-.-......+......:/.....-+-.......``...`             
         :``..-----......../-.....::.....-/-.......```..              
         ```..---:-..............-::--.....-.......`.-..              
        ````...--:--........-..:oyyyys/-..--.......`.:..              
        ````...---:-..........:shhhhhhs:..--.......```..`             
        ````....---...........:shhhhhhs:-.-........`````              
           ``````    .........:shhhhyhs/---.......`.```               
                     `````````./++++++/-..........`````               
                                             ````````"
end

def dog
  puts "                                                                                
                                                               -`               
                                                             `+h-/.             
                                                            :yydh+              
                                                          `+hsohh`              
                                                         .sddyyyho.             
                                                      `:/oyhhhyyyhh-            
                                                   `-/o+/syooo+yhddy.           
                                                `-/ooo+++ysooshddddmdy/         
                                         ..-://////++++/oho/odmsyyhmmmmh.       
                    `-:/ooosssssssssssssss+syys/::://++ohy::/+ydoo+--::`        
                 `-+ooooossssssssssssssss/:ssoo++/:/:/+yd+:`   .oyo+.           
                :ooo+++ossyyyyyssssssssss::so+++++o/:/yys+.        .++          
              `+sooo++ooossssssyysssssyss+/ooo++oo+++++y/            `          
              +ooo+o+++oos+oooosssssssssso/+oo++++oo+:/+`                       
             :h+o++o++++/://++ooooosssoo+o/oooo//++//:-.                        
            .so:o+++++++/+/--://++++++++++/oooo///://:-                         
           -oo--+++++++/::::   ``.--:://++oosso+::/++-                          
          /y+- :o++++/::-.--           `.-/sooo:/++/:`                          
       `:ss/.  so+++/:::-..                ooo+`-/::-                           
    ./sys+-`  /so+/-/:---`                 :oo/ -:::.                           
   +dy+:`    /s+/-`//:-.                   -++/ ./::`                           
   o`      .oo+/`-+/-.`                    .o++``/:/`                           
           os+/`/y+:-                      `ooo. :/+.                           
           :o+. `++/`                       +oo` -++.                           
           `o+`  `+/.                       :++. :++.                           
            o+.   `/:`                       ++:` :o:                           
            +++/-` `++::.                    :+o+:`+s++:.                       
            .::::`  .----                    `-::-.`----`                       
                                                           "
end

def drums
  puts "       ``                `.`                                  
               .--.``             ..`                                 
                  `.:-.``...-------:-.---....```                      
             ``....--...--..`     ``...`  ``````......`               
         `.-.``      `````..--.``   ``..`            ``---`           
        .:.               ```..---.` ``.-.`              `:-          
        ::`                   ```.----.`---`             `-/-         
        :+/-.``                    ``..-:---.        ````./:.         
       ./+::----`````````               ` `.`````....````.`-.         
       .://s++-..`.............-----------.......-::-../o+y+/         
       `-/+y+s/s:-------------+:+::::::::::::----/:/:/+yyos/:         
       `::o+:shhs:::://yhhhhhhh+hhhhhhhhhhhhhs///ys+-oyy//+:-`        
        -/o:`+ydo:::://shhhhhhd-hhhhhhhhhhhhhs/:sdho.-y/:+++so.       
        `+os/oyho:::://shhhhhy:./hhhhhhhhhhhhs///hs+.:s+/s+:o+`       
        .so:`osds:::://shhhhhh/.:hhhhhhhhhhhhs/:sdds-:ohssoo`         
         /oy/osy+:/osooyhhhhhhy.sdhhhhhhhhhhhs//+dy/.-ohys:-`         
         :/+yoys/::...-/ohhhhy.`.yhhhhhhhhhhhs///s://syy/-:           
          -/+++/+sssoo+oyhhhhhh-yhhhhhhhhhhhhsoooyysy:.`..`           
            ...-```.-:/++oosyyhodhhhhhyyysoo+/:-..-/-```              
                ```.-----..```/+o---::--------..--.`                  
                       ``.....-`---------..``            "
end

def elephant
  puts "                                                                      
                                                                      
                                                                      
                      `````                                           
              `://+////://:::/:/:---.``````..--:::--.`                
             .o++sssossoo+soo+++//://+//:::::::::::::/:-.`            
            ./+o+//oossoss++/+++++//++oo+++///////::::///:-.          
            +++osso+osss+///::///+++/+ssso++++++++/+///++//:-         
           :oossyhdhyyhs+///+++o+++ooyyysosso++++++//:::/+///.        
          -sooooosydhyhso++++o+++++sysooossoooo+++//::::++////`       
          sssooosyhyyhhyso++ooooooyssssosssoooo+++++++++++////-       
         .yyyyo++-smy+syssoshhhyysoooyssssoooooooo+oooosoo+///.       
        `:hyyo/   ``  :hdddddhyysoooshysssssssooosooooysso++/o        
         `hhyy:       `mmmmmdyssoooohdyyyyyssssssssssso+++++-+        
          shyy.       +ddmNNhsssssssddhyyyyhhyyyyyysysooo+o: :        
          /hys`       yhhdmmdssssyyyhhhhhddddhhhyyyyyssooo/  .        
          :hss`      .yyyhds/ysssh/./oyhhhdddhhhyyydmhysos`           
          -hso       :yyyho `hyyso      `-:/++syyyysyhssy+            
          -hy/       ohyyo   syys:                  osssh:            
          .hy:      `yyys`   +hys:                 :sooyh/            
           hy-      .dhy/    -hyy:               `:ssysyys`           
           oh-       hhy/    .dhh/              :sosssyyys:           
           .ho     `oyyyy/  :yyyyy:              ./+/:---.            
            -h-    `-:-.`   `-::-`                                    
             `        "
end

def earmuffs
  puts "                                                                     
                                                                      
                                                                      
                            `....`                                    
                      .:+sydddhdhdhyo/:. `...`                        
                  `:ohdmmNNNNNNNNNNNNNNddddddho-                      
                `/hmmNNNNNNNNNNmmmdmdyysyysosyyhs-                    
               /hmNNNNNNmdyso++///::-.`:+ydo..-:+so-                  
              :dmNNNNmyo/::--........`/ddhdms-.---/y/`                
             .hmNNNmy+:--...``````````ommdhhms..---+hs.               
             sdNNNdo/:-..`````````````/NNNdhdmo-----+hh:.             
             ydmmd+/:-..``````        `dNNmdhmm/-----:dmh.            
             smmms/:--.``````        ``+mmNNddmd:-----+mh-            
        ``   +NNd/::--:+oo+/:..`  `````.hmNNmdmNy------sdy`           
        ``   :dm/.---/+syyyhdhhs+--`````-dmNNmmNN/----:-sy`           
            `/ho`...----..-:/oyhddhyo:.``/mmNNNmNy---:-.-.`           
            `yy: ```..-........-:+yhdmdy/-+mmmNNmm:----``             
             o+`  ``..-..----------:/ohdmdssmmNNmN/:--.``             
             -o+-` ```-----------------/odmdshmddd:--..``             
              `:so/.``.------------------:ody.::::-...`               
                `:oyo:.:::-----------------//`....```                 
                   ./shs+/+::::-----:::----..``                       
                     `:ohdmdho///:::::::---.`                         
                        `shhdddhyyo/---...``                          
                          `  .:+syo+``````   "
end

def fish
  puts "                                                                      
                                                                      
                                                                      
                             `+y.                                     
                            .shhs`                                    
                           :yhhhhyo-`                                 
                    ``.--:+syyyyyyyyyysoo/:.                       .` 
              `-/+osyyyhyyhyyyhhyyysssyyyyyhhs/.               .+ydd- 
           ./shyyyyssyyyyyyhhhhhhhhhhhyyyssyyyhh+          `:sdNmmdh  
        -+hdhysso+oo+oosssysyyyyhhhhdddddhhhyyyss-``   `-/ymNNmmddy.  
     `+hddddhhyo++++o+ossossssyysyyyyyhhhddddddhhhyyyyyyyydmmdddds`   
   .odhhhhhyssyys++++oosossossssyyssyyyyyhhhhhdddddddddddhhdddhh+     
 :ydhhdyyyso++oos/++++++oo++o+ossosssssyyyyhhhhhhhdddddddyyhddhho.    
-ysssoyyys+///:+s+++//++o//o+o++ooooooossyyyyyyyyyyyossyysyddddhhh+`  
 `-/+://::--.--:////////+//++++++++o+ooosooooossyyys    `-+yddddhhys. 
    -    ```.--/ysoo///+++++++++oo+:---...``:oyyyyys        `-+shhhys`
                +sooo` ```.:yhyysss/          ./syyy             -/oo.
                 :sss/      `:sssoos             .:-                  
                  `:s/         -/ooo                                  
                                  .`                                  
                                    "
end

def flowers
  puts "                                                            
                                                            
                            -.-/-:-`                        
                     `.-::..////+/:::.                      
                    -///::///oosos//::.--.                  
                  `--:/:/++osssyysso++/::.``                
           `..`.`.--:///+syyyyyyhhyssso+:--..`..``          
         `-:///::::::::/shyyyyyyyhhysss+::--:://::``        
        `:/++os++++/::::oyyyyhhyyyhhyys/::://o+o+//-        
     `-:-:/ooyyyyyso/::::oyyyyyyyhhyyys+::/oyyyso+:--:.`    
    .::://osyyyyhhy+/+:::/syyyhhyyyyo+//::/+yyyyso+//::-    
    -:///+yyyyyyyyhhs+/////++osy++o+/:::/:syyyyyyyo///:-`   
    -:///+yyyyhhyyhhs/////+/::+o/:://::-osyyyhyyyho///:-`   
    ---:::+syyyyhhhys////++/::++/:::///:+yhhyyhyys/::--:.   
    .-::::::/syyysyo//::/.-...o//..-:://+yyyyyy+/::::::-`   
     ```:::-:///+:/++/:.`.    s:` `..-:/o//:+///:-::.```    
        ```:////+///oo+:`    `s/`   `./+/://+////.`.        
           :/:-:/:oyyyyyo`  `oso+`   .+:``-.+-::/-          
            `` -+ossssyys/--:+++: `-:o:     .` .`           
               -+ooosso/+////:/:-`-+ss`                     
               /+++ooo+/+++ooy+-.--/++` `:++/`              
              /yssss+///+oooos/. -/+///:oyyyyy-             
             .ssssso/+/+oso/::/`.:sso+/+/osssso`            
             /ooooso:-/+/+::--+.::/+++/:/osoooo:            
             `++++:.      ``-///.`.`     ./+++/             
              `..           ../-.          `.-`             
                             -/.              "
end

def goat
  puts "                                                                                
                                                                                
                                                                                
                              ````                                              
                `.--//.    .//:-.```                                            
                    `:+-  -o/`              ``````````                          
                      //``//      ```````...............``                      
                 `..``.-----`.--.....................---.......``               
                 `/+++:----:+oo/-----.--..............----.--..`                
                     .::---::------------.--.........-------`                   
                      .-------------------------....-------`                    
                      `-++:::------------------------------                     
                       `//:/:::::------------------::-----`                     
                        `.`-:::::::::-----:::::::::::/+---`                     
                            -::::::::---::::::::::::/+y:--`                     
                            `.:::::::-----::::::-.://:+/--                      
                              .::.``:::.     `    .-.` --.                      
                              `:-`  .::.           -.. .:-                      
                              `:-   .::`           --` .-.                      
                              `:-   ./:            --  .-`                      
                               :-    ::           `--  .-                       
                               --    .:`          .--  -.                       
                              `:-`   ./-         .::. -:.                       
                             `//-    :/:`        :/- ./:`                       
                             .::    ://:             --."
end

def guitar
  puts "                                                                                
                                                                                
       `.://++//:-.`                                                            
     `/ooooooooooooo+/-.`                                                       
    .ooooooooooooooooooo+/::--:://///:-`                                        
   `ooooooooooooooooooooooooooooooooooo+-                                       
   /oooooooooooooshhooooooooooooooooooooo`                                      
   oooooooooooooohmmsooooossyyyysssoooooo-                           `- -`-`    
  `ooooooooooooosdhhsoooosshdmmmddyyyyyyyo++////////:/:::::::------.:os+yoyos+  
  `soooooooooooosdyysooossyNNNNNNNhdhhhhhhhdhhdhhhhhhhyhyhyhyyyhhyhosysyyyhyys  
  `sooooooooooooodhysoooossdmNNNmhsssoooo/----------...............`-/o/s+s+++  
   ooooooooooooooyddooooooosyyyyssooooooo-                            . . .`    
   /oooooooooooooossooooooooooooooooooooo`                                      
   `ooooooooooooooooooooooooooooooooooo/.                                       
    .+ooooooooooooooooo+/:-....--::::-`                                         
      -/ooooooooooo+:-`                                                         
        `.-:::--.`"
end

def horse
  puts "                                        -/-    
                                       -+s/++osssN:    
                                   -+yNNNdo++ososys:   
                              ../yNNNNNNhosysyyo+yyy/  
    .:/ossso+/:.`        `-/yNNNNmdhssysssysydsssssoo/ 
 `+hdhhyyyysssyyhyso///+oysssyhhyso++ooooss+..-+ohsooy/
.dhyssssssssoossssssossssssssssssssso++oso.      .-yddy
ssoooosssssooooooo+++++++++++oo+++ossssy/          `-. 
dysysoooooooss+++++++++++++++//////+os+`               
hmyhyo+ooosssooo+oo+++++++++++//////+s.                
dMdyhyoossshhsysooooo+++++++so++++oooo                 
hMNhyysss+`-``:oosssoooooo+oosssso+so.                 
sNNMhso++        `-://+++/+++ssoo+/-                   
yNNMmyso.                    sysss.                    
yNNNNmy:                     mmhho                     
hNNNNmo                     :NNmm-                     
yNNNNN:                     :NNNm                      
/dmNNN:                     sNoN/                      
 :oNNNy                    `Nmom:                      
  `mNNN-                   `hdsm+                      
   -Nmmm:                   yNydm/                     
   `//oss:`                 `.-/oo-` "
end

def helicopter
  puts "                                                            
                                                            
                                                            
 ```..................-:/ys::-..................```         
                        oyy+                                
                   .--::yhhs///:-`                          
                .+ssyyyhhhhhhhhhyyo`                  `ooo+ 
               `:-----------------::.`               -yhhh. 
            ./o-......-/::::::/:----.----........../+hhhh+  
         .+syh-````````:+sssss+:``````````.----..``/do:/+h. 
       .shhdd:`````````:odddddh:-`````.:++/-.----::yd-:/.h+ 
      -hdddh-``````````:/dddddd//``-/oo+/-.```   ``:hdyyhy: 
      /ooo+-.----------/:+++++/.ooo+/+s:            `//-`   
      .sysssssssssssssss:      `++oyh/                      
        -/++/:::-------+.......-sdh/`                       
           `-:s+///////////////y:.                          
           -.......................-                        
           .........................  "
end

def impala
  puts "                                                       
                                                       
                                        .     ``       
                                       :`     :        
                                      --      +`       
                                     ./`      -/       
                                      :/-   `:/-       
                                      :/o/:/o+:.       
              ``-::--:--:-....```      `++so-``        
             `/+////:/oooo++/////:-```./:/s:           
             -+/o:/+/:/o++ooo+++++so+++///+`           
             -://+://///--:/++/:/+so///++.`            
             `:/:-/:::/:--:///://+so///-`              
            `.-:- -/::------:::/++/.``                 
          `.:-.` `//:` ``    /::-`                     
          +:.`  `:/:`        -//-                      
          :-    ://          .:/-                      
         `:      :/          `/::                      
         :.      `:.         `:.-                      
        :y        -o`        .-`:                      
        -+        `s:        -: :`                     
         ..        `-/`       :---`                    
                     `           `. "
end

def igloo
  puts "                                                                      
                                                                      
                                                                      
                                  ```````                             
                          ```........-........```                     
                       `...```````....``.-...``...```                 
                     `.``````````````````.``````````..`               
                   `.```````..```````-````````.`````...``             
                 ```````````````` ```.`````````.    ``````            
                ...```..```.```....``.``...-..`.```........`          
               .````  ``` ``````.````` `` `.``````  .` `````          
              `..``  ``  ``````````     `` .```      .  ``...         
              ``````..`.....```......-.....-``...-```....-````        
             ``````...``````      ```.````````   .       ``````       
            ```..........``      ````.``````     .`      `-...`       
         `````.```.........``........-.``.............-..```..`       
        ``.::::``..-....`..:....`````.`````.-``.``````..`......       
       `.-///++/-``.`......::---............:.......``.-..----.       
       ``.::://::...-------://::------------:------....-..---..       
       ``.-::::::`.--------:+/::-----:...--...--..:.......--.`        
       `..-:::::-...--.----/o//:::::------------.-:......``           
        ``.``    ...-------------..............````                   
                 ``.-..``            "
end

def jellyfish
  puts ""
end

def jeep
  puts ""
end

def 
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

def is_for(letter, image)
  

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
    # system("clear")
    # sleep(1)
    # rabbit
    # sleep(2)
    puts ""
    puts ""
    puts "                                                          #{letter} is for #{$words_hash[letter][category]}"

    puts image[letter][category]
  end
  return letter
end



