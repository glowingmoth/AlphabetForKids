
### R4 - **Provide a link to your source control repository**
https://github.com/glowingmoth/AlphabetForKids

### R5 - **Statement of Purpose and Scope**
Being a father of two young children  I'm aware that early education is vital for their development.
- The app is for learning the alphabet and basic spelling.
- The target audience is for the ages between 5-8, however this may vary slightly as each child is different.
- Learning that is fun and that can engage is always better and in the case of children, this app was no exception.
- The app will have a main menu where the child (or parent) can choose between 1 of two options. Choosing any letter on the keyboard will allow them to see a word from either category of animals or objects. There is a slightly more advanced options where instead of showing a complete word relating to the chosen letter, it will remove a random letter from the word and give them the options to guess what letter is missing.

### R6 - **Features**
- **Archive of words** - The app has 52 words for children to learn through 2 categories available ie. animals and objects. Essentially these are sight words and when presented repeatedly with the letter that is pressed the child will be able to see how the first letter is at the beginning and related to the word.
- **Guidance** - The app is designed for children and so has to be as simple as possible. To accomplish this, the app will not require the child to do anything after it receives input, instead the app will go back to the  menu and allow them to press another letter.
- **Missing Letters** - For children needing slightly more challenging learning, there is the ability to choose the missing letter option of the app. The child presses any letter on the keyboard and this time instead of showing the complete word it will show the word from either category ie, animals or objects and removes a random letter.

    If the child where to press the same letter again (after being back at the start of the missing letter option) a different letter would be missing. This means the **missing letter isn't hard coded** and the child can't get the letter right purely by memory.
- **Ascii images/art** - Images are the universal language and so they're a MUST when trying to create a fun learning experience for children. The MVP is purely text based however the implementation of images/ascii would greatly enhance the boring environment that is the terminal, especially in the context of a child user. There are 52 words and to accompany these words, 52 different pieces of ascii art
- **Animations** - The next step up from images in the same category would be animations. Due to the nature of the terminal this feature will be a bonus and implemented last, if there is still enough time. Otherwise this can be added after the due date.

### R7 - **User Interaction & Experience**
- **How to Interact** Dealing with an age (in the case of no parent to supervise) that is still learning to read, things need to be shown visually with images/pictures or be intuitive. For this reason the child will essentially learn how to interact by pressing keys on the key board.
- **Interaction** By pressing any letter on the key board the child can choose whatever letter they like and see a word and art relating to that letter.
- **Errors** will be handled in a simplified way from the child's perspective, however still informing a parent of the wrong key or letter being pressed. The app will simply ignore any keys pressed that are not letters or numbers in the case of the main menu loop.

### R9 - **Implementation Plan**
https://github.com/glowingmoth/AlphabetForKids/blob/master/docs/ControlFlow_AlphabetKids.png
- With the idea in mind I needed to get a clear image of the program logic and so created a flow chart to flesh out any unforeseen issues. This proved to be very useful as I actually recognized several issue immediately once I could see them. The flowchart proved invaluable through the early to mid stages of development.
https://github.com/glowingmoth/AlphabetForKids/blob/master/docs/Trello_7.png
- Having never used any project management system such as Agile and Trello there was some learning and experience to gain. But I can really see the benefit now. My use in the future, now that I have some experience, will be to add more check lists, as I wasn't aware of them and kept creating new cards instead of adding a check list to what was already there.

- From this point , with my limited understanding or perhaps brain jammed full of information from the past to weeks of the bootcamp I decided to go with a hash to store the alphabet, words and categories as I still lacked in understand all the features of using classes and inheritance. 
- To store the ascii art and call them later I placed the strings inside methods which may not have been the best choice. I separated the files and had the rest of the source code ie. methods with main while loops, hashes etc in the main.rb file (now renamed).
- In conclusion, I truly did my best to incorporate everything I had learnt from my instructors. Whilst not following best practices/coding conventions everywhere I still managed to clean up as much of the source code with what damage had all ready been done. If I were to attempt this again, I would most definitely plan and flesh out on paper how to structure the code.

