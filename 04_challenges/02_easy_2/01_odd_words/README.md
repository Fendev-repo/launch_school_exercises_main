Consider a character set consisting of letters, a space, and a point. Words consist of one or more, but at most 20 letters.  An input text consists of one or more words separated from each other by one or more spaces and terminated by 0 or more spaces followed by a point.  Input should be read from, and including, the first letter of the first word, up to and including the terminating point.  The output text is to be produced such that successive words are seperated by a single space with the last word being terminated by a single point.  Odd words are copied in reverse order while even words are merely echoed.  For example, the input string 

"whats the matter with kansas." becomes "whats eht matter htiw kansas."

BONUS POINT: the characters must be read and printed one at a time.


- Problem
  - 2 Sentence Problem description:
    - The problem is about reading data from a file and then
      processing the data and outputting

  - Terminology:
    - Character set = letters, spaces, and a point.
    - Words = between one to 20 letters
    - input text = one or more words - seperated by one
      or more spaces - and terminated by a point
    - Point = full stop/period
  
  - Constraints
    - Input text must be read-in one character at a time
    - Input must be read-in from the first word
    - Output needs to have only single spaces
    - The end of all ouputs must have a point at the end
    - Processing - all odd words are to be reversed


  - Reading-in  
    - How will I read-in 'input text'?
      - I will create example files that I can then
        read in.
      - What Ruby methods will I used to read-in single characters
        at a time from the 'input text'?
        - I will first use the input_text File.open('example_file')
        - then use the IO#each_char method to append each char
          to a local variable String.

  - How will I ensure that the string only contains
    letters, spaces and full stops?
    I will use a String#match? and a refex
    /A-Za-z\s./

  - Processing 
    - What processing do I need to complete with the
      input_text?
      
      Replace double-spaceds
      - I need to replace all 2 or more spaces with a 
        single space.
        I will use a regex with the String#gsub method
        The regex will be /\s{2,}/

      Ensure input text has a full stop at the end
      - I will use the String#[-1] == '.'
        If thats false, I will append a '.' 
        maybe try the String#end_with   

      Reverse odd words  
      I will use String#split(' ') to split the string into an array
        of words.
        I will then iterate over the words and reverse all of the 
        odd words

  - Outputting
    - How will I print the input text to the terminal, one char at
      at time?
      - I will use the String#each_char to puts each char to the 
        terminal


- Examples
  - Happy path
    "whats the matter with kansas." == "whats eht matter htiw kansas."

  - Edge cases
    - No full stop
    "whats the matter with kansas" == "whats eht matter htiw kansas."
    
    - Two or more spaces
    "whats the     matter with kansas" == "whats eht matter htiw kansas."

  - Error cases
    - Empty string
    "" == 'String was empty'

    - Invalid character in string
    "whats the matter with kansas." == "Invalid character in string"

- Data-structures
- Algorithm
  Create an IO
  read each char from the IO and assign to string
  return out of the method if string contains invalid characters
  replace all double spaces with single
  ensure that text has a full stop at the end
  reverse the odd words
  use the each_char to output the text

- Code
