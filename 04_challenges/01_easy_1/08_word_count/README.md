# Word Count

Write a program that given a phrase can count the occurrences 
of each word in that phrase.

For example, if we count the words for the input "olly olly in 
come free", we should get:

olly: 2
in: 1
come: 1
free: 1

 - Problem
  - What data structure will I use to ensure the test suite
    passes?
    - Based on the test suite expecting a hash as well
      as a hash being a good data-structure for a solution
      I will use a hash to store the { 'words' => word_count } 
    
    - Based on the tests - what are the word examples/problems

      - 'javascript!!&@$%^&'    => 'javascript'
      - ':'                     => nil
      - 'one,two,three'         => 'one' 'two' 'three'
      - "one,\ntwo,\nthree"     => 'one' 'two' 'three'
      - 'testing, 1, 2 testing' => 'testing' '1' '2'
      - 'go Go GO'              => 'go' * 3
      - 'First: don't laugh.    => 'First' 'don't' 'laugh'
      - 'large' and large'.     => 'large' * 2
             
      Pattern:
        - What is not a word - based on the above constaints
          A word is one or more acceptable characters
        - What are the acceptable characters?
          - A-Z 
          - a-z 
          - 0-9
          - '
        - Based on these restictions - what is the correct
          regex to identify each acceptable word?

          '?[a-zA-Z0-9]'?

          CLEAN STRING

        - How will I clean out all unnecessary characters from the
          given string?
          - First lets String#gsub! out all of the following
            [!&@$%^:.] - replace with " "
          - Then lets String#gsub! out all of the following
            <!-- \\n --> replace with " "

    - How will I create the hash count_of_word_occurance?
      - I will used the 'clean' string and use the String#split(' ')
        to iterate over the string.
        - For each word I will
          - check to see if a key of that word already
            exists? using the Hash#key?
            if yes - then next iteration
            if no - the I will use the String#count and
            update the value with the String#count return
            value
    - Based on the exercise/test restrictions - what is the
      correct return value for the Phrase#word_count method?
      - It needs to be the hash key/value pairs

        
 - Examples
 - Data-structures
 - Algorithm
   Assign the string arg to the local instance variable
    called string_phrase_arg
   Clean the string_phrase_arg of all the unnecessary 
    characters
   Split the cleaned string by empty space
   Iterate over the array of split words
    - for each word passed to the block
      check if key already exists?
        - next if true
      else 
        count the number of occurances
        and save word as key and number of occurances
          as value    
 - Code












